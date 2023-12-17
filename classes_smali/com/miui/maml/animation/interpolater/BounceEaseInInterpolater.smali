.class public Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;
.super Ljava/lang/Object;
.source "BounceEaseInInterpolater.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInterpolationImp(F)F
    .registers 2

    .line 1
    const/high16 v0, 0x3f800000  # 1.0f

    .line 3
    sub-float p0, v0, p0

    .line 5
    invoke-static {p0}, Lcom/miui/maml/animation/interpolater/BounceEaseOutInterpolater;->getInterpolationImp(F)F

    .line 8
    move-result p0

    .line 9
    sub-float/2addr v0, p0

    .line 10
    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/miui/maml/animation/interpolater/BounceEaseInInterpolater;->getInterpolationImp(F)F

    .line 4
    move-result p1

    .line 5
    return p1
.end method
