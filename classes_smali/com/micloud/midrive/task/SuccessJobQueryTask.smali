.class public Lcom/micloud/midrive/task/SuccessJobQueryTask;
.super Landroid/os/AsyncTask;
.source "SuccessJobQueryTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;,
        Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLimitCount:I

.field private mListener:Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryListener;

.field private mResult:Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;

.field private final mTransferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;I)V
    .registers 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/task/SuccessJobQueryTask;->mTransferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    iput p2, p0, Lcom/micloud/midrive/task/SuccessJobQueryTask;->mLimitCount:I

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;
    .registers 6

    iget-object p1, p0, Lcom/micloud/midrive/task/SuccessJobQueryTask;->mTransferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {p1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    move-result-object p1

    iget v0, p0, Lcom/micloud/midrive/task/SuccessJobQueryTask;->mLimitCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getSuccessJobsOrderByUpdateTime(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/micloud/midrive/task/SuccessJobQueryTask;->mLimitCount:I

    if-le v2, v3, :cond_1f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 p1, 0x0

    return-object p1

    :cond_28
    sget-object v2, Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;->SUCCESS:Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;

    invoke-interface {p1, v2}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getJobCountByStatus(Lcom/micloud/midrive/infos/SessionJobInfo$SessionJobStatus;)I

    move-result p1

    new-instance v2, Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;

    invoke-direct {v2, v0, p1, v1}, Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;-><init>(Ljava/util/List;IZ)V

    return-object v2
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/task/SuccessJobQueryTask;->doInBackground([Ljava/lang/Void;)Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;

    move-result-object p1

    return-object p1
.end method

.method public getResultIfSuccessOrNull()Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;
    .registers 2

    iget-object v0, p0, Lcom/micloud/midrive/task/SuccessJobQueryTask;->mResult:Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;

    return-object v0
.end method

.method public onPostExecute(Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/micloud/midrive/task/SuccessJobQueryTask;->mResult:Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;

    iget-object p1, p0, Lcom/micloud/midrive/task/SuccessJobQueryTask;->mListener:Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryListener;

    if-eqz p1, :cond_c

    invoke-interface {p1, p0}, Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryListener;->onQueryFinished(Lcom/micloud/midrive/task/SuccessJobQueryTask;)V

    :cond_c
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/task/SuccessJobQueryTask;->onPostExecute(Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryResult;)V

    return-void
.end method

.method public setListener(Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryListener;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/task/SuccessJobQueryTask;->mListener:Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryListener;

    return-void
.end method
