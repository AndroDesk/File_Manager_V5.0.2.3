.class public Lcom/micloud/midrive/session/helper/DownloadSessionHelper;
.super Ljava/lang/Object;
.source "DownloadSessionHelper.java"

# interfaces
.implements Lcom/micloud/midrive/session/helper/ISessionHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/session/helper/DownloadSessionHelper$SingletonHolder;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/micloud/midrive/session/helper/DownloadSessionHelper$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->notifyNewTaskAddedOrStartSessionIfNotExistChecked(Landroid/content/Context;Landroid/accounts/Account;)V

    return-void
.end method

.method public static synthetic access$100(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->notifyJobStatusChangedChecked(Landroid/content/Context;)V

    return-void
.end method

.method private static addDownloadTaskChecked(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/List;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/TransferFileBaseInfo;",
            ">;Z",
            "Lcom/micloud/midrive/session/helper/ActionResultCallback;",
            ")",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    new-instance v1, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$8;

    invoke-direct {v1, p0, p1, p4}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$8;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    invoke-static {p0, v0, p2, p3, v1}, Lcom/micloud/midrive/session/helper/SessionHelper;->addJobAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method private static checkRunInMainThread()V
    .registers 1

    const-string v0, "SessionHelper must be called in main thread"

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    return-void
.end method

.method public static getDownloadSession()Lcom/micloud/midrive/session/DownloadSession;
    .registers 1

    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->checkRunInMainThread()V

    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->getDownloadSessionChecked()Lcom/micloud/midrive/session/DownloadSession;

    move-result-object v0

    return-object v0
.end method

.method private static getDownloadSessionChecked()Lcom/micloud/midrive/session/DownloadSession;
    .registers 2

    invoke-static {}, Lcom/micloud/midrive/session/manager/DownloadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/DownloadSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/micloud/midrive/session/manager/SessionManager;->getCurrentSession()Lcom/micloud/midrive/session/BaseSession;

    move-result-object v0

    instance-of v1, v0, Lcom/micloud/midrive/session/DownloadSession;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/micloud/midrive/session/DownloadSession;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/micloud/midrive/session/helper/DownloadSessionHelper;
    .registers 1

    sget-object v0, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$SingletonHolder;->INSTANCE:Lcom/micloud/midrive/session/helper/DownloadSessionHelper;

    return-object v0
.end method

.method private static notifyJobStatusChangedChecked(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->getDownloadSessionChecked()Lcom/micloud/midrive/session/DownloadSession;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession;->setJobStatusChanged()V

    goto :goto_15

    :cond_a
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "session is not exist. "

    aput-object v1, p0, v0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    :goto_15
    return-void
.end method

.method private static notifyNewTaskAddedOrStartSessionIfNotExistChecked(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 3

    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->getDownloadSessionChecked()Lcom/micloud/midrive/session/DownloadSession;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/micloud/midrive/session/TransferSession;->setNewJobAdded()V

    goto :goto_d

    :cond_a
    invoke-static {p0, p1}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->startDownloadSession(Landroid/content/Context;Landroid/accounts/Account;)Lcom/micloud/midrive/session/BaseSession;

    :goto_d
    return-void
.end method

.method private notifyRequiredNetworkChangedIfExistChecked()V
    .registers 2

    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->getDownloadSessionChecked()Lcom/micloud/midrive/session/DownloadSession;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/micloud/midrive/session/TransferSession;->setRequiredNetworkChanged()V

    :cond_9
    return-void
.end method

.method private static startDownloadSession(Landroid/content/Context;Landroid/accounts/Account;)Lcom/micloud/midrive/session/BaseSession;
    .registers 3

    new-instance v0, Lcom/micloud/midrive/session/params/DownloadSessionParams;

    invoke-direct {v0, p1}, Lcom/micloud/midrive/session/params/DownloadSessionParams;-><init>(Landroid/accounts/Account;)V

    invoke-static {}, Lcom/micloud/midrive/session/manager/DownloadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/DownloadSessionManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/micloud/midrive/session/manager/SessionManager;->start(Landroid/content/Context;Lcom/micloud/midrive/session/params/SessionParams;)Lcom/micloud/midrive/session/BaseSession;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addTask(Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/infos/TransferFileBaseInfo;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 10

    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->checkRunInMainThread()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {p1, p2, v0, p4, p5}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->addDownloadTaskChecked(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/List;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public addTask(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/List;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/TransferFileBaseInfo;",
            ">;Z",
            "Lcom/micloud/midrive/session/helper/ActionResultCallback;",
            ")",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->checkRunInMainThread()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->addDownloadTaskChecked(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/List;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public getSession()Lcom/micloud/midrive/session/TransferSession;
    .registers 2

    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->getDownloadSession()Lcom/micloud/midrive/session/DownloadSession;

    move-result-object v0

    return-object v0
.end method

.method public getTaskProgressInfo(Ljava/lang/String;)Lcom/micloud/midrive/infos/TaskProgressInfo;
    .registers 3

    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->getDownloadSession()Lcom/micloud/midrive/session/DownloadSession;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/micloud/midrive/session/DownloadSession;->getProgressInfo(Ljava/lang/String;)Lcom/micloud/midrive/infos/TaskProgressInfo;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTaskProgressInfoMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/micloud/midrive/infos/TaskProgressInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->getDownloadSession()Lcom/micloud/midrive/session/DownloadSession;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/micloud/midrive/session/DownloadSession;->getProgressInfoMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyNewTaskAddedOrStartSessionIfNotExist(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 3

    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->checkRunInMainThread()V

    invoke-static {p1, p2}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->notifyNewTaskAddedOrStartSessionIfNotExistChecked(Landroid/content/Context;Landroid/accounts/Account;)V

    return-void
.end method

.method public notifyRequiredNetworkChangedIfExist()V
    .registers 1

    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->checkRunInMainThread()V

    invoke-direct {p0}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->notifyRequiredNetworkChangedIfExistChecked()V

    return-void
.end method

.method public pauseAllTask(Landroid/content/Context;Ljava/util/Map;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/micloud/midrive/session/helper/ActionResultCallback;",
            ")",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    new-instance v1, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$6;

    invoke-direct {v1, p0, p1, p3}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$6;-><init>(Lcom/micloud/midrive/session/helper/DownloadSessionHelper;Landroid/content/Context;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    invoke-static {p1, v0, p2, v1}, Lcom/micloud/midrive/session/helper/SessionHelper;->pauseAllAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/Map;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public pauseTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 6

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    new-instance v1, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$3;-><init>(Lcom/micloud/midrive/session/helper/DownloadSessionHelper;Landroid/content/Context;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    invoke-static {p1, v0, p2, v1}, Lcom/micloud/midrive/session/helper/SessionHelper;->pauseAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public removeTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 6

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    new-instance v1, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$4;

    invoke-direct {v1, p0, p1, p3}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$4;-><init>(Lcom/micloud/midrive/session/helper/DownloadSessionHelper;Landroid/content/Context;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    invoke-static {p1, v0, p2, v1}, Lcom/micloud/midrive/session/helper/SessionHelper;->removeAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public removeTask(Landroid/content/Context;Ljava/util/List;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/micloud/midrive/session/helper/ActionResultCallback;",
            ")",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    new-instance v1, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$5;

    invoke-direct {v1, p0, p1, p3}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$5;-><init>(Lcom/micloud/midrive/session/helper/DownloadSessionHelper;Landroid/content/Context;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    invoke-static {p1, v0, p2, v1}, Lcom/micloud/midrive/session/helper/SessionHelper;->removeAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public resumeAllTask(Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 6

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    new-instance v1, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$7;-><init>(Lcom/micloud/midrive/session/helper/DownloadSessionHelper;Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/session/helper/SessionHelper;->resumeAllAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public resumeFromFail(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 7

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    new-instance v1, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$2;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$2;-><init>(Lcom/micloud/midrive/session/helper/DownloadSessionHelper;Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    invoke-static {p1, v0, p3, v1}, Lcom/micloud/midrive/session/helper/SessionHelper;->resumeFromFailAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public resumeFromPause(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 7

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    new-instance v1, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$1;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper$1;-><init>(Lcom/micloud/midrive/session/helper/DownloadSessionHelper;Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    invoke-static {p1, v0, p3, v1}, Lcom/micloud/midrive/session/helper/SessionHelper;->resumeFromPauseAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    return-object p1
.end method
