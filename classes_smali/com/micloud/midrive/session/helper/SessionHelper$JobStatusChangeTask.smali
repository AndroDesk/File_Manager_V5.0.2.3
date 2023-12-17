.class abstract Lcom/micloud/midrive/session/helper/SessionHelper$JobStatusChangeTask;
.super Landroid/os/AsyncTask;
.source "SessionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/helper/SessionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "JobStatusChangeTask"
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

.field private final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/micloud/midrive/session/helper/SessionHelper$JobStatusChangeTask;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/session/helper/SessionHelper$JobStatusChangeTask;->mTransferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p3, p1, p2

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/session/helper/SessionHelper$JobStatusChangeTask;->mKeys:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/micloud/midrive/session/helper/SessionHelper$JobStatusChangeTask;->mCallback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;Lcom/micloud/midrive/session/helper/ActionResultCallback;)V
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
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/micloud/midrive/session/helper/SessionHelper$JobStatusChangeTask;->mContext:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/micloud/midrive/session/helper/SessionHelper$JobStatusChangeTask;->mTransferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/micloud/midrive/session/helper/SessionHelper$JobStatusChangeTask;->mKeys:Ljava/util/List;

    .line 10
    iput-object p4, p0, Lcom/micloud/midrive/session/helper/SessionHelper$JobStatusChangeTask;->mCallback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    return-void
.end method


# virtual methods
.method public abstract doChangeStatus(Lcom/micloud/midrive/cache/manager/ISessionJobManager;Ljava/lang/String;)Z
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 5

    .line 2
    iget-object p1, p0, Lcom/micloud/midrive/session/helper/SessionHelper$JobStatusChangeTask;->mTransferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {p1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/micloud/midrive/session/helper/SessionHelper$JobStatusChangeTask;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1, v2}, Lcom/micloud/midrive/session/helper/SessionHelper$JobStatusChangeTask;->doChangeStatus(Lcom/micloud/midrive/cache/manager/ISessionJobManager;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    goto :goto_d

    .line 5
    :cond_1f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/session/helper/SessionHelper$JobStatusChangeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .registers 3

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/micloud/midrive/session/helper/SessionHelper$JobStatusChangeTask;->mCallback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    if-eqz v0, :cond_e

    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/micloud/midrive/session/helper/ActionResultCallback;->onActionResult(Landroid/os/AsyncTask;Z)V

    :cond_e
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/session/helper/SessionHelper$JobStatusChangeTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
