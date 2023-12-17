.class public interface abstract Lorg/slf4j/spi/LocationAwareLogger;
.super Ljava/lang/Object;
.source "LocationAwareLogger.java"

# interfaces
.implements Lorg/slf4j/Logger;


# static fields
.field public static final DEBUG_INT:I

.field public static final ERROR_INT:I

.field public static final INFO_INT:I

.field public static final TRACE_INT:I

.field public static final WARN_INT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/slf4j/spi/LocationAwareLogger;->DEBUG_INT:I

    const v0, 0x92dbe

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/slf4j/spi/LocationAwareLogger;->ERROR_INT:I

    const v0, 0x92d82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/slf4j/spi/LocationAwareLogger;->INFO_INT:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/slf4j/spi/LocationAwareLogger;->TRACE_INT:I

    const v0, 0x92d88

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/slf4j/spi/LocationAwareLogger;->WARN_INT:I

    return-void
.end method


# virtual methods
.method public abstract log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method
