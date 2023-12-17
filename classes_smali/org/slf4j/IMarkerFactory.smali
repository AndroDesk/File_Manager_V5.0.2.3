.class public interface abstract Lorg/slf4j/IMarkerFactory;
.super Ljava/lang/Object;
.source "IMarkerFactory.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract detachMarker(Ljava/lang/String;)Z
.end method

.method public abstract exists(Ljava/lang/String;)Z
.end method

.method public abstract getDetachedMarker(Ljava/lang/String;)Lorg/slf4j/Marker;
.end method

.method public abstract getMarker(Ljava/lang/String;)Lorg/slf4j/Marker;
.end method
