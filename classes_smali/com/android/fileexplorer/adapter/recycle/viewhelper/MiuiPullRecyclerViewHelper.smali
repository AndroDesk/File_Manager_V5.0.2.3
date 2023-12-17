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
.field private static final ACTION_REMOVE_LOAD:I

.field private static final ACTION_REMOVE_PRIVATE:I

.field private static final ACTION_REMOVE_REFRESH:I

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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->ACTION_REMOVE_LOAD:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->ACTION_REMOVE_PRIVATE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->ACTION_REMOVE_REFRESH:I

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;-><init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnableLoadMore:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePullRefresh:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePrivate:Z

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPullListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    new-instance p2, Lmiuix/springback/trigger/DefaultTrigger;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lmiuix/springback/trigger/DefaultTrigger;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

    invoke-direct {p1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;I)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLockAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;

    new-instance p1, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    invoke-direct {p1, p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;-><init>(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;I)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->notifyListenerRefresh()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->checkPendingTask()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;)Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mRecyclerView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->notifyListenerEnterPrivate()V

    return-void
.end method

.method private addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-virtual {v0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->containAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-virtual {v0, p1}, Lmiuix/springback/trigger/DefaultTrigger;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    :cond_10
    return-void
.end method

.method private checkPendingTask()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_5d

    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const-string v2, "MiuiPullRecyclerViewHelper"

    if-eqz v0, :cond_29

    const-string v0, "checkPendingTask remove LockAction"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLockAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;

    invoke-virtual {v0, v3}, Lmiuix/springback/trigger/CustomTrigger;->removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_29
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "checkPendingTask remove LoadAction"

    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

    invoke-virtual {v0, v3}, Lmiuix/springback/trigger/CustomTrigger;->removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_43
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "checkPendingTask remove LoadUpAction "

    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    invoke-virtual {v0, v2}, Lmiuix/springback/trigger/CustomTrigger;->removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method private notifyListenerEnterPrivate()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPullListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;->onEnterPrivate()V

    :cond_7
    return-void
.end method

.method private notifyListenerRefresh()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPullListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;->onRefresh()V

    :cond_7
    return-void
.end method


# virtual methods
.method public canLoadMore()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnableLoadMore:Z

    return v0
.end method

.method public enablePrivate()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePrivate:Z

    return v0
.end method

.method public init(Lmiuix/springback/view/SpringBackLayout;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePrivate:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLockAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    :cond_9
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePullRefresh:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    :cond_12
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnableLoadMore:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-virtual {v0, p1}, Lmiuix/springback/trigger/CustomTrigger;->attach(Lmiuix/springback/view/SpringBackLayout;)V

    return-void
.end method

.method public isActionRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lmiuix/springback/trigger/DefaultTrigger;->isActionRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public notifyListenerLoadMore()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPullListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;->onLoadMore()V

    :cond_7
    return-void
.end method

.method public onLoadMoreComplete()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->notifyLoadComplete()V

    :cond_7
    return-void
.end method

.method public onLoadMoreError()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->notifyLoadFail()V

    :cond_7
    return-void
.end method

.method public onLoadMoreNoData()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->notifyActionNoData()V

    :cond_7
    return-void
.end method

.method public onPullRefreshComplete()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->notifyLoadComplete()V

    :cond_7
    return-void
.end method

.method public setEnableLoadMore(Z)V
    .registers 5

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnableLoadMore:Z

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/DefaultTrigger;->containAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    move-result p1

    const-string v0, "MiuiPullRecyclerViewHelper"

    if-eqz p1, :cond_3a

    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnableLoadMore:Z

    const/4 v1, 0x2

    if-nez p1, :cond_2f

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-virtual {p1}, Lmiuix/springback/trigger/DefaultTrigger;->isActionRunning()Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const-string p1, "setEnableLoadMore false isActionRunning, addTo PendingTask"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_27
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    goto :goto_48

    :cond_2f
    const-string p1, "setEnableLoadMore contain, enable, clear loadMore"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_48

    :cond_3a
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnableLoadMore:Z

    if-eqz p1, :cond_48

    const-string p1, "setEnableLoadMore addAction"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    :cond_48
    :goto_48
    return-void
.end method

.method public setEnablePrivate(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePrivate:Z

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLockAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/DefaultTrigger;->containAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    move-result p1

    if-eqz p1, :cond_3a

    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePrivate:Z

    const/4 v0, 0x0

    const-string v1, "MiuiPullRecyclerViewHelper"

    if-nez p1, :cond_2f

    const-string p1, "setEnablePrivate remove LockAction"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-virtual {p1}, Lmiuix/springback/trigger/DefaultTrigger;->isActionRunning()Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_43

    :cond_27
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLockAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    goto :goto_43

    :cond_2f
    const-string p1, "setEnablePrivate contain, enable, clear private"

    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_43

    :cond_3a
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePrivate:Z

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLockAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LockAction;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public setEnablePullRefresh(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePullRefresh:Z

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/DefaultTrigger;->containAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    move-result p1

    if-eqz p1, :cond_34

    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePullRefresh:Z

    const/4 v0, 0x1

    if-nez p1, :cond_27

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    invoke-virtual {p1}, Lmiuix/springback/trigger/DefaultTrigger;->isActionRunning()Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_3d

    :cond_1f
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mTrigger:Lmiuix/springback/trigger/DefaultTrigger;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

    invoke-virtual {p1, v0}, Lmiuix/springback/trigger/CustomTrigger;->removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z

    goto :goto_3d

    :cond_27
    const-string p1, "MiuiPullRecyclerViewHelper"

    const-string v1, "setEnablePullRefresh contain, enable, clear refresh"

    invoke-static {p1, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPendingActions:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_3d

    :cond_34
    iget-boolean p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mEnablePullRefresh:Z

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public setPullListener(Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mPullListener:Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;

    return-void
.end method

.method public triggerPullToRefreshIndeterminate()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadUpAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadUpAction;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper;->mLoadAction:Lcom/android/fileexplorer/adapter/recycle/viewhelper/MiuiPullRecyclerViewHelper$LoadAction;

    invoke-virtual {v0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->startIndeterminateAction()V

    :cond_9
    return-void
.end method
