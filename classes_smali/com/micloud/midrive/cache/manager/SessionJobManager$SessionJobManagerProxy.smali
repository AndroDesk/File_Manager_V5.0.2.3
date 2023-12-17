.class Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;
.super Ljava/lang/Object;
.source "SessionJobManager.java"

# interfaces
.implements Lcom/micloud/midrive/cache/manager/ISessionJobManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/cache/manager/SessionJobManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionJobManagerProxy"
.end annotation


# instance fields
.field private final managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

.field private final transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 8
    return-void
.end method


# virtual methods
.method public addStatusChangedListener(Lcom/micloud/midrive/cache/manager/SessionJobManager$StatusChangedListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->addStatusChangedListener(Lcom/micloud/midrive/cache/manager/SessionJobManager$StatusChangedListener;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 8
    return-void
.end method

.method public addToOngoing(Ljava/util/List;ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/TransferFileBaseInfo;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, p1, v1, p2, p3}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$000(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/util/List;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;ZZ)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_11

    .line 11
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 13
    iget-object p3, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 15
    invoke-static {p2, p3}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 18
    :cond_11
    return p1
.end method

.method public changeAllOngoingToPause()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v0, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$800(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v1, v2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    :cond_11
    return v0
.end method

.method public changeAllOngoingToPause(Ljava/util/Map;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v0, v1, p1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$900(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v0, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    :cond_11
    return p1
.end method

.method public changeAllPauseAndFailToOnGoing()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$1000(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_11

    .line 11
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 13
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 15
    invoke-static {v1, v2}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 18
    :cond_11
    return v0
.end method

.method public changeFailToOngoing(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$1200(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_11

    .line 11
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 13
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 15
    invoke-static {v0, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 18
    :cond_11
    return p1
.end method

.method public changeFreeNetworkOnly(Ljava/lang/String;Z)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, p1, p2, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$2100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/lang/String;ZLcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public changeFreeNetworkOnlyForAutoSyncJob(Z)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$2000(Lcom/micloud/midrive/cache/manager/SessionJobManager;ZLcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public changeOngoingToPause(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$700(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_11

    .line 11
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 13
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 15
    invoke-static {v0, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 18
    :cond_11
    return p1
.end method

.method public changePauseToOngoing(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$1100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_11

    .line 11
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 13
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 15
    invoke-static {v0, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 18
    :cond_11
    return p1
.end method

.method public changeToFail(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$500(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_11

    .line 11
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 13
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 15
    invoke-static {v0, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 18
    :cond_11
    return p1
.end method

.method public changeToRemove(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$600(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_11

    .line 11
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 13
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 15
    invoke-static {v0, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 18
    :cond_11
    return p1
.end method

.method public changeToSuccess(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Z
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$300(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 4
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v0, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    :cond_11
    return p1
.end method

.method public changeToSuccess(Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$200(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/lang/String;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v0, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$100(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    :cond_11
    return p1
.end method

.method public clearData(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$2200(Lcom/micloud/midrive/cache/manager/SessionJobManager;Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 8
    return-void
.end method

.method public getInWorkJobsOrderByAddTime()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$1600(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getJobCountByStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$1800(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getJobInfosByKeys(Ljava/util/List;)Ljava/util/List;
    .registers 4
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

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$1500(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/util/List;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getOngoingJobInfosOrderByAddTime(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$1300(Lcom/micloud/midrive/cache/manager/SessionJobManager;ILcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getOngoingJobInfosWithAnyNetworkOrderByAddTime(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$1400(Lcom/micloud/midrive/cache/manager/SessionJobManager;ILcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getSuccessJobsOrderByUpdateTime(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$1700(Lcom/micloud/midrive/cache/manager/SessionJobManager;ILcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public removeStatusChangedListener(Lcom/micloud/midrive/cache/manager/SessionJobManager$StatusChangedListener;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->removeStatusChangedListener(Lcom/micloud/midrive/cache/manager/SessionJobManager$StatusChangedListener;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 8
    return-void
.end method

.method public updateJobInfo(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$400(Lcom/micloud/midrive/cache/manager/SessionJobManager;Lcom/micloud/midrive/infos/TransferFileBaseInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public updateJobProgress(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->managerImpl:Lcom/micloud/midrive/cache/manager/SessionJobManager;

    .line 3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SessionJobManager$SessionJobManagerProxy;->transferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 5
    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->access$1900(Lcom/micloud/midrive/cache/manager/SessionJobManager;Ljava/util/Map;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 8
    return-void
.end method
