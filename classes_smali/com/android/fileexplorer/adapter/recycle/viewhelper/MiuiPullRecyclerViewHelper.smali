.class public Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;
.super Ljava/lang/Object;
.source "MiuiPullRecyclerViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$PendingTask;,
        Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;,
        Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;,
        Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;
    }
.end annotation


# static fields
.field private static final ACTION_REMOVE_LOAD:I = 0x2

.field private static final ACTION_REMOVE_PRIVATE:I = 0x0

.field private static final ACTION_REMOVE_REFRESH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiuiPullRecyclerViewHelper"


# instance fields
.field private mEnableLoadMore:Z

.field private mEnablePrivate:Z

.field private mEnablePullRefresh:Z

.field private mLoadAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

.field private mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

.field private mLockAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;

.field private mPendingActions:Landroid/util/SparseBooleanArray;

.field private mPullListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

.field private mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

.field private mTrigger:Lmiuix/springback/trigger/DefaultTrigger;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;-><init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnableLoadMore:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePullRefresh:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePrivate:Z

    .line 6
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    .line 7
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 8
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPullListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    .line 9
    new-instance p2, Lmiuix/springback/trigger/DefaultTrigger;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lmiuix/springback/trigger/DefaultTrigger;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    .line 11
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

    invoke-direct {p1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;I)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

    .line 12
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLockAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;

    .line 13
    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    invoke-direct {p1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;I)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->notifyListenerRefresh()V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->checkPendingTask()V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->notifyListenerEnterPrivate()V

    .line 4
    return-void
.end method

.method private addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    .line 6
    invoke-virtual {v0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->containAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_10

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    .line 14
    invoke-virtual {v0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    .line 17
    :cond_10
    return-void
.end method

.method private checkPendingTask()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    .line 3
    if-eqz v0, :cond_5d

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    .line 7
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    goto :goto_5d

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 20
    move-result v0

    .line 21
    const-string v2, "MiuiPullRecyclerViewHelper"

    .line 23
    if-eqz v0, :cond_29

    .line 25
    const-string v0, "checkPendingTask remove LockAction"

    .line 27
    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    .line 32
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLockAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;

    .line 34
    invoke-virtual {v0, v3}, Lmiuix/springback/trigger/CustomTrigger;->removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    .line 37
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    .line 39
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 42
    :cond_29
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_43

    .line 51
    const-string v0, "checkPendingTask remove LoadAction"

    .line 53
    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    .line 58
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

    .line 60
    invoke-virtual {v0, v3}, Lmiuix/springback/trigger/CustomTrigger;->removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    .line 63
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    .line 65
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 68
    :cond_43
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    .line 70
    const/4 v1, 0x2

    .line 71
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_5d

    .line 77
    const-string v0, "checkPendingTask remove LoadUpAction "

    .line 79
    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    .line 84
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    .line 86
    invoke-virtual {v0, v2}, Lmiuix/springback/trigger/CustomTrigger;->removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    .line 89
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    .line 91
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 94
    :cond_5d
    :goto_5d
    return-void
.end method

.method private notifyListenerEnterPrivate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPullListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;->onEnterPrivate()V

    .line 8
    :cond_7
    return-void
.end method

.method private notifyListenerRefresh()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPullListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;->onRefresh()V

    .line 8
    :cond_7
    return-void
.end method


# virtual methods
.method public canLoadMore()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnableLoadMore:Z

    .line 3
    return v0
.end method

.method public enablePrivate()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePrivate:Z

    .line 3
    return v0
.end method

.method public init(Lmiuix/springback/view/SpringBackLayout;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePrivate:Z

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLockAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;

    .line 7
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    .line 10
    :cond_9
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePullRefresh:Z

    .line 12
    if-eqz v0, :cond_12

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

    .line 16
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    .line 19
    :cond_12
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnableLoadMore:Z

    .line 21
    if-eqz v0, :cond_1b

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    .line 25
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    .line 30
    invoke-virtual {v0, p1}, Lmiuix/springback/trigger/CustomTrigger;->attach(Lmiuix/springback/view/SpringBackLayout;)V

    .line 33
    return-void
.end method

.method public isActionRunning()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lmiuix/springback/trigger/DefaultTrigger;->isActionRunning()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public notifyListenerLoadMore()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPullListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;->onLoadMore()V

    .line 8
    :cond_7
    return-void
.end method

.method public onLoadMoreComplete()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->notifyLoadComplete()V

    .line 8
    :cond_7
    return-void
.end method

.method public onLoadMoreError()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->notifyLoadFail()V

    .line 8
    :cond_7
    return-void
.end method

.method public onLoadMoreNoData()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->notifyActionNoData()V

    .line 8
    :cond_7
    return-void
.end method

.method public onPullRefreshComplete()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->notifyLoadComplete()V

    .line 8
    :cond_7
    return-void
.end method

.method public setEnableLoadMore(Z)V
    .registers 5

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnableLoadMore:Z

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    .line 7
    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/DefaultTrigger;->containAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    .line 10
    move-result p1

    .line 11
    const-string v0, "MiuiPullRecyclerViewHelper"

    .line 13
    if-eqz p1, :cond_3a

    .line 15
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnableLoadMore:Z

    .line 17
    const/4 v1, 0x2

    .line 18
    if-nez p1, :cond_2f

    .line 20
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    .line 22
    invoke-virtual {p1}, Lmiuix/springback/trigger/DefaultTrigger;->isActionRunning()Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_27

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 34
    const-string p1, "setEnableLoadMore false isActionRunning, addTo PendingTask"

    .line 36
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    goto :goto_48

    .line 40
    :cond_27
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    .line 44
    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    .line 47
    goto :goto_48

    .line 48
    :cond_2f
    const-string p1, "setEnableLoadMore contain, enable, clear loadMore"

    .line 50
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    .line 55
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 58
    goto :goto_48

    .line 59
    :cond_3a
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnableLoadMore:Z

    .line 61
    if-eqz p1, :cond_48

    .line 63
    const-string p1, "setEnableLoadMore addAction"

    .line 65
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    .line 73
    :cond_48
    :goto_48
    return-void
.end method

.method public setEnablePrivate(Z)V
    .registers 4

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePrivate:Z

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLockAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;

    .line 7
    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/DefaultTrigger;->containAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_3a

    .line 13
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePrivate:Z

    .line 15
    const/4 v0, 0x0

    .line 16
    const-string v1, "MiuiPullRecyclerViewHelper"

    .line 18
    if-nez p1, :cond_2f

    .line 20
    const-string p1, "setEnablePrivate remove LockAction"

    .line 22
    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    .line 27
    invoke-virtual {p1}, Lmiuix/springback/trigger/DefaultTrigger;->isActionRunning()Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_27

    .line 33
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 39
    goto :goto_43

    .line 40
    :cond_27
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLockAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;

    .line 44
    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    .line 47
    goto :goto_43

    .line 48
    :cond_2f
    const-string p1, "setEnablePrivate contain, enable, clear private"

    .line 50
    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    .line 55
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 58
    goto :goto_43

    .line 59
    :cond_3a
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePrivate:Z

    .line 61
    if-eqz p1, :cond_43

    .line 63
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLockAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;

    .line 65
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    .line 68
    :cond_43
    :goto_43
    return-void
.end method

.method public setEnablePullRefresh(Z)V
    .registers 4

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePullRefresh:Z

    .line 3
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

    .line 7
    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/DefaultTrigger;->containAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_34

    .line 13
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePullRefresh:Z

    .line 15
    const/4 v0, 0x1

    .line 16
    if-nez p1, :cond_27

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    .line 20
    invoke-virtual {p1}, Lmiuix/springback/trigger/DefaultTrigger;->isActionRunning()Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1f

    .line 26
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    .line 28
    invoke-virtual {p1, v0, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 31
    goto :goto_3d

    .line 32
    :cond_1f
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

    .line 36
    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    .line 39
    goto :goto_3d

    .line 40
    :cond_27
    const-string p1, "MiuiPullRecyclerViewHelper"

    .line 42
    const-string v1, "setEnablePullRefresh contain, enable, clear refresh"

    .line 44
    invoke-static {p1, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    .line 49
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 52
    goto :goto_3d

    .line 53
    :cond_34
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePullRefresh:Z

    .line 55
    if-eqz p1, :cond_3d

    .line 57
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

    .line 59
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    .line 62
    :cond_3d
    :goto_3d
    return-void
.end method

.method public setPullListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPullListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    .line 3
    return-void
.end method

.method public triggerPullToRefreshIndeterminate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

    .line 7
    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->startIndeterminateAction()V

    .line 10
    :cond_9
    return-void
.end method
