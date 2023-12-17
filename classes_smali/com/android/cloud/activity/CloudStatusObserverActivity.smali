.class public abstract Lcom/android/cloud/activity/CloudStatusObserverActivity;
.super Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;
.source "CloudStatusObserverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cloud/activity/CloudStatusObserverActivity$UploadSessionProgressListener;,
        Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudStatusObserverActivity"


# instance fields
.field private mDownloadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;

.field private mInWorkJobQueryRunnable:Ljava/lang/Runnable;

.field private mInWorkJobQueryTask:Lcom/micloud/midrive/task/InWorkJobQueryTask;

.field private mMainHandler:Landroid/os/Handler;

.field public mNeedObserveCloudStatus:Z

.field private mSuccessJobQueryRunnable:Ljava/lang/Runnable;

.field private mSuccessJobQueryTask:Lcom/micloud/midrive/task/SuccessJobQueryTask;

.field private mUploadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$UploadSessionProgressListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mNeedObserveCloudStatus:Z

    .line 7
    new-instance v0, Landroid/os/Handler;

    .line 9
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mMainHandler:Landroid/os/Handler;

    .line 14
    return-void
.end method

.method public static synthetic access$200(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->refreshProgress(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->doQueryInWorkTask(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->doQuerySuccessTask(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/android/cloud/activity/CloudStatusObserverActivity;)Lcom/micloud/midrive/task/InWorkJobQueryTask;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryTask:Lcom/micloud/midrive/task/InWorkJobQueryTask;

    .line 3
    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/task/InWorkJobQueryTask;)Lcom/micloud/midrive/task/InWorkJobQueryTask;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryTask:Lcom/micloud/midrive/task/InWorkJobQueryTask;

    .line 3
    return-object p1
.end method

.method public static synthetic access$600(Lcom/android/cloud/activity/CloudStatusObserverActivity;)Lcom/micloud/midrive/task/SuccessJobQueryTask;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryTask:Lcom/micloud/midrive/task/SuccessJobQueryTask;

    .line 3
    return-object p0
.end method

.method public static synthetic access$602(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/task/SuccessJobQueryTask;)Lcom/micloud/midrive/task/SuccessJobQueryTask;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryTask:Lcom/micloud/midrive/task/SuccessJobQueryTask;

    .line 3
    return-object p1
.end method

.method private doQueryInWorkTask(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryTask:Lcom/micloud/midrive/task/InWorkJobQueryTask;

    .line 3
    const-string v1, "CloudStatusObserverActivity"

    .line 5
    if-eqz v0, :cond_f

    .line 7
    const-string v0, "onSession too fast"

    .line 9
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->postInWorkQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 15
    return-void

    .line 16
    :cond_f
    const-string v0, "onSession start query"

    .line 18
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x1

    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    const-string v1, "Download do query in work task"

    .line 26
    const/4 v2, 0x0

    .line 27
    aput-object v1, v0, v2

    .line 29
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryRunnable:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lcom/micloud/midrive/task/InWorkJobQueryTask;

    .line 37
    invoke-direct {v0, p1}, Lcom/micloud/midrive/task/InWorkJobQueryTask;-><init>(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 40
    iput-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryTask:Lcom/micloud/midrive/task/InWorkJobQueryTask;

    .line 42
    new-instance v1, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;

    .line 44
    invoke-direct {v1, p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;-><init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 47
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/task/InWorkJobQueryTask;->setListener(Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryListener;)V

    .line 50
    iget-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryTask:Lcom/micloud/midrive/task/InWorkJobQueryTask;

    .line 52
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 54
    new-array v1, v2, [Ljava/lang/Void;

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 59
    return-void
.end method

.method private doQuerySuccessTask(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryTask:Lcom/micloud/midrive/task/SuccessJobQueryTask;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-direct {p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->postSuccessQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 8
    return-void

    .line 9
    :cond_8
    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    const-string v1, "Download do query success task"

    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 17
    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryRunnable:Ljava/lang/Runnable;

    .line 23
    new-instance v0, Lcom/micloud/midrive/task/SuccessJobQueryTask;

    .line 25
    const v1, 0x7fffffff

    .line 28
    invoke-direct {v0, p1, v1}, Lcom/micloud/midrive/task/SuccessJobQueryTask;-><init>(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;I)V

    .line 31
    iput-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryTask:Lcom/micloud/midrive/task/SuccessJobQueryTask;

    .line 33
    new-instance v1, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;

    .line 35
    invoke-direct {v1, p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;-><init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/task/SuccessJobQueryTask;->setListener(Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryListener;)V

    .line 41
    iget-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryTask:Lcom/micloud/midrive/task/SuccessJobQueryTask;

    .line 43
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 45
    new-array v1, v2, [Ljava/lang/Void;

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50
    return-void
.end method

.method private initTransferStatus()V
    .registers 2

    .line 1
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 3
    invoke-direct {p0, v0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->postInWorkQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->postSuccessQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 9
    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 11
    invoke-direct {p0, v0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->postInWorkQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 14
    invoke-direct {p0, v0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->postSuccessQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 17
    return-void
.end method

.method private postInWorkQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mMainHandler:Landroid/os/Handler;

    .line 3
    iget-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryRunnable:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    new-instance v0, Lcom/android/cloud/activity/CloudStatusObserverActivity$1;

    .line 10
    invoke-direct {v0, p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity$1;-><init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 13
    iput-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryRunnable:Ljava/lang/Runnable;

    .line 15
    iget-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mMainHandler:Landroid/os/Handler;

    .line 17
    const-wide/16 v1, 0x64

    .line 19
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    return-void
.end method

.method private postSuccessQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mMainHandler:Landroid/os/Handler;

    .line 3
    iget-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryRunnable:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    new-instance v0, Lcom/android/cloud/activity/CloudStatusObserverActivity$2;

    .line 10
    invoke-direct {v0, p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity$2;-><init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 13
    iput-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryRunnable:Ljava/lang/Runnable;

    .line 15
    iget-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mMainHandler:Landroid/os/Handler;

    .line 17
    const-wide/16 v1, 0x64

    .line 19
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    return-void
.end method

.method private refreshProgress(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->postInWorkQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->postSuccessQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    .line 7
    return-void
.end method

.method private stopQueryInWorkTask()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryTask:Lcom/micloud/midrive/task/InWorkJobQueryTask;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_10

    .line 6
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/task/InWorkJobQueryTask;->setListener(Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryListener;)V

    .line 9
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryTask:Lcom/micloud/midrive/task/InWorkJobQueryTask;

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 15
    iput-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryTask:Lcom/micloud/midrive/task/InWorkJobQueryTask;

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryRunnable:Ljava/lang/Runnable;

    .line 19
    if-eqz v0, :cond_1b

    .line 21
    iget-object v2, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mMainHandler:Landroid/os/Handler;

    .line 23
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    iput-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryRunnable:Ljava/lang/Runnable;

    .line 28
    :cond_1b
    return-void
.end method

.method private stopQuerySuccessTask()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryTask:Lcom/micloud/midrive/task/SuccessJobQueryTask;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_10

    .line 6
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/task/SuccessJobQueryTask;->setListener(Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryListener;)V

    .line 9
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryTask:Lcom/micloud/midrive/task/SuccessJobQueryTask;

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 15
    iput-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryTask:Lcom/micloud/midrive/task/SuccessJobQueryTask;

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryRunnable:Ljava/lang/Runnable;

    .line 19
    if-eqz v0, :cond_1b

    .line 21
    iget-object v2, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mMainHandler:Landroid/os/Handler;

    .line 23
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    iput-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryRunnable:Ljava/lang/Runnable;

    .line 28
    :cond_1b
    return-void
.end method


# virtual methods
.method public dealDownloadSuccessTask(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->clearTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)V

    .line 10
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)Ljava/util/Map;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p1

    .line 22
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_32

    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem;

    .line 34
    invoke-virtual {v1}, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->getKey()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    new-instance v3, Lcom/android/cloud/bean/TransferState;

    .line 40
    sget-object v4, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 42
    iget-object v1, v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->filePath:Ljava/lang/String;

    .line 44
    invoke-direct {v3, v4, v1}, Lcom/android/cloud/bean/TransferState;-><init>(Lcom/android/cloud/bean/TransferState$Status;Ljava/lang/String;)V

    .line 47
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    goto :goto_15

    .line 51
    :cond_32
    const-string p1, "CloudStatusObserverActivity"

    .line 53
    const-string v0, "dealDownloadSuccessTask notifyDataSetChanged"

    .line 55
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 61
    move-result-object p1

    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, v0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudDownloadStatusChanged(Z)V

    .line 66
    return-void
.end method

.method public dealDownloadWorkTask(Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Download_Loading:Lcom/android/cloud/bean/TransferState$Status;

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->clearTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)V

    .line 10
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)Ljava/util/Map;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_6e

    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;

    .line 35
    iget-object v4, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->status:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 37
    sget-object v5, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->FAIL:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 39
    const-wide/16 v6, 0x64

    .line 41
    const-wide/16 v8, 0x0

    .line 43
    if-eq v4, v5, :cond_4b

    .line 45
    invoke-virtual {v2}, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->getKey()Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    new-instance v5, Lcom/android/cloud/bean/TransferState;

    .line 51
    invoke-static {v2}, Lcom/android/cloud/bean/TransferState;->getRealStatusFromMidrive(Lcom/micloud/midrive/ui/bean/TransferTaskItem;)Lcom/android/cloud/bean/TransferState$Status;

    .line 54
    move-result-object v10

    .line 55
    iget-wide v11, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->size:J

    .line 57
    cmp-long v8, v11, v8

    .line 59
    if-nez v8, :cond_3d

    .line 61
    goto :goto_42

    .line 62
    :cond_3d
    iget-wide v8, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->progress:J

    .line 64
    mul-long/2addr v8, v6

    .line 65
    div-long/2addr v8, v11

    .line 66
    long-to-int v3, v8

    .line 67
    :goto_42
    iget-wide v6, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->progress:J

    .line 69
    invoke-direct {v5, v10, v3, v6, v7}, Lcom/android/cloud/bean/TransferState;-><init>(Lcom/android/cloud/bean/TransferState$Status;IJ)V

    .line 72
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    goto :goto_15

    .line 76
    :cond_4b
    invoke-virtual {v2}, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->getKey()Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 80
    new-instance v5, Lcom/android/cloud/bean/TransferState;

    .line 82
    invoke-static {v2}, Lcom/android/cloud/bean/TransferState;->getRealStatusFromMidrive(Lcom/micloud/midrive/ui/bean/TransferTaskItem;)Lcom/android/cloud/bean/TransferState$Status;

    .line 85
    move-result-object v11

    .line 86
    iget-wide v12, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->size:J

    .line 88
    cmp-long v8, v12, v8

    .line 90
    if-nez v8, :cond_5c

    .line 92
    goto :goto_61

    .line 93
    :cond_5c
    iget-wide v8, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->progress:J

    .line 95
    mul-long/2addr v8, v6

    .line 96
    div-long/2addr v8, v12

    .line 97
    long-to-int v3, v8

    .line 98
    :goto_61
    move v12, v3

    .line 99
    iget-wide v13, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->progress:J

    .line 101
    iget-object v15, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->errInfo:Lcom/micloud/midrive/infos/ErrInfo;

    .line 103
    move-object v10, v5

    .line 104
    invoke-direct/range {v10 .. v15}, Lcom/android/cloud/bean/TransferState;-><init>(Lcom/android/cloud/bean/TransferState$Status;IJLcom/micloud/midrive/infos/ErrInfo;)V

    .line 107
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    goto :goto_15

    .line 111
    :cond_6e
    const-string v0, "CloudStatusObserverActivity"

    .line 113
    const-string v1, "dealDownloadWorkTask notifyDataSetChanged"

    .line 115
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, v3}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudDownloadStatusChanged(Z)V

    .line 125
    return-void
.end method

.method public dealUploadSuccessTask(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->clearTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)V

    .line 10
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)Ljava/util/Map;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p1

    .line 22
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_32

    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem;

    .line 34
    invoke-virtual {v1}, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->getKey()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    new-instance v3, Lcom/android/cloud/bean/TransferState;

    .line 40
    sget-object v4, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    .line 42
    iget-object v1, v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->filePath:Ljava/lang/String;

    .line 44
    invoke-direct {v3, v4, v1}, Lcom/android/cloud/bean/TransferState;-><init>(Lcom/android/cloud/bean/TransferState$Status;Ljava/lang/String;)V

    .line 47
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    goto :goto_15

    .line 51
    :cond_32
    const-string p1, "CloudStatusObserverActivity"

    .line 53
    const-string v0, "dealUploadSuccessTask notifyDataSetChanged"

    .line 55
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 61
    move-result-object p1

    .line 62
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudUploadStatusChanged(Z)V

    .line 66
    return-void
.end method

.method public dealUploadWorkTask(Ljava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/ui/bean/TransferTaskItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Upload_Loading:Lcom/android/cloud/bean/TransferState$Status;

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->clearTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)V

    .line 10
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)Ljava/util/Map;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_6e

    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;

    .line 35
    iget-object v4, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->status:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 37
    sget-object v5, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->FAIL:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    .line 39
    const-wide/16 v6, 0x64

    .line 41
    const-wide/16 v8, 0x0

    .line 43
    if-eq v4, v5, :cond_4b

    .line 45
    invoke-virtual {v2}, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->getKey()Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    new-instance v5, Lcom/android/cloud/bean/TransferState;

    .line 51
    invoke-static {v2}, Lcom/android/cloud/bean/TransferState;->getRealStatusFromMidrive(Lcom/micloud/midrive/ui/bean/TransferTaskItem;)Lcom/android/cloud/bean/TransferState$Status;

    .line 54
    move-result-object v10

    .line 55
    iget-wide v11, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->size:J

    .line 57
    cmp-long v8, v11, v8

    .line 59
    if-nez v8, :cond_3d

    .line 61
    goto :goto_42

    .line 62
    :cond_3d
    iget-wide v8, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->progress:J

    .line 64
    mul-long/2addr v8, v6

    .line 65
    div-long/2addr v8, v11

    .line 66
    long-to-int v3, v8

    .line 67
    :goto_42
    iget-wide v6, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->progress:J

    .line 69
    invoke-direct {v5, v10, v3, v6, v7}, Lcom/android/cloud/bean/TransferState;-><init>(Lcom/android/cloud/bean/TransferState$Status;IJ)V

    .line 72
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    goto :goto_15

    .line 76
    :cond_4b
    invoke-virtual {v2}, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->getKey()Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 80
    new-instance v5, Lcom/android/cloud/bean/TransferState;

    .line 82
    invoke-static {v2}, Lcom/android/cloud/bean/TransferState;->getRealStatusFromMidrive(Lcom/micloud/midrive/ui/bean/TransferTaskItem;)Lcom/android/cloud/bean/TransferState$Status;

    .line 85
    move-result-object v11

    .line 86
    iget-wide v12, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->size:J

    .line 88
    cmp-long v8, v12, v8

    .line 90
    if-nez v8, :cond_5c

    .line 92
    goto :goto_61

    .line 93
    :cond_5c
    iget-wide v8, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->progress:J

    .line 95
    mul-long/2addr v8, v6

    .line 96
    div-long/2addr v8, v12

    .line 97
    long-to-int v3, v8

    .line 98
    :goto_61
    move v12, v3

    .line 99
    iget-wide v13, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->progress:J

    .line 101
    iget-object v15, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->errInfo:Lcom/micloud/midrive/infos/ErrInfo;

    .line 103
    move-object v10, v5

    .line 104
    invoke-direct/range {v10 .. v15}, Lcom/android/cloud/bean/TransferState;-><init>(Lcom/android/cloud/bean/TransferState$Status;IJLcom/micloud/midrive/infos/ErrInfo;)V

    .line 107
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    goto :goto_15

    .line 111
    :cond_6e
    const-string v0, "CloudStatusObserverActivity"

    .line 113
    const-string v1, "dealUploadWorkTask notifyDataSetChanged"

    .line 115
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, v3}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudUploadStatusChanged(Z)V

    .line 125
    return-void
.end method

.method public initCloudDrive()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveOpen(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 9
    const-string v1, "CloudStatusObserverActivity"

    .line 11
    if-eqz v0, :cond_4a

    .line 13
    const-string v0, "initCloudDrive"

    .line 15
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 20
    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->saveCloudInit(Ljava/lang/Boolean;)V

    .line 23
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mDownloadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;

    .line 25
    if-nez v0, :cond_54

    .line 27
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->initCloudDrive(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;-><init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/android/cloud/activity/CloudStatusObserverActivity$1;)V

    .line 40
    iput-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mDownloadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;

    .line 42
    invoke-static {}, Lcom/micloud/midrive/session/manager/DownloadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/DownloadSessionManager;

    .line 45
    move-result-object v0

    .line 46
    iget-object v2, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mDownloadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;

    .line 48
    invoke-virtual {v0, v2}, Lcom/micloud/midrive/session/manager/SessionManager;->addListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V

    .line 51
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mUploadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$UploadSessionProgressListener;

    .line 53
    if-nez v0, :cond_46

    .line 55
    new-instance v0, Lcom/android/cloud/activity/CloudStatusObserverActivity$UploadSessionProgressListener;

    .line 57
    invoke-direct {v0, p0, v1}, Lcom/android/cloud/activity/CloudStatusObserverActivity$UploadSessionProgressListener;-><init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/android/cloud/activity/CloudStatusObserverActivity$1;)V

    .line 60
    iput-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mUploadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$UploadSessionProgressListener;

    .line 62
    invoke-static {}, Lcom/micloud/midrive/session/manager/UploadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/UploadSessionManager;

    .line 65
    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mUploadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$UploadSessionProgressListener;

    .line 68
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->addListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V

    .line 71
    :cond_46
    invoke-direct {p0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->initTransferStatus()V

    .line 74
    goto :goto_54

    .line 75
    :cond_4a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 77
    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->saveCloudInit(Ljava/lang/Boolean;)V

    .line 80
    const-string v0, "not isCloudDriveOpen "

    .line 82
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_54
    :goto_54
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->initCloudDrive()V

    .line 7
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->onDestroy()V

    .line 4
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mDownloadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;

    .line 6
    if-eqz v0, :cond_10

    .line 8
    invoke-static {}, Lcom/micloud/midrive/session/manager/DownloadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/DownloadSessionManager;

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mDownloadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;

    .line 14
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->removeListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V

    .line 17
    :cond_10
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mUploadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$UploadSessionProgressListener;

    .line 19
    if-eqz v0, :cond_1d

    .line 21
    invoke-static {}, Lcom/micloud/midrive/session/manager/UploadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/UploadSessionManager;

    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mUploadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$UploadSessionProgressListener;

    .line 27
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->removeListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V

    .line 30
    :cond_1d
    invoke-direct {p0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->stopQueryInWorkTask()V

    .line 33
    invoke-direct {p0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->stopQuerySuccessTask()V

    .line 36
    return-void
.end method
