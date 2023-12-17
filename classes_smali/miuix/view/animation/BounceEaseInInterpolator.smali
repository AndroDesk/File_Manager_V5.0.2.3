.class public Lmiuix/view/animation/BounceEaseInInterpolator;
.super Ljava/lang/Object;
.source "BounceEaseInInterpolator.java"

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
    .registers 4

    .line 1
    new-instance v0, Lmiuix/view/animation/BounceEaseOutInterpolator;

    .line 3
    invoke-direct {v0}, Lmiuix/view/animation/BounceEaseOutInterpolator;-><init>()V

    .line 6
    const/high16 v1, 0x3f800000  # 1.0f

    .line 8
    sub-float p1, v1, p1

    .line 10
    invoke-virtual {v0, p1}, Lmiuix/view/animation/BounceEaseOutInterpolator;->getInterpolation(F)F

    .line 13
    move-result p1

    .line 14
    sub-float/2addr v1, p1

    .line 15
    return v1
.end method
