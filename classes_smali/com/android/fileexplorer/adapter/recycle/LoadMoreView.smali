.class public Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;
.super Landroid/widget/LinearLayout;
.source "LoadMoreView.java"


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private imageLoadMore:Landroid/widget/ImageView;

.field private textTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d00bc

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01dd

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->imageLoadMore:Landroid/widget/ImageView;

    const p2, 0x7f0a0412

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->textTip:Landroid/widget/TextView;

    const/16 p3, 0x8

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->imageLoadMore:Landroid/widget/ImageView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->textTip:Landroid/widget/TextView;

    .line 3
    return-object p0
.end method


# virtual methods
.method public loadMoreComplete(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;Z)V
    .registers 4

    .line 1
    if-nez p2, :cond_a

    .line 3
    const/16 p2, 0x8

    .line 5
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->stopAnimation()V

    .line 11
    :cond_a
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 15
    move-result v0

    .line 16
    neg-int v0, v0

    .line 17
    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 20
    return-void
.end method

.method public loadMoreEnd(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)V
    .registers 4

    .line 1
    const/16 v0, 0x8

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->stopAnimation()V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 12
    move-result v0

    .line 13
    neg-int v0, v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 18
    return-void
.end method

.method public loadMoreFail(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->textTip:Landroid/widget/TextView;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->imageLoadMore:Landroid/widget/ImageView;

    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;

    .line 15
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)V

    .line 18
    const-wide/16 v1, 0x320

    .line 20
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 23
    return-void
.end method

.method public setLoadMoreResource(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->imageLoadMore:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    return-void
.end method

.method public startAnimation()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [F

    .line 15
    const/4 v1, 0x0

    .line 16
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->imageLoadMore:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    .line 21
    move-result v2

    .line 22
    aput v2, v0, v1

    .line 24
    const/4 v1, 0x1

    .line 25
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->imageLoadMore:Landroid/widget/ImageView;

    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    .line 30
    move-result v2

    .line 31
    const v3, 0x43b38000  # 359.0f

    .line 34
    add-float/2addr v2, v3

    .line 35
    aput v2, v0, v1

    .line 37
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    .line 43
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    .line 45
    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 48
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 51
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    .line 53
    const/4 v1, -0x1

    .line 54
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 57
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    .line 59
    const-wide/16 v1, 0x3e8

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 64
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    .line 66
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$1;

    .line 68
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 74
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    .line 76
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 79
    return-void
.end method

.method public stopAnimation()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    .line 3
    if-eqz v0, :cond_14

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    .line 10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    .line 15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    .line 21
    :cond_14
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->imageLoadMore:Landroid/widget/ImageView;

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 26
    return-void
.end method
