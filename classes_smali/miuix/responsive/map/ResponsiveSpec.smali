.class public Lmiuix/responsive/map/ResponsiveSpec;
.super Ljava/lang/Object;
.source "ResponsiveSpec.java"


# static fields
.field public static final EFFECTIVE_SCREEN_ORIENTATION_BOTH:I

.field public static final EFFECTIVE_SCREEN_ORIENTATION_LANDSCAPE:I

.field public static final EFFECTIVE_SCREEN_ORIENTATION_NONE:I

.field public static final EFFECTIVE_SCREEN_ORIENTATION_PORTRAIT:I

.field public static final HIDE_MODE_HALF_SCREEN:I

.field public static final HIDE_MODE_INVALID:I

.field public static final HIDE_MODE_NONE:I

.field public static final HIDE_MODE_ONE_THIRD_SCREEN:I

.field public static final HIDE_MODE_TWO_THIRD_SCREEN:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveSpec;->EFFECTIVE_SCREEN_ORIENTATION_BOTH:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveSpec;->EFFECTIVE_SCREEN_ORIENTATION_LANDSCAPE:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveSpec;->EFFECTIVE_SCREEN_ORIENTATION_NONE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveSpec;->EFFECTIVE_SCREEN_ORIENTATION_PORTRAIT:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveSpec;->HIDE_MODE_HALF_SCREEN:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveSpec;->HIDE_MODE_INVALID:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveSpec;->HIDE_MODE_NONE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveSpec;->HIDE_MODE_ONE_THIRD_SCREEN:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/responsive/map/ResponsiveSpec;->HIDE_MODE_TWO_THIRD_SCREEN:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isScreenOrientationMatch(II)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    return v0

    :cond_5
    if-ne p0, p1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
