.class public Lcom/android/fileexplorer/view/XmasHeader;
.super Lcom/android/fileexplorer/view/AbsRefreshHeader;
.source "XmasHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;,
        Lcom/android/fileexplorer/view/XmasHeader$TreeView;
    }
.end annotation


# instance fields
.field private mFirstSnowView:Landroid/widget/ImageView;

.field private mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

.field private mSecondSnowView:Landroid/widget/ImageView;

.field private mTrees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/view/XmasHeader$TreeView;",
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

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/XmasHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/AbsRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/view/XmasHeader;->mTrees:Ljava/util/List;

    const p2, 0x7f0d01eb

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/view/XmasHeader;->initView(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/XmasHeader;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mTrees:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/XmasHeader;)Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/XmasHeader;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mFirstSnowView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/XmasHeader;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSecondSnowView:Landroid/widget/ImageView;

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

    new-instance v4, Lcom/android/fileexplorer/view/XmasHeader$TreeView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x3f6b851f  # 0.92f

    invoke-direct {v4, p0, v5, v6}, Lcom/android/fileexplorer/view/XmasHeader$TreeView;-><init>(Lcom/android/fileexplorer/view/XmasHeader;Landroid/content/Context;F)V

    goto :goto_89

    :cond_41
    const/high16 v4, 0x43870000  # 270.0f

    invoke-static {v4}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    move-result v4

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v1, v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v4, Lcom/android/fileexplorer/view/XmasHeader$TreeView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-direct {v4, p0, v5, v6}, Lcom/android/fileexplorer/view/XmasHeader$TreeView;-><init>(Lcom/android/fileexplorer/view/XmasHeader;Landroid/content/Context;F)V

    goto :goto_89

    :cond_58
    const/high16 v4, 0x41200000  # 10.0f

    invoke-static {v4}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v1, v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v4, Lcom/android/fileexplorer/view/XmasHeader$TreeView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x3f400000  # 0.75f

    invoke-direct {v4, p0, v5, v6}, Lcom/android/fileexplorer/view/XmasHeader$TreeView;-><init>(Lcom/android/fileexplorer/view/XmasHeader;Landroid/content/Context;F)V

    goto :goto_89

    :cond_6e
    const/high16 v4, -0x3e900000  # -15.0f

    invoke-static {v4}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    move-result v4

    const/high16 v5, 0x41500000  # 13.0f

    invoke-static {v5}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    move-result v5

    invoke-virtual {v3, v4, v1, v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v4, Lcom/android/fileexplorer/view/XmasHeader$TreeView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x3f51eb85  # 0.82f

    invoke-direct {v4, p0, v5, v6}, Lcom/android/fileexplorer/view/XmasHeader$TreeView;-><init>(Lcom/android/fileexplorer/view/XmasHeader;Landroid/content/Context;F)V

    :goto_89
    iget-object v5, p0, Lcom/android/fileexplorer/view/XmasHeader;->mTrees:Ljava/util/List;

    invoke-interface {v5, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    :cond_95
    return-void
.end method

.method private setRate(F)V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mTrees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/view/XmasHeader$TreeView;

    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/view/XmasHeader$TreeView;->scaleByPull(F)V

    goto :goto_c

    :cond_1c
    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;->cutByPull(F)V

    return-void
.end method

.method private startPullEndAnimation()V
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/view/XmasHeader$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/XmasHeader$1;-><init>(Lcom/android/fileexplorer/view/XmasHeader;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    const v1, 0x7f0801ab

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    new-instance v1, Lcom/android/fileexplorer/view/XmasHeader$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/XmasHeader$2;-><init>(Lcom/android/fileexplorer/view/XmasHeader;)V

    const-wide/16 v2, 0x352

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startRefreshAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    const v1, 0x7f0801ac

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method

.method private startSnowAnimation()V
    .registers 16

    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    const v1, 0x7f08063b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSecondSnowView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_5b

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000  # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    new-instance v14, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/high16 v11, -0x40800000  # -1.0f

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v5, v14

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v14, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v14, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v14, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    invoke-virtual {v14, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/XmasHeader;->mFirstSnowView:Landroid/widget/ImageView;

    invoke-virtual {v1, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSecondSnowView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_5b
    return-void
.end method


# virtual methods
.method public initView(Landroid/content/Context;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->initView(Landroid/content/Context;I)V

    const p1, 0x7f032c30

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/fileexplorer/view/XmasHeader;->mFirstSnowView:Landroid/widget/ImageView;

    const p1, 0x7f032c31

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSecondSnowView:Landroid/widget/ImageView;

    new-instance p1, Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;-><init>(Lcom/android/fileexplorer/view/XmasHeader;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    const p1, 0x7f032c33

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/XmasHeader;->addTrees()V

    return-void
.end method

.method public onStateNormal()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mFirstSnowView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSecondSnowView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public onStatePrivate()V
    .registers 1

    return-void
.end method

.method public onStatePullToRefresh()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/XmasHeader;->startSnowAnimation()V

    return-void
.end method

.method public onStateRefreshDone()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/XmasHeader;->startPullEndAnimation()V

    return-void
.end method

.method public onStateRefreshing()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/XmasHeader;->startRefreshAnimation()V

    return-void
.end method

.method public onStateReleaseToRefresh()V
    .registers 1

    return-void
.end method

.method public setLastRefreshTime(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setRefreshText1(I)V
    .registers 2

    return-void
.end method

.method public setRefreshText2(I)V
    .registers 2

    return-void
.end method

.method public setRefreshingText(I)V
    .registers 2

    return-void
.end method

.method public setVisibleHeight(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->setVisibleHeight(I)V

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070808

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/XmasHeader;->setRate(F)V

    return-void
.end method
