.class public Lmiuix/view/animation/CirclularEaseInInterpolator;
.super Ljava/lang/Object;
.source "CirclularEaseInInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 6

    .line 1
    mul-float/2addr p1, p1

    .line 2
    const/high16 v0, 0x3f800000  # 1.0f

    .line 4
    sub-float/2addr v0, p1

    .line 5
    float-to-double v0, v0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 9
    move-result-wide v0

    .line 10
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 12
    sub-double/2addr v0, v2

    .line 13
    double-to-float p1, v0

    .line 14
    neg-float p1, p1

    .line 15
    return p1
.end method
