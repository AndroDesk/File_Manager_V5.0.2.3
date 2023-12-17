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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mTrees:Ljava/util/List;

    const p2, 0x7f0d01eb

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;)Ljava/util/List;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mTrees:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;)Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

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
    new-instance v4, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    move-result-object v5

    .line 55
    const v6, 0x3f6b851f  # 0.92f

    .line 58
    invoke-direct {v4, p0, v5, v6}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;-><init>(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;Landroid/content/Context;F)V

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
    new-instance v4, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 78
    move-result-object v5

    .line 79
    const/high16 v6, 0x3f800000  # 1.0f

    .line 81
    invoke-direct {v4, p0, v5, v6}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;-><init>(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;Landroid/content/Context;F)V

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
    new-instance v4, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    move-result-object v5

    .line 101
    const/high16 v6, 0x3f400000  # 0.75f

    .line 103
    invoke-direct {v4, p0, v5, v6}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;-><init>(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;Landroid/content/Context;F)V

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
    new-instance v4, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 127
    move-result-object v5

    .line 128
    const v6, 0x3f51eb85  # 0.82f

    .line 131
    invoke-direct {v4, p0, v5, v6}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;-><init>(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;Landroid/content/Context;F)V

    .line 134
    :goto_85
    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mTrees:Ljava/util/List;

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
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mState:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_9

    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq v0, v1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mTrees:Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1f

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;

    .line 28
    invoke-virtual {v1, p1}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$TreeView;->scaleByPull(F)V

    .line 31
    goto :goto_f

    .line 32
    :cond_1f
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    .line 34
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;->cutByPull(F)V

    .line 37
    return-void
.end method

.method private startPullEndAnimation()V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;)V

    .line 6
    const-wide/16 v1, 0x1f4

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    .line 16
    const v1, 0x7f0801ab

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    .line 24
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 30
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    .line 35
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$2;

    .line 37
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;)V

    .line 40
    const-wide/16 v2, 0x384

    .line 42
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    return-void
.end method

.method private startRefreshAnimation()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    .line 3
    const v1, 0x7f0801ac

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

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
    .registers 13

    .line 1
    const-string v0, "RXmasHeader"

    .line 3
    const-string v1, "startSnowAnimation: "

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    .line 10
    const v1, 0x7f08063b

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSnowAnimSet:Landroid/animation/AnimatorSet;

    .line 18
    if-nez v0, :cond_7f

    .line 20
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 22
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSnowAnimSet:Landroid/animation/AnimatorSet;

    .line 27
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mFirstSnowView:Landroid/widget/ImageView;

    .line 29
    const/4 v1, 0x2

    .line 30
    new-array v2, v1, [F

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    aput v4, v2, v3

    .line 36
    const v5, 0x7f070808

    .line 39
    invoke-static {v5}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 42
    move-result v6

    .line 43
    int-to-float v6, v6

    .line 44
    const/4 v7, 0x1

    .line 45
    aput v6, v2, v7

    .line 47
    const-string v6, "translationY"

    .line 49
    invoke-static {v0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 52
    move-result-object v0

    .line 53
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .line 55
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 58
    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    const-wide/16 v8, 0x3e8

    .line 63
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 66
    move-result-object v2

    .line 67
    const/4 v10, -0x1

    .line 68
    invoke-virtual {v2, v10}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 71
    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 74
    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 77
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSecondSnowView:Landroid/widget/ImageView;

    .line 79
    new-array v11, v1, [F

    .line 81
    invoke-static {v5}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 84
    move-result v5

    .line 85
    neg-int v5, v5

    .line 86
    int-to-float v5, v5

    .line 87
    aput v5, v11, v3

    .line 89
    aput v4, v11, v7

    .line 91
    invoke-static {v2, v6, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 94
    move-result-object v2

    .line 95
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    .line 97
    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 100
    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 103
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v4, v10}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 110
    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 113
    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 116
    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSnowAnimSet:Landroid/animation/AnimatorSet;

    .line 118
    new-array v1, v1, [Landroid/animation/Animator;

    .line 120
    aput-object v0, v1, v3

    .line 122
    aput-object v2, v1, v7

    .line 124
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 127
    goto :goto_8a

    .line 128
    :cond_7f
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_8a

    .line 134
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSnowAnimSet:Landroid/animation/AnimatorSet;

    .line 136
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 139
    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSnowAnimSet:Landroid/animation/AnimatorSet;

    .line 141
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 144
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;I)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->init(Landroid/content/Context;I)V

    .line 4
    const p1, 0x7f070808

    .line 7
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 10
    move-result p2

    .line 11
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setRefreshTriggerHeight(I)V

    .line 14
    invoke-static {p1}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getScreenHeight()I

    .line 21
    move-result p2

    .line 22
    div-int/lit8 p2, p2, 0x8

    .line 24
    add-int/2addr p2, p1

    .line 25
    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPrivateTriggerHeight(I)V

    .line 28
    const p1, 0x7f0a01a6

    .line 31
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/ImageView;

    .line 37
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mFirstSnowView:Landroid/widget/ImageView;

    .line 39
    const p1, 0x7f0a01a7

    .line 42
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/ImageView;

    .line 48
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSecondSnowView:Landroid/widget/ImageView;

    .line 50
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    move-result-object p2

    .line 56
    invoke-direct {p1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;-><init>(Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;Landroid/content/Context;)V

    .line 59
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    .line 61
    const p1, 0x7f0a01a5

    .line 64
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/widget/FrameLayout;

    .line 70
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSantaClauseView:Lcom/android/fileexplorer/adapter/recycle/RXmasHeader$SantaClauseView;

    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 76
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->addTrees()V

    .line 79
    return-void
.end method

.method public onStateForceRefresh()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->startSnowAnimation()V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->startRefreshAnimation()V

    .line 7
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mRefreshTriggerHeight:I

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->smoothScrollTo(I)V

    .line 12
    return-void
.end method

.method public onStateNormal()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->mSnowAnimSet:Landroid/animation/AnimatorSet;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 8
    :cond_7
    return-void
.end method

.method public onStatePrivate()V
    .registers 1

    return-void
.end method

.method public onStatePullToRefresh()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->startSnowAnimation()V

    .line 4
    return-void
.end method

.method public onStateRefreshDone()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->startPullEndAnimation()V

    .line 4
    return-void
.end method

.method public onStateRefreshing()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->startRefreshAnimation()V

    .line 4
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mRefreshTriggerHeight:I

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->smoothScrollTo(I)V

    .line 9
    return-void
.end method

.method public onStateReleaseToRefresh()V
    .registers 1

    return-void
.end method

.method public setVisibleHeight(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setVisibleHeight(I)V

    .line 4
    int-to-float p1, p1

    .line 5
    const v0, 0x7f070808

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    div-float/2addr p1, v0

    .line 14
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/RXmasHeader;->setRate(F)V

    .line 17
    return-void
.end method
