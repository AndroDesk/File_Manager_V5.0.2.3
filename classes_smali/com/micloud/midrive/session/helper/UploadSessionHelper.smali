.class public Lcom/micloud/midrive/session/helper/UploadSessionHelper;
.super Ljava/lang/Object;
.source "UploadSessionHelper.java"

# interfaces
.implements Lcom/micloud/midrive/session/helper/ISessionHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/session/helper/UploadSessionHelper$SingletonHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/micloud/midrive/session/helper/UploadSessionHelper$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->notifyNewTaskAddedOrStartSessionIfNotExistChecked(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->notifyJobStatusChangedChecked(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method private static addUploadTaskChecked(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/List;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
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

    .line 1
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    new-instance v1, Lcom/micloud/midrive/session/helper/UploadSessionHelper$8;

    .line 5
    invoke-direct {v1, p0, p1, p4}, Lcom/micloud/midrive/session/helper/UploadSessionHelper$8;-><init>(Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    .line 8
    invoke-static {p0, v0, p2, p3, v1}, Lcom/micloud/midrive/session/helper/SessionHelper;->addJobAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private static checkRunInMainThread()V
    .registers 1

    .line 1
    const-string v0, "CloudBackupSessionHelper must be called in main thread"

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public static getInstance()Lcom/micloud/midrive/session/helper/UploadSessionHelper;
    .registers 1

    .line 1
    sget-object v0, Lcom/micloud/midrive/session/helper/UploadSessionHelper$SingletonHolder;->INSTANCE:Lcom/micloud/midrive/session/helper/UploadSessionHelper;

    .line 3
    return-object v0
.end method

.method public static getUploadSession()Lcom/micloud/midrive/session/UploadSession;
    .registers 1

    .line 1
    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->checkRunInMainThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->getUploadSessionChecked()Lcom/micloud/midrive/session/UploadSession;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method private static getUploadSessionChecked()Lcom/micloud/midrive/session/UploadSession;
    .registers 2

    .line 1
    invoke-static {}, Lcom/micloud/midrive/session/manager/UploadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/UploadSessionManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/micloud/midrive/session/manager/SessionManager;->getCurrentSession()Lcom/micloud/midrive/session/BaseSession;

    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/micloud/midrive/session/UploadSession;

    .line 11
    if-eqz v1, :cond_f

    .line 13
    check-cast v0, Lcom/micloud/midrive/session/UploadSession;

    .line 15
    return-object v0

    .line 16
    :cond_f
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method private static notifyJobStatusChangedChecked(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->getUploadSessionChecked()Lcom/micloud/midrive/session/UploadSession;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_a

    .line 7
    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession;->setJobStatusChanged()V

    .line 10
    goto :goto_15

    .line 11
    :cond_a
    const/4 p0, 0x1

    .line 12
    new-array p0, p0, [Ljava/lang/Object;

    .line 14
    const/4 v0, 0x0

    .line 15
    const-string v1, "session is not exist. "

    .line 17
    aput-object v1, p0, v0

    .line 19
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->logw([Ljava/lang/Object;)V

    .line 22
    :goto_15
    return-void
.end method

.method private static notifyNewTaskAddedOrStartSessionIfNotExistChecked(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->getUploadSessionChecked()Lcom/micloud/midrive/session/UploadSession;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-virtual {v0}, Lcom/micloud/midrive/session/TransferSession;->setNewJobAdded()V

    .line 10
    goto :goto_d

    .line 11
    :cond_a
    invoke-static {p0, p1}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->startUploadSession(Landroid/content/Context;Landroid/accounts/Account;)Lcom/micloud/midrive/session/BaseSession;

    .line 14
    :goto_d
    return-void
.end method

.method private notifyRequiredNetworkChangedIfExistChecked()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->getUploadSessionChecked()Lcom/micloud/midrive/session/UploadSession;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {v0}, Lcom/micloud/midrive/session/TransferSession;->setRequiredNetworkChanged()V

    .line 10
    :cond_9
    return-void
.end method

.method private static startUploadSession(Landroid/content/Context;Landroid/accounts/Account;)Lcom/micloud/midrive/session/BaseSession;
    .registers 3

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/params/UploadSessionParams;

    .line 3
    invoke-direct {v0, p1}, Lcom/micloud/midrive/session/params/UploadSessionParams;-><init>(Landroid/accounts/Account;)V

    .line 6
    invoke-static {}, Lcom/micloud/midrive/session/manager/UploadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/UploadSessionManager;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p0, v0}, Lcom/micloud/midrive/session/manager/SessionManager;->start(Landroid/content/Context;Lcom/micloud/midrive/session/params/SessionParams;)Lcom/micloud/midrive/session/BaseSession;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method


# virtual methods
.method public addTask(Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/infos/TransferFileBaseInfo;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 9

    .line 1
    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->checkRunInMainThread()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {p1, p2, v0, p4, p5}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->addUploadTaskChecked(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/List;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

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

    .line 6
    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->checkRunInMainThread()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    .line 7
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 8
    invoke-static {p1, p2, p3, p4, p5}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->addUploadTaskChecked(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/List;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public getSession()Lcom/micloud/midrive/session/TransferSession;
    .registers 2

    .line 1
    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->getUploadSession()Lcom/micloud/midrive/session/UploadSession;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getTaskProgressInfo(Ljava/lang/String;)Lcom/micloud/midrive/infos/TaskProgressInfo;
    .registers 3

    .line 1
    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->getUploadSessionChecked()Lcom/micloud/midrive/session/UploadSession;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {v0, p1}, Lcom/micloud/midrive/session/UploadSession;->getProgressInfo(Ljava/lang/String;)Lcom/micloud/midrive/infos/TaskProgressInfo;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
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

    .line 1
    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->getUploadSessionChecked()Lcom/micloud/midrive/session/UploadSession;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-virtual {v0}, Lcom/micloud/midrive/session/UploadSession;->getProgressInfoMap()Ljava/util/Map;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public notifyNewTaskAddedOrStartSessionIfNotExist(Landroid/content/Context;Landroid/accounts/Account;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->checkRunInMainThread()V

    .line 4
    invoke-static {p1, p2}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->notifyNewTaskAddedOrStartSessionIfNotExistChecked(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 7
    return-void
.end method

.method public notifyRequiredNetworkChangedIfExist()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->checkRunInMainThread()V

    .line 4
    invoke-direct {p0}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->notifyRequiredNetworkChangedIfExistChecked()V

    .line 7
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

    .line 1
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    new-instance v1, Lcom/micloud/midrive/session/helper/UploadSessionHelper$6;

    .line 5
    invoke-direct {v1, p0, p1, p3}, Lcom/micloud/midrive/session/helper/UploadSessionHelper$6;-><init>(Lcom/micloud/midrive/session/helper/UploadSessionHelper;Landroid/content/Context;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    .line 8
    invoke-static {p1, v0, p2, v1}, Lcom/micloud/midrive/session/helper/SessionHelper;->pauseAllAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/Map;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public pauseTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 6

    .line 1
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    new-instance v1, Lcom/micloud/midrive/session/helper/UploadSessionHelper$3;

    .line 5
    invoke-direct {v1, p0, p1, p3}, Lcom/micloud/midrive/session/helper/UploadSessionHelper$3;-><init>(Lcom/micloud/midrive/session/helper/UploadSessionHelper;Landroid/content/Context;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    .line 8
    invoke-static {p1, v0, p2, v1}, Lcom/micloud/midrive/session/helper/SessionHelper;->pauseAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public removeTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 6

    .line 1
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    new-instance v1, Lcom/micloud/midrive/session/helper/UploadSessionHelper$4;

    invoke-direct {v1, p0, p1, p3}, Lcom/micloud/midrive/session/helper/UploadSessionHelper$4;-><init>(Lcom/micloud/midrive/session/helper/UploadSessionHelper;Landroid/content/Context;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

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

    .line 2
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    new-instance v1, Lcom/micloud/midrive/session/helper/UploadSessionHelper$5;

    invoke-direct {v1, p0, p1, p3}, Lcom/micloud/midrive/session/helper/UploadSessionHelper$5;-><init>(Lcom/micloud/midrive/session/helper/UploadSessionHelper;Landroid/content/Context;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    invoke-static {p1, v0, p2, v1}, Lcom/micloud/midrive/session/helper/SessionHelper;->removeAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public resumeAllTask(Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 6

    .line 1
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    new-instance v1, Lcom/micloud/midrive/session/helper/UploadSessionHelper$7;

    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/micloud/midrive/session/helper/UploadSessionHelper$7;-><init>(Lcom/micloud/midrive/session/helper/UploadSessionHelper;Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    .line 8
    invoke-static {p1, v0, v1}, Lcom/micloud/midrive/session/helper/SessionHelper;->resumeAllAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public resumeFromFail(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 7

    .line 1
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    new-instance v1, Lcom/micloud/midrive/session/helper/UploadSessionHelper$2;

    .line 5
    invoke-direct {v1, p0, p1, p2, p4}, Lcom/micloud/midrive/session/helper/UploadSessionHelper$2;-><init>(Lcom/micloud/midrive/session/helper/UploadSessionHelper;Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    .line 8
    invoke-static {p1, v0, p3, v1}, Lcom/micloud/midrive/session/helper/SessionHelper;->resumeFromFailAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public resumeFromPause(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 7

    .line 1
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    new-instance v1, Lcom/micloud/midrive/session/helper/UploadSessionHelper$1;

    .line 5
    invoke-direct {v1, p0, p1, p2, p4}, Lcom/micloud/midrive/session/helper/UploadSessionHelper$1;-><init>(Lcom/micloud/midrive/session/helper/UploadSessionHelper;Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    .line 8
    invoke-static {p1, v0, p3, v1}, Lcom/micloud/midrive/session/helper/SessionHelper;->resumeFromPauseAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method
