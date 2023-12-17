.class Lcom/micloud/midrive/session/helper/SessionHelper$ChangeFreeNetworkOnlyTask;
.super Landroid/os/AsyncTask;
.source "SessionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/helper/SessionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeFreeNetworkOnlyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

.field private final mContext:Landroid/content/Context;

.field private final mFreeNetworkOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/session/helper/SessionHelper$ChangeFreeNetworkOnlyTask;->mContext:Landroid/content/Context;

    .line 6
    iput-boolean p2, p0, Lcom/micloud/midrive/session/helper/SessionHelper$ChangeFreeNetworkOnlyTask;->mFreeNetworkOnly:Z

    .line 8
    iput-object p3, p0, Lcom/micloud/midrive/session/helper/SessionHelper$ChangeFreeNetworkOnlyTask;->mCallback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    .line 10
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4

    .line 2
    sget-object p1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {p1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    move-result-object p1

    iget-boolean v0, p0, Lcom/micloud/midrive/session/helper/SessionHelper$ChangeFreeNetworkOnlyTask;->mFreeNetworkOnly:Z

    .line 3
    invoke-interface {p1, v0}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->changeFreeNetworkOnlyForAutoSyncJob(Z)Z

    move-result p1

    .line 4
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/micloud/midrive/session/helper/SessionHelper$ChangeFreeNetworkOnlyTask;->mFreeNetworkOnly:Z

    .line 5
    invoke-interface {v0, v1}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->changeFreeNetworkOnlyForAutoSyncJob(Z)Z

    move-result v0

    or-int/2addr p1, v0

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/session/helper/SessionHelper$ChangeFreeNetworkOnlyTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .registers 3

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/micloud/midrive/session/helper/SessionHelper$ChangeFreeNetworkOnlyTask;->mCallback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/micloud/midrive/session/helper/ActionResultCallback;->onActionResult(Landroid/os/AsyncTask;Z)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/session/helper/SessionHelper$ChangeFreeNetworkOnlyTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
