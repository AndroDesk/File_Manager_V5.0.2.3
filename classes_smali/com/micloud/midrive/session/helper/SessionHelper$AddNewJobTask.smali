.class Lcom/micloud/midrive/session/helper/SessionHelper$AddNewJobTask;
.super Landroid/os/AsyncTask;
.source "SessionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/helper/SessionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddNewJobTask"
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

.field private final mTransferFileBaseInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/TransferFileBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;ZLcom/micloud/midrive/session/helper/ActionResultCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/TransferFileBaseInfo;",
            ">;Z",
            "Lcom/micloud/midrive/session/helper/ActionResultCallback;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/session/helper/SessionHelper$AddNewJobTask;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/micloud/midrive/session/helper/SessionHelper$AddNewJobTask;->mTransferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    iput-object p1, p0, Lcom/micloud/midrive/session/helper/SessionHelper$AddNewJobTask;->mTransferFileBaseInfoList:Ljava/util/List;

    .line 15
    iput-boolean p4, p0, Lcom/micloud/midrive/session/helper/SessionHelper$AddNewJobTask;->mFreeNetworkOnly:Z

    .line 17
    iput-object p5, p0, Lcom/micloud/midrive/session/helper/SessionHelper$AddNewJobTask;->mCallback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    .line 19
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 5

    .line 2
    iget-object p1, p0, Lcom/micloud/midrive/session/helper/SessionHelper$AddNewJobTask;->mTransferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {p1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/micloud/midrive/session/helper/SessionHelper$AddNewJobTask;->mTransferFileBaseInfoList:Ljava/util/List;

    iget-boolean v1, p0, Lcom/micloud/midrive/session/helper/SessionHelper$AddNewJobTask;->mFreeNetworkOnly:Z

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->addToOngoing(Ljava/util/List;ZZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/session/helper/SessionHelper$AddNewJobTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .registers 3

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/micloud/midrive/session/helper/SessionHelper$AddNewJobTask;->mCallback:Lcom/micloud/midrive/session/helper/ActionResultCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/micloud/midrive/session/helper/ActionResultCallback;->onActionResult(Landroid/os/AsyncTask;Z)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/session/helper/SessionHelper$AddNewJobTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
