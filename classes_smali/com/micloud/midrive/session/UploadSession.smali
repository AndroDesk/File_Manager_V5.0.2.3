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
.method public constructor <init>(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/session/TransferSession;-><init>(Lcom/micloud/midrive/session/params/SessionParams;Lcom/micloud/midrive/session/BaseSession$SessionListener;)V

    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/micloud/midrive/session/UploadSession;->mProgressMap:Ljava/util/Map;

    .line 11
    new-instance p1, Ljava/util/HashSet;

    .line 13
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/micloud/midrive/session/UploadSession;->mFailTaskKeySet:Ljava/util/Set;

    .line 18
    new-instance p1, Ljava/util/HashSet;

    .line 20
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/micloud/midrive/session/UploadSession;->mSuccessTaskKeySet:Ljava/util/Set;

    .line 25
    new-instance p1, Lcom/micloud/midrive/session/UploadSession$1;

    .line 27
    invoke-direct {p1, p0}, Lcom/micloud/midrive/session/UploadSession$1;-><init>(Lcom/micloud/midrive/session/UploadSession;)V

    .line 30
    iput-object p1, p0, Lcom/micloud/midrive/session/UploadSession;->mNotificationRunnable:Ljava/lang/Runnable;

    .line 32
    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/session/UploadSession;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->doUpdateRunningNotificationH()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$102(Lcom/micloud/midrive/session/UploadSession;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/micloud/midrive/session/UploadSession;->mProgressLastUpdateTime:J

    .line 3
    return-wide p1
.end method

.method private calculatedSpeedH()V
    .registers 10

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/micloud/midrive/session/UploadSession;->mTrafficSpeedInfo:Lcom/micloud/midrive/infos/TrafficSpeedInfo;

    .line 7
    iget-wide v3, v2, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mLastTime:J

    .line 9
    cmp-long v3, v0, v3

    .line 11
    if-eqz v3, :cond_44

    .line 13
    iget v2, v2, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mUid:I

    .line 15
    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 18
    move-result-wide v2

    .line 19
    iget-object v4, p0, Lcom/micloud/midrive/session/UploadSession;->mTrafficSpeedInfo:Lcom/micloud/midrive/infos/TrafficSpeedInfo;

    .line 21
    iget-wide v5, v4, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mTotalBytes:J

    .line 23
    cmp-long v7, v2, v5

    .line 25
    if-nez v7, :cond_1b

    .line 27
    return-void

    .line 28
    :cond_1b
    const-wide/16 v7, 0x3e8

    .line 30
    sub-long v5, v2, v5

    .line 32
    mul-long/2addr v5, v7

    .line 33
    iget-wide v7, v4, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mLastTime:J

    .line 35
    sub-long v7, v0, v7

    .line 37
    div-long/2addr v5, v7

    .line 38
    iput-wide v5, v4, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->speed:J

    .line 40
    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->updateData(JJ)V

    .line 43
    const/4 v0, 0x1

    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    const/4 v1, 0x0

    .line 47
    const-string v2, "calculatedSpeed speed:"

    .line 49
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/micloud/midrive/session/UploadSession;->mTrafficSpeedInfo:Lcom/micloud/midrive/infos/TrafficSpeedInfo;

    .line 55
    iget-wide v3, v3, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->speed:J

    .line 57
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    aput-object v2, v0, v1

    .line 66
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 69
    :cond_44
    return-void
.end method

.method private doUpdateRunningNotificationH()Z
    .registers 10

    .line 1
    iget v0, p0, Lcom/micloud/midrive/session/UploadSession;->mOnGoingCount:I

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/session/UploadSession;->mSuccessTaskKeySet:Ljava/util/Set;

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/micloud/midrive/session/UploadSession;->mFailTaskKeySet:Ljava/util/Set;

    .line 11
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 14
    move-result v2

    .line 15
    add-int v3, v1, v0

    .line 17
    add-int/2addr v3, v2

    .line 18
    iget-object v4, p0, Lcom/micloud/midrive/session/UploadSession;->mTrafficSpeedInfo:Lcom/micloud/midrive/infos/TrafficSpeedInfo;

    .line 20
    iget-wide v4, v4, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->speed:J

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v0, :cond_59

    .line 25
    if-nez v3, :cond_1b

    .line 27
    goto :goto_59

    .line 28
    :cond_1b
    const/4 v3, 0x1

    .line 29
    new-array v5, v3, [Ljava/lang/Object;

    .line 31
    const-string v6, "onGoingCount:"

    .line 33
    const-string v7, " successCount:"

    .line 35
    const-string v8, " failCount:"

    .line 37
    invoke-static {v6, v0, v7, v1, v8}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v7, " waitNetwork:"

    .line 46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-boolean v7, p0, Lcom/micloud/midrive/session/UploadSession;->mWaitNetwork:Z

    .line 51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v6

    .line 58
    aput-object v6, v5, v4

    .line 60
    invoke-static {v5}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 63
    invoke-static {}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->getInstance()Lcom/micloud/midrive/notification/ServiceNotificationHelper;

    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getExecContext()Landroid/content/Context;

    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 78
    move-result-object v6

    .line 79
    new-instance v7, Lcom/micloud/midrive/notification/ServiceProgressInfo;

    .line 81
    iget-boolean v8, p0, Lcom/micloud/midrive/session/UploadSession;->mWaitNetwork:Z

    .line 83
    invoke-direct {v7, v1, v2, v0, v8}, Lcom/micloud/midrive/notification/ServiceProgressInfo;-><init>(IIIZ)V

    .line 86
    invoke-virtual {v4, v5, v6, v7}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->updateServiceProgress(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/notification/ServiceProgressInfo;)V

    .line 89
    return v3

    .line 90
    :cond_59
    :goto_59
    return v4
.end method

.method private getCacheFileInfoH(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Lcom/micloud/midrive/infos/CachedFileInfo;
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->getTransferTypeInnerH()Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [Ljava/lang/String;

    .line 12
    invoke-interface {p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object p1, v1, v2

    .line 19
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    move-result-object p1

    .line 23
    invoke-interface {v0, p1}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getJobInfosByKeys(Ljava/util/List;)Ljava/util/List;

    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_3f

    .line 29
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_3f

    .line 35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/micloud/midrive/infos/SessionJobInfo;

    .line 41
    iget-object v0, v0, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 43
    sget-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->SUCCESS:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 45
    if-ne v0, v1, :cond_3f

    .line 47
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/micloud/midrive/infos/SessionJobInfo;

    .line 53
    iget-object p1, p1, Lcom/micloud/midrive/infos/SessionJobInfo;->transferInfo:Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 55
    invoke-static {p1}, Lcom/micloud/midrive/utils/CacheUtils;->getCacheFileType(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;

    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0, p1}, Lcom/micloud/midrive/utils/CacheUtils;->convertToCachedFileInfo(Lcom/micloud/midrive/infos/CachedFileInfo$CacheFileType;Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Lcom/micloud/midrive/infos/CachedFileInfo;

    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_3f
    const/4 p1, 0x0

    .line 65
    return-object p1
.end method

.method private getTransferTypeInnerH()Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;
    .registers 2

    .line 1
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    return-object v0
.end method

.method private initTrafficSpeedInfoH()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "initTrafficSpeedInfo"

    .line 7
    aput-object v2, v0, v1

    .line 9
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 12
    new-instance v0, Lcom/micloud/midrive/infos/TrafficSpeedInfo;

    .line 14
    invoke-direct {v0}, Lcom/micloud/midrive/infos/TrafficSpeedInfo;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mTrafficSpeedInfo:Lcom/micloud/midrive/infos/TrafficSpeedInfo;

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 22
    move-result-wide v1

    .line 23
    iput-wide v1, v0, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mLastTime:J

    .line 25
    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mTrafficSpeedInfo:Lcom/micloud/midrive/infos/TrafficSpeedInfo;

    .line 27
    iget v1, v0, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mUid:I

    .line 29
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 32
    move-result-wide v1

    .line 33
    iput-wide v1, v0, Lcom/micloud/midrive/infos/TrafficSpeedInfo;->mTotalBytes:J

    .line 35
    return-void
.end method

.method private recordSessionFinishH()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionResultStat:Lcom/micloud/midrive/stat/TransferSessionResultStat;

    .line 3
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->recordSessionEnd()V

    .line 6
    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionResultStat:Lcom/micloud/midrive/stat/TransferSessionResultStat;

    .line 8
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->recordEvent()V

    .line 11
    return-void
.end method

.method private saveProgressToSessionJobH()V
    .registers 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/micloud/midrive/session/UploadSession;->mSaveProgressLastTime:J

    .line 7
    sub-long v2, v0, v2

    .line 9
    const-wide/16 v4, 0x3e8

    .line 11
    cmp-long v2, v2, v4

    .line 13
    if-lez v2, :cond_48

    .line 15
    new-instance v2, Ljava/util/HashMap;

    .line 17
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 20
    iget-object v3, p0, Lcom/micloud/midrive/session/UploadSession;->mProgressMap:Ljava/util/Map;

    .line 22
    if-eqz v3, :cond_41

    .line 24
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 27
    move-result-object v3

    .line 28
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v3

    .line 32
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_41

    .line 38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/util/Map$Entry;

    .line 44
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Ljava/lang/String;

    .line 50
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lcom/micloud/midrive/infos/TaskProgressInfo;

    .line 56
    iget-wide v6, v4, Lcom/micloud/midrive/infos/TaskProgressInfo;->progress:J

    .line 58
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    goto :goto_1f

    .line 66
    :cond_41
    iget-object v3, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 68
    invoke-interface {v3, v2}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->updateJobProgress(Ljava/util/Map;)V

    .line 71
    iput-wide v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSaveProgressLastTime:J

    .line 73
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

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_37

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/micloud/midrive/task/TransferBaseTask;

    .line 22
    invoke-virtual {v1}, Lcom/micloud/midrive/task/TransferBaseTask;->getTaskProgressInfo()Lcom/micloud/midrive/infos/TaskProgressInfo;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1}, Lcom/micloud/midrive/task/BaseTask;->getCurrentStep()Lcom/micloud/midrive/task/BaseTask$RunTaskStep;

    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskStep;->isWaitingNetworkStep(Lcom/micloud/midrive/task/BaseTask$RunTaskStep;)Z

    .line 33
    move-result v9

    .line 34
    invoke-virtual {v1}, Lcom/micloud/midrive/task/TransferBaseTask;->getTransferFileInfo()Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    new-instance v3, Lcom/micloud/midrive/infos/TaskProgressInfo;

    .line 44
    iget-wide v5, v2, Lcom/micloud/midrive/infos/TaskProgressInfo;->progress:J

    .line 46
    iget-wide v7, v2, Lcom/micloud/midrive/infos/TaskProgressInfo;->size:J

    .line 48
    move-object v4, v3

    .line 49
    invoke-direct/range {v4 .. v9}, Lcom/micloud/midrive/infos/TaskProgressInfo;-><init>(JJZ)V

    .line 52
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    goto :goto_9

    .line 56
    :cond_37
    iput-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mProgressMap:Ljava/util/Map;

    .line 58
    return-void
.end method

.method private updateRunningNotificationH()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession;->getRunnerHandler()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/micloud/midrive/session/UploadSession;->mNotificationRunnable:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mNotificationRunnable:Ljava/lang/Runnable;

    .line 12
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 15
    return-void
.end method


# virtual methods
.method public getProgressInfo(Ljava/lang/String;)Lcom/micloud/midrive/infos/TaskProgressInfo;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mProgressMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/micloud/midrive/infos/TaskProgressInfo;

    .line 9
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

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mProgressMap:Ljava/util/Map;

    .line 3
    return-object v0
.end method

.method public onCreateTransferTaskH(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)Lcom/micloud/midrive/task/TransferBaseTask;
    .registers 6

    .line 1
    new-instance v0, Lcom/micloud/midrive/task/UploadTask;

    .line 3
    check-cast p2, Lcom/micloud/midrive/infos/FileUploadInfo;

    .line 5
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/task/UploadTask;-><init>(Lcom/micloud/midrive/task/RunOnNetworkTask$NetworkTaskContext;Lcom/micloud/midrive/infos/FileUploadInfo;J)V

    .line 8
    return-object v0
.end method

.method public onGetTransferTypeH()Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->getTransferTypeInnerH()Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onJobStatusChangedH()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 3
    sget-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 5
    invoke-interface {v0, v1}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getJobCountByStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;)I

    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/micloud/midrive/session/UploadSession;->mOnGoingCount:I

    .line 11
    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->updateRunningNotificationH()V

    .line 14
    return-void
.end method

.method public onSessionToExecuteH()V
    .registers 3

    .line 1
    new-instance v0, Lcom/micloud/midrive/stat/TransferSessionResultStat;

    .line 3
    const-string v1, "uploadSession"

    .line 5
    invoke-direct {v0, v1}, Lcom/micloud/midrive/stat/TransferSessionResultStat;-><init>(Ljava/lang/String;)V

    .line 8
    iput-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionResultStat:Lcom/micloud/midrive/stat/TransferSessionResultStat;

    .line 10
    invoke-virtual {v0}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->recordSessionStart()V

    .line 13
    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->getTransferTypeInnerH()Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 23
    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->initTrafficSpeedInfoH()V

    .line 26
    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 28
    sget-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 30
    invoke-interface {v0, v1}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getJobCountByStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;)I

    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/micloud/midrive/session/UploadSession;->mOnGoingCount:I

    .line 36
    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->updateRunningNotificationH()V

    .line 39
    return-void
.end method

.method public onSessionToFinishH()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession;->getRunnerHandler()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/micloud/midrive/session/UploadSession;->mNotificationRunnable:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    invoke-static {}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->getInstance()Lcom/micloud/midrive/notification/ServiceNotificationHelper;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/micloud/midrive/session/BaseSession;->getExecContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    new-instance v3, Lcom/micloud/midrive/notification/ServiceProgressInfo;

    .line 28
    iget-object v4, p0, Lcom/micloud/midrive/session/UploadSession;->mSuccessTaskKeySet:Ljava/util/Set;

    .line 30
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 33
    move-result v4

    .line 34
    iget-object v5, p0, Lcom/micloud/midrive/session/UploadSession;->mFailTaskKeySet:Ljava/util/Set;

    .line 36
    invoke-interface {v5}, Ljava/util/Set;->size()I

    .line 39
    move-result v5

    .line 40
    const/4 v6, 0x0

    .line 41
    invoke-direct {v3, v4, v5, v6, v6}, Lcom/micloud/midrive/notification/ServiceProgressInfo;-><init>(IIIZ)V

    .line 44
    invoke-virtual {v0, v1, v2, v3}, Lcom/micloud/midrive/notification/ServiceNotificationHelper;->updateServiceFinish(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/notification/ServiceProgressInfo;)V

    .line 47
    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->recordSessionFinishH()V

    .line 50
    return-void
.end method

.method public onTaskDoneH(Lcom/micloud/midrive/task/TransferBaseTask;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/micloud/midrive/task/BaseTask;->getStopInfo()Lcom/micloud/midrive/task/BaseTask$StopInfo;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/micloud/midrive/task/TransferBaseTask;->getTransferFileInfo()Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    if-nez v0, :cond_22

    .line 15
    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mFailTaskKeySet:Ljava/util/Set;

    .line 17
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSuccessTaskKeySet:Ljava/util/Set;

    .line 22
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionResultStat:Lcom/micloud/midrive/stat/TransferSessionResultStat;

    .line 27
    invoke-interface {p1}, Lcom/micloud/midrive/infos/TransferFileBaseInfo;->getSize()J

    .line 30
    move-result-wide v1

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->increaseFinishCountAndSize(J)V

    .line 34
    goto :goto_34

    .line 35
    :cond_22
    invoke-virtual {v0}, Lcom/micloud/midrive/task/BaseTask$StopInfo;->isCancelled()Z

    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_34

    .line 41
    iget-object p1, p0, Lcom/micloud/midrive/session/UploadSession;->mFailTaskKeySet:Ljava/util/Set;

    .line 43
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object p1, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionResultStat:Lcom/micloud/midrive/stat/TransferSessionResultStat;

    .line 48
    const-wide/16 v0, 0x0

    .line 50
    invoke-virtual {p1, v0, v1}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->increaseFinishCountAndSize(J)V

    .line 53
    :cond_34
    :goto_34
    iget-object p1, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionJobManager:Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 55
    sget-object v0, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 57
    invoke-interface {p1, v0}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getJobCountByStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;)I

    .line 60
    move-result p1

    .line 61
    iput p1, p0, Lcom/micloud/midrive/session/UploadSession;->mOnGoingCount:I

    .line 63
    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->calculatedSpeedH()V

    .line 66
    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->updateRunningNotificationH()V

    .line 69
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

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/UploadSession;->updateProgressSnapshotH(Ljava/util/Collection;)V

    .line 4
    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->saveProgressToSessionJobH()V

    .line 7
    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->calculatedSpeedH()V

    .line 10
    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->updateRunningNotificationH()V

    .line 13
    return-void
.end method

.method public onTaskStartH(Lcom/micloud/midrive/task/TransferBaseTask;)V
    .registers 2

    return-void
.end method

.method public onWaitNetworkChangedH(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/session/UploadSession;->mSessionResultStat:Lcom/micloud/midrive/stat/TransferSessionResultStat;

    .line 3
    invoke-virtual {v0, p1}, Lcom/micloud/midrive/stat/TransferSessionResultStat;->recordWaitNetwork(Z)V

    .line 6
    iput-boolean p1, p0, Lcom/micloud/midrive/session/UploadSession;->mWaitNetwork:Z

    .line 8
    invoke-direct {p0}, Lcom/micloud/midrive/session/UploadSession;->updateRunningNotificationH()V

    .line 11
    return-void
.end method
