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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-direct {v0, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mMainHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->initStatusChangeListener()V

    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/util/List;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;ZZ)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->addToOngoing(Ljava/util/List;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;ZZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->postStatusChange(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeAllPauseAndFailToOnGoing(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changePauseToOngoing(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1200(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeFailToOngoing(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(Lcom/micloud/midrive/cache/manager/SessionJobManager;ILcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getOngoingJobInfosOrderByAddTime(ILcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/micloud/midrive/cache/manager/SessionJobManager;ILcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getOngoingJobInfosWithAnyNetworkOrderByAddTime(ILcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/util/List;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getJobInfosByKeys(Ljava/util/List;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getInWorkJobsOrderByAddTime(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/micloud/midrive/cache/manager/SessionJobManager;ILcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSuccessJobsOrderByUpdateTime(ILcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getJobCountByStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1900(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/util/Map;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->updateJobProgress(Ljava/util/Map;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeToSuccess(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2000(Lcom/micloud/midrive/cache/manager/SessionJobManager;ZLcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeFreeNetworkOnlyForAutoSyncJob(ZLcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/lang/String;ZLcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeFreeNetworkOnly(Ljava/lang/String;ZLcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2200(Lcom/micloud/midrive/cache/manager/SessionJobManager;Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->clearData(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/micloud/midrive/cache/manager/SessionJobManager;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mStatusChangedListenerMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeToSuccess(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->updateJobInfo(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeToFail(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeToRemove(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeOngoingToPause(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeAllOngoingToPause(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/Map;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeAllOngoingToPause(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/Map;)Z

    move-result p0

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

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/infos/TransferFileBaseInfo;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TransferType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->addToOngoingInternalLocked(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;ZZ)Z

    goto :goto_14

    :cond_46
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_52

    :try_start_4b
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return v2

    :catchall_52
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_59
    move-exception p1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_59

    throw p1
.end method

.method private addToOngoingInternalLocked(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;ZZ)Z
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    :try_start_4
    iget-object v2, v1, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-interface/range {p1 .. p1}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->querySessionJobInfo(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo;

    move-result-object v2

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    move-result-wide v8

    if-eqz v2, :cond_1e

    iget-object v3, v2, Lcom/micloud/midrive/infos/SessionJobInfo;->status:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    sget-object v4, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->REMOVE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    if-eq v3, v4, :cond_1e

    iget-wide v3, v2, Lcom/micloud/midrive/infos/SessionJobInfo;->addTimeMills:J

    move-wide v6, v3

    goto :goto_1f

    :cond_1e
    move-wide v6, v8

    :goto_1f
    const-wide/16 v14, 0x0

    if-nez v2, :cond_25

    move-wide v10, v14

    goto :goto_28

    :cond_25
    iget-wide v2, v2, Lcom/micloud/midrive/infos/SessionJobInfo;->progress:J

    move-wide v10, v2

    :goto_28
    new-instance v2, Lcom/micloud/midrive/infos/SessionJobInfo;

    sget-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    move-object v3, v2

    move-object/from16 v4, p1

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-direct/range {v3 .. v13}, Lcom/micloud/midrive/infos/SessionJobInfo;-><init>(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;JJJZZ)V

    iget-object v3, v1, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v3, v0, v2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->insertOrUpdateJobInfoIfExist(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/SessionJobInfo;)J

    move-result-wide v2
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_3c} :catch_44

    cmp-long v0, v2, v14

    if-lez v0, :cond_42

    const/4 v0, 0x1

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :goto_43
    return v0

    :catch_44
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private changeAllOngoingToPause(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 7

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

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

    :goto_23
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    :try_start_28
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_2f
    move-exception p1

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_36
    move-exception p1

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

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

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

    :goto_23
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    :try_start_28
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_2f
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_36

    throw p1
.end method

.method private changeAllPauseAndFailToOnGoing(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 7

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->changeAllPauseAndFailToOnGoing(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    :try_start_28
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_2f
    move-exception p1

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_36

    throw p1
.end method

.method private changeFailToOngoing(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 6

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    sget-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->FAIL:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    sget-object v2, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeStatusInternalLocked(Ljava/lang/String;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    move-result p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    :try_start_1d
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_24
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method private changeFreeNetworkOnly(Ljava/lang/String;ZLcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 12

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    move-result-wide v6

    move-object v3, p3

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->changeFreeNetworkOnly(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;ZJ)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_32

    :try_start_2b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_32
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_39

    throw p1
.end method

.method private changeFreeNetworkOnlyForAutoSyncJob(ZLcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 7

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    move-result-wide v2

    invoke-virtual {v1, p2, p1, v2, v3}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->changeFreeNetworkOnlyForAutoSyncJob(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;ZJ)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    :try_start_28
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_2f
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_36

    throw p1
.end method

.method private changeOngoingToPause(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 6

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    sget-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    sget-object v2, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeStatusInternalLocked(Ljava/lang/String;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    move-result p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    :try_start_1d
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_24
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method private changePauseToOngoing(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 6

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    sget-object v1, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->PAUSE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    sget-object v2, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->ONGOING:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->changeStatusInternalLocked(Ljava/lang/String;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    move-result p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    :try_start_1d
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_24
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method private changeStatusInternalLocked(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Z
    .registers 12

    :try_start_0
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-interface {p4}, Lcom/micloud/midrive/infos/DoneBaseInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->querySessionJobStatus(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    move-result-object v0

    if-ne v0, p1, :cond_1a

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

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private changeStatusInternalLocked(Ljava/lang/String;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 12

    :try_start_0
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v0, p4, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->querySessionJobStatus(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    move-result-object v0

    if-ne v0, p2, :cond_16

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

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private changeToFail(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 11

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    sget-object v4, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->FAIL:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    move-result-wide v6

    move-object v3, p2

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateJobStatusAndInfo(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_33

    :try_start_2c
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_33
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method private changeToRemove(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 11

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    sget-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->REMOVE:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    move-result-wide v6

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateJobStatus(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;J)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_33

    :try_start_2c
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_33
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method private changeToSuccess(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 11

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    sget-object v4, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->SUCCESS:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    move-result-wide v6

    move-object v3, p2

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateJobStatusAndInfo(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_33

    :try_start_2c
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_33
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method private changeToSuccess(Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 11

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    sget-object v5, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->SUCCESS:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    move-result-wide v6

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateJobStatus(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;J)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_33

    :try_start_2c
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_33
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method private checkAndClearIfAccountChangedLocked()V
    .registers 7

    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    if-nez v0, :cond_11

    return-void

    :cond_11
    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1, v0}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateAccount(Landroid/accounts/Account;)V

    goto :goto_36

    :cond_19
    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    invoke-static {}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->values()[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_31

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v5, v4}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->clearData(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_31
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1, v0}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateAccount(Landroid/accounts/Account;)V

    :cond_36
    :goto_36
    return-void
.end method

.method private static checkRunInMainThread()V
    .registers 1

    const-string v0, "should run in main thread. "

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    return-void
.end method

.method private static checkRunInWorkThread()V
    .registers 1

    const-string v0, "can not handle session job info in main thread. "

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkNotRunInMainThread(Ljava/lang/String;)V

    return-void
.end method

.method private clearData(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 3

    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p1, p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->clearData(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

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

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->queryInWorkJobsOrderByAddTime(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1b} :catch_24
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    :try_start_1b
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_31

    return-object p1

    :catchall_22
    move-exception p1

    goto :goto_2b

    :catch_24
    move-exception p1

    :try_start_25
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    :goto_2b
    :try_start_2b
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    throw p1
.end method

.method private getJobCountByStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)I
    .registers 5

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1, p2, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getJobCountByStatus(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;)I

    move-result p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    :try_start_1b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_22
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_29

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

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1, p2, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->queryJobInfosByKeys(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1b} :catch_24
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    :try_start_1b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_31

    return-object p1

    :catchall_22
    move-exception p1

    goto :goto_2b

    :catch_24
    move-exception p1

    :try_start_25
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    :goto_2b
    :try_start_2b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    throw p1
.end method

.method private static getLock()Ljava/lang/Object;
    .registers 1

    const-class v0, Lcom/micloud/midrive/cache/manager/SessionJobManager;

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

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1, p2, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->queryOngoingJobInfosOrderByAddTime(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;I)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1b} :catch_24
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    :try_start_1b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_31

    return-object p1

    :catchall_22
    move-exception p1

    goto :goto_2b

    :catch_24
    move-exception p1

    :try_start_25
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    :goto_2b
    :try_start_2b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

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

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1, p2, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->getOngoingJobInfosWithAnyNetworkOrderByAddTime(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;I)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1b} :catch_24
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    :try_start_1b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_31

    return-object p1

    :catchall_22
    move-exception p1

    goto :goto_2b

    :catch_24
    move-exception p1

    :try_start_25
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    :goto_2b
    :try_start_2b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    throw p1
.end method

.method public static getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;
    .registers 3

    new-instance v0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;

    sget-object v1, Lcom/micloud/midrive/cache/manager/SessionJobManager;->sInstance:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    invoke-direct {v0, v1, p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;-><init>(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

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

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1, p2, p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->querySuccessJobsOrderByUpdateTime(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;I)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1b} :catch_24
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    :try_start_1b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_31

    return-object p1

    :catchall_22
    move-exception p1

    goto :goto_2b

    :catch_24
    move-exception p1

    :try_start_25
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    :goto_2b
    :try_start_2b
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_31

    throw p1
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->sInstance:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/micloud/midrive/cache/manager/SessionJobManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/micloud/midrive/cache/manager/SessionJobManager;->sInstance:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/micloud/midrive/cache/manager/SessionJobManager;

    invoke-direct {v1, p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/micloud/midrive/cache/manager/SessionJobManager;->sInstance:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    return-void
.end method

.method private initStatusChangeListener()V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mStatusChangedListenerMap:Ljava/util/Map;

    invoke-static {}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->values()[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mStatusChangedListenerMap:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1e
    return-void
.end method

.method private static obtainUpdateTime()J
    .registers 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private postStatusChange(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/micloud/midrive/cache/manager/SessionJobManager$1;

    invoke-direct {v1, p0, p1}, Lcom/micloud/midrive/cache/manager/SessionJobManager$1;-><init>(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateJobInfo(Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z
    .registers 7

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    move-result-wide v2

    invoke-virtual {v1, p2, p1, v2, v3}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateJobInfo(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/infos/TransferFileBaseInfo;J)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_2f

    :try_start_28
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_2f
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_36

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

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInWorkThread()V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->obtainUpdateTime()J

    move-result-wide v2

    invoke-virtual {v1, p2, p1, v2, v3}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->updateJobProgress(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/Map;J)V

    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->setTransactionSuccessful()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    :try_start_1e
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    monitor-exit v0

    return-void

    :catchall_25
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mSessionJobDatabase:Lcom/micloud/midrive/cache/db/SessionJobDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SessionJobDatabase;->endTransaction()V

    throw p1

    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_2c

    throw p1
.end method


# virtual methods
.method public addStatusChangedListener(Lcom/micloud/midrive/cache/manager/SessionJobManager$StatusChangedListener;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 4

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInMainThread()V

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mStatusChangedListenerMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_11

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Should not reach here!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeStatusChangedListener(Lcom/micloud/midrive/cache/manager/SessionJobManager$StatusChangedListener;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 4

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->checkRunInMainThread()V

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager;->mStatusChangedListenerMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_11

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Should not reach here!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
