.class public Lcom/miui/maml/animation/interpolater/BounceEaseInOutInterpolater;
.super Ljava/lang/Object;
.source "BounceEaseInOutInterpolater.java"

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
    .registers 5

    .line 1
    const/high16 v0, 0x3f000000  # 0.5f

    .line 3
    cmpg-float v1, p1, v0

    .line 5
    const/high16 v2, 0x40000000  # 2.0f

    .line 7
    if-gez v1, :cond_f

    .line 9
    mul-float/2addr p1, v2

    .line 10
    invoke-static {p1}, Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;->getInterpolationImp(F)F

    .line 13
    move-result p1

    .line 14
    mul-float/2addr p1, v0

    .line 15
    return p1

    .line 16
    :cond_f
    mul-float/2addr p1, v2

    .line 17
    const/high16 v1, 0x3f800000  # 1.0f

    .line 19
    sub-float/2addr p1, v1

    .line 20
    invoke-static {p1}, Lcom/miui/maml/animation/interpolater/BounceEaseOutInterpolater;->getInterpolationImp(F)F

    .line 23
    move-result p1

    .line 24
    mul-float/2addr p1, v0

    .line 25
    add-float/2addr p1, v0

    .line 26
    return p1
.end method
