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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mNeedObserveCloudStatus:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$200(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->refreshProgress(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->doQueryInWorkTask(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->doQuerySuccessTask(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/cloud/activity/CloudStatusObserverActivity;)Lcom/micloud/midrive/task/InWorkJobQueryTask;
    .registers 1

    iget-object p0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryTask:Lcom/micloud/midrive/task/InWorkJobQueryTask;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/task/InWorkJobQueryTask;)Lcom/micloud/midrive/task/InWorkJobQueryTask;
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryTask:Lcom/micloud/midrive/task/InWorkJobQueryTask;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/android/cloud/activity/CloudStatusObserverActivity;)Lcom/micloud/midrive/task/SuccessJobQueryTask;
    .registers 1

    iget-object p0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryTask:Lcom/micloud/midrive/task/SuccessJobQueryTask;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/task/SuccessJobQueryTask;)Lcom/micloud/midrive/task/SuccessJobQueryTask;
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryTask:Lcom/micloud/midrive/task/SuccessJobQueryTask;

    return-object p1
.end method

.method private doQueryInWorkTask(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 5

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryTask:Lcom/micloud/midrive/task/InWorkJobQueryTask;

    const-string v1, "CloudStatusObserverActivity"

    if-eqz v0, :cond_f

    const-string v0, "onSession too fast"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->postInWorkQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    return-void

    :cond_f
    const-string v0, "onSession start query"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Download do query in work task"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/micloud/midrive/task/InWorkJobQueryTask;

    invoke-direct {v0, p1}, Lcom/micloud/midrive/task/InWorkJobQueryTask;-><init>(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    iput-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryTask:Lcom/micloud/midrive/task/InWorkJobQueryTask;

    new-instance v1, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity$3;-><init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/task/InWorkJobQueryTask;->setListener(Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryListener;)V

    iget-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryTask:Lcom/micloud/midrive/task/InWorkJobQueryTask;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private doQuerySuccessTask(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 5

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryTask:Lcom/micloud/midrive/task/SuccessJobQueryTask;

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->postSuccessQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    return-void

    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Download do query success task"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->logi([Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/micloud/midrive/task/SuccessJobQueryTask;

    const v1, 0x7fffffff

    invoke-direct {v0, p1, v1}, Lcom/micloud/midrive/task/SuccessJobQueryTask;-><init>(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;I)V

    iput-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryTask:Lcom/micloud/midrive/task/SuccessJobQueryTask;

    new-instance v1, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity$4;-><init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/task/SuccessJobQueryTask;->setListener(Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryListener;)V

    iget-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryTask:Lcom/micloud/midrive/task/SuccessJobQueryTask;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private initTransferStatus()V
    .registers 2

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-direct {p0, v0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->postInWorkQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    invoke-direct {p0, v0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->postSuccessQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    sget-object v0, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-direct {p0, v0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->postInWorkQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    invoke-direct {p0, v0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->postSuccessQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    return-void
.end method

.method private postInWorkQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 5

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/cloud/activity/CloudStatusObserverActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity$1;-><init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    iput-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postSuccessQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 5

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/cloud/activity/CloudStatusObserverActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity$2;-><init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    iput-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private refreshProgress(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->postInWorkQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    invoke-direct {p0, p1}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->postSuccessQueryRunnable(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)V

    return-void
.end method

.method private stopQueryInWorkTask()V
    .registers 4

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryTask:Lcom/micloud/midrive/task/InWorkJobQueryTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/task/InWorkJobQueryTask;->setListener(Lcom/micloud/midrive/task/InWorkJobQueryTask$InWorkJobQueryListener;)V

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryTask:Lcom/micloud/midrive/task/InWorkJobQueryTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryTask:Lcom/micloud/midrive/task/InWorkJobQueryTask;

    :cond_10
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1b

    iget-object v2, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mInWorkJobQueryRunnable:Ljava/lang/Runnable;

    :cond_1b
    return-void
.end method

.method private stopQuerySuccessTask()V
    .registers 4

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryTask:Lcom/micloud/midrive/task/SuccessJobQueryTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/task/SuccessJobQueryTask;->setListener(Lcom/micloud/midrive/task/SuccessJobQueryTask$SuccessJobQueryListener;)V

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryTask:Lcom/micloud/midrive/task/SuccessJobQueryTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryTask:Lcom/micloud/midrive/task/SuccessJobQueryTask;

    :cond_10
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1b

    iget-object v2, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mSuccessJobQueryRunnable:Ljava/lang/Runnable;

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

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->clearTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem;

    invoke-virtual {v1}, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->getKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/cloud/bean/TransferState;

    sget-object v4, Lcom/android/cloud/bean/TransferState$Status;->Download_Finish:Lcom/android/cloud/bean/TransferState$Status;

    iget-object v1, v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->filePath:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcom/android/cloud/bean/TransferState;-><init>(Lcom/android/cloud/bean/TransferState$Status;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_32
    const-string p1, "CloudStatusObserverActivity"

    const-string v0, "dealDownloadSuccessTask notifyDataSetChanged"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudDownloadStatusChanged(Z)V

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

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Download_Loading:Lcom/android/cloud/bean/TransferState$Status;

    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->clearTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)Ljava/util/Map;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;

    iget-object v4, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->status:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    sget-object v5, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->FAIL:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0x0

    if-eq v4, v5, :cond_4b

    invoke-virtual {v2}, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->getKey()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/cloud/bean/TransferState;

    invoke-static {v2}, Lcom/android/cloud/bean/TransferState;->getRealStatusFromMidrive(Lcom/micloud/midrive/ui/bean/TransferTaskItem;)Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v10

    iget-wide v11, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->size:J

    cmp-long v8, v11, v8

    if-nez v8, :cond_3d

    goto :goto_42

    :cond_3d
    iget-wide v8, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->progress:J

    mul-long/2addr v8, v6

    div-long/2addr v8, v11

    long-to-int v3, v8

    :goto_42
    iget-wide v6, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->progress:J

    invoke-direct {v5, v10, v3, v6, v7}, Lcom/android/cloud/bean/TransferState;-><init>(Lcom/android/cloud/bean/TransferState$Status;IJ)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_4b
    invoke-virtual {v2}, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->getKey()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/cloud/bean/TransferState;

    invoke-static {v2}, Lcom/android/cloud/bean/TransferState;->getRealStatusFromMidrive(Lcom/micloud/midrive/ui/bean/TransferTaskItem;)Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v11

    iget-wide v12, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->size:J

    cmp-long v8, v12, v8

    if-nez v8, :cond_5c

    goto :goto_61

    :cond_5c
    iget-wide v8, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->progress:J

    mul-long/2addr v8, v6

    div-long/2addr v8, v12

    long-to-int v3, v8

    :goto_61
    move v12, v3

    iget-wide v13, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->progress:J

    iget-object v15, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->errInfo:Lcom/micloud/midrive/infos/ErrInfo;

    move-object v10, v5

    invoke-direct/range {v10 .. v15}, Lcom/android/cloud/bean/TransferState;-><init>(Lcom/android/cloud/bean/TransferState$Status;IJLcom/micloud/midrive/infos/ErrInfo;)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_6e
    const-string v0, "CloudStatusObserverActivity"

    const-string v1, "dealDownloadWorkTask notifyDataSetChanged"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudDownloadStatusChanged(Z)V

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

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->clearTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem;

    invoke-virtual {v1}, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->getKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/cloud/bean/TransferState;

    sget-object v4, Lcom/android/cloud/bean/TransferState$Status;->Upload_Finish:Lcom/android/cloud/bean/TransferState$Status;

    iget-object v1, v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->filePath:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcom/android/cloud/bean/TransferState;-><init>(Lcom/android/cloud/bean/TransferState$Status;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_32
    const-string p1, "CloudStatusObserverActivity"

    const-string v0, "dealUploadSuccessTask notifyDataSetChanged"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudUploadStatusChanged(Z)V

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

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Upload_Loading:Lcom/android/cloud/bean/TransferState$Status;

    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->clearTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)Ljava/util/Map;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;

    iget-object v4, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->status:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    sget-object v5, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;->FAIL:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferStatus;

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0x0

    if-eq v4, v5, :cond_4b

    invoke-virtual {v2}, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->getKey()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/cloud/bean/TransferState;

    invoke-static {v2}, Lcom/android/cloud/bean/TransferState;->getRealStatusFromMidrive(Lcom/micloud/midrive/ui/bean/TransferTaskItem;)Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v10

    iget-wide v11, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->size:J

    cmp-long v8, v11, v8

    if-nez v8, :cond_3d

    goto :goto_42

    :cond_3d
    iget-wide v8, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->progress:J

    mul-long/2addr v8, v6

    div-long/2addr v8, v11

    long-to-int v3, v8

    :goto_42
    iget-wide v6, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->progress:J

    invoke-direct {v5, v10, v3, v6, v7}, Lcom/android/cloud/bean/TransferState;-><init>(Lcom/android/cloud/bean/TransferState$Status;IJ)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_4b
    invoke-virtual {v2}, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->getKey()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/cloud/bean/TransferState;

    invoke-static {v2}, Lcom/android/cloud/bean/TransferState;->getRealStatusFromMidrive(Lcom/micloud/midrive/ui/bean/TransferTaskItem;)Lcom/android/cloud/bean/TransferState$Status;

    move-result-object v11

    iget-wide v12, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->size:J

    cmp-long v8, v12, v8

    if-nez v8, :cond_5c

    goto :goto_61

    :cond_5c
    iget-wide v8, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->progress:J

    mul-long/2addr v8, v6

    div-long/2addr v8, v12

    long-to-int v3, v8

    :goto_61
    move v12, v3

    iget-wide v13, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->progress:J

    iget-object v15, v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem;->errInfo:Lcom/micloud/midrive/infos/ErrInfo;

    move-object v10, v5

    invoke-direct/range {v10 .. v15}, Lcom/android/cloud/bean/TransferState;-><init>(Lcom/android/cloud/bean/TransferState$Status;IJLcom/micloud/midrive/infos/ErrInfo;)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_6e
    const-string v0, "CloudStatusObserverActivity"

    const-string v1, "dealUploadWorkTask notifyDataSetChanged"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->notifyCloudUploadStatusChanged(Z)V

    return-void
.end method

.method public initCloudDrive()V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveOpen(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "CloudStatusObserverActivity"

    if-eqz v0, :cond_4a

    const-string v0, "initCloudDrive"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->saveCloudInit(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mDownloadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;

    if-nez v0, :cond_54

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/cloud/CloudDriveManager;->initCloudDrive(Landroid/content/Context;)V

    new-instance v0, Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;-><init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/android/cloud/activity/CloudStatusObserverActivity$1;)V

    iput-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mDownloadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;

    invoke-static {}, Lcom/micloud/midrive/session/manager/DownloadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/DownloadSessionManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mDownloadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;

    invoke-virtual {v0, v2}, Lcom/micloud/midrive/session/manager/SessionManager;->addListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mUploadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$UploadSessionProgressListener;

    if-nez v0, :cond_46

    new-instance v0, Lcom/android/cloud/activity/CloudStatusObserverActivity$UploadSessionProgressListener;

    invoke-direct {v0, p0, v1}, Lcom/android/cloud/activity/CloudStatusObserverActivity$UploadSessionProgressListener;-><init>(Lcom/android/cloud/activity/CloudStatusObserverActivity;Lcom/android/cloud/activity/CloudStatusObserverActivity$1;)V

    iput-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mUploadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$UploadSessionProgressListener;

    invoke-static {}, Lcom/micloud/midrive/session/manager/UploadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/UploadSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mUploadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$UploadSessionProgressListener;

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->addListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V

    :cond_46
    invoke-direct {p0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->initTransferStatus()V

    goto :goto_54

    :cond_4a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->saveCloudInit(Ljava/lang/Boolean;)V

    const-string v0, "not isCloudDriveOpen "

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    :goto_54
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->initCloudDrive()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/android/fileexplorer/activity/navigator/HomeBaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mDownloadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/micloud/midrive/session/manager/DownloadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/DownloadSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mDownloadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$DownloadSessionProgressListener;

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->removeListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V

    :cond_10
    iget-object v0, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mUploadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$UploadSessionProgressListener;

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/micloud/midrive/session/manager/UploadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/UploadSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/cloud/activity/CloudStatusObserverActivity;->mUploadProgressListener:Lcom/android/cloud/activity/CloudStatusObserverActivity$UploadSessionProgressListener;

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->removeListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V

    :cond_1d
    invoke-direct {p0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->stopQueryInWorkTask()V

    invoke-direct {p0}, Lcom/android/cloud/activity/CloudStatusObserverActivity;->stopQuerySuccessTask()V

    return-void
.end method
