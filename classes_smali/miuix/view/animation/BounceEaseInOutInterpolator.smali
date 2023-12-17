.class public Lmiuix/view/animation/BounceEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "BounceEaseInOutInterpolator.java"

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
    if-gez v1, :cond_14

    .line 9
    new-instance v1, Lmiuix/view/animation/BounceEaseInInterpolator;

    .line 11
    invoke-direct {v1}, Lmiuix/view/animation/BounceEaseInInterpolator;-><init>()V

    .line 14
    mul-float/2addr p1, v2

    .line 15
    invoke-virtual {v1, p1}, Lmiuix/view/animation/BounceEaseInInterpolator;->getInterpolation(F)F

    .line 18
    move-result p1

    .line 19
    mul-float/2addr p1, v0

    .line 20
    return p1

    .line 21
    :cond_14
    new-instance v1, Lmiuix/view/animation/BounceEaseOutInterpolator;

    .line 23
    invoke-direct {v1}, Lmiuix/view/animation/BounceEaseOutInterpolator;-><init>()V

    .line 26
    mul-float/2addr p1, v2

    .line 27
    const/high16 v2, 0x3f800000  # 1.0f

    .line 29
    sub-float/2addr p1, v2

    .line 30
    invoke-virtual {v1, p1}, Lmiuix/view/animation/BounceEaseOutInterpolator;->getInterpolation(F)F

    .line 33
    move-result p1

    .line 34
    mul-float/2addr p1, v0

    .line 35
    add-float/2addr p1, v0

    .line 36
    return p1
.end method
