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
.method public constructor <init>(Lmiuix/internal/hybrid/Config;Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lmiuix/internal/hybrid/SecurityManager;->mConfig:Lmiuix/internal/hybrid/Config;

    .line 6
    if-eqz p1, :cond_21

    .line 8
    invoke-virtual {p1}, Lmiuix/internal/hybrid/Config;->getSecurity()Lmiuix/internal/hybrid/Security;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_21

    .line 14
    invoke-virtual {p1}, Lmiuix/internal/hybrid/Config;->getSecurity()Lmiuix/internal/hybrid/Security;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lmiuix/internal/hybrid/Security;->getTimestamp()J

    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lmiuix/internal/hybrid/SecurityManager;->mExpiredTime:J

    .line 24
    invoke-virtual {p1}, Lmiuix/internal/hybrid/Config;->getSecurity()Lmiuix/internal/hybrid/Security;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lmiuix/internal/hybrid/Security;->getSignature()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lmiuix/internal/hybrid/SecurityManager;->mSign:Ljava/lang/String;

    .line 34
    :cond_21
    sget-object p1, Lmiuix/internal/hybrid/SecurityManager;->sPublicKey:Ljava/lang/String;

    .line 36
    if-nez p1, :cond_2b

    .line 38
    invoke-direct {p0, p2}, Lmiuix/internal/hybrid/SecurityManager;->getPublicKey(Landroid/content/Context;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    sput-object p1, Lmiuix/internal/hybrid/SecurityManager;->sPublicKey:Ljava/lang/String;

    .line 44
    :cond_2b
    return-void
.end method

.method private getHybridBaseFolder(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 6
    move-result-object p1

    .line 7
    const-string v1, "miuisdk"

    .line 9
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    return-object v0
.end method

.method private getPublicKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {p0, p1}, Lmiuix/internal/hybrid/SecurityManager;->getHybridBaseFolder(Landroid/content/Context;)Ljava/io/File;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "hybrid_key.pem"

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_18

    .line 19
    new-instance p1, Ljava/io/FileInputStream;

    .line 21
    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 24
    goto :goto_26

    .line 25
    :cond_18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 32
    move-result-object p1

    .line 33
    const-string v0, "keys/hybrid_key.pem"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 38
    move-result-object p1

    .line 39
    :goto_26
    new-instance v0, Ljava/io/BufferedReader;

    .line 41
    new-instance v2, Ljava/io/InputStreamReader;

    .line 43
    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 46
    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_30} :catch_44
    .catchall {:try_start_c .. :try_end_30} :catchall_42

    .line 49
    :try_start_30
    invoke-direct {p0, v0}, Lmiuix/internal/hybrid/SecurityManager;->readPublicKey(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 52
    move-result-object p1
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_40
    .catchall {:try_start_30 .. :try_end_34} :catchall_3d

    .line 53
    :try_start_34
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    .line 56
    goto :goto_3c

    .line 57
    :catch_38
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    :goto_3c
    return-object p1

    .line 62
    :catchall_3d
    move-exception p1

    .line 63
    move-object v1, v0

    .line 64
    goto :goto_4c

    .line 65
    :catch_40
    move-object v1, v0

    .line 66
    goto :goto_44

    .line 67
    :catchall_42
    move-exception p1

    .line 68
    goto :goto_4c

    .line 69
    :catch_44
    :goto_44
    :try_start_44
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    const-string v0, "cannot read hybrid key."

    .line 73
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    throw p1
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_42

    .line 77
    :goto_4c
    if-eqz v1, :cond_56

    .line 79
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    .line 82
    goto :goto_56

    .line 83
    :catch_52
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    :cond_56
    :goto_56
    throw p1
.end method

.method private isValidSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-eqz p2, :cond_10

    .line 5
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

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    :cond_5
    :goto_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_29

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    const-string v3, ""

    .line 18
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_5

    .line 24
    const-string v2, "-----"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_20

    .line 32
    goto :goto_5

    .line 33
    :cond_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const/16 v1, 0xd

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    goto :goto_5

    .line 42
    :cond_29
    const/4 p1, 0x0

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 46
    move-result v1

    .line 47
    add-int/lit8 v1, v1, -0x1

    .line 49
    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method


# virtual methods
.method public isExpired()Z
    .registers 5

    .line 1
    iget-wide v0, p0, Lmiuix/internal/hybrid/SecurityManager;->mExpiredTime:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v2, v2, v0

    .line 7
    if-gez v2, :cond_12

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    move-result-wide v2

    .line 13
    cmp-long v0, v0, v2

    .line 15
    if-gez v0, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method public isValidSignature()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/internal/hybrid/SecurityManager;->mValidSignature:Ljava/lang/Boolean;

    if-nez v0, :cond_1b

    .line 2
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

    .line 3
    :catch_17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lmiuix/internal/hybrid/SecurityManager;->mValidSignature:Ljava/lang/Boolean;

    .line 4
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lmiuix/internal/hybrid/SecurityManager;->mValidSignature:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
