.class public Lcom/micloud/midrive/task/InWorkJobQueryTask;
.super Landroid/os/AsyncTask;
.source "InWorkJobQueryTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryResult;,
        Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryListener;

.field private mResult:Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryResult;

.field private final mTransferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/task/InWorkJobQueryTask;->mTransferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 6
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryResult;
    .registers 3

    .line 2
    iget-object p1, p0, Lcom/micloud/midrive/task/InWorkJobQueryTask;->mTransferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {p1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getInWorkJobsOrderByAddTime()Ljava/util/List;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryResult;

    invoke-direct {v0, p1}, Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryResult;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/task/InWorkJobQueryTask;->doInBackground([Ljava/lang/Void;)Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryResult;

    move-result-object p1

    return-object p1
.end method

.method public getResultIfSuccessOrNull()Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryResult;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/InWorkJobQueryTask;->mResult:Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryResult;

    .line 3
    return-object v0
.end method

.method public onPostExecute(Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryResult;)V
    .registers 2

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lcom/micloud/midrive/task/InWorkJobQueryTask;->mResult:Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryResult;

    .line 4
    iget-object p1, p0, Lcom/micloud/midrive/task/InWorkJobQueryTask;->mListener:Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryListener;

    if-eqz p1, :cond_c

    .line 5
    invoke-interface {p1, p0}, Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryListener;->onQueryFinished(Lcom/micloud/midrive/task/InWorkJobQueryTask;)V

    :cond_c
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryResult;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/task/InWorkJobQueryTask;->onPostExecute(Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryResult;)V

    return-void
.end method

.method public setListener(Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/task/InWorkJobQueryTask;->mListener:Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryListener;

    .line 3
    return-void
.end method
