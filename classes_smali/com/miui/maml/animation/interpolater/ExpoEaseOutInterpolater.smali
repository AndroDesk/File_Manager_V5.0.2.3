.class public Lcom/miui/maml/animation/interpolater/ExpoEaseOutInterpolater;
.super Ljava/lang/Object;
.source "ExpoEaseOutInterpolater.java"

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
    const/high16 v0, 0x3f800000  # 1.0f

    .line 3
    cmpl-float v1, p1, v0

    .line 5
    if-nez v1, :cond_7

    .line 7
    goto :goto_16

    .line 8
    :cond_7
    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    .line 10
    const/high16 v2, -0x3ee00000  # -10.0f

    .line 12
    mul-float/2addr p1, v2

    .line 13
    float-to-double v2, p1

    .line 14
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .line 17
    move-result-wide v0

    .line 18
    neg-double v0, v0

    .line 19
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 21
    add-double/2addr v0, v2

    .line 22
    double-to-float v0, v0

    .line 23
    :goto_16
    return v0
.end method
