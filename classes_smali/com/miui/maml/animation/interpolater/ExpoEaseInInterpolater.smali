.class public Lcom/miui/maml/animation/interpolater/ExpoEaseInInterpolater;
.super Ljava/lang/Object;
.source "ExpoEaseInInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 6

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_6

    goto :goto_14

    :cond_6
    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    const/high16 v2, 0x41200000  # 10.0f

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float/2addr p1, v3

    mul-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    :goto_14
    return v0
.end method