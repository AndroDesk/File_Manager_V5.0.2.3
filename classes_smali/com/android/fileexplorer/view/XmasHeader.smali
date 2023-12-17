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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/XmasHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/AbsRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/view/XmasHeader;->mTrees:Ljava/util/List;

    const p2, 0x7f0d01eb

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/view/XmasHeader;->initView(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/XmasHeader;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mTrees:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/XmasHeader;)Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/XmasHeader;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mFirstSnowView:Landroid/widget/ImageView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/view/XmasHeader;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSecondSnowView:Landroid/widget/ImageView;

    .line 3
    return-object p0
.end method

.method private addTrees()V
    .registers 8

    .line 1
    const v0, 0x7f0a0352

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/FrameLayout;

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_b
    const/4 v3, 0x4

    .line 13
    if-ge v2, v3, :cond_91

    .line 15
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    const/4 v4, -0x2

    .line 18
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 21
    if-eqz v2, :cond_6a

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq v2, v4, :cond_54

    .line 26
    const/4 v4, 0x2

    .line 27
    if-eq v2, v4, :cond_3d

    .line 29
    const v4, 0x800005

    .line 32
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 34
    const/high16 v4, 0x41c80000  # 25.0f

    .line 36
    invoke-static {v4}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    .line 39
    move-result v4

    .line 40
    const/high16 v5, -0x3e100000  # -30.0f

    .line 42
    invoke-static {v5}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    .line 45
    move-result v5

    .line 46
    invoke-virtual {v3, v1, v4, v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 49
    new-instance v4, Lcom/android/fileexplorer/view/XmasHeader$TreeView;

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v5

    .line 55
    const v6, 0x3f6b851f  # 0.92f

    .line 58
    invoke-direct {v4, p0, v5, v6}, Lcom/android/fileexplorer/view/XmasHeader$TreeView;-><init>(Lcom/android/fileexplorer/view/XmasHeader;Landroid/content/Context;F)V

    .line 61
    goto :goto_85

    .line 62
    :cond_3d
    const/high16 v4, 0x43870000  # 270.0f

    .line 64
    invoke-static {v4}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    .line 67
    move-result v4

    .line 68
    const/16 v5, 0xa

    .line 70
    invoke-virtual {v3, v4, v1, v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 73
    new-instance v4, Lcom/android/fileexplorer/view/XmasHeader$TreeView;

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    move-result-object v5

    .line 79
    const/high16 v6, 0x3f800000  # 1.0f

    .line 81
    invoke-direct {v4, p0, v5, v6}, Lcom/android/fileexplorer/view/XmasHeader$TreeView;-><init>(Lcom/android/fileexplorer/view/XmasHeader;Landroid/content/Context;F)V

    .line 84
    goto :goto_85

    .line 85
    :cond_54
    const/high16 v4, 0x41200000  # 10.0f

    .line 87
    invoke-static {v4}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    .line 90
    move-result v4

    .line 91
    const/4 v5, 0x5

    .line 92
    invoke-virtual {v3, v4, v1, v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 95
    new-instance v4, Lcom/android/fileexplorer/view/XmasHeader$TreeView;

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    move-result-object v5

    .line 101
    const/high16 v6, 0x3f400000  # 0.75f

    .line 103
    invoke-direct {v4, p0, v5, v6}, Lcom/android/fileexplorer/view/XmasHeader$TreeView;-><init>(Lcom/android/fileexplorer/view/XmasHeader;Landroid/content/Context;F)V

    .line 106
    goto :goto_85

    .line 107
    :cond_6a
    const/high16 v4, -0x3e900000  # -15.0f

    .line 109
    invoke-static {v4}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    .line 112
    move-result v4

    .line 113
    const/high16 v5, 0x41500000  # 13.0f

    .line 115
    invoke-static {v5}, Lcom/android/fileexplorer/util/AppUtils;->dpToPx(F)I

    .line 118
    move-result v5

    .line 119
    invoke-virtual {v3, v4, v1, v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 122
    new-instance v4, Lcom/android/fileexplorer/view/XmasHeader$TreeView;

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 127
    move-result-object v5

    .line 128
    const v6, 0x3f51eb85  # 0.82f

    .line 131
    invoke-direct {v4, p0, v5, v6}, Lcom/android/fileexplorer/view/XmasHeader$TreeView;-><init>(Lcom/android/fileexplorer/view/XmasHeader;Landroid/content/Context;F)V

    .line 134
    :goto_85
    iget-object v5, p0, Lcom/android/fileexplorer/view/XmasHeader;->mTrees:Ljava/util/List;

    .line 136
    invoke-interface {v5, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 139
    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 144
    goto/16 :goto_b

    .line 146
    :cond_91
    return-void
.end method

.method private setRate(F)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mState:I

    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_6

    .line 6
    return-void

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mTrees:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1c

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/fileexplorer/view/XmasHeader$TreeView;

    .line 25
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/view/XmasHeader$TreeView;->scaleByPull(F)V

    .line 28
    goto :goto_c

    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    .line 31
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;->cutByPull(F)V

    .line 34
    return-void
.end method

.method private startPullEndAnimation()V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/XmasHeader$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/view/XmasHeader$1;-><init>(Lcom/android/fileexplorer/view/XmasHeader;)V

    .line 6
    const-wide/16 v1, 0x1f4

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    .line 16
    const v1, 0x7f0801ab

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    .line 24
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 30
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    .line 35
    new-instance v1, Lcom/android/fileexplorer/view/XmasHeader$2;

    .line 37
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/view/XmasHeader$2;-><init>(Lcom/android/fileexplorer/view/XmasHeader;)V

    .line 40
    const-wide/16 v2, 0x352

    .line 42
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    return-void
.end method

.method private startRefreshAnimation()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    .line 3
    const v1, 0x7f0801ac

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    .line 11
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 17
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 20
    return-void
.end method

.method private startSnowAnimation()V
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    .line 3
    const v1, 0x7f08063b

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSecondSnowView:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_5b

    .line 17
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x1

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x1

    .line 26
    const/high16 v9, 0x3f800000  # 1.0f

    .line 28
    move-object v1, v0

    .line 29
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 32
    const-wide/16 v1, 0x3e8

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 37
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    .line 39
    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 42
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 49
    const/4 v4, -0x1

    .line 50
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 53
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    .line 55
    const/4 v9, 0x0

    .line 56
    const/4 v10, 0x1

    .line 57
    const/high16 v11, -0x40800000  # -1.0f

    .line 59
    const/4 v12, 0x1

    .line 60
    const/4 v13, 0x0

    .line 61
    move-object v5, v14

    .line 62
    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 65
    invoke-virtual {v14, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 68
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 70
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 73
    invoke-virtual {v14, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 76
    invoke-virtual {v14, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 79
    invoke-virtual {v14, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 82
    iget-object v1, p0, Lcom/android/fileexplorer/view/XmasHeader;->mFirstSnowView:Landroid/widget/ImageView;

    .line 84
    invoke-virtual {v1, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 87
    iget-object v1, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSecondSnowView:Landroid/widget/ImageView;

    .line 89
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 92
    :cond_5b
    return-void
.end method


# virtual methods
.method public initView(Landroid/content/Context;I)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->initView(Landroid/content/Context;I)V

    .line 4
    const p1, 0x7f0a01a6

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/ImageView;

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/view/XmasHeader;->mFirstSnowView:Landroid/widget/ImageView;

    .line 15
    const p1, 0x7f0a01a7

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/ImageView;

    .line 24
    iput-object p1, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSecondSnowView:Landroid/widget/ImageView;

    .line 26
    new-instance p1, Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    move-result-object p2

    .line 32
    invoke-direct {p1, p0, p2}, Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;-><init>(Lcom/android/fileexplorer/view/XmasHeader;Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    .line 37
    const p1, 0x7f0a01a5

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/widget/FrameLayout;

    .line 46
    iget-object p2, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/view/XmasHeader$SantaClauseView;

    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 52
    invoke-direct {p0}, Lcom/android/fileexplorer/view/XmasHeader;->addTrees()V

    .line 55
    return-void
.end method

.method public onStateNormal()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mFirstSnowView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/view/XmasHeader;->mSecondSnowView:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 11
    return-void
.end method

.method public onStatePrivate()V
    .registers 1

    return-void
.end method

.method public onStatePullToRefresh()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/XmasHeader;->startSnowAnimation()V

    .line 4
    return-void
.end method

.method public onStateRefreshDone()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/XmasHeader;->startPullEndAnimation()V

    .line 4
    return-void
.end method

.method public onStateRefreshing()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/XmasHeader;->startRefreshAnimation()V

    .line 4
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

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->setVisibleHeight(I)V

    .line 4
    int-to-float p1, p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f070808

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    div-float/2addr p1, v0

    .line 18
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/XmasHeader;->setRate(F)V

    .line 21
    return-void
.end method
