.class public interface abstract Lcom/micloud/midrive/session/helper/ISessionHelper;
.super Ljava/lang/Object;
.source "ISessionHelper.java"


# virtual methods
.method public abstract addTask(Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/infos/TransferFileBaseInfo;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
.end method

.method public abstract addTask(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/List;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
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
.end method

.method public abstract getSession()Lcom/micloud/midrive/session/TransferSession;
.end method

.method public abstract getTaskProgressInfo(Ljava/lang/String;)Lcom/micloud/midrive/infos/TaskProgressInfo;
.end method

.method public abstract getTaskProgressInfoMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/micloud/midrive/infos/TaskProgressInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract notifyNewTaskAddedOrStartSessionIfNotExist(Landroid/content/Context;Landroid/accounts/Account;)V
.end method

.method public abstract notifyRequiredNetworkChangedIfExist()V
.end method

.method public abstract pauseAllTask(Landroid/content/Context;Ljava/util/Map;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
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
.end method

.method public abstract pauseTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
.end method

.method public abstract removeTask(Landroid/content/Context;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
.end method

.method public abstract removeTask(Landroid/content/Context;Ljava/util/List;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
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
.end method

.method public abstract resumeAllTask(Landroid/content/Context;Landroid/accounts/Account;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
.end method

.method public abstract resumeFromFail(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
.end method

.method public abstract resumeFromPause(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;
.end method
