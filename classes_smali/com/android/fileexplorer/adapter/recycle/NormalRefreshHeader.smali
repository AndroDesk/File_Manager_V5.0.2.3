.class public Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;
.super Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;
.source "NormalRefreshHeader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NormalRefreshHeader"


# instance fields
.field private mArrowImageView:Landroid/widget/ImageView;

.field private mHintTextView:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTimeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0d01bf

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 3
    return-object p0
.end method

.method private rotationAnimator(F)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    .line 6
    move-result v0

    .line 7
    cmpl-float v0, p1, v0

    .line 9
    if-nez v0, :cond_12

    .line 11
    const-string p1, "NormalRefreshHeader"

    .line 13
    const-string v0, "rotationAnimator: same rotation, return."

    .line 15
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void

    .line 19
    :cond_12
    const/4 v0, 0x2

    .line 20
    new-array v0, v0, [F

    .line 22
    const/4 v1, 0x0

    .line 23
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    .line 28
    move-result v2

    .line 29
    aput v2, v0, v1

    .line 31
    const/4 v1, 0x1

    .line 32
    aput p1, v0, v1

    .line 34
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 37
    move-result-object p1

    .line 38
    const-wide/16 v0, 0xc8

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 47
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader$1;

    .line 49
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;)V

    .line 52
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 55
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 58
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->init(Landroid/content/Context;I)V

    .line 4
    const p1, 0x7f0a0351

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/ImageView;

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 15
    const p1, 0x7f0a0353

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 24
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mHintTextView:Landroid/widget/TextView;

    .line 26
    const p1, 0x7f0a0355

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/TextView;

    .line 35
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mTimeTextView:Landroid/widget/TextView;

    .line 37
    const p1, 0x7f0a0354

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/widget/ProgressBar;

    .line 46
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 48
    return-void
.end method

.method public onStateForceRefresh()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->onStateRefreshing()V

    .line 4
    return-void
.end method

.method public onStateNormal()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mTimeTextView:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mHintTextView:Landroid/widget/TextView;

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 25
    const v2, 0x7f11039f

    .line 28
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    return-void
.end method

.method public onStatePrivate()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mTimeTextView:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mHintTextView:Landroid/widget/TextView;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v2

    .line 19
    const v3, 0x7f1102e4

    .line 22
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    return-void
.end method

.method public onStatePullToRefresh()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mTimeTextView:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mHintTextView:Landroid/widget/TextView;

    .line 21
    const v1, 0x7f11039f

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->rotationAnimator(F)V

    .line 31
    return-void
.end method

.method public onStateRefreshDone()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mTimeTextView:Landroid/widget/TextView;

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mHintTextView:Landroid/widget/TextView;

    .line 26
    const v1, 0x7f110389

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 32
    return-void
.end method

.method public onStateRefreshing()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 14
    const/16 v1, 0x8

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mTimeTextView:Landroid/widget/TextView;

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mHintTextView:Landroid/widget/TextView;

    .line 26
    const v1, 0x7f1103a0

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 32
    const/high16 v0, 0x42540000  # 53.0f

    .line 34
    invoke-static {v0}, Lcom/android/fileexplorer/util/DisplayUtil;->dp2px(F)I

    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->smoothScrollTo(I)V

    .line 41
    return-void
.end method

.method public onStateReleaseToRefresh()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mTimeTextView:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mHintTextView:Landroid/widget/TextView;

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 25
    const v2, 0x7f1103a1

    .line 28
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    const/high16 v0, 0x43340000  # 180.0f

    .line 37
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->rotationAnimator(F)V

    .line 40
    return-void
.end method

.method public setLastRefreshTime(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mTimeTextView:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method
