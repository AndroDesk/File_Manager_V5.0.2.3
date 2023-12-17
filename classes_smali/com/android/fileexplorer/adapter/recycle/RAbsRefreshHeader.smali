.class public abstract Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;
.super Landroid/widget/LinearLayout;
.source "RAbsRefreshHeader.java"


# static fields
.field public static final STATE_FORCE_REFRESH:I = 0x3

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_PRIVATE:I = 0x5

.field public static final STATE_PULL_TO_REFRESH:I = 0x1

.field public static final STATE_REFRESHING:I = 0x4

.field public static final STATE_REFRESHING_DONE:I = 0x6

.field public static final STATE_RELEASE_TO_REFRESH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RAbsRefreshHeader"


# instance fields
.field private mContainer:Landroid/view/View;

.field private mEnablePrivate:Z

.field private mPrivateLayout:Landroid/widget/FrameLayout;

.field private mPrivateProgress:Lcom/android/fileexplorer/view/SectorBar;

.field public mPrivateTriggerHeight:I

.field public mRefreshTriggerHeight:I

.field public mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mState:I

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getScreenHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x7

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mRefreshTriggerHeight:I

    .line 6
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getScreenHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateTriggerHeight:I

    return-void
.end method

.method private setPrivateProgress(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateTriggerHeight:I

    .line 3
    sub-int/2addr p1, v0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPullProgress(I)V

    .line 7
    return-void
.end method


# virtual methods
.method public checkStateOnActionUp()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mState:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v1, v0, :cond_a

    .line 6
    const/4 v0, 0x4

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setState(I)V

    .line 10
    goto :goto_14

    .line 11
    :cond_a
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getVisibleHeight()I

    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_14

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->smoothScrollTo(I)V

    .line 21
    :cond_14
    :goto_14
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mState:I

    .line 23
    return v0
.end method

.method public getProgress()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateProgress:Lcom/android/fileexplorer/view/SectorBar;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/SectorBar;->getPercent()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getScreenHeight()I
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->getScreenHeight()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getState()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mState:I

    .line 3
    return v0
.end method

.method public getVisibleHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mContainer:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    return v0
.end method

.method public init(Landroid/content/Context;I)V
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
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mContainer:Landroid/view/View;

    .line 19
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mContainer:Landroid/view/View;

    .line 24
    const p2, 0x7f0a0199

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/widget/FrameLayout;

    .line 33
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateLayout:Landroid/widget/FrameLayout;

    .line 35
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mContainer:Landroid/view/View;

    .line 37
    const p2, 0x7f0a032f

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/android/fileexplorer/view/SectorBar;

    .line 46
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateProgress:Lcom/android/fileexplorer/view/SectorBar;

    .line 48
    return-void
.end method

.method public isRefreshing()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mState:I

    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_b

    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 13
    :goto_c
    return v0
.end method

.method public onMove(I)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getVisibleHeight()I

    .line 4
    move-result v0

    .line 5
    add-int/2addr v0, p1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setVisibleHeight(I)V

    .line 9
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mRefreshTriggerHeight:I

    .line 11
    if-ge v0, p1, :cond_11

    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setState(I)V

    .line 17
    goto :goto_31

    .line 18
    :cond_11
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mEnablePrivate:Z

    .line 20
    const-string v1, "RAbsRefreshHeader"

    .line 22
    if-eqz p1, :cond_28

    .line 24
    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateTriggerHeight:I

    .line 26
    if-le v0, p1, :cond_28

    .line 28
    const-string p1, "onMove2"

    .line 30
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 p1, 0x5

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setState(I)V

    .line 37
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPrivateProgress(I)V

    .line 40
    goto :goto_31

    .line 41
    :cond_28
    const-string p1, "onMove3"

    .line 43
    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 p1, 0x2

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setState(I)V

    .line 50
    :goto_31
    return-void
.end method

.method public abstract onStateForceRefresh()V
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

.method public setPrivateTriggerHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateTriggerHeight:I

    .line 3
    return-void
.end method

.method public setPullPrivateEnable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mEnablePrivate:Z

    .line 3
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
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateProgress:Lcom/android/fileexplorer/view/SectorBar;

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/SectorBar;->setPercent(F)V

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateProgress:Lcom/android/fileexplorer/view/SectorBar;

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 15
    return-void
.end method

.method public setRefreshComplete()V
    .registers 3

    .line 1
    const-string v0, "RAbsRefreshHeader"

    .line 3
    const-string v1, "RXmasHeader: setRefreshComplete: "

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x6

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setState(I)V

    .line 12
    return-void
.end method

.method public setRefreshTriggerHeight(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mRefreshTriggerHeight:I

    .line 3
    return-void
.end method

.method public setState(I)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mState:I

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/16 v0, 0x8

    .line 8
    const/4 v1, 0x0

    .line 9
    packed-switch p1, :pswitch_data_70

    .line 12
    goto :goto_6c

    .line 13
    :pswitch_c  #0x6
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPullProgress(I)V

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateLayout:Landroid/widget/FrameLayout;

    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 21
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->onStateRefreshDone()V

    .line 24
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getVisibleHeight()I

    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_6c

    .line 30
    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$1;

    .line 32
    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;)V

    .line 35
    const-wide/16 v1, 0x1f4

    .line 37
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    goto :goto_6c

    .line 41
    :pswitch_28  #0x5
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateLayout:Landroid/widget/FrameLayout;

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->onStatePrivate()V

    .line 49
    goto :goto_6c

    .line 50
    :pswitch_31  #0x4
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPullProgress(I)V

    .line 53
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateLayout:Landroid/widget/FrameLayout;

    .line 55
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->onStateRefreshing()V

    .line 61
    goto :goto_6c

    .line 62
    :pswitch_3d  #0x3
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPullProgress(I)V

    .line 65
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateLayout:Landroid/widget/FrameLayout;

    .line 67
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->onStateForceRefresh()V

    .line 73
    goto :goto_6c

    .line 74
    :pswitch_49  #0x2
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateLayout:Landroid/widget/FrameLayout;

    .line 76
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPullProgress(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->onStateReleaseToRefresh()V

    .line 85
    goto :goto_6c

    .line 86
    :pswitch_55  #0x1
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateLayout:Landroid/widget/FrameLayout;

    .line 88
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPullProgress(I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->onStatePullToRefresh()V

    .line 97
    goto :goto_6c

    .line 98
    :pswitch_61  #0x0
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateLayout:Landroid/widget/FrameLayout;

    .line 100
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPullProgress(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->onStateNormal()V

    .line 109
    :cond_6c
    :goto_6c
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mState:I

    .line 111
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_61  #00000000
        :pswitch_55  #00000001
        :pswitch_49  #00000002
        :pswitch_3d  #00000003
        :pswitch_31  #00000004
        :pswitch_28  #00000005
        :pswitch_c  #00000006
    .end packed-switch
.end method

.method public setVisibleHeight(I)V
    .registers 3

    .line 1
    if-gez p1, :cond_3

    .line 3
    const/4 p1, 0x0

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mContainer:Landroid/view/View;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 12
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mContainer:Landroid/view/View;

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    return-void
.end method

.method public smoothScrollTo(I)V
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getVisibleHeight()I

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput v1, v0, v2

    .line 11
    const/4 v1, 0x1

    .line 12
    aput p1, v0, v1

    .line 14
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 17
    move-result-object v0

    .line 18
    const-wide/16 v1, 0x12c

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 27
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$2;

    .line 29
    invoke-direct {v1, p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;)V

    .line 32
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 35
    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$3;

    .line 37
    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$3;-><init>(Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;I)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 43
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 46
    return-void
.end method
