.class public Lorg/slf4j/event/EventConstants;
.super Ljava/lang/Object;
.source "EventConstants.java"


# static fields
.field public static final DEBUG_INT:I

.field public static final ERROR_INT:I

.field public static final INFO_INT:I

.field public static final NA_SUBST:Ljava/lang/String; = "NA/SubstituteLogger"

.field public static final TRACE_INT:I

.field public static final WARN_INT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/slf4j/event/EventConstants;->DEBUG_INT:I

    const v0, 0x92dbe

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/slf4j/event/EventConstants;->ERROR_INT:I

    const v0, 0x92d82

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/slf4j/event/EventConstants;->INFO_INT:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/slf4j/event/EventConstants;->TRACE_INT:I

    const v0, 0x92d88

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lorg/slf4j/event/EventConstants;->WARN_INT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
