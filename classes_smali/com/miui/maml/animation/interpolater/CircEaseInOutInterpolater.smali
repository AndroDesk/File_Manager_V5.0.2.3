.class public Lcom/miui/maml/animation/interpolater/CircEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "CircEaseInOutInterpolater.java"

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
    .registers 7

    .line 1
    const/high16 v0, 0x40000000  # 2.0f

    .line 3
    mul-float/2addr p1, v0

    .line 4
    const/high16 v1, 0x3f800000  # 1.0f

    .line 6
    cmpg-float v2, p1, v1

    .line 8
    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    .line 10
    if-gez v2, :cond_18

    .line 12
    const/high16 v0, -0x41000000  # -0.5f

    .line 14
    mul-float/2addr p1, p1

    .line 15
    sub-float/2addr v1, p1

    .line 16
    float-to-double v1, v1

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 20
    move-result-wide v1

    .line 21
    sub-double/2addr v1, v3

    .line 22
    double-to-float p1, v1

    .line 23
    mul-float/2addr p1, v0

    .line 24
    return p1

    .line 25
    :cond_18
    const/high16 v2, 0x3f000000  # 0.5f

    .line 27
    sub-float/2addr p1, v0

    .line 28
    mul-float/2addr p1, p1

    .line 29
    sub-float/2addr v1, p1

    .line 30
    float-to-double v0, v1

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 34
    move-result-wide v0

    .line 35
    add-double/2addr v0, v3

    .line 36
    double-to-float p1, v0

    .line 37
    mul-float/2addr p1, v2

    .line 38
    return p1
.end method
