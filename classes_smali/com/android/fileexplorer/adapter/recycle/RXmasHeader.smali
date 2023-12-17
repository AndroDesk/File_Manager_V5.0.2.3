.class public Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;
.super Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;
.source "RXmasHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;,
        Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RXmasHeader"


# instance fields
.field private mFirstSnowView:Landroid/widget/ImageView;

.field private mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

.field private mSecondSnowView:Landroid/widget/ImageView;

.field public mSnowAnimSet:Landroid/animation/AnimatorSet;

.field private mTrees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mTrees:Ljava/util/List;

    const p2, 0x7f0d01eb

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mTrees:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;)Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    return-object p0
.end method

.method private addTrees()V
    .registers 8

    const v0, 0x7f032ec4

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    const/4 v3, 0x4

    if-ge v2, v3, :cond_95

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-eqz v2, :cond_6e

    const/4 v4, 0x1

    if-eq v2, v4, :cond_58

    const/4 v4, 0x2

    if-eq v2, v4, :cond_41

    const v4, 0x800005

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v4, 0x41c80000  # 25.0f

    invoke-static {v4}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    move-result v4

    const/high16 v5, -0x3e100000  # -30.0f

    invoke-static {v5}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    move-result v5

    invoke-virtual {v3, v1, v4, v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v4, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x3f6b851f  # 0.92f

    invoke-direct {v4, p0, v5, v6}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;-><init>(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;Landroid/content/Context;F)V

    goto :goto_89

    :cond_41
    const/high16 v4, 0x43870000  # 270.0f

    invoke-static {v4}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    move-result v4

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v1, v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v4, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-direct {v4, p0, v5, v6}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;-><init>(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;Landroid/content/Context;F)V

    goto :goto_89

    :cond_58
    const/high16 v4, 0x41200000  # 10.0f

    invoke-static {v4}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v1, v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v4, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x3f400000  # 0.75f

    invoke-direct {v4, p0, v5, v6}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;-><init>(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;Landroid/content/Context;F)V

    goto :goto_89

    :cond_6e
    const/high16 v4, -0x3e900000  # -15.0f

    invoke-static {v4}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    move-result v4

    const/high16 v5, 0x41500000  # 13.0f

    invoke-static {v5}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    move-result v5

    invoke-virtual {v3, v4, v1, v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v4, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x3f51eb85  # 0.82f

    invoke-direct {v4, p0, v5, v6}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;-><init>(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;Landroid/content/Context;F)V

    :goto_89
    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mTrees:Ljava/util/List;

    invoke-interface {v5, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    :cond_95
    return-void
.end method

.method private setRate(F)V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mTrees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;->scaleByPull(F)V

    goto :goto_f

    :cond_1f
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;->cutByPull(F)V

    return-void
.end method

.method private startPullEndAnimation()V
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    const v1, 0x7f0801ab

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;)V

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startRefreshAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    const v1, 0x7f0801ac

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method

.method private startSnowAnimation()V
    .registers 13

    const-string v0, "RXmasHeader"

    const-string v1, "startSnowAnimation: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    const v1, 0x7f08063b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSnowAnimSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_7f

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSnowAnimSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mFirstSnowView:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const v5, 0x7f070808

    invoke-static {v5}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x1

    aput v6, v2, v7

    const-string v6, "translationY"

    invoke-static {v0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v10, -0x1

    invoke-virtual {v2, v10}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSecondSnowView:Landroid/widget/ImageView;

    new-array v11, v1, [F

    invoke-static {v5}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v11, v3

    aput v4, v11, v7

    invoke-static {v2, v6, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSnowAnimSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v3

    aput-object v2, v1, v7

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_8a

    :cond_7f
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSnowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSnowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->init(Landroid/content/Context;I)V

    const p1, 0x7f070808

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setRefreshTriggerHeight(I)V

    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getScreenHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x8

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPrivateTriggerHeight(I)V

    const p1, 0x7f032c30

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mFirstSnowView:Landroid/widget/ImageView;

    const p1, 0x7f032c31

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSecondSnowView:Landroid/widget/ImageView;

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;-><init>(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    const p1, 0x7f032c33

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->addTrees()V

    return-void
.end method

.method public onStateForceRefresh()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->startSnowAnimation()V

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->startRefreshAnimation()V

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mRefreshTriggerHeight:I

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->smoothScrollTo(I)V

    return-void
.end method

.method public onStateNormal()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSnowAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_7
    return-void
.end method

.method public onStatePrivate()V
    .registers 1

    return-void
.end method

.method public onStatePullToRefresh()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->startSnowAnimation()V

    return-void
.end method

.method public onStateRefreshDone()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->startPullEndAnimation()V

    return-void
.end method

.method public onStateRefreshing()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->startRefreshAnimation()V

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mRefreshTriggerHeight:I

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->smoothScrollTo(I)V

    return-void
.end method

.method public onStateReleaseToRefresh()V
    .registers 1

    return-void
.end method

.method public setVisibleHeight(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setVisibleHeight(I)V

    int-to-float p1, p1

    const v0, 0x7f070808

    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->setRate(F)V

    return-void
.end method
