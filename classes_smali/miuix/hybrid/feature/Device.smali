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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDeviceInfo()Lmiuix/hybrid/Response;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "romVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "region"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2d} :catch_33

    new-instance v1, Lmiuix/hybrid/Response;

    invoke-direct {v1, v0}, Lmiuix/hybrid/Response;-><init>(Lorg/json/JSONObject;)V

    return-object v1

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lmiuix/hybrid/Response;

    const/16 v2, 0xc8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getInvocationMode(Lmiuix/hybrid/Request;)Lmiuix/hybrid/HybridFeature$Mode;
    .registers 3

    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getDeviceInfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lmiuix/hybrid/HybridFeature$Mode;->SYNC:Lmiuix/hybrid/HybridFeature$Mode;

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public invoke(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 4

    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getDeviceInfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-direct {p0}, Lmiuix/hybrid/feature/Device;->getDeviceInfo()Lmiuix/hybrid/Response;

    move-result-object p1

    return-object p1

    :cond_11
    new-instance p1, Lmiuix/hybrid/Response;

    const/16 v0, 0xcc

    const-string v1, "no such action"

    invoke-direct {p1, v0, v1}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

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
