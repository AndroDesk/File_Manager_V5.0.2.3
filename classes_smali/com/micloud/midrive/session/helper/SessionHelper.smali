.class public Lcom/micloud/midrive/session/helper/SessionHelper;
.super Ljava/lang/Object;
.source "SessionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/session/helper/SessionHelper$ChangeFreeNetworkOnlyTask;,
        Lcom/micloud/midrive/session/helper/SessionHelper$ResumeAllTask;,
        Lcom/micloud/midrive/session/helper/SessionHelper$PauseAllTask;,
        Lcom/micloud/midrive/session/helper/SessionHelper$PauseTask;,
        Lcom/micloud/midrive/session/helper/SessionHelper$RemoveTask;,
        Lcom/micloud/midrive/session/helper/SessionHelper$ResumeFromFailTask;,
        Lcom/micloud/midrive/session/helper/SessionHelper$ResumeFromPauseTask;,
        Lcom/micloud/midrive/session/helper/SessionHelper$JobStatusChangeTask;,
        Lcom/micloud/midrive/session/helper/SessionHelper$AddNewJobTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addJobAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/TransferFileBaseInfo;",
            ">;Z",
            "Lcom/micloud/midrive/session/helper/ActionResultCallback;",
            ")",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/micloud/midrive/session/helper/SessionHelper$AddNewJobTask;

    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/micloud/midrive/session/helper/SessionHelper$AddNewJobTask;-><init>(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)V

    .line 12
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 14
    const/4 p1, 0x0

    .line 15
    new-array p1, p1, [Ljava/lang/Void;

    .line 17
    invoke-virtual {v6, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static changeFreeNetworkOnlyForAutoSyncJob(Landroid/content/Context;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 5

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/helper/SessionHelper$ChangeFreeNetworkOnlyTask;

    .line 3
    new-instance v1, Lcom/micloud/midrive/session/helper/SessionHelper$1;

    .line 5
    invoke-direct {v1, p2}, Lcom/micloud/midrive/session/helper/SessionHelper$1;-><init>(Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    .line 8
    invoke-direct {v0, p0, p1, v1}, Lcom/micloud/midrive/session/helper/SessionHelper$ChangeFreeNetworkOnlyTask;-><init>(Landroid/content/Context;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)V

    .line 11
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 13
    const/4 p1, 0x0

    .line 14
    new-array p1, p1, [Ljava/lang/Void;

    .line 16
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static getInstance(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/session/helper/ISessionHelper;
    .registers 4

    .line 1
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    if-ne p0, v0, :cond_9

    .line 5
    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->getInstance()Lcom/micloud/midrive/session/helper/UploadSessionHelper;

    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_9
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 12
    if-ne p0, v0, :cond_12

    .line 14
    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->getInstance()Lcom/micloud/midrive/session/helper/DownloadSessionHelper;

    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v2, "unknown transfer type. "

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0
.end method

.method public static pauseAllAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/Map;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
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
    new-instance v0, Lcom/micloud/midrive/session/helper/SessionHelper$PauseAllTask;

    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/micloud/midrive/session/helper/SessionHelper$PauseAllTask;-><init>(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/Map;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    .line 6
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 8
    const/4 p1, 0x0

    .line 9
    new-array p1, p1, [Ljava/lang/Void;

    .line 11
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static pauseAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 5

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/helper/SessionHelper$PauseTask;

    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/micloud/midrive/session/helper/SessionHelper$PauseTask;-><init>(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    .line 6
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 8
    const/4 p1, 0x0

    .line 9
    new-array p1, p1, [Ljava/lang/Void;

    .line 11
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static removeAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 5

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/helper/SessionHelper$RemoveTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/micloud/midrive/session/helper/SessionHelper$RemoveTask;-><init>(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 2
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static removeAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/micloud/midrive/session/helper/ActionResultCallback;",
            ")",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/micloud/midrive/session/helper/SessionHelper$RemoveTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/micloud/midrive/session/helper/SessionHelper$RemoveTask;-><init>(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 4
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public static resumeAllAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 4

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/helper/SessionHelper$ResumeAllTask;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/micloud/midrive/session/helper/SessionHelper$ResumeAllTask;-><init>(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    .line 6
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 8
    const/4 p1, 0x0

    .line 9
    new-array p1, p1, [Ljava/lang/Void;

    .line 11
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static resumeFromFailAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 5

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/helper/SessionHelper$ResumeFromFailTask;

    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/micloud/midrive/session/helper/SessionHelper$ResumeFromFailTask;-><init>(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    .line 6
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 8
    const/4 p1, 0x0

    .line 9
    new-array p1, p1, [Ljava/lang/Void;

    .line 11
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static resumeFromPauseAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
    .registers 5

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/helper/SessionHelper$ResumeFromPauseTask;

    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/micloud/midrive/session/helper/SessionHelper$ResumeFromPauseTask;-><init>(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V

    .line 6
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 8
    const/4 p1, 0x0

    .line 9
    new-array p1, p1, [Ljava/lang/Void;

    .line 11
    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
