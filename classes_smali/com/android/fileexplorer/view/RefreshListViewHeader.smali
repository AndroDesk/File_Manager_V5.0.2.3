.class public Lcom/android/fileexplorer/view/RefreshListViewHeader;
.super Lcom/android/fileexplorer/view/AbsRefreshHeader;
.source "RefreshListViewHeader.java"


# static fields
.field private static final ROTATE_ANIM_DURATION:I


# instance fields
.field private mArrowImageView:Landroid/widget/ImageView;

.field private mHintTextView:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshText1:I

.field private mRefreshText2:I

.field private mRefreshingText:I

.field private mRotateDownAnim:Landroid/view/animation/Animation;

.field private mRotateUpAnim:Landroid/view/animation/Animation;

.field private mTimeTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d22

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->ROTATE_ANIM_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/RefreshListViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/AbsRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f1103a0

    iput p2, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRefreshingText:I

    const p2, 0x7f11039f

    iput p2, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRefreshText1:I

    const p2, 0x7f1103a1

    iput p2, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRefreshText2:I

    const p2, 0x7f0d01c2

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/view/RefreshListViewHeader;->initView(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public initView(Landroid/content/Context;I)V
    .registers 12

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->initView(Landroid/content/Context;I)V

    const p1, 0x7f032ec7

    invoke-static/range {p1 .. p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    const p1, 0x7f032ec5

    invoke-static/range {p1 .. p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mHintTextView:Landroid/widget/TextView;

    const p1, 0x7f032ec2

    invoke-static/range {p1 .. p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mProgressBar:Landroid/widget/ProgressBar;

    const p1, 0x7f032ec3

    invoke-static/range {p1 .. p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mTimeTextView:Landroid/widget/TextView;

    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000  # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000  # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000  # 0.5f

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRotateUpAnim:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRotateUpAnim:Landroid/view/animation/Animation;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/high16 v3, -0x3ccc0000  # -180.0f

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000  # 0.5f

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRotateDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRotateDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method

.method public onStateNormal()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRotateDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mHintTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRefreshText1:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onStatePrivate()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f182f72

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onStatePullToRefresh()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/RefreshListViewHeader;->onStateNormal()V

    return-void
.end method

.method public onStateRefreshDone()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/RefreshListViewHeader;->onStateNormal()V

    return-void
.end method

.method public onStateRefreshing()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mHintTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRefreshingText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onStateReleaseToRefresh()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRotateUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mHintTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRefreshText2:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setLastRefreshTime(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRefreshText1(I)V
    .registers 3

    iput p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRefreshText1:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setRefreshText2(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRefreshText2:I

    return-void
.end method

.method public setRefreshingText(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRefreshingText:I

    return-void
.end method
