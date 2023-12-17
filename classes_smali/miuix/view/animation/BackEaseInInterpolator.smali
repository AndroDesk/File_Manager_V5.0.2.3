.class public Lmiuix/view/animation/BackEaseInInterpolator;
.super Ljava/lang/Object;
.source "BackEaseInInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mOvershot:F


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lmiuix/view/animation/BackEaseInInterpolator;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lmiuix/view/animation/BackEaseInInterpolator;->mOvershot:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 5

    .line 1
    iget v0, p0, Lmiuix/view/animation/BackEaseInInterpolator;->mOvershot:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v1, v0, v1

    .line 6
    if-nez v1, :cond_a

    .line 8
    const v0, 0x3fd9cd60

    .line 11
    :cond_a
    mul-float v1, p1, p1

    .line 13
    const/high16 v2, 0x3f800000  # 1.0f

    .line 15
    add-float/2addr v2, v0

    .line 16
    mul-float/2addr v2, p1

    .line 17
    sub-float/2addr v2, v0

    .line 18
    mul-float/2addr v2, v1

    .line 19
    return v2
.end method
