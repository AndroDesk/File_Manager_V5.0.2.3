.class Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;
.super Ljava/lang/Object;
.source "OverScroller.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/overscroller/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViscousFluidInterpolator"
.end annotation


# static fields
.field private static final VISCOUS_FLUID_NORMALIZE:F

.field private static final VISCOUS_FLUID_OFFSET:F

.field private static final VISCOUS_FLUID_SCALE:F = 8.0f


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/high16 v0, 0x3f800000  # 1.0f

    .line 3
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;->viscousFluid(F)F

    .line 6
    move-result v1

    .line 7
    div-float v1, v0, v1

    .line 9
    sput v1, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    .line 11
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;->viscousFluid(F)F

    .line 14
    move-result v2

    .line 15
    mul-float/2addr v1, v2

    .line 16
    sub-float/2addr v0, v1

    .line 17
    sput v0, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;->VISCOUS_FLUID_OFFSET:F

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static viscousFluid(F)F
    .registers 5

    .line 1
    const/high16 v0, 0x41000000  # 8.0f

    .line 3
    mul-float/2addr p0, v0

    .line 4
    const/high16 v0, 0x3f800000  # 1.0f

    .line 6
    cmpg-float v1, p0, v0

    .line 8
    if-gez v1, :cond_13

    .line 10
    neg-float v1, p0

    .line 11
    float-to-double v1, v1

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    .line 15
    move-result-wide v1

    .line 16
    double-to-float v1, v1

    .line 17
    sub-float/2addr v0, v1

    .line 18
    sub-float/2addr p0, v0

    .line 19
    goto :goto_25

    .line 20
    :cond_13
    const v1, 0x3ebc5ab2

    .line 23
    sub-float p0, v0, p0

    .line 25
    float-to-double v2, p0

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    .line 29
    move-result-wide v2

    .line 30
    double-to-float p0, v2

    .line 31
    const v2, 0x3f21d2a7

    .line 34
    invoke-static {v0, p0, v2, v1}, Lf0/e;->a(FFFF)F

    .line 37
    move-result p0

    .line 38
    :goto_25
    return p0
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 3

    .line 1
    sget v0, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;->VISCOUS_FLUID_NORMALIZE:F

    .line 3
    invoke-static {p1}, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;->viscousFluid(F)F

    .line 6
    move-result p1

    .line 7
    mul-float/2addr v0, p1

    .line 8
    const/4 p1, 0x0

    .line 9
    cmpl-float p1, v0, p1

    .line 11
    if-lez p1, :cond_f

    .line 13
    sget p1, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;->VISCOUS_FLUID_OFFSET:F

    .line 15
    add-float/2addr v0, p1

    .line 16
    :cond_f
    return v0
.end method
