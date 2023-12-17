.class public interface abstract Lcom/micloud/midrive/cache/manager/ISessionJobManager;
.super Ljava/lang/Object;
.source "ISessionJobManager.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract addStatusChangedListener(Lcom/micloud/midrive/cache/manager/SessionJobManager$StatusChangedListener;)V
.end method

.method public abstract addToOngoing(Ljava/util/List;ZZ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/TransferFileBaseInfo;",
            ">;ZZ)Z"
        }
    .end annotation
.end method

.method public abstract changeAllOngoingToPause()Z
.end method

.method public abstract changeAllOngoingToPause(Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract changeAllPauseAndFailToOnGoing()Z
.end method

.method public abstract changeFailToOngoing(Ljava/lang/String;)Z
.end method

.method public abstract changeFreeNetworkOnly(Ljava/lang/String;Z)Z
.end method

.method public abstract changeFreeNetworkOnlyForAutoSyncJob(Z)Z
.end method

.method public abstract changeOngoingToPause(Ljava/lang/String;)Z
.end method

.method public abstract changePauseToOngoing(Ljava/lang/String;)Z
.end method

.method public abstract changeToFail(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Z
.end method

.method public abstract changeToRemove(Ljava/lang/String;)Z
.end method

.method public abstract changeToSuccess(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Z
.end method

.method public abstract changeToSuccess(Ljava/lang/String;)Z
.end method

.method public abstract clearData(Landroid/content/Context;)V
.end method

.method public abstract getInWorkJobsOrderByAddTime()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getJobCountByStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;)I
.end method

.method public abstract getJobInfosByKeys(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOngoingJobInfosOrderByAddTime(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOngoingJobInfosWithAnyNetworkOrderByAddTime(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSuccessJobsOrderByUpdateTime(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeStatusChangedListener(Lcom/micloud/midrive/cache/manager/SessionJobManager$StatusChangedListener;)V
.end method

.method public abstract updateJobInfo(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Z
.end method

.method public abstract updateJobProgress(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method
