.class public abstract Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;
.super Landroid/widget/LinearLayout;
.source "RAbsRefreshHeader.java"


# static fields
.field public static final STATE_FORCE_REFRESH:I

.field public static final STATE_NORMAL:I

.field public static final STATE_PRIVATE:I

.field public static final STATE_PULL_TO_REFRESH:I

.field public static final STATE_REFRESHING:I

.field public static final STATE_REFRESHING_DONE:I

.field public static final STATE_RELEASE_TO_REFRESH:I

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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->STATE_FORCE_REFRESH:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->STATE_NORMAL:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->STATE_PRIVATE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->STATE_PULL_TO_REFRESH:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->STATE_REFRESHING:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->STATE_REFRESHING_DONE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->STATE_RELEASE_TO_REFRESH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mState:I

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getScreenHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x7

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mRefreshTriggerHeight:I

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getScreenHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateTriggerHeight:I

    return-void
.end method

.method private setPrivateProgress(I)V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateTriggerHeight:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPullProgress(I)V

    return-void
.end method


# virtual methods
.method public checkStateOnActionUp()I
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mState:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_a

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setState(I)V

    goto :goto_14

    :cond_a
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getVisibleHeight()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->smoothScrollTo(I)V

    :cond_14
    :goto_14
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mState:I

    return v0
.end method

.method public getProgress()F
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateProgress:Lcom/android/fileexplorer/view/SectorBar;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/SectorBar;->getPercent()F

    move-result v0

    return v0
.end method

.method public getScreenHeight()I
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/util/DisplayUtil;->getScreenHeight()I

    move-result v0

    return v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mState:I

    return v0
.end method

.method public getVisibleHeight()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public init(Landroid/content/Context;I)V
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

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mContainer:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mContainer:Landroid/view/View;

    const p2, 0x7f032c0f

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateLayout:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mContainer:Landroid/view/View;

    const p2, 0x7f032eb9

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/view/SectorBar;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateProgress:Lcom/android/fileexplorer/view/SectorBar;

    return-void
.end method

.method public isRefreshing()Z
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public onMove(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getVisibleHeight()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setVisibleHeight(I)V

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mRefreshTriggerHeight:I

    if-ge v0, p1, :cond_11

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setState(I)V

    goto :goto_31

    :cond_11
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mEnablePrivate:Z

    const-string v1, "RAbsRefreshHeader"

    if-eqz p1, :cond_28

    iget p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateTriggerHeight:I

    if-le v0, p1, :cond_28

    const-string p1, "onMove2"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setState(I)V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPrivateProgress(I)V

    goto :goto_31

    :cond_28
    const-string p1, "onMove3"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setState(I)V

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

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateTriggerHeight:I

    return-void
.end method

.method public setPullPrivateEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mEnablePrivate:Z

    return-void
.end method

.method public setPullProgress(I)V
    .registers 3

    int-to-float p1, p1

    const/high16 v0, 0x42c80000  # 100.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateProgress:Lcom/android/fileexplorer/view/SectorBar;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/SectorBar;->setPercent(F)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateProgress:Lcom/android/fileexplorer/view/SectorBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRefreshComplete()V
    .registers 3

    const-string v0, "RAbsRefreshHeader"

    const-string v1, "RXmasHeader: setRefreshComplete: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setState(I)V

    return-void
.end method

.method public setRefreshTriggerHeight(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mRefreshTriggerHeight:I

    return-void
.end method

.method public setState(I)V
    .registers 5

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mState:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x8

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_70

    goto :goto_6c

    :pswitch_c  #0x6
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPullProgress(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->onStateRefreshDone()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getVisibleHeight()I

    move-result v0

    if-lez v0, :cond_6c

    new-instance v0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$1;

    invoke-direct {v0, p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$1;-><init>(Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6c

    :pswitch_28  #0x5
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->onStatePrivate()V

    goto :goto_6c

    :pswitch_31  #0x4
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPullProgress(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->onStateRefreshing()V

    goto :goto_6c

    :pswitch_3d  #0x3
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPullProgress(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->onStateForceRefresh()V

    goto :goto_6c

    :pswitch_49  #0x2
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPullProgress(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->onStateReleaseToRefresh()V

    goto :goto_6c

    :pswitch_55  #0x1
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPullProgress(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->onStatePullToRefresh()V

    goto :goto_6c

    :pswitch_61  #0x0
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mPrivateLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->setPullProgress(I)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->onStateNormal()V

    :cond_6c
    :goto_6c
    iput p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mState:I

    return-void

    nop

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

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->mContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public smoothScrollTo(I)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;->getVisibleHeight()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$2;

    invoke-direct {v1, p0}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$2;-><init>(Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$3;

    invoke-direct {v1, p0, p1}, Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader$3;-><init>(Lcom/android/fileexplorer/adapter/recycle/RAbsRefreshHeader;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
