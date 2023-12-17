.class public interface abstract Lcom/micloud/midrive/session/manager/ISessionTaskManager;
.super Ljava/lang/Object;
.source "ISessionTaskManager.java"


# virtual methods
.method public abstract addTask(Lcom/micloud/midrive/infos/TransferFileBaseInfo;)V
.end method

.method public abstract getInWorkList(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pauseAllTask()V
.end method

.method public abstract pauseTask(Ljava/lang/String;)V
.end method

.method public abstract removeTask(Ljava/lang/String;)V
.end method
