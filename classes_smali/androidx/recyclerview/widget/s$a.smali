.class public Landroidx/recyclerview/widget/s$a;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source "RemixRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public h:I

.field public i:I

.field public j:Lmiuix/overscroller/widget/OverScroller;

.field public k:Landroid/view/animation/Interpolator;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:Z

.field public r:Lmiuix/util/HapticFeedbackCompat;

.field public final synthetic s:Landroidx/recyclerview/widget/s;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/s;)V
    .registers 4

    iput-object p1, p0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/s$a;->k:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/s$a;->l:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/s$a;->m:Z

    iput v1, p0, Landroidx/recyclerview/widget/s$a;->o:I

    iput v1, p0, Landroidx/recyclerview/widget/s$a;->p:I

    iput-boolean v1, p0, Landroidx/recyclerview/widget/s$a;->q:Z

    new-instance v1, Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/s$a;->l:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/s$a;->m:Z

    goto :goto_14

    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, p0}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_14
    return-void
.end method

.method public final c(IILandroid/view/animation/Interpolator;I)V
    .registers 16

    iget-object v0, p0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/s;->isOverScrolling()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/high16 v0, -0x80000000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p4, v0, :cond_78

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p4, v0, :cond_1b

    move v3, v1

    goto :goto_1c

    :cond_1b
    move v3, v2

    :goto_1c
    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int v5, p1, p1

    mul-int v6, p2, p2

    add-int/2addr v6, v5

    int-to-double v5, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget-object v6, p0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    if-eqz v3, :cond_36

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    goto :goto_3a

    :cond_36
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    :goto_3a
    div-int/lit8 v7, v6, 0x2

    int-to-float v5, v5

    const/high16 v8, 0x3f800000  # 1.0f

    mul-float/2addr v5, v8

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v7, v7

    const/high16 v9, 0x3f000000  # 0.5f

    sub-float/2addr v5, v9

    const v9, 0x3ef1463b

    mul-float/2addr v5, v9

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    double-to-float v5, v9

    mul-float/2addr v5, v7

    add-float/2addr v5, v7

    if-lez v4, :cond_68

    const/high16 p4, 0x447a0000  # 1000.0f

    int-to-float v0, v4

    div-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p4

    mul-int/lit8 p4, p4, 0x4

    goto :goto_73

    :cond_68
    if-eqz v3, :cond_6b

    goto :goto_6c

    :cond_6b
    move p4, v0

    :goto_6c
    int-to-float p4, p4

    div-float/2addr p4, v6

    add-float/2addr p4, v8

    const/high16 v0, 0x43960000  # 300.0f

    mul-float/2addr p4, v0

    float-to-int p4, p4

    :goto_73
    const/16 v0, 0x7d0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    :cond_78
    if-nez p3, :cond_7c

    sget-object p3, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    :cond_7c
    iget-object p4, p0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p4}, Lmiuix/overscroller/widget/OverScroller;->getMode()I

    move-result p4

    const/4 v0, 0x2

    if-ne p4, v0, :cond_9b

    iget-boolean p4, p0, Landroidx/recyclerview/widget/s$a;->q:Z

    if-nez p4, :cond_9b

    iget-object p4, p0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p4}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityY()F

    move-result p4

    float-to-int p4, p4

    iput p4, p0, Landroidx/recyclerview/widget/s$a;->p:I

    iget-object p4, p0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p4}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityX()F

    move-result p4

    float-to-int p4, p4

    iput p4, p0, Landroidx/recyclerview/widget/s$a;->o:I

    :cond_9b
    iget-object p4, p0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v3, p4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    instance-of v4, v3, Landroidx/recyclerview/widget/k;

    if-eqz v4, :cond_bd

    const v4, 0x3f99999a  # 1.2f

    check-cast v3, Landroidx/recyclerview/widget/k;

    iget v5, v3, Landroidx/recyclerview/widget/k;->mInterimTargetDx:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    iget v3, v3, Landroidx/recyclerview/widget/k;->mInterimTargetDy:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    int-to-float v4, p1

    cmpl-float v4, v5, v4

    if-nez v4, :cond_bd

    int-to-float v4, p2

    cmpl-float v3, v3, v4

    if-nez v3, :cond_bd

    goto :goto_be

    :cond_bd
    move v1, v2

    :goto_be
    iput-boolean v1, p0, Landroidx/recyclerview/widget/s$a;->q:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/s$a;->k:Landroid/view/animation/Interpolator;

    if-eq v1, p3, :cond_d1

    iput-object p3, p0, Landroidx/recyclerview/widget/s$a;->k:Landroid/view/animation/Interpolator;

    new-instance v1, Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {v1, p4, p3}, Lmiuix/overscroller/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    :cond_d1
    iput v2, p0, Landroidx/recyclerview/widget/s$a;->i:I

    iput v2, p0, Landroidx/recyclerview/widget/s$a;->h:I

    iget-object p3, p0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v6, p0, Landroidx/recyclerview/widget/s$a;->o:I

    iget v7, p0, Landroidx/recyclerview/widget/s$a;->p:I

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v7}, Lmiuix/overscroller/widget/OverScroller;->startScrollByFling(IIIIII)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/s$a;->b()V

    return-void
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/OverScroller;->abortAnimation()V

    return-void
.end method

.method public final run()V
    .registers 23

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/s$a;->d()V

    return-void

    :cond_c
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/recyclerview/widget/s$a;->m:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/recyclerview/widget/s$a;->l:Z

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_251

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrX()I

    move-result v4

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrY()I

    move-result v5

    iget-object v6, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v6}, Lmiuix/overscroller/widget/OverScroller;->getMode()I

    move-result v6

    if-ne v6, v3, :cond_3b

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityX()F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Landroidx/recyclerview/widget/s$a;->o:I

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityY()F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Landroidx/recyclerview/widget/s$a;->p:I

    :cond_3b
    iget v6, v0, Landroidx/recyclerview/widget/s$a;->h:I

    sub-int v6, v4, v6

    iget v7, v0, Landroidx/recyclerview/widget/s$a;->i:I

    sub-int v13, v5, v7

    iput v4, v0, Landroidx/recyclerview/widget/s$a;->h:I

    iput v5, v0, Landroidx/recyclerview/widget/s$a;->i:I

    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v4, v2

    aput v2, v4, v3

    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v4}, Lmiuix/overscroller/widget/OverScroller;->getMode()I

    move-result v4

    if-ne v4, v3, :cond_92

    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget-object v5, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    const v7, 0x1020002

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    :goto_6a
    if-eqz v4, :cond_92

    instance-of v7, v4, Lmiuix/core/view/NestedCurrentFling;

    if-eqz v7, :cond_86

    move-object v7, v4

    check-cast v7, Lmiuix/core/view/NestedCurrentFling;

    iget-object v8, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v8}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityX()F

    move-result v8

    iget-object v9, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v9}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocityY()F

    move-result v9

    invoke-interface {v7, v8, v9}, Lmiuix/core/view/NestedCurrentFling;->onNestedCurrentFling(FF)Z

    move-result v7

    if-eqz v7, :cond_86

    goto :goto_92

    :cond_86
    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_8d

    if-ne v4, v5, :cond_8d

    goto :goto_92

    :cond_8d
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_6a

    :cond_92
    :goto_92
    iget-object v7, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v10, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move v8, v6

    move v9, v13

    invoke-virtual/range {v7 .. v12}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v4

    if-eqz v4, :cond_aa

    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v5, v4, v2

    sub-int/2addr v6, v5

    aget v4, v4, v3

    sub-int/2addr v13, v4

    :cond_aa
    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v4}, Landroid/view/View;->getOverScrollMode()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_b8

    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v4, v6, v13}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_b8
    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v7, :cond_103

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v7, v2

    aput v2, v7, v3

    invoke-virtual {v4, v6, v13, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v8, v7, v2

    aget v7, v7, v3

    sub-int/2addr v6, v8

    sub-int/2addr v13, v7

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    if-eqz v4, :cond_105

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$x;->isPendingInitialRun()Z

    move-result v9

    if-nez v9, :cond_105

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$x;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_105

    iget-object v9, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$y;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    move-result v9

    if-nez v9, :cond_f1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$x;->stop()V

    goto :goto_105

    :cond_f1
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$x;->getTargetPosition()I

    move-result v10

    if-lt v10, v9, :cond_ff

    sub-int/2addr v9, v3

    invoke-virtual {v4, v9}, Landroidx/recyclerview/widget/RecyclerView$x;->setTargetPosition(I)V

    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView$x;->onAnimation(II)V

    goto :goto_105

    :cond_ff
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView$x;->onAnimation(II)V

    goto :goto_105

    :cond_103
    move v7, v2

    move v8, v7

    :cond_105
    :goto_105
    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_114

    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    :cond_114
    iget-object v14, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v4, v14, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v2, v4, v2

    aput v2, v4, v3

    const/16 v19, 0x0

    const/16 v20, 0x1

    move v15, v8

    move/from16 v16, v7

    move/from16 v17, v6

    move/from16 v18, v13

    move-object/from16 v21, v4

    invoke-virtual/range {v14 .. v21}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v10, v9, v2

    sub-int/2addr v6, v10

    aget v9, v9, v3

    sub-int/2addr v13, v9

    if-nez v8, :cond_13a

    if-eqz v7, :cond_13d

    :cond_13a
    invoke-virtual {v4, v8, v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    :cond_13d
    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-static {v4}, Landroidx/recyclerview/widget/s;->access$000(Landroidx/recyclerview/widget/s;)Z

    move-result v4

    if-nez v4, :cond_14a

    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    :cond_14a
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrX()I

    move-result v4

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getFinalX()I

    move-result v9

    if-ne v4, v9, :cond_156

    move v4, v3

    goto :goto_157

    :cond_156
    move v4, v2

    :goto_157
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrY()I

    move-result v9

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getFinalY()I

    move-result v10

    if-ne v9, v10, :cond_163

    move v9, v3

    goto :goto_164

    :cond_163
    move v9, v2

    :goto_164
    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_175

    if-nez v4, :cond_16e

    if-eqz v6, :cond_173

    :cond_16e
    if-nez v9, :cond_175

    if-eqz v13, :cond_173

    goto :goto_175

    :cond_173
    move v4, v2

    goto :goto_176

    :cond_175
    :goto_175
    move v4, v3

    :goto_176
    iget-object v9, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    if-eqz v9, :cond_186

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$x;->isPendingInitialRun()Z

    move-result v9

    if-eqz v9, :cond_186

    move v9, v3

    goto :goto_187

    :cond_186
    move v9, v2

    :goto_187
    if-nez v9, :cond_245

    if-eqz v4, :cond_245

    iget-object v4, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v4}, Landroid/view/View;->getOverScrollMode()I

    move-result v4

    if-eq v4, v5, :cond_1ae

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    if-gez v6, :cond_19c

    neg-int v4, v1

    goto :goto_1a1

    :cond_19c
    if-lez v6, :cond_1a0

    move v4, v1

    goto :goto_1a1

    :cond_1a0
    move v4, v2

    :goto_1a1
    if-gez v13, :cond_1a5

    neg-int v1, v1

    goto :goto_1a9

    :cond_1a5
    if-lez v13, :cond_1a8

    goto :goto_1a9

    :cond_1a8
    move v1, v2

    :goto_1a9
    iget-object v5, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v5, v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    :cond_1ae
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v1, :cond_1d1

    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getFinalY()I

    move-result v1

    iget-object v5, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v5}, Lmiuix/overscroller/widget/OverScroller;->getStartY()I

    move-result v5

    if-le v1, v5, :cond_1c9

    move v1, v3

    goto :goto_1ca

    :cond_1c9
    move v1, v4

    :goto_1ca
    iget-object v5, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v5, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    goto :goto_1f2

    :cond_1d1
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_1f4

    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v1}, Lmiuix/overscroller/widget/OverScroller;->getFinalX()I

    move-result v1

    iget-object v5, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v5}, Lmiuix/overscroller/widget/OverScroller;->getStartX()I

    move-result v5

    if-le v1, v5, :cond_1eb

    move v1, v3

    goto :goto_1ec

    :cond_1eb
    move v1, v4

    :goto_1ec
    iget-object v5, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v5, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    :goto_1f2
    xor-int/2addr v1, v3

    goto :goto_1f5

    :cond_1f4
    move v1, v2

    :goto_1f5
    iget-object v5, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-static {v5}, Landroidx/recyclerview/widget/s;->access$100(Landroidx/recyclerview/widget/s;)Z

    move-result v5

    if-nez v5, :cond_233

    iget-object v5, v0, Landroidx/recyclerview/widget/s$a;->j:Lmiuix/overscroller/widget/OverScroller;

    invoke-virtual {v5}, Lmiuix/overscroller/widget/OverScroller;->getMode()I

    move-result v5

    if-ne v5, v3, :cond_233

    iget-boolean v5, v0, Landroidx/recyclerview/widget/s$a;->n:Z

    if-nez v5, :cond_233

    if-eqz v1, :cond_233

    const-string v1, "2.0"

    invoke-static {v1}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22c

    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->r:Lmiuix/util/HapticFeedbackCompat;

    if-nez v1, :cond_224

    new-instance v1, Lmiuix/util/HapticFeedbackCompat;

    iget-object v5, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Landroidx/recyclerview/widget/s$a;->r:Lmiuix/util/HapticFeedbackCompat;

    :cond_224
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->r:Lmiuix/util/HapticFeedbackCompat;

    const/16 v5, 0xc9

    invoke-virtual {v1, v5}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    goto :goto_233

    :cond_22c
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    sget v5, Lmiuix/view/HapticFeedbackConstants;->MIUI_SCROLL_EDGE:I

    invoke-static {v1, v5}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    :cond_233
    :goto_233
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_251

    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/e$b;

    iget-object v5, v1, Landroidx/recyclerview/widget/e$b;->c:[I

    if-eqz v5, :cond_242

    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([II)V

    :cond_242
    iput v2, v1, Landroidx/recyclerview/widget/e$b;->d:I

    goto :goto_251

    :cond_245
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/s$a;->b()V

    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/e;

    if-eqz v4, :cond_251

    invoke-virtual {v4, v1, v8, v7}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    :cond_251
    :goto_251
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$x;

    if-eqz v1, :cond_262

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$x;->isPendingInitialRun()Z

    move-result v4

    if-eqz v4, :cond_262

    invoke-virtual {v1, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$x;->onAnimation(II)V

    :cond_262
    iput-boolean v2, v0, Landroidx/recyclerview/widget/s$a;->l:Z

    iget-boolean v1, v0, Landroidx/recyclerview/widget/s$a;->m:Z

    if-eqz v1, :cond_275

    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    sget-object v2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v1, v0}, Lm0/g0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_283

    :cond_275
    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    iget-object v1, v0, Landroidx/recyclerview/widget/s$a;->s:Landroidx/recyclerview/widget/s;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    iput v2, v0, Landroidx/recyclerview/widget/s$a;->p:I

    iput v2, v0, Landroidx/recyclerview/widget/s$a;->o:I

    :goto_283
    return-void
.end method
