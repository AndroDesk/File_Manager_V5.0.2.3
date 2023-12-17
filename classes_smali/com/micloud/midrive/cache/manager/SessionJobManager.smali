.class public Lcom/micloud/midrive/cache/manager/SessionJobManager;
.super Ljava/lang/Object;
.source "SessionJobManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/cache/manager/SessionJobManager$StatusChangedListener;,
        Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/micloud/midrive/cache/manager/SessionJobManager;


# instance fields
.field private mMainHandler:Landroid/os/Handler;

.field private final mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

.field private mStatusChangedListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/cache/manager/SessionJobManager$StatusChangedListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 6
    invoke-direct {v0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    new-instance p1, Landroid/os/Handler;

    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    iput-object p1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mMainHandler:Landroid/os/Handler;

    .line 22
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->initStatusChangeListener()V

    .line 25
    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/util/List;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;ZZ)Z
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->addToOngoing(Ljava/util/List;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;ZZ)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->postStatusChange(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeAllPauseAndFailToOnGoing(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changePauseToOngoing(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1200(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeFailToOngoing(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1300(Lcom/micloud/midrive/cache/manager/SessionJobManager;ILcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getOngoingJobInfosOrderByAddTime(ILcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/micloud/midrive/cache/manager/SessionJobManager;ILcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getOngoingJobInfosWithAnyNetworkOrderByAddTime(ILcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1500(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/util/List;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getJobInfosByKeys(Ljava/util/List;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1600(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getInWorkJobsOrderByAddTime(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1700(Lcom/micloud/midrive/cache/manager/SessionJobManager;ILcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSuccessJobsOrderByUpdateTime(ILcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1800(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)I
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getJobCountByStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1900(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/util/Map;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->updateJobProgress(Ljava/util/Map;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeToSuccess(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$2000(Lcom/micloud/midrive/cache/manager/SessionJobManager;ZLcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeFreeNetworkOnlyForAutoSyncJob(ZLcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$2100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/lang/String;ZLcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeFreeNetworkOnly(Ljava/lang/String;ZLcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$2200(Lcom/micloud/midrive/cache/manager/SessionJobManager;Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->clearData(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2300(Lcom/micloud/midrive/cache/manager/SessionJobManager;)Ljava/util/Map;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mStatusChangedListenerMap:Ljava/util/Map;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeToSuccess(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->updateJobInfo(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$500(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeToFail(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$600(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeToRemove(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$700(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeOngoingToPause(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$800(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeAllOngoingToPause(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$900(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/Map;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeAllOngoingToPause(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/Map;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private addToOngoing(Ljava/util/List;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;ZZ)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/TransferFileBaseInfo;",
            ">;",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            "ZZ)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 14
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p1

    .line 21
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v1, :cond_46

    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    const/4 v3, 0x0

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string v5, "TransferType:"

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    const-string v5, " info:"

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v4

    .line 62
    aput-object v4, v2, v3

    .line 64
    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 67
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->addToOngoingInternalLocked(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;ZZ)Z

    .line 70
    goto :goto_14

    .line 71
    :cond_46
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 73
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_52

    .line 76
    :try_start_4b
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 78
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 81
    monitor-exit v0

    .line 82
    return v2

    .line 83
    :catchall_52
    move-exception p1

    .line 84
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 86
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 89
    throw p1

    .line 90
    :catchall_59
    move-exception p1

    .line 91
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_59

    .line 92
    throw p1
.end method

.method private addToOngoingInternalLocked(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;ZZ)Z
    .registers 21

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p2

    .line 5
    :try_start_4
    iget-object v2, v1, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 7
    invoke-interface/range {p1 .. p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v2, v0, v3}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->querySessionJobInfo(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo;

    .line 14
    move-result-object v2

    .line 15
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    .line 18
    move-result-wide v8

    .line 19
    if-eqz v2, :cond_1e

    .line 21
    iget-object v3, v2, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 23
    sget-object v4, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->REMOVE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 25
    if-eq v3, v4, :cond_1e

    .line 27
    iget-wide v3, v2, Lcom/micloud/midrive/infos/SessionJobInfo;->addTimeMills:J

    .line 29
    move-wide v6, v3

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    move-wide v6, v8

    .line 32
    :goto_1f
    const-wide/16 v14, 0x0

    .line 34
    if-nez v2, :cond_25

    .line 36
    move-wide v10, v14

    .line 37
    goto :goto_28

    .line 38
    :cond_25
    iget-wide v2, v2, Lcom/micloud/midrive/infos/SessionJobInfo;->progress:J

    .line 40
    move-wide v10, v2

    .line 41
    :goto_28
    new-instance v2, Lcom/micloud/midrive/infos/SessionJobInfo;

    .line 43
    sget-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 45
    move-object v3, v2

    .line 46
    move-object/from16 v4, p1

    .line 48
    move/from16 v12, p3

    .line 50
    move/from16 v13, p4

    .line 52
    invoke-direct/range {v3 .. v13}, Lcom/micloud/midrive/infos/SessionJobInfo;-><init>(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;JJJZZ)V

    .line 55
    iget-object v3, v1, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 57
    invoke-virtual {v3, v0, v2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->insertOrUpdateJobInfoIfExist(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/SessionJobInfo;)J

    .line 60
    move-result-wide v2
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_3c} :catch_44

    .line 61
    cmp-long v0, v2, v14

    .line 63
    if-lez v0, :cond_42

    .line 65
    const/4 v0, 0x1

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    const/4 v0, 0x0

    .line 68
    :goto_43
    return v0

    .line 69
    :catch_44
    move-exception v0

    .line 70
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 72
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 75
    throw v2
.end method

.method private changeAllOngoingToPause(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 7

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 2
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 4
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 5
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->changeAllOngoingToPause(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    .line 6
    :goto_23
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 7
    :try_start_28
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_2f
    move-exception p1

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 8
    throw p1

    :catchall_36
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_36

    throw p1
.end method

.method private changeAllOngoingToPause(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/Map;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 11
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 12
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 13
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 14
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    move-result-wide v2

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->changeAllOngoingToPause(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/Map;J)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-ltz p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    .line 15
    :goto_23
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 16
    :try_start_28
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_2f
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 17
    throw p1

    :catchall_36
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_36

    throw p1
.end method

.method private changeAllPauseAndFailToOnGoing(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 7

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 14
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 17
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 19
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    .line 22
    move-result-wide v2

    .line 23
    invoke-virtual {v1, p1, v2, v3}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->changeAllPauseAndFailToOnGoing(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;J)J

    .line 26
    move-result-wide v1

    .line 27
    const-wide/16 v3, 0x0

    .line 29
    cmp-long p1, v1, v3

    .line 31
    if-lez p1, :cond_22

    .line 33
    const/4 p1, 0x1

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 p1, 0x0

    .line 36
    :goto_23
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 38
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 41
    :try_start_28
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 43
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 46
    monitor-exit v0

    .line 47
    return p1

    .line 48
    :catchall_2f
    move-exception p1

    .line 49
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 51
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 54
    throw p1

    .line 55
    :catchall_36
    move-exception p1

    .line 56
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_36

    .line 57
    throw p1
.end method

.method private changeFailToOngoing(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 6

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 14
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 17
    sget-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->FAIL:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 19
    sget-object v2, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 21
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeStatusInternalLocked(Ljava/lang/String;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 24
    move-result p1

    .line 25
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 27
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    .line 30
    :try_start_1d
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 32
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 35
    monitor-exit v0

    .line 36
    return p1

    .line 37
    :catchall_24
    move-exception p1

    .line 38
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 40
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 43
    throw p1

    .line 44
    :catchall_2b
    move-exception p1

    .line 45
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2b

    .line 46
    throw p1
.end method

.method private changeFreeNetworkOnly(Ljava/lang/String;ZLcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 12

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 14
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 17
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 19
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    .line 22
    move-result-wide v6

    .line 23
    move-object v3, p3

    .line 24
    move-object v4, p1

    .line 25
    move v5, p2

    .line 26
    invoke-virtual/range {v2 .. v7}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->changeFreeNetworkOnly(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;ZJ)J

    .line 29
    move-result-wide p1

    .line 30
    const-wide/16 v1, 0x0

    .line 32
    cmp-long p1, p1, v1

    .line 34
    if-lez p1, :cond_25

    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    const/4 p1, 0x0

    .line 39
    :goto_26
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 41
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_32

    .line 44
    :try_start_2b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 46
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 49
    monitor-exit v0

    .line 50
    return p1

    .line 51
    :catchall_32
    move-exception p1

    .line 52
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 54
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 57
    throw p1

    .line 58
    :catchall_39
    move-exception p1

    .line 59
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_39

    .line 60
    throw p1
.end method

.method private changeFreeNetworkOnlyForAutoSyncJob(ZLcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 7

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 14
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 17
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 19
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    .line 22
    move-result-wide v2

    .line 23
    invoke-virtual {v1, p2, p1, v2, v3}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->changeFreeNetworkOnlyForAutoSyncJob(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;ZJ)J

    .line 26
    move-result-wide p1

    .line 27
    const-wide/16 v1, 0x0

    .line 29
    cmp-long p1, p1, v1

    .line 31
    if-lez p1, :cond_22

    .line 33
    const/4 p1, 0x1

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 p1, 0x0

    .line 36
    :goto_23
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 38
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 41
    :try_start_28
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 43
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 46
    monitor-exit v0

    .line 47
    return p1

    .line 48
    :catchall_2f
    move-exception p1

    .line 49
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 51
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 54
    throw p1

    .line 55
    :catchall_36
    move-exception p1

    .line 56
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_36

    .line 57
    throw p1
.end method

.method private changeOngoingToPause(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 6

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 14
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 17
    sget-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 19
    sget-object v2, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 21
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeStatusInternalLocked(Ljava/lang/String;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 24
    move-result p1

    .line 25
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 27
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    .line 30
    :try_start_1d
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 32
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 35
    monitor-exit v0

    .line 36
    return p1

    .line 37
    :catchall_24
    move-exception p1

    .line 38
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 40
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 43
    throw p1

    .line 44
    :catchall_2b
    move-exception p1

    .line 45
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2b

    .line 46
    throw p1
.end method

.method private changePauseToOngoing(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 6

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 14
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 17
    sget-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 19
    sget-object v2, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 21
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeStatusInternalLocked(Ljava/lang/String;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 24
    move-result p1

    .line 25
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 27
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    .line 30
    :try_start_1d
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 32
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 35
    monitor-exit v0

    .line 36
    return p1

    .line 37
    :catchall_24
    move-exception p1

    .line 38
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 40
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 43
    throw p1

    .line 44
    :catchall_2b
    move-exception p1

    .line 45
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2b

    .line 46
    throw p1
.end method

.method private changeStatusInternalLocked(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Z
    .registers 12

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-interface {p4}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->querySessionJobStatus(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    move-result-object v0

    if-ne v0, p1, :cond_1a

    .line 5
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    move-result-wide v5

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateJobStatusAndInfo(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)J
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_18} :catch_1c

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1

    :catch_1c
    move-exception p1

    .line 6
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private changeStatusInternalLocked(Ljava/lang/String;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v0, p4, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->querySessionJobStatus(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    move-result-object v0

    if-ne v0, p2, :cond_16

    .line 2
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    move-result-wide v5

    move-object v2, p4

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateJobStatus(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;J)J
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_14} :catch_18

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1

    :catch_18
    move-exception p1

    .line 3
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private changeToFail(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 11

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 14
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 17
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 19
    sget-object v4, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->FAIL:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 21
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    .line 24
    move-result-wide v6

    .line 25
    move-object v3, p2

    .line 26
    move-object v5, p1

    .line 27
    invoke-virtual/range {v2 .. v7}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateJobStatusAndInfo(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)J

    .line 30
    move-result-wide p1

    .line 31
    const-wide/16 v1, 0x0

    .line 33
    cmp-long p1, p1, v1

    .line 35
    if-lez p1, :cond_26

    .line 37
    const/4 p1, 0x1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    const/4 p1, 0x0

    .line 40
    :goto_27
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 42
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_33

    .line 45
    :try_start_2c
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 47
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 50
    monitor-exit v0

    .line 51
    return p1

    .line 52
    :catchall_33
    move-exception p1

    .line 53
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 55
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 58
    throw p1

    .line 59
    :catchall_3a
    move-exception p1

    .line 60
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_3a

    .line 61
    throw p1
.end method

.method private changeToRemove(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 11

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 14
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 17
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 19
    sget-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->REMOVE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 21
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    .line 24
    move-result-wide v6

    .line 25
    move-object v3, p2

    .line 26
    move-object v4, p1

    .line 27
    invoke-virtual/range {v2 .. v7}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateJobStatus(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;J)J

    .line 30
    move-result-wide p1

    .line 31
    const-wide/16 v1, 0x0

    .line 33
    cmp-long p1, p1, v1

    .line 35
    if-lez p1, :cond_26

    .line 37
    const/4 p1, 0x1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    const/4 p1, 0x0

    .line 40
    :goto_27
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 42
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_33

    .line 45
    :try_start_2c
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 47
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 50
    monitor-exit v0

    .line 51
    return p1

    .line 52
    :catchall_33
    move-exception p1

    .line 53
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 55
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 58
    throw p1

    .line 59
    :catchall_3a
    move-exception p1

    .line 60
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_3a

    .line 61
    throw p1
.end method

.method private changeToSuccess(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 11

    .line 12
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 13
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 14
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 15
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 16
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    sget-object v4, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->SUCCESS:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 17
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    move-result-wide v6

    move-object v3, p2

    move-object v5, p1

    .line 18
    invoke-virtual/range {v2 .. v7}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateJobStatusAndInfo(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    .line 19
    :goto_27
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_33

    .line 20
    :try_start_2c
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_33
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 21
    throw p1

    :catchall_3a
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method private changeToSuccess(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 11

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 2
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 4
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 5
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    sget-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->SUCCESS:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    .line 6
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    move-result-wide v6

    move-object v3, p2

    move-object v4, p1

    .line 7
    invoke-virtual/range {v2 .. v7}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateJobStatus(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;J)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    .line 8
    :goto_27
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_33

    .line 9
    :try_start_2c
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_33
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 10
    throw p1

    :catchall_3a
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method private checkAndClearIfAccountChangedLocked()V
    .registers 7

    .line 1
    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getAccount()Landroid/accounts/Account;

    .line 14
    move-result-object v1

    .line 15
    if-nez v0, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    if-nez v1, :cond_19

    .line 20
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 22
    invoke-virtual {v1, v0}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateAccount(Landroid/accounts/Account;)V

    .line 25
    goto :goto_36

    .line 26
    :cond_19
    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_36

    .line 32
    invoke-static {}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->values()[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 35
    move-result-object v1

    .line 36
    array-length v2, v1

    .line 37
    const/4 v3, 0x0

    .line 38
    :goto_25
    if-ge v3, v2, :cond_31

    .line 40
    aget-object v4, v1, v3

    .line 42
    iget-object v5, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 44
    invoke-virtual {v5, v4}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->clearData(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 49
    goto :goto_25

    .line 50
    :cond_31
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 52
    invoke-virtual {v1, v0}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateAccount(Landroid/accounts/Account;)V

    .line 55
    :cond_36
    :goto_36
    return-void
.end method

.method private static checkRunInMainThread()V
    .registers 1

    .line 1
    const-string v0, "should run in main thread. "

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private static checkRunInWorkThread()V
    .registers 1

    .line 1
    const-string v0, "can not handle session job info in main thread. "

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private clearData(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 3
    invoke-virtual {p1, p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->clearData(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 6
    return-void
.end method

.method private getInWorkJobsOrderByAddTime(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 14
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 17
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 19
    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->queryInWorkJobsOrderByAddTime(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;

    .line 22
    move-result-object p1

    .line 23
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 25
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1b} :catch_24
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 28
    :try_start_1b
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 30
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 33
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_31

    .line 34
    return-object p1

    .line 35
    :catchall_22
    move-exception p1

    .line 36
    goto :goto_2b

    .line 37
    :catch_24
    move-exception p1

    .line 38
    :try_start_25
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 40
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    throw v1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    .line 44
    :goto_2b
    :try_start_2b
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 46
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 49
    throw p1

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    .line 52
    throw p1
.end method

.method private getJobCountByStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)I
    .registers 5

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 14
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 17
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 19
    invoke-virtual {v1, p2, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getJobCountByStatus(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;)I

    .line 22
    move-result p1

    .line 23
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 25
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 28
    :try_start_1b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 30
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 33
    monitor-exit v0

    .line 34
    return p1

    .line 35
    :catchall_22
    move-exception p1

    .line 36
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 38
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 41
    throw p1

    .line 42
    :catchall_29
    move-exception p1

    .line 43
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_29

    .line 44
    throw p1
.end method

.method private getJobInfosByKeys(Ljava/util/List;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 14
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 17
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 19
    invoke-virtual {v1, p2, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->queryJobInfosByKeys(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;)Ljava/util/List;

    .line 22
    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 25
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1b} :catch_24
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 28
    :try_start_1b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 30
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 33
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_31

    .line 34
    return-object p1

    .line 35
    :catchall_22
    move-exception p1

    .line 36
    goto :goto_2b

    .line 37
    :catch_24
    move-exception p1

    .line 38
    :try_start_25
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 40
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    throw p2
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    .line 44
    :goto_2b
    :try_start_2b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 46
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 49
    throw p1

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    .line 52
    throw p1
.end method

.method private static getLock()Ljava/lang/Object;
    .registers 1

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    return-object v0
.end method

.method private getOngoingJobInfosOrderByAddTime(ILcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 14
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 17
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 19
    invoke-virtual {v1, p2, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->queryOngoingJobInfosOrderByAddTime(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;I)Ljava/util/List;

    .line 22
    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 25
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1b} :catch_24
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 28
    :try_start_1b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 30
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 33
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_31

    .line 34
    return-object p1

    .line 35
    :catchall_22
    move-exception p1

    .line 36
    goto :goto_2b

    .line 37
    :catch_24
    move-exception p1

    .line 38
    :try_start_25
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 40
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    throw p2
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    .line 44
    :goto_2b
    :try_start_2b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 46
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 49
    throw p1

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    .line 52
    throw p1
.end method

.method private getOngoingJobInfosWithAnyNetworkOrderByAddTime(ILcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 14
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 17
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 19
    invoke-virtual {v1, p2, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getOngoingJobInfosWithAnyNetworkOrderByAddTime(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;I)Ljava/util/List;

    .line 22
    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 25
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1b} :catch_24
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 28
    :try_start_1b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 30
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 33
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_31

    .line 34
    return-object p1

    .line 35
    :catchall_22
    move-exception p1

    .line 36
    goto :goto_2b

    .line 37
    :catch_24
    move-exception p1

    .line 38
    :try_start_25
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 40
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    throw p2
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    .line 44
    :goto_2b
    :try_start_2b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 46
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 49
    throw p1

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    .line 52
    throw p1
.end method

.method public static getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;
    .registers 3

    .line 1
    new-instance v0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;

    .line 3
    sget-object v1, Lcom/micloud/midrive/cache/manager/SessionJobManager;->sInstance:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 5
    invoke-direct {v0, v1, p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;-><init>(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 8
    return-object v0
.end method

.method private getSuccessJobsOrderByUpdateTime(ILcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 14
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 17
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 19
    invoke-virtual {v1, p2, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->querySuccessJobsOrderByUpdateTime(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;I)Ljava/util/List;

    .line 22
    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 25
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1b} :catch_24
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 28
    :try_start_1b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 30
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 33
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_31

    .line 34
    return-object p1

    .line 35
    :catchall_22
    move-exception p1

    .line 36
    goto :goto_2b

    .line 37
    :catch_24
    move-exception p1

    .line 38
    :try_start_25
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 40
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    throw p2
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    .line 44
    :goto_2b
    :try_start_2b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 46
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 49
    throw p1

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    .line 52
    throw p1
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->sInstance:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/micloud/midrive/cache/manager/SessionJobManager;->sInstance:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 14
    invoke-direct {v1, p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;-><init>(Landroid/content/Context;)V

    .line 17
    sput-object v1, Lcom/micloud/midrive/cache/manager/SessionJobManager;->sInstance:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    goto :goto_17

    .line 21
    :catchall_14
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    .line 23
    throw p0

    .line 24
    :cond_17
    :goto_17
    return-void
.end method

.method private initStatusChangeListener()V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mStatusChangedListenerMap:Ljava/util/Map;

    .line 8
    invoke-static {}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->values()[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 11
    move-result-object v0

    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_d
    if-ge v2, v1, :cond_1e

    .line 16
    aget-object v3, v0, v2

    .line 18
    iget-object v4, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mStatusChangedListenerMap:Ljava/util/Map;

    .line 20
    new-instance v5, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_d

    .line 31
    :cond_1e
    return-void
.end method

.method private static obtainUpdateTime()J
    .registers 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private postStatusChange(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mMainHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/micloud/midrive/cache/manager/SessionJobManager$1;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/micloud/midrive/cache/manager/SessionJobManager$1;-><init>(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method private updateJobInfo(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 7

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 14
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 17
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 19
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    .line 22
    move-result-wide v2

    .line 23
    invoke-virtual {v1, p2, p1, v2, v3}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateJobInfo(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)J

    .line 26
    move-result-wide p1

    .line 27
    const-wide/16 v1, 0x0

    .line 29
    cmp-long p1, p1, v1

    .line 31
    if-lez p1, :cond_22

    .line 33
    const/4 p1, 0x1

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    const/4 p1, 0x0

    .line 36
    :goto_23
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 38
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    .line 41
    :try_start_28
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 43
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 46
    monitor-exit v0

    .line 47
    return p1

    .line 48
    :catchall_2f
    move-exception p1

    .line 49
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 51
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 54
    throw p1

    .line 55
    :catchall_36
    move-exception p1

    .line 56
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_36

    .line 57
    throw p1
.end method

.method private updateJobProgress(Ljava/util/Map;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    .line 4
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    .line 14
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    .line 17
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 19
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    .line 22
    move-result-wide v2

    .line 23
    invoke-virtual {v1, p2, p1, v2, v3}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateJobProgress(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/Map;J)V

    .line 26
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 28
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    .line 31
    :try_start_1e
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 33
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catchall_25
    move-exception p1

    .line 39
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    .line 41
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    .line 44
    throw p1

    .line 45
    :catchall_2c
    move-exception p1

    .line 46
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2c

    .line 47
    throw p1
.end method


# virtual methods
.method public addStatusChangedListener(Lcom/micloud/midrive/cache/manager/SessionJobManager$StatusChangedListener;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInMainThread()V

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mStatusChangedListenerMap:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Ljava/util/List;

    .line 12
    if-eqz p2, :cond_11

    .line 14
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    return-void

    .line 18
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    const-string p2, "Should not reach here!"

    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1
.end method

.method public removeStatusChangedListener(Lcom/micloud/midrive/cache/manager/SessionJobManager$StatusChangedListener;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInMainThread()V

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mStatusChangedListenerMap:Ljava/util/Map;

    .line 6
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Ljava/util/List;

    .line 12
    if-eqz p2, :cond_11

    .line 14
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17
    return-void

    .line 18
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    const-string p2, "Should not reach here!"

    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1
.end method
