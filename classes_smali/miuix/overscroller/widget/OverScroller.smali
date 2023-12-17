.class public Lmiuix/overscroller/widget/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;,
        Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field public static final FLING_MODE:I = 0x1

.field private static SCROLL_BOOST_SS_ENABLE:Z = false

.field public static final SCROLL_BY_FLING_MODE:I = 0x2

.field public static final SCROLL_MODE:I


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

.field private final mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 4

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p3, 0x1

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p5}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_d

    .line 4
    new-instance p2, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;

    invoke-direct {p2}, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;-><init>()V

    iput-object p2, p0, Lmiuix/overscroller/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_f

    .line 5
    :cond_d
    iput-object p2, p0, Lmiuix/overscroller/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 6
    :goto_f
    iput-boolean p3, p0, Lmiuix/overscroller/widget/OverScroller;->mFlywheel:Z

    .line 7
    new-instance p2, Lmiuix/overscroller/widget/DynamicScroller;

    invoke-direct {p2, p1}, Lmiuix/overscroller/widget/DynamicScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 8
    new-instance p2, Lmiuix/overscroller/widget/DynamicScroller;

    invoke-direct {p2, p1}, Lmiuix/overscroller/widget/DynamicScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    return-void
.end method

.method private resetScrollerPosition(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setStart(I)V

    .line 5
    invoke-virtual {p1, v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFinal(I)V

    .line 8
    invoke-virtual {p1, v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setCurrentPosition(I)V

    .line 11
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->finish()V

    .line 6
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 8
    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->finish()V

    .line 11
    return-void
.end method

.method public computeScrollOffset()Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller;->mMode:I

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_61

    .line 14
    if-eq v0, v2, :cond_26

    .line 16
    const/4 v3, 0x2

    .line 17
    if-eq v0, v3, :cond_14

    .line 19
    goto/16 :goto_8e

    .line 21
    :cond_14
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 23
    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->computeScrollOffset()Z

    .line 26
    move-result v0

    .line 27
    iget-object v3, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 29
    invoke-virtual {v3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->computeScrollOffset()Z

    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_24

    .line 35
    if-eqz v0, :cond_25

    .line 37
    :cond_24
    move v1, v2

    .line 38
    :cond_25
    return v1

    .line 39
    :cond_26
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 41
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$000(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)Z

    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_43

    .line 47
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 49
    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->update()Z

    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_43

    .line 55
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 57
    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_43

    .line 63
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 65
    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->finish()V

    .line 68
    :cond_43
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 70
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$000(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)Z

    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_8e

    .line 76
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 78
    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->update()Z

    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_8e

    .line 84
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 86
    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_8e

    .line 92
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 94
    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->finish()V

    .line 97
    goto :goto_8e

    .line 98
    :cond_61
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 101
    move-result-wide v0

    .line 102
    iget-object v3, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 104
    invoke-static {v3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$600(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)J

    .line 107
    move-result-wide v3

    .line 108
    sub-long/2addr v0, v3

    .line 109
    iget-object v3, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 111
    invoke-static {v3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$500(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    .line 114
    move-result v3

    .line 115
    int-to-long v4, v3

    .line 116
    cmp-long v4, v0, v4

    .line 118
    if-gez v4, :cond_8b

    .line 120
    iget-object v4, p0, Lmiuix/overscroller/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 122
    long-to-float v0, v0

    .line 123
    int-to-float v1, v3

    .line 124
    div-float/2addr v0, v1

    .line 125
    invoke-interface {v4, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 128
    move-result v0

    .line 129
    iget-object v1, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 131
    invoke-virtual {v1, v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    .line 134
    iget-object v1, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 136
    invoke-virtual {v1, v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->updateScroll(F)V

    .line 139
    goto :goto_8e

    .line 140
    :cond_8b
    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller;->abortAnimation()V

    .line 143
    :cond_8e
    :goto_8e
    return v2
.end method

.method public extendDuration(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 6
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->extendDuration(I)V

    .line 11
    return-void
.end method

.method public fling(IIIIIIII)V
    .registers 20

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 1
    invoke-virtual/range {v0 .. v10}, Lmiuix/overscroller/widget/OverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .registers 23

    move-object v0, p0

    .line 2
    iget-boolean v1, v0, Lmiuix/overscroller/widget/OverScroller;->mFlywheel:Z

    if-eqz v1, :cond_3c

    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 3
    iget-object v1, v0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$200(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D

    move-result-wide v1

    double-to-float v1, v1

    .line 4
    iget-object v2, v0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-static {v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$200(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D

    move-result-wide v2

    double-to-float v2, v2

    move v3, p3

    int-to-float v4, v3

    .line 5
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_3d

    move/from16 v5, p4

    int-to-float v6, v5

    .line 6
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_3f

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-float/2addr v6, v2

    float-to-int v2, v6

    move v5, v1

    goto :goto_41

    :cond_3c
    move v3, p3

    :cond_3d
    move/from16 v5, p4

    :cond_3f
    move v2, v5

    move v5, v3

    :goto_41
    const/4 v1, 0x1

    .line 7
    iput v1, v0, Lmiuix/overscroller/widget/OverScroller;->mMode:I

    .line 8
    iget-object v3, v0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    move v4, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p9

    invoke-virtual/range {v3 .. v8}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 9
    iget-object v6, v0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    move v7, p2

    move v8, v2

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p10

    invoke-virtual/range {v6 .. v11}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    return-void
.end method

.method public final forceFinished(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    iget-object v1, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 5
    invoke-static {v1, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$002(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;Z)Z

    .line 8
    move-result p1

    .line 9
    invoke-static {v0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$002(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;Z)Z

    .line 12
    return-void
.end method

.method public getCurrVelocity()F
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$200(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D

    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 9
    invoke-static {v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$200(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D

    .line 12
    move-result-wide v2

    .line 13
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    .line 16
    move-result-wide v0

    .line 17
    double-to-float v0, v0

    .line 18
    return v0
.end method

.method public getCurrVelocityX()F
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$200(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D

    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    return v0
.end method

.method public getCurrVelocityY()F
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$200(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D

    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    return v0
.end method

.method public final getCurrX()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$100(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D

    .line 6
    move-result-wide v0

    .line 7
    double-to-int v0, v0

    .line 8
    return v0
.end method

.method public final getCurrY()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$100(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D

    .line 6
    move-result-wide v0

    .line 7
    double-to-int v0, v0

    .line 8
    return v0
.end method

.method public final getDuration()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$500(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 9
    invoke-static {v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$500(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    .line 12
    move-result v1

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final getFinalX()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$400(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D

    .line 6
    move-result-wide v0

    .line 7
    double-to-int v0, v0

    .line 8
    return v0
.end method

.method public final getFinalY()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$400(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D

    .line 6
    move-result-wide v0

    .line 7
    double-to-int v0, v0

    .line 8
    return v0
.end method

.method public getMode()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/overscroller/widget/OverScroller;->mMode:I

    .line 3
    return v0
.end method

.method public final getStartX()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$300(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D

    .line 6
    move-result-wide v0

    .line 7
    double-to-int v0, v0

    .line 8
    return v0
.end method

.method public final getStartY()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$300(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D

    .line 6
    move-result-wide v0

    .line 7
    double-to-int v0, v0

    .line 8
    return v0
.end method

.method public final isFinished()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$000(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_12

    .line 9
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 11
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$000(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_12

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    :goto_13
    return v0
.end method

.method public isOverScrolled()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$000(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_10

    .line 9
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 11
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$700(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_20

    .line 17
    :cond_10
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 19
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$000(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_22

    .line 25
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 27
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$700(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)I

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_22

    .line 33
    :cond_20
    const/4 v0, 0x1

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 v0, 0x0

    .line 36
    :goto_23
    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$400(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D

    .line 6
    move-result-wide v0

    .line 7
    double-to-int v0, v0

    .line 8
    iget-object v1, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 10
    invoke-static {v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$300(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D

    .line 13
    move-result-wide v1

    .line 14
    double-to-int v1, v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    iget-object v1, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 18
    invoke-static {v1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$400(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D

    .line 21
    move-result-wide v1

    .line 22
    double-to-int v1, v1

    .line 23
    iget-object v2, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 25
    invoke-static {v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$300(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)D

    .line 28
    move-result-wide v2

    .line 29
    double-to-int v2, v2

    .line 30
    sub-int/2addr v1, v2

    .line 31
    invoke-virtual {p0}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_40

    .line 37
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    .line 40
    move-result p1

    .line 41
    int-to-float v0, v0

    .line 42
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 45
    move-result v0

    .line 46
    cmpl-float p1, p1, v0

    .line 48
    if-nez p1, :cond_40

    .line 50
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 53
    move-result p1

    .line 54
    int-to-float p2, v1

    .line 55
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    .line 58
    move-result p2

    .line 59
    cmpl-float p1, p1, p2

    .line 61
    if-nez p1, :cond_40

    .line 63
    const/4 p1, 0x1

    .line 64
    goto :goto_41

    .line 65
    :cond_40
    const/4 p1, 0x0

    .line 66
    :goto_41
    return p1
.end method

.method public notifyHorizontalEdgeReached(III)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 6
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    .line 6
    return-void
.end method

.method public final resetPosition()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-direct {p0, v0}, Lmiuix/overscroller/widget/OverScroller;->resetScrollerPosition(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)V

    .line 6
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 8
    invoke-direct {p0, v0}, Lmiuix/overscroller/widget/OverScroller;->resetScrollerPosition(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)V

    .line 11
    return-void
.end method

.method public setFinalX(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 6
    return-void
.end method

.method public setFinalY(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    .line 6
    return-void
.end method

.method public final setFriction(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 6
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFriction(F)V

    .line 11
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    .line 1
    if-nez p1, :cond_a

    .line 3
    new-instance p1, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;

    .line 5
    invoke-direct {p1}, Lmiuix/overscroller/widget/OverScroller$ViscousFluidInterpolator;-><init>()V

    .line 8
    iput-object p1, p0, Lmiuix/overscroller/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 10
    goto :goto_c

    .line 11
    :cond_a
    iput-object p1, p0, Lmiuix/overscroller/widget/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 13
    :goto_c
    return-void
.end method

.method public springBack(IIIIII)Z
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller;->mMode:I

    .line 4
    iget-object v1, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 6
    invoke-virtual {v1, p1, p3, p4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->springback(III)Z

    .line 9
    move-result p1

    .line 10
    iget-object p3, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 12
    invoke-virtual {p3, p2, p5, p6}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->springback(III)Z

    .line 15
    move-result p2

    .line 16
    if-nez p1, :cond_15

    .line 18
    if-eqz p2, :cond_14

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    :cond_15
    :goto_15
    return v0
.end method

.method public startScroll(IIII)V
    .registers 11

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lmiuix/overscroller/widget/OverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .registers 7

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller;->mMode:I

    .line 3
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    .line 4
    iget-object p1, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    invoke-virtual {p1, p2, p4, p5}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startScroll(III)V

    return-void
.end method

.method public startScrollByFling(IIII)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Lmiuix/overscroller/widget/OverScroller;->startScrollByFling(IIIIII)V

    return-void
.end method

.method public startScrollByFling(IIIIII)V
    .registers 8

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lmiuix/overscroller/widget/OverScroller;->mMode:I

    .line 3
    iget-object v0, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    int-to-float p1, p1

    invoke-virtual {v0, p1, p3, p5}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startScrollByFling(FII)V

    .line 4
    iget-object p1, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    int-to-float p2, p2

    invoke-virtual {p1, p2, p4, p6}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->startScrollByFling(FII)V

    return-void
.end method

.method public timePassed()I
    .registers 7

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerX:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 7
    invoke-static {v2}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$600(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)J

    .line 10
    move-result-wide v2

    .line 11
    iget-object v4, p0, Lmiuix/overscroller/widget/OverScroller;->mScrollerY:Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;

    .line 13
    invoke-static {v4}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->access$600(Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;)J

    .line 16
    move-result-wide v4

    .line 17
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 20
    move-result-wide v2

    .line 21
    sub-long/2addr v0, v2

    .line 22
    long-to-int v0, v0

    .line 23
    return v0
.end method
