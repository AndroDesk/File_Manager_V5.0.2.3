.class public Lorg/slf4j/MarkerFactory;
.super Ljava/lang/Object;
.source "MarkerFactory.java"


# static fields
.field public static MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    :try_start_0
    invoke-static {}, Lorg/slf4j/MarkerFactory;->bwCompatibleGetMarkerFactoryFromBinder()Lorg/slf4j/IMarkerFactory;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/slf4j/MarkerFactory;->MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;
    :try_end_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_6} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 7
    goto :goto_15

    .line 8
    :catch_7
    move-exception v0

    .line 9
    const-string v1, "Unexpected failure while binding MarkerFactory"

    .line 11
    invoke-static {v1, v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    goto :goto_15

    .line 15
    :catch_e
    new-instance v0, Lorg/slf4j/helpers/BasicMarkerFactory;

    .line 17
    invoke-direct {v0}, Lorg/slf4j/helpers/BasicMarkerFactory;-><init>()V

    .line 20
    sput-object v0, Lorg/slf4j/MarkerFactory;->MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;

    .line 22
    :goto_15
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static bwCompatibleGetMarkerFactoryFromBinder()Lorg/slf4j/IMarkerFactory;
    .registers 1

    .line 1
    :try_start_0
    invoke-static {}, Lorg/slf4j/impl/StaticMarkerBinder;->getSingleton()Lorg/slf4j/impl/StaticMarkerBinder;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/slf4j/impl/StaticMarkerBinder;->getMarkerFactory()Lorg/slf4j/IMarkerFactory;

    .line 8
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    return-object v0

    .line 10
    :catch_9
    sget-object v0, Lorg/slf4j/impl/StaticMarkerBinder;->SINGLETON:Lorg/slf4j/impl/StaticMarkerBinder;

    .line 12
    invoke-virtual {v0}, Lorg/slf4j/impl/StaticMarkerBinder;->getMarkerFactory()Lorg/slf4j/IMarkerFactory;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public static getDetachedMarker(Ljava/lang/String;)Lorg/slf4j/Marker;
    .registers 2

    .line 1
    sget-object v0, Lorg/slf4j/MarkerFactory;->MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;

    .line 3
    invoke-interface {v0, p0}, Lorg/slf4j/IMarkerFactory;->getDetachedMarker(Ljava/lang/String;)Lorg/slf4j/Marker;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static getIMarkerFactory()Lorg/slf4j/IMarkerFactory;
    .registers 1

    .line 1
    sget-object v0, Lorg/slf4j/MarkerFactory;->MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;

    .line 3
    return-object v0
.end method

.method public static getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;
    .registers 2

    .line 1
    sget-object v0, Lorg/slf4j/MarkerFactory;->MARKER_FACTORY:Lorg/slf4j/IMarkerFactory;

    .line 3
    invoke-interface {v0, p0}, Lorg/slf4j/IMarkerFactory;->getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
