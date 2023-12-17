.class public Lmiuix/view/animation/BackEaseInOutInterpolator;
.super Ljava/lang/Object;
.source "BackEaseInOutInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mOvershot:F


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lmiuix/view/animation/BackEaseInOutInterpolator;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lmiuix/view/animation/BackEaseInOutInterpolator;->mOvershot:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 11

    .line 1
    iget v0, p0, Lmiuix/view/animation/BackEaseInOutInterpolator;->mOvershot:F

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
    const/high16 v1, 0x40000000  # 2.0f

    .line 13
    mul-float/2addr p1, v1

    .line 14
    const/high16 v2, 0x3f800000  # 1.0f

    .line 16
    cmpg-float v3, p1, v2

    .line 18
    const/high16 v4, 0x3f000000  # 0.5f

    .line 20
    const-wide v5, 0x3ff8666666666666L  # 1.525

    .line 25
    if-gez v3, :cond_25

    .line 27
    float-to-double v0, v0

    .line 28
    mul-double/2addr v0, v5

    .line 29
    double-to-float v0, v0

    .line 30
    mul-float v1, p1, p1

    .line 32
    add-float/2addr v2, v0

    .line 33
    mul-float/2addr v2, p1

    .line 34
    sub-float/2addr v2, v0

    .line 35
    mul-float/2addr v2, v1

    .line 36
    :goto_23
    mul-float/2addr v2, v4

    .line 37
    return v2

    .line 38
    :cond_25
    sub-float/2addr p1, v1

    .line 39
    float-to-double v7, v0

    .line 40
    mul-double/2addr v7, v5

    .line 41
    double-to-float v0, v7

    .line 42
    mul-float v3, p1, p1

    .line 44
    add-float/2addr v2, v0

    .line 45
    mul-float/2addr v2, p1

    .line 46
    add-float/2addr v2, v0

    .line 47
    mul-float/2addr v2, v3

    .line 48
    add-float/2addr v2, v1

    .line 49
    goto :goto_23
.end method
