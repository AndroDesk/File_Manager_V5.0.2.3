.class public Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;
.super Landroid/widget/LinearLayout;
.source "LoadMoreView.java"


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private imageLoadMore:Landroid/widget/ImageView;

.field private textTip:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f042d2a

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f032c4b

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->imageLoadMore:Landroid/widget/ImageView;

    const p2, 0x7f032984

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->textTip:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->imageLoadMore:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->textTip:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public loadMoreComplete(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;Z)V
    .registers 4

    if-nez p2, :cond_a

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->stopAnimation()V

    :cond_a
    const/4 p2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void
.end method

.method public loadMoreEnd(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)V
    .registers 4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->stopAnimation()V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void
.end method

.method public loadMoreFail(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->textTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->imageLoadMore:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;Lcom/android/fileexplorer/adapter/recycle/PullToRefreshRecyclerView;)V

    const-wide/16 v1, 0x320

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setLoadMoreResource(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->imageLoadMore:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public startAnimation()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->imageLoadMore:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->imageLoadMore:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v2

    const v3, 0x43b38000  # 359.0f

    add-float/2addr v2, v3

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$1;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public stopAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->animator:Landroid/animation/ValueAnimator;

    :cond_14
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/LoadMoreView;->imageLoadMore:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
