.class public abstract Lcom/android/fileexplorer/view/AbsRefreshHeader;
.super Landroid/widget/LinearLayout;
.source "AbsRefreshHeader.java"


# static fields
.field public static final STATE_NORMAL:I

.field public static final STATE_PRIVATE:I

.field public static final STATE_PULL_TO_REFRESH:I

.field public static final STATE_REFRESHING:I

.field public static final STATE_REFRESHING_DONE:I

.field public static final STATE_RELEASE_TO_REFRESH:I


# instance fields
.field private mContainer:Landroid/view/View;

.field private mProgress:Landroid/widget/FrameLayout;

.field private mPullProgress:Lcom/android/fileexplorer/view/SectorBar;

.field public mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->STATE_NORMAL:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->STATE_PRIVATE:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->STATE_PULL_TO_REFRESH:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->STATE_REFRESHING:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->STATE_REFRESHING_DONE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->STATE_RELEASE_TO_REFRESH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/AbsRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mState:I

    return-void
.end method


# virtual methods
.method public getProgress()F
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mPullProgress:Lcom/android/fileexplorer/view/SectorBar;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/SectorBar;->getPercent()F

    move-result v0

    return v0
.end method

.method public getVisibleHeight()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public initView(Landroid/content/Context;I)V
    .registers 6

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mContainer:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f032eb9

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/view/SectorBar;

    iput-object p1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mPullProgress:Lcom/android/fileexplorer/view/SectorBar;

    const p1, 0x7f032c0f

    invoke-static {p1}, Lnp/NPFog;->d(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mProgress:Landroid/widget/FrameLayout;

    return-void
.end method

.method public abstract onStateNormal()V
.end method

.method public abstract onStatePrivate()V
.end method

.method public abstract onStatePullToRefresh()V
.end method

.method public abstract onStateRefreshDone()V
.end method

.method public abstract onStateRefreshing()V
.end method

.method public abstract onStateReleaseToRefresh()V
.end method

.method public setLastRefreshTime(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setPullProgress(I)V
    .registers 3

    int-to-float p1, p1

    const/high16 v0, 0x42c80000  # 100.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mPullProgress:Lcom/android/fileexplorer/view/SectorBar;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/SectorBar;->setPercent(F)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mPullProgress:Lcom/android/fileexplorer/view/SectorBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public abstract setRefreshText1(I)V
.end method

.method public abstract setRefreshText2(I)V
.end method

.method public abstract setRefreshingText(I)V
.end method

.method public setState(I)V
    .registers 5

    iget v0, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mState:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_53

    const/4 v2, 0x1

    if-eq p1, v2, :cond_47

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3b

    const/4 v2, 0x3

    if-eq p1, v2, :cond_32

    const/4 v2, 0x4

    if-eq p1, v2, :cond_26

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1a

    goto :goto_5e

    :cond_1a
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->setPullProgress(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->onStateRefreshDone()V

    goto :goto_5e

    :cond_26
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->setPullProgress(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->onStatePullToRefresh()V

    goto :goto_5e

    :cond_32
    iget-object v0, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->onStatePrivate()V

    goto :goto_5e

    :cond_3b
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->setPullProgress(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->onStateRefreshing()V

    goto :goto_5e

    :cond_47
    iget-object v2, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->setPullProgress(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->onStateReleaseToRefresh()V

    goto :goto_5e

    :cond_53
    iget-object v2, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->setPullProgress(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->onStateNormal()V

    :goto_5e
    iput p1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mState:I

    return-void
.end method

.method public setVisibleHeight(I)V
    .registers 3

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
