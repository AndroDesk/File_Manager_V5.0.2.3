.class public Lmiuix/responsive/ResponsivePolicy;
.super Ljava/lang/Object;
.source "ResponsivePolicy.java"


# static fields
.field public static final THRESHOLD_LARGE_CONTAINER:I

.field public static final THRESHOLD_LARGE_WINDOW:I

.field public static final THRESHOLD_REGULAR_CONTAINER:I

.field public static final THRESHOLD_REGULAR_WINDOW:I

.field public static final THRESHOLD_REGULAR_WINDOW_HEIGHT:I

.field public static final THRESHOLD_SHORT_WINDOW_HEIGHT:I

.field public static final THRESHOLD_SHORT_WINDOW_RATIO:F = 1.7f


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92fa6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/ResponsivePolicy;->THRESHOLD_LARGE_CONTAINER:I

    const v0, 0x92e56

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/ResponsivePolicy;->THRESHOLD_LARGE_WINDOW:I

    const v0, 0x92c0c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/ResponsivePolicy;->THRESHOLD_REGULAR_CONTAINER:I

    const v0, 0x92f08

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/ResponsivePolicy;->THRESHOLD_REGULAR_WINDOW:I

    const v0, 0x92fb0

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/ResponsivePolicy;->THRESHOLD_REGULAR_WINDOW_HEIGHT:I

    const v0, 0x92f1c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/ResponsivePolicy;->THRESHOLD_SHORT_WINDOW_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
