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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0d01bf

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->init(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private rotationAnimator(F)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_12

    const-string p1, "NormalRefreshHeader"

    const-string v0, "rotationAnimator: same rotation, return."

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->init(Landroid/content/Context;I)V

    const p1, 0x7f032ec7

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    const p1, 0x7f032ec5

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mHintTextView:Landroid/widget/TextView;

    const p1, 0x7f032ec3

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mTimeTextView:Landroid/widget/TextView;

    const p1, 0x7f032ec2

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public onStateForceRefresh()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->onStateRefreshing()V

    return-void
.end method

.method public onStateNormal()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f182e09

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStatePrivate()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f182f72

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onStatePullToRefresh()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mHintTextView:Landroid/widget/TextView;

    const v1, 0x7f11039f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->rotationAnimator(F)V

    return-void
.end method

.method public onStateRefreshDone()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mHintTextView:Landroid/widget/TextView;

    const v1, 0x7f110389

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onStateRefreshing()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mHintTextView:Landroid/widget/TextView;

    const v1, 0x7f1103a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/high16 v0, 0x42540000  # 53.0f

    invoke-static {v0}, Lcom/android/fileexplorer/util/DisplayUtil;->dp2px(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->smoothScrollTo(I)V

    return-void
.end method

.method public onStateReleaseToRefresh()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mArrowImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f182e37

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x43340000  # 180.0f

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->rotationAnimator(F)V

    return-void
.end method

.method public setLastRefreshTime(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/NormalRefreshHeader;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
