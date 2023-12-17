.class public Lcom/android/fileexplorer/view/RefreshListViewHeader;
.super Lcom/android/fileexplorer/view/AbsRefreshHeader;
.source "RefreshListViewHeader.java"


# static fields
.field private static final ROTATE_ANIM_DURATION:I = 0xb4


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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/RefreshListViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/AbsRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f1103a0

    .line 3
    iput p2, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRefreshingText:I

    const p2, 0x7f11039f

    .line 4
    iput p2, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRefreshText1:I

    const p2, 0x7f1103a1

    .line 5
    iput p2, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRefreshText2:I

    const p2, 0x7f0d01c2

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/view/RefreshListViewHeader;->initView(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public initView(Landroid/content/Context;I)V
    .registers 12

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->initView(Landroid/content/Context;I)V

    .line 4
    const p1, 0x7f0a0351

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/ImageView;

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 15
    const p1, 0x7f0a0353

    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 24
    iput-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mHintTextView:Landroid/widget/TextView;

    .line 26
    const p1, 0x7f0a0354

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/ProgressBar;

    .line 35
    iput-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 37
    const p1, 0x7f0a0355

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/widget/TextView;

    .line 46
    iput-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mTimeTextView:Landroid/widget/TextView;

    .line 48
    new-instance p1, Landroid/view/animation/RotateAnimation;

    .line 50
    const/4 v1, 0x0

    .line 51
    const/high16 v2, -0x3ccc0000  # -180.0f

    .line 53
    const/4 v3, 0x1

    .line 54
    const/high16 v4, 0x3f000000  # 0.5f

    .line 56
    const/4 v5, 0x1

    .line 57
    const/high16 v6, 0x3f000000  # 0.5f

    .line 59
    move-object v0, p1

    .line 60
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 63
    iput-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRotateUpAnim:Landroid/view/animation/Animation;

    .line 65
    const-wide/16 v0, 0xb4

    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 70
    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRotateUpAnim:Landroid/view/animation/Animation;

    .line 72
    const/4 p2, 0x1

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 76
    new-instance p1, Landroid/view/animation/RotateAnimation;

    .line 78
    const/high16 v3, -0x3ccc0000  # -180.0f

    .line 80
    const/4 v4, 0x0

    .line 81
    const/4 v7, 0x1

    .line 82
    const/high16 v8, 0x3f000000  # 0.5f

    .line 84
    move-object v2, p1

    .line 85
    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 88
    iput-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRotateDownAnim:Landroid/view/animation/Animation;

    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 93
    iget-object p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRotateDownAnim:Landroid/view/animation/Animation;

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 98
    return-void
.end method

.method public onStateNormal()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 9
    const/16 v2, 0x8

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mTimeTextView:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 21
    iget-object v1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRotateDownAnim:Landroid/view/animation/Animation;

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mHintTextView:Landroid/widget/TextView;

    .line 28
    iget v1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRefreshText1:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 33
    return-void
.end method

.method public onStatePrivate()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 9
    const/16 v1, 0x8

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mTimeTextView:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mHintTextView:Landroid/widget/TextView;

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v2

    .line 25
    const v3, 0x7f1102e4

    .line 28
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 40
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    return-void
.end method

.method public onStatePullToRefresh()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/RefreshListViewHeader;->onStateNormal()V

    .line 4
    return-void
.end method

.method public onStateRefreshDone()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/RefreshListViewHeader;->onStateNormal()V

    .line 4
    return-void
.end method

.method public onStateRefreshing()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 8
    const/16 v1, 0x8

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mTimeTextView:Landroid/widget/TextView;

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mHintTextView:Landroid/widget/TextView;

    .line 26
    iget v1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRefreshingText:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 31
    return-void
.end method

.method public onStateReleaseToRefresh()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 9
    const/16 v2, 0x8

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mTimeTextView:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 26
    iget-object v1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRotateUpAnim:Landroid/view/animation/Animation;

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mHintTextView:Landroid/widget/TextView;

    .line 33
    iget v1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRefreshText2:I

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 38
    return-void
.end method

.method public setLastRefreshTime(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mTimeTextView:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public setRefreshText1(I)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRefreshText1:I

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mHintTextView:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 8
    return-void
.end method

.method public setRefreshText2(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRefreshText2:I

    .line 3
    return-void
.end method

.method public setRefreshingText(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/RefreshListViewHeader;->mRefreshingText:I

    .line 3
    return-void
.end method
