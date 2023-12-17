.class public Lmiuix/hybrid/feature/Geolocation;
.super Ljava/lang/Object;
.source "Geolocation.java"

# interfaces
.implements Lmiuix/hybrid/HybridFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/hybrid/feature/Geolocation$NetworkLocationListener;
    }
.end annotation


# static fields
.field private static final ACTION_DISABLE:Ljava/lang/String; = "disableListener"

.field private static final ACTION_ENABLE:Ljava/lang/String; = "enableListener"

.field private static final ACTION_GET:Ljava/lang/String; = "get"

.field private static final PARAM_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String; = "HybridGeolocation"


# instance fields
.field private mCallback:Lmiuix/hybrid/Callback;

.field private mListener:Landroid/location/LocationListener;

.field private mProvider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "network"

    .line 6
    iput-object v0, p0, Lmiuix/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static synthetic access$100(Lmiuix/hybrid/feature/Geolocation;)Lmiuix/hybrid/Callback;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/hybrid/feature/Geolocation;->mCallback:Lmiuix/hybrid/Callback;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/hybrid/feature/Geolocation;Landroid/location/Location;)Lmiuix/hybrid/Response;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Geolocation;->response(Landroid/location/Location;)Lmiuix/hybrid/Response;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private invokeGetLocation(Landroid/location/LocationManager;Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 3

    .line 1
    iget-object p2, p0, Lmiuix/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Geolocation;->response(Landroid/location/Location;)Lmiuix/hybrid/Response;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private invokeRemove(Landroid/location/LocationManager;Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 6

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 6
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 9
    iput-object v1, p0, Lmiuix/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    .line 11
    :cond_a
    iput-object v1, p0, Lmiuix/hybrid/feature/Geolocation;->mCallback:Lmiuix/hybrid/Callback;

    .line 13
    invoke-virtual {p2}, Lmiuix/hybrid/Request;->getCallback()Lmiuix/hybrid/Callback;

    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lmiuix/hybrid/Response;

    .line 19
    const/4 v0, 0x0

    .line 20
    const-string v2, "remove"

    .line 22
    invoke-direct {p2, v0, v2}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 25
    invoke-virtual {p1, p2}, Lmiuix/hybrid/Callback;->callback(Lmiuix/hybrid/Response;)V

    .line 28
    return-object v1
.end method

.method private invokeUpdateLocation(Landroid/location/LocationManager;Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 10

    .line 1
    invoke-virtual {p2}, Lmiuix/hybrid/Request;->getCallback()Lmiuix/hybrid/Callback;

    .line 4
    move-result-object p2

    .line 5
    iput-object p2, p0, Lmiuix/hybrid/feature/Geolocation;->mCallback:Lmiuix/hybrid/Callback;

    .line 7
    iget-object p2, p0, Lmiuix/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p2, :cond_23

    .line 12
    new-instance p2, Lmiuix/hybrid/feature/Geolocation$NetworkLocationListener;

    .line 14
    invoke-direct {p2, p0, v0}, Lmiuix/hybrid/feature/Geolocation$NetworkLocationListener;-><init>(Lmiuix/hybrid/feature/Geolocation;Lmiuix/hybrid/feature/Geolocation$1;)V

    .line 17
    iput-object p2, p0, Lmiuix/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    .line 19
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 22
    iget-object v2, p0, Lmiuix/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    .line 24
    const-wide/16 v3, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    iget-object v6, p0, Lmiuix/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    .line 29
    move-object v1, p1

    .line 30
    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 33
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 36
    :cond_23
    iget-object p2, p0, Lmiuix/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    .line 38
    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 41
    move-result-object p1

    .line 42
    iget-object p2, p0, Lmiuix/hybrid/feature/Geolocation;->mCallback:Lmiuix/hybrid/Callback;

    .line 44
    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Geolocation;->response(Landroid/location/Location;)Lmiuix/hybrid/Response;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p2, p1}, Lmiuix/hybrid/Callback;->callback(Lmiuix/hybrid/Response;)V

    .line 51
    return-object v0
.end method

.method private response(Landroid/location/Location;)Lmiuix/hybrid/Response;
    .registers 6

    .line 1
    const-string v0, "HybridGeolocation"

    .line 3
    if-eqz p1, :cond_30

    .line 5
    const-string v1, "response with valid location."

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v0, Lorg/json/JSONObject;

    .line 12
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 15
    :try_start_e
    const-string v1, "latitude"

    .line 17
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 20
    move-result-wide v2

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 24
    const-string v1, "longitude"

    .line 26
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_20} :catch_21

    .line 33
    goto :goto_25

    .line 34
    :catch_21
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    :goto_25
    new-instance p1, Lmiuix/hybrid/Response;

    .line 40
    const/4 v1, 0x3

    .line 41
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p1, v1, v0}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 48
    return-object p1

    .line 49
    :cond_30
    const-string p1, "error: response location with null."

    .line 51
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance p1, Lmiuix/hybrid/Response;

    .line 56
    const/16 v0, 0xc8

    .line 58
    const-string v1, "no location"

    .line 60
    invoke-direct {p1, v0, v1}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 63
    return-object p1
.end method


# virtual methods
.method public getInvocationMode(Lmiuix/hybrid/Request;)Lmiuix/hybrid/HybridFeature$Mode;
    .registers 3

    .line 1
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "get"

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
    sget-object p1, Lmiuix/hybrid/HybridFeature$Mode;->CALLBACK:Lmiuix/hybrid/HybridFeature$Mode;

    .line 18
    return-object p1
.end method

.method public invoke(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 5

    .line 1
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getAction()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "invoke with action: "

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-string v2, "HybridGeolocation"

    .line 24
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getNativeInterface()Lmiuix/hybrid/NativeInterface;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lmiuix/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    .line 34
    move-result-object v1

    .line 35
    const-string v2, "location"

    .line 37
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/location/LocationManager;

    .line 43
    const-string v2, "enableListener"

    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_37

    .line 51
    invoke-direct {p0, v1, p1}, Lmiuix/hybrid/feature/Geolocation;->invokeUpdateLocation(Landroid/location/LocationManager;Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;

    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :cond_37
    const-string v2, "get"

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_44

    .line 64
    invoke-direct {p0, v1, p1}, Lmiuix/hybrid/feature/Geolocation;->invokeGetLocation(Landroid/location/LocationManager;Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;

    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_44
    const-string v2, "disableListener"

    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_51

    .line 77
    invoke-direct {p0, v1, p1}, Lmiuix/hybrid/feature/Geolocation;->invokeRemove(Landroid/location/LocationManager;Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;

    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :cond_51
    new-instance p1, Lmiuix/hybrid/Response;

    .line 84
    const/16 v0, 0xcc

    .line 86
    const-string v1, "no such action"

    .line 88
    invoke-direct {p1, v0, v1}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    .line 91
    return-object p1
.end method

.method public setParams(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "type"

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 9
    const-string v0, "gps"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_12

    .line 17
    iput-object v0, p0, Lmiuix/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    .line 19
    :cond_12
    return-void
.end method
