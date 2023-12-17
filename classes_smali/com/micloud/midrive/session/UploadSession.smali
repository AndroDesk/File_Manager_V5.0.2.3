.class public Lcom/micloud/midrive/session/UploadSession;
.super Lcom/micloud/midrive/session/TransferSession;
.source "UploadSession.java"


# static fields
.field private static final SAVE_PROGRESS_INTERVAL:J = 0x3e8L


# instance fields
.field private final mFailTaskKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationRunnable:Ljava/lang/Runnable;

.field private mOnGoingCount:I

.field private mProgressLastUpdateTime:J

.field private volatile mProgressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/micloud/midrive/infos/TaskProgressInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveProgressLastTime:J

.field private mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

.field private mSessionResultStat:Lcom/micloud/midrive/stat/TransferSessionResultStat;

.field private final mSuccessTaskKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficSpeedInfo:Lcom/micloud/midrive/infos/TrafficSpeedInfo;

.field private mWaitNetwork:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/session/TransferSession;-><init>(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/session/UploadSession;->mProgressMap:Ljava/util/Map;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/session/UploadSession;->mFailTaskKeySet:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/session/UploadSession;->mSuccessTaskKeySet:Ljava/util/Set;

    new-instance p1, Lcom/micloud/midrive/session/UploadSession$1;

    invoke-direct {p1, p0}, Lcom/micloud/midrive/session/UploadSession$1;-><init>(Lcom/micloud/midrive/session/UploadSession;)V

    iput-object p1, p0, Lcom/micloud/midrive/session/UploadSession;->mNotificationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/session/UploadSession;)Z
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->doUpdateRunningNotificationH()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$102(Lcom/micloud/midrive/session/UploadSession;J)J
    .registers 3

    iput-wide p1, p0, Lcom/micloud/midrive/session/UploadSession;->mProgressLastUpdateTime:J

    return-wide p1
.end method

.method private calculatedSpeedH()V
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/micloud/midrive/session/UploadSession;->mTrafficSpeedInfo:Lcom/micloud/midrive/infos/TrafficSpeedInfo;

    iget-wide v3, v2, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mLastTime:J

    cmp-long v3, v0, v3

    if-eqz v3, :cond_44

    iget v2, v2, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mUid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/micloud/midrive/session/UploadSession;->mTrafficSpeedInfo:Lcom/micloud/midrive/infos/TrafficSpeedInfo;

    iget-wide v5, v4, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mTotalBytes:J

    cmp-long v7, v2, v5

    if-nez v7, :cond_1b

    return-void

    :cond_1b
    const-wide/16 v7, 0x3e8

    sub-long v5, v2, v5

    mul-long/2addr v5, v7

    iget-wide v7, v4, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mLastTime:J

    sub-long v7, v0, v7

    div-long/2addr v5, v7

    iput-wide v5, v4, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->speed:J

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->updateData(JJ)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "calculatedSpeed speed:"

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/micloud/midrive/session/UploadSession;->mTrafficSpeedInfo:Lcom/micloud/midrive/infos/TrafficSpeedInfo;

    iget-wide v3, v3, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->speed:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    :cond_44
    return-void
.end method

.method private doUpdateRunningNotificationH()Z
    .registers 10

    iget v0, p0, Lcom/micloud/midrive/session/UploadSession;->mOnGoingCount:I

    iget-object v1, p0, Lcom/micloud/midrive/session/UploadSession;->mSuccessTaskKeySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lcom/micloud/midrive/session/UploadSession;->mFailTaskKeySet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int v3, v1, v0

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/micloud/midrive/session/UploadSession;->mTrafficSpeedInfo:Lcom/micloud/midrive/infos/TrafficSpeedInfo;

    iget-wide v4, v4, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->speed:J

    const/4 v4, 0x0

    if-eqz v0, :cond_59

    if-nez v3, :cond_1b

    goto :goto_59

    :cond_1b
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "onGoingCount:"

    const-string v7, " successCount:"

    const-string v8, " failCount:"

    invoke-static {v6, v0, v7, v1, v8}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " waitNetwork:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/micloud/midrive/session/UploadSession;->mWaitNetwork:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v5}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-static {}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->getInstance()Lcom/micloud/midrive/notification/ServiceNotificationHelper;

    move-result-object v4

    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getExecContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/micloud/midrive/notification/ServiceProgressInfo;

    iget-boolean v8, p0, Lcom/micloud/midrive/session/UploadSession;->mWaitNetwork:Z

    invoke-direct {v7, v1, v2, v0, v8}, Lcom/micloud/midrive/notification/ServiceProgressInfo;-><init>(IIIZ)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->updateServiceProgress(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/notification/ServiceProgressInfo;)V

    return v3

    :cond_59
    :goto_59
    return v4
.end method

.method private getCacheFileInfoH(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Lcom/micloud/midrive/infos/CachedFileInfo;
    .registers 5

    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->getTransferTypeInnerH()Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getJobInfosByKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/infos/SessionJobInfo;

    iget-object v0, v0, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    sget-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->SUCCESS:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    if-ne v0, v1, :cond_3f

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/micloud/midrive/infos/SessionJobInfo;

    iget-object p1, p1, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    invoke-static {p1}, Lcom/micloud/midrive/utils/CacheUtils;->getCacheFileType(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/micloud/midrive/utils/CacheUtils;->convertToCachedFileInfo(Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Lcom/micloud/midrive/infos/CachedFileInfo;

    move-result-object p1

    return-object p1

    :cond_3f
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTransferTypeInnerH()Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;
    .registers 2

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    return-object v0
.end method

.method private initTrafficSpeedInfoH()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "initTrafficSpeedInfo"

    aput-object v2, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    new-instance v0, Lcom/micloud/midrive/infos/TrafficSpeedInfo;

    invoke-direct {v0}, Lcom/micloud/midrive/infos/TrafficSpeedInfo;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mTrafficSpeedInfo:Lcom/micloud/midrive/infos/TrafficSpeedInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mLastTime:J

    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mTrafficSpeedInfo:Lcom/micloud/midrive/infos/TrafficSpeedInfo;

    iget v1, v0, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mUid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mTotalBytes:J

    return-void
.end method

.method private recordSessionFinishH()V
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionResultStat:Lcom/micloud/midrive/stat/TransferSessionResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->recordSessionEnd()V

    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionResultStat:Lcom/micloud/midrive/stat/TransferSessionResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->recordEvent()V

    return-void
.end method

.method private saveProgressToSessionJobH()V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/micloud/midrive/session/UploadSession;->mSaveProgressLastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_48

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/micloud/midrive/session/UploadSession;->mProgressMap:Ljava/util/Map;

    if-eqz v3, :cond_41

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/micloud/midrive/infos/TaskProgressInfo;

    iget-wide v6, v4, Lcom/micloud/midrive/infos/TaskProgressInfo;->progress:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_41
    iget-object v3, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    invoke-interface {v3, v2}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->updateJobProgress(Ljava/util/Map;)V

    iput-wide v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSaveProgressLastTime:J

    :cond_48
    return-void
.end method

.method private updateProgressSnapshotH(Ljava/util/Collection;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/micloud/midrive/task/TransferBaseTask;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/task/TransferBaseTask;

    invoke-virtual {v1}, Lcom/micloud/midrive/task/TransferBaseTask;->getTaskProgressInfo()Lcom/micloud/midrive/infos/TaskProgressInfo;

    move-result-object v2

    invoke-virtual {v1}, Lcom/micloud/midrive/task/BaseTask;->getCurrentStep()Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    move-result-object v3

    invoke-static {v3}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->isWaitingNetworkStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Z

    move-result v9

    invoke-virtual {v1}, Lcom/micloud/midrive/task/TransferBaseTask;->getTransferFileInfo()Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/micloud/midrive/infos/TaskProgressInfo;

    iget-wide v5, v2, Lcom/micloud/midrive/infos/TaskProgressInfo;->progress:J

    iget-wide v7, v2, Lcom/micloud/midrive/infos/TaskProgressInfo;->size:J

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/micloud/midrive/infos/TaskProgressInfo;-><init>(JJZ)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_37
    iput-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mProgressMap:Ljava/util/Map;

    return-void
.end method

.method private updateRunningNotificationH()V
    .registers 3

    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession;->getRunnerHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/session/UploadSession;->mNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mNotificationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public getProgressInfo(Ljava/lang/String;)Lcom/micloud/midrive/infos/TaskProgressInfo;
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mProgressMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/micloud/midrive/infos/TaskProgressInfo;

    return-object p1
.end method

.method public getProgressInfoMap()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mProgressMap:Ljava/util/Map;

    return-object v0
.end method

.method public onCreateTransferTaskH(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)Lcom/micloud/midrive/task/TransferBaseTask;
    .registers 6

    new-instance v0, Lcom/micloud/midrive/task/UploadTask;

    check-cast p2, Lcom/micloud/midrive/infos/FileUploadInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/task/UploadTask;-><init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Lcom/micloud/midrive/infos/FileUploadInfo;J)V

    return-object v0
.end method

.method public onGetTransferTypeH()Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;
    .registers 2

    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->getTransferTypeInnerH()Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    move-result-object v0

    return-object v0
.end method

.method public onJobStatusChangedH()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    sget-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-interface {v0, v1}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getJobCountByStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;)I

    move-result v0

    iput v0, p0, Lcom/micloud/midrive/session/UploadSession;->mOnGoingCount:I

    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->updateRunningNotificationH()V

    return-void
.end method

.method public onSessionToExecuteH()V
    .registers 3

    new-instance v0, Lcom/micloud/midrive/stat/TransferSessionResultStat;

    const-string v1, "uploadSession"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/stat/TransferSessionResultStat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionResultStat:Lcom/micloud/midrive/stat/TransferSessionResultStat;

    invoke-virtual {v0}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->recordSessionStart()V

    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->getTransferTypeInnerH()Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    move-result-object v0

    iput-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->initTrafficSpeedInfoH()V

    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    sget-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-interface {v0, v1}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getJobCountByStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;)I

    move-result v0

    iput v0, p0, Lcom/micloud/midrive/session/UploadSession;->mOnGoingCount:I

    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->updateRunningNotificationH()V

    return-void
.end method

.method public onSessionToFinishH()V
    .registers 8

    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession;->getRunnerHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/session/UploadSession;->mNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->getInstance()Lcom/micloud/midrive/notification/ServiceNotificationHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getExecContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/micloud/midrive/notification/ServiceProgressInfo;

    iget-object v4, p0, Lcom/micloud/midrive/session/UploadSession;->mSuccessTaskKeySet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    iget-object v5, p0, Lcom/micloud/midrive/session/UploadSession;->mFailTaskKeySet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v6}, Lcom/micloud/midrive/notification/ServiceProgressInfo;-><init>(IIIZ)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->updateServiceFinish(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/notification/ServiceProgressInfo;)V

    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->recordSessionFinishH()V

    return-void
.end method

.method public onTaskDoneH(Lcom/micloud/midrive/task/TransferBaseTask;)V
    .registers 5

    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getStopInfo()Lcom/micloud/midrive/task/BaseTask$StopInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/micloud/midrive/task/TransferBaseTask;->getTransferFileInfo()Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mFailTaskKeySet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSuccessTaskKeySet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionResultStat:Lcom/micloud/midrive/stat/TransferSessionResultStat;

    invoke-interface {p1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->increaseFinishCountAndSize(J)V

    goto :goto_34

    :cond_22
    invoke-virtual {v0}, Lcom/micloud/midrive/task/BaseTask$StopInfo;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_34

    iget-object p1, p0, Lcom/micloud/midrive/session/UploadSession;->mFailTaskKeySet:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionResultStat:Lcom/micloud/midrive/stat/TransferSessionResultStat;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->increaseFinishCountAndSize(J)V

    :cond_34
    :goto_34
    iget-object p1, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    sget-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-interface {p1, v0}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getJobCountByStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;)I

    move-result p1

    iput p1, p0, Lcom/micloud/midrive/session/UploadSession;->mOnGoingCount:I

    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->calculatedSpeedH()V

    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->updateRunningNotificationH()V

    return-void
.end method

.method public onTaskProgressChangedH(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/micloud/midrive/task/TransferBaseTask;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/UploadSession;->updateProgressSnapshotH(Ljava/util/Collection;)V

    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->saveProgressToSessionJobH()V

    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->calculatedSpeedH()V

    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->updateRunningNotificationH()V

    return-void
.end method

.method public onTaskStartH(Lcom/micloud/midrive/task/TransferBaseTask;)V
    .registers 2

    return-void
.end method

.method public onWaitNetworkChangedH(Z)V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionResultStat:Lcom/micloud/midrive/stat/TransferSessionResultStat;

    invoke-virtual {v0, p1}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->recordWaitNetwork(Z)V

    iput-boolean p1, p0, Lcom/micloud/midrive/session/UploadSession;->mWaitNetwork:Z

    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->updateRunningNotificationH()V

    return-void
.end method
