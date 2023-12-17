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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "network"

    iput-object v0, p0, Lmiuix/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$100(Lmiuix/hybrid/feature/Geolocation;)Lmiuix/hybrid/Callback;
    .registers 1

    iget-object p0, p0, Lmiuix/hybrid/feature/Geolocation;->mCallback:Lmiuix/hybrid/Callback;

    return-object p0
.end method

.method public static synthetic access$200(Lmiuix/hybrid/feature/Geolocation;Landroid/location/Location;)Lmiuix/hybrid/Response;
    .registers 2

    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Geolocation;->response(Landroid/location/Location;)Lmiuix/hybrid/Response;

    move-result-object p0

    return-object p0
.end method

.method private invokeGetLocation(Landroid/location/LocationManager;Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 3

    iget-object p2, p0, Lmiuix/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Geolocation;->response(Landroid/location/Location;)Lmiuix/hybrid/Response;

    move-result-object p1

    return-object p1
.end method

.method private invokeRemove(Landroid/location/LocationManager;Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 6

    iget-object v0, p0, Lmiuix/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-object v1, p0, Lmiuix/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    :cond_a
    iput-object v1, p0, Lmiuix/hybrid/feature/Geolocation;->mCallback:Lmiuix/hybrid/Callback;

    invoke-virtual {p2}, Lmiuix/hybrid/Request;->getCallback()Lmiuix/hybrid/Callback;

    move-result-object p1

    new-instance p2, Lmiuix/hybrid/Response;

    const/4 v0, 0x0

    const-string v2, "remove"

    invoke-direct {p2, v0, v2}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lmiuix/hybrid/Callback;->callback(Lmiuix/hybrid/Response;)V

    return-object v1
.end method

.method private invokeUpdateLocation(Landroid/location/LocationManager;Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 10

    invoke-virtual {p2}, Lmiuix/hybrid/Request;->getCallback()Lmiuix/hybrid/Callback;

    move-result-object p2

    iput-object p2, p0, Lmiuix/hybrid/feature/Geolocation;->mCallback:Lmiuix/hybrid/Callback;

    iget-object p2, p0, Lmiuix/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    const/4 v0, 0x0

    if-nez p2, :cond_23

    new-instance p2, Lmiuix/hybrid/feature/Geolocation$NetworkLocationListener;

    invoke-direct {p2, p0, v0}, Lmiuix/hybrid/feature/Geolocation$NetworkLocationListener;-><init>(Lmiuix/hybrid/feature/Geolocation;Lmiuix/hybrid/feature/Geolocation$1;)V

    iput-object p2, p0, Lmiuix/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v2, p0, Lmiuix/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lmiuix/hybrid/feature/Geolocation;->mListener:Landroid/location/LocationListener;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    :cond_23
    iget-object p2, p0, Lmiuix/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    iget-object p2, p0, Lmiuix/hybrid/feature/Geolocation;->mCallback:Lmiuix/hybrid/Callback;

    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Geolocation;->response(Landroid/location/Location;)Lmiuix/hybrid/Response;

    move-result-object p1

    invoke-virtual {p2, p1}, Lmiuix/hybrid/Callback;->callback(Lmiuix/hybrid/Response;)V

    return-object v0
.end method

.method private response(Landroid/location/Location;)Lmiuix/hybrid/Response;
    .registers 6

    const-string v0, "HybridGeolocation"

    if-eqz p1, :cond_30

    const-string v1, "response with valid location."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_e
    const-string v1, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_25
    new-instance p1, Lmiuix/hybrid/Response;

    const/4 v1, 0x3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_30
    const-string p1, "error: response location with null."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lmiuix/hybrid/Response;

    const/16 v0, 0xc8

    const-string v1, "no location"

    invoke-direct {p1, v0, v1}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public getInvocationMode(Lmiuix/hybrid/Request;)Lmiuix/hybrid/HybridFeature$Mode;
    .registers 3

    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "get"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lmiuix/hybrid/HybridFeature$Mode;->SYNC:Lmiuix/hybrid/HybridFeature$Mode;

    return-object p1

    :cond_f
    sget-object p1, Lmiuix/hybrid/HybridFeature$Mode;->CALLBACK:Lmiuix/hybrid/HybridFeature$Mode;

    return-object p1
.end method

.method public invoke(Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;
    .registers 5

    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoke with action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HybridGeolocation"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lmiuix/hybrid/Request;->getNativeInterface()Lmiuix/hybrid/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/hybrid/NativeInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    const-string v2, "enableListener"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-direct {p0, v1, p1}, Lmiuix/hybrid/feature/Geolocation;->invokeUpdateLocation(Landroid/location/LocationManager;Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;

    move-result-object p1

    return-object p1

    :cond_37
    const-string v2, "get"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-direct {p0, v1, p1}, Lmiuix/hybrid/feature/Geolocation;->invokeGetLocation(Landroid/location/LocationManager;Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;

    move-result-object p1

    return-object p1

    :cond_44
    const-string v2, "disableListener"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-direct {p0, v1, p1}, Lmiuix/hybrid/feature/Geolocation;->invokeRemove(Landroid/location/LocationManager;Lmiuix/hybrid/Request;)Lmiuix/hybrid/Response;

    move-result-object p1

    return-object p1

    :cond_51
    new-instance p1, Lmiuix/hybrid/Response;

    const/16 v0, 0xcc

    const-string v1, "no such action"

    invoke-direct {p1, v0, v1}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

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

    const-string v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    iput-object v0, p0, Lmiuix/hybrid/feature/Geolocation;->mProvider:Ljava/lang/String;

    :cond_12
    return-void
.end method
