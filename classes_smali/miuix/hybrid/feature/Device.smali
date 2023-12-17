.class public Lmiuix/hybrid/feature/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lmiuix/hybrid/HybridFeature;


# static fields
.field private static final ACTION_GET_DEVICE_INFO:Ljava/lang/String; = "getDeviceInfo"

.field private static final KEY_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "language"

.field private static final KEY_MODEL:Ljava/lang/String; = "model"

.field private static final KEY_REGION:Ljava/lang/String; = "region"

.field private static final KEY_ROM_VERSION:Ljava/lang/String; = "romVersion"

.field private static final LOG_TAG:Ljava/lang/String; = "Device"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDeviceInfo()Lmiuix/hybrid/Response;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_5
    const-string v1, "model"

    .line 8
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    const-string v1, "romVersion"

    .line 15
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v1, "language"

    .line 22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v1, "region"

    .line 35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2d} :catch_33

    .line 46
    new-instance v1, Lmiuix/hybrid/Response;

    .line 48
    invoke-direct {v1, v0}, Lmiuix/hybrid/Response;-><init>(Lorg/json/JSONObject;)V

    .line 51
    return-object v1

    .line 52
    :catch_33
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    const-string v2, "Device"

    .line 59
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v1, Lmiuix/hybrid/Response;

    .line 64
    const/16 v2, 0xc8

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    invoke-direct {v1, v2, v0}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 73
    return-object v1
.end method


# virtual methods
.method public getInvocationMode(Lmiuix/hybrid/Request;)Lmiuix/hybrid/HybridFeature$Mode;
    .registers 3

    .line 1
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "getDeviceInfo"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_f

    .line 13
    sget-object p1, Lmiuix/hybrid/HybridFeature$Mode;->SYNC:Lmiuix/hybrid/HybridFeature$Mode;

    .line 15
    return-object p1

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public invoke(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 4

    .line 1
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "getDeviceInfo"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_11

    .line 13
    invoke-direct {p0}, Lmiuix/hybrid/feature/Device;->getDeviceInfo()Lmiuix/hybrid/Response;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_11
    new-instance p1, Lmiuix/hybrid/Response;

    .line 20
    const/16 v0, 0xcc

    .line 22
    const-string v1, "no such action"

    .line 24
    invoke-direct {p1, v0, v1}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 27
    return-object p1
.end method

.method public setParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
