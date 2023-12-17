.class public Lcom/xiaomi/opensdk/pdc/DefaultEnvironment;
.super Ljava/lang/Object;
.source "DefaultEnvironment.java"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultEnvironment"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/DefaultEnvironment;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DefaultEnvironment;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.xiaomi.opensdk.pdc.host"

    .line 9
    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_10

    .line 15
    const-string v0, "micpdc.openapi.xiaomi.net"

    .line 17
    :cond_10
    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DefaultEnvironment;->mUserAgent:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_4a

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "; MIUI/"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :try_start_18
    const-string v1, "miui.os.Build"

    .line 27
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 30
    move-result-object v1

    .line 31
    const-string v2, "IS_ALPHA_BUILD"

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/Boolean;

    .line 44
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_44

    .line 50
    const/16 v1, 0x20

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "ALPHA"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3b} :catch_3c

    .line 60
    goto :goto_44

    .line 61
    :catch_3c
    move-exception v1

    .line 62
    const-string v2, "DefaultEnvironment"

    .line 64
    const-string v3, "Exception in getUserAgent()"

    .line 66
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :cond_44
    :goto_44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/DefaultEnvironment;->mUserAgent:Ljava/lang/String;

    .line 75
    :cond_4a
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DefaultEnvironment;->mUserAgent:Ljava/lang/String;

    .line 77
    return-object v0
.end method

.method public getUserCountry()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DefaultEnvironment;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.xiaomi.opensdk.pdc.host"

    .line 9
    invoke-static {v0, v1, p1}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    return-void
.end method
