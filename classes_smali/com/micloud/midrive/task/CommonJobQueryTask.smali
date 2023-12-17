.class public Lcom/micloud/midrive/task/CommonJobQueryTask;
.super Landroid/os/AsyncTask;
.source "CommonJobQueryTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/task/CommonJobQueryTask$CommonJobQueryListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/micloud/midrive/infos/SessionJobInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mFileKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/micloud/midrive/task/CommonJobQueryTask$CommonJobQueryListener;

.field private mResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/ui/bean/TransferFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/task/CommonJobQueryTask;->mTransferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/micloud/midrive/task/CommonJobQueryTask;->mFileKeys:Ljava/util/List;

    .line 13
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p1

    .line 21
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_32

    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/String;

    .line 33
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/String;

    .line 39
    const-string v2, "_"

    .line 41
    invoke-static {v1, v2, v0}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/micloud/midrive/task/CommonJobQueryTask;->mFileKeys:Ljava/util/List;

    .line 47
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_14

    .line 51
    :cond_32
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/task/CommonJobQueryTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/micloud/midrive/task/CommonJobQueryTask;->mTransferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {p1}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/micloud/midrive/task/CommonJobQueryTask;->mFileKeys:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->getJobInfosByKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getResultIfSuccessOrNull()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/ui/bean/TransferFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/task/CommonJobQueryTask;->mResult:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/micloud/midrive/task/CommonJobQueryTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SessionJobInfo;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/micloud/midrive/task/CommonJobQueryTask;->mTransferType:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-static {v0, p1}, Lcom/micloud/midrive/utils/TaskUtils;->convertSessionJobInfoToTransferFileInfo(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/micloud/midrive/task/CommonJobQueryTask;->mResult:Ljava/util/List;

    .line 4
    iget-object p1, p0, Lcom/micloud/midrive/task/CommonJobQueryTask;->mListener:Lcom/micloud/midrive/task/CommonJobQueryTask$CommonJobQueryListener;

    if-eqz p1, :cond_12

    .line 5
    invoke-interface {p1, p0}, Lcom/micloud/midrive/task/CommonJobQueryTask$CommonJobQueryListener;->onQueryFinished(Lcom/micloud/midrive/task/CommonJobQueryTask;)V

    :cond_12
    return-void
.end method

.method public setListener(Lcom/micloud/midrive/task/CommonJobQueryTask$CommonJobQueryListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/task/CommonJobQueryTask;->mListener:Lcom/micloud/midrive/task/CommonJobQueryTask$CommonJobQueryListener;

    .line 3
    return-void
.end method
