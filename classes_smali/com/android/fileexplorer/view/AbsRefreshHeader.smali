.class public abstract Lcom/android/fileexplorer/view/AbsRefreshHeader;
.super Landroid/widget/LinearLayout;
.source "AbsRefreshHeader.java"


# static fields
.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_PRIVATE:I = 0x3

.field public static final STATE_PULL_TO_REFRESH:I = 0x4

.field public static final STATE_REFRESHING:I = 0x2

.field public static final STATE_REFRESHING_DONE:I = 0x5

.field public static final STATE_RELEASE_TO_REFRESH:I = 0x1


# instance fields
.field private mContainer:Landroid/view/View;

.field private mProgress:Landroid/widget/FrameLayout;

.field private mPullProgress:Lcom/android/fileexplorer/view/SectorBar;

.field public mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/view/AbsRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mState:I

    return-void
.end method


# virtual methods
.method public getProgress()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mPullProgress:Lcom/android/fileexplorer/view/SectorBar;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/SectorBar;->getPercent()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getVisibleHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mContainer:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    return v0
.end method

.method public initView(Landroid/content/Context;I)V
    .registers 6

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    move-result-object p1

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mContainer:Landroid/view/View;

    .line 19
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    const p1, 0x7f0a032f

    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/android/fileexplorer/view/SectorBar;

    .line 31
    iput-object p1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mPullProgress:Lcom/android/fileexplorer/view/SectorBar;

    .line 33
    const p1, 0x7f0a0199

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/widget/FrameLayout;

    .line 42
    iput-object p1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mProgress:Landroid/widget/FrameLayout;

    .line 44
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

    .line 1
    int-to-float p1, p1

    .line 2
    const/high16 v0, 0x42c80000  # 100.0f

    .line 4
    div-float/2addr p1, v0

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mPullProgress:Lcom/android/fileexplorer/view/SectorBar;

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/SectorBar;->setPercent(F)V

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mPullProgress:Lcom/android/fileexplorer/view/SectorBar;

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 15
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

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mState:I

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/16 v0, 0x8

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p1, :cond_53

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq p1, v2, :cond_47

    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq p1, v2, :cond_3b

    .line 17
    const/4 v2, 0x3

    .line 18
    if-eq p1, v2, :cond_32

    .line 20
    const/4 v2, 0x4

    .line 21
    if-eq p1, v2, :cond_26

    .line 23
    const/4 v2, 0x5

    .line 24
    if-eq p1, v2, :cond_1a

    .line 26
    goto :goto_5e

    .line 27
    :cond_1a
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->setPullProgress(I)V

    .line 30
    iget-object v1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mProgress:Landroid/widget/FrameLayout;

    .line 32
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->onStateRefreshDone()V

    .line 38
    goto :goto_5e

    .line 39
    :cond_26
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->setPullProgress(I)V

    .line 42
    iget-object v1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mProgress:Landroid/widget/FrameLayout;

    .line 44
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 47
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->onStatePullToRefresh()V

    .line 50
    goto :goto_5e

    .line 51
    :cond_32
    iget-object v0, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mProgress:Landroid/widget/FrameLayout;

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->onStatePrivate()V

    .line 59
    goto :goto_5e

    .line 60
    :cond_3b
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->setPullProgress(I)V

    .line 63
    iget-object v1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mProgress:Landroid/widget/FrameLayout;

    .line 65
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->onStateRefreshing()V

    .line 71
    goto :goto_5e

    .line 72
    :cond_47
    iget-object v2, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mProgress:Landroid/widget/FrameLayout;

    .line 74
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->setPullProgress(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->onStateReleaseToRefresh()V

    .line 83
    goto :goto_5e

    .line 84
    :cond_53
    iget-object v2, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mProgress:Landroid/widget/FrameLayout;

    .line 86
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->setPullProgress(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/AbsRefreshHeader;->onStateNormal()V

    .line 95
    :goto_5e
    iput p1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mState:I

    .line 97
    return-void
.end method

.method public setVisibleHeight(I)V
    .registers 3

    .line 1
    if-gez p1, :cond_3

    .line 3
    const/4 p1, 0x0

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mContainer:Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 12
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/view/AbsRefreshHeader;->mContainer:Landroid/view/View;

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    return-void
.end method
