.class public Lmiuix/internal/hybrid/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# static fields
.field private static final KEY_FILE_NAME:Ljava/lang/String; = "hybrid_key.pem"

.field private static sPublicKey:Ljava/lang/String;


# instance fields
.field private mConfig:Lmiuix/internal/hybrid/Config;

.field private mExpiredTime:J

.field private mSign:Ljava/lang/String;

.field private mValidSignature:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/internal/hybrid/Config;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/internal/hybrid/SecurityManager;->mConfig:Lmiuix/internal/hybrid/Config;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lmiuix/internal/hybrid/Config;->getSecurity()Lmiuix/internal/hybrid/Security;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lmiuix/internal/hybrid/Config;->getSecurity()Lmiuix/internal/hybrid/Security;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/internal/hybrid/Security;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lmiuix/internal/hybrid/SecurityManager;->mExpiredTime:J

    invoke-virtual {p1}, Lmiuix/internal/hybrid/Config;->getSecurity()Lmiuix/internal/hybrid/Security;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/internal/hybrid/Security;->getSignature()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/internal/hybrid/SecurityManager;->mSign:Ljava/lang/String;

    :cond_21
    sget-object p1, Lmiuix/internal/hybrid/SecurityManager;->sPublicKey:Ljava/lang/String;

    if-nez p1, :cond_2b

    invoke-direct {p0, p2}, Lmiuix/internal/hybrid/SecurityManager;->getPublicKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lmiuix/internal/hybrid/SecurityManager;->sPublicKey:Ljava/lang/String;

    :cond_2b
    return-void
.end method

.method private getHybridBaseFolder(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "miuisdk"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getPublicKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/SecurityManager;->getHybridBaseFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "hybrid_key.pem"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_26

    :cond_18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "keys/hybrid_key.pem"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    :goto_26
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_30} :catch_44
    .catchall {:try_start_c .. :try_end_30} :catchall_42

    :try_start_30
    invoke-direct {p0, v0}, Lmiuix/internal/hybrid/SecurityManager;->readPublicKey(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p1
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_40
    .catchall {:try_start_30 .. :try_end_34} :catchall_3d

    :try_start_34
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3c
    return-object p1

    :catchall_3d
    move-exception p1

    move-object v1, v0

    goto :goto_4c

    :catch_40
    move-object v1, v0

    goto :goto_44

    :catchall_42
    move-exception p1

    goto :goto_4c

    :catch_44
    :goto_44
    :try_start_44
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot read hybrid key."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_42

    :goto_4c
    if-eqz v1, :cond_56

    :try_start_4e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_56

    :catch_52
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_56
    :goto_56
    throw p1
.end method

.method private isValidSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-eqz p2, :cond_10

    sget-object v0, Lmiuix/internal/hybrid/SecurityManager;->sPublicKey:Ljava/lang/String;

    invoke-static {v0}, Lmiuix/internal/hybrid/SignUtils;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lmiuix/internal/hybrid/SignUtils;->verify(Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private readPublicKey(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_5
    :goto_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "-----"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_5

    :cond_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_29
    const/4 p1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isExpired()Z
    .registers 5

    iget-wide v0, p0, Lmiuix/internal/hybrid/SecurityManager;->mExpiredTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-gez v2, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isValidSignature()Z
    .registers 3

    iget-object v0, p0, Lmiuix/internal/hybrid/SecurityManager;->mValidSignature:Ljava/lang/Boolean;

    if-nez v0, :cond_1b

    :try_start_4
    iget-object v0, p0, Lmiuix/internal/hybrid/SecurityManager;->mConfig:Lmiuix/internal/hybrid/Config;

    invoke-static {v0}, Lmiuix/internal/hybrid/ConfigUtils;->getRawConfig(Lmiuix/internal/hybrid/Config;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiuix/internal/hybrid/SecurityManager;->mSign:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lmiuix/internal/hybrid/SecurityManager;->isValidSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmiuix/internal/hybrid/SecurityManager;->mValidSignature:Ljava/lang/Boolean;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lmiuix/internal/hybrid/SecurityManager;->mValidSignature:Ljava/lang/Boolean;

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lmiuix/internal/hybrid/SecurityManager;->mValidSignature:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
