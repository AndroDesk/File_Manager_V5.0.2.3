.class Lcom/micloud/midrive/task/DownloadTask$1;
.super Lcom/micloud/midrive/helper/LocalWriteActionWithResult;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/task/DownloadTask;->onTransferDone(Lcom/micloud/midrive/infos/FileDownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/task/DownloadTask;

.field public final synthetic val$downloadInfo:Lcom/micloud/midrive/infos/FileDownloadInfo;

.field public final synthetic val$goal:Ljava/io/File;

.field public final synthetic val$localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/task/DownloadTask;Lcom/micloud/midrive/infos/FileDownloadInfo;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/io/File;)V
    .registers 5

    iput-object p1, p0, Lcom/micloud/midrive/task/DownloadTask$1;->this$0:Lcom/micloud/midrive/task/DownloadTask;

    iput-object p2, p0, Lcom/micloud/midrive/task/DownloadTask$1;->val$downloadInfo:Lcom/micloud/midrive/infos/FileDownloadInfo;

    iput-object p3, p0, Lcom/micloud/midrive/task/DownloadTask$1;->val$localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    iput-object p4, p0, Lcom/micloud/midrive/task/DownloadTask$1;->val$goal:Ljava/io/File;

    invoke-direct {p0}, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/task/DownloadTask$1;->val$downloadInfo:Lcom/micloud/midrive/infos/FileDownloadInfo;

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/FileDownloadInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/micloud/midrive/task/DownloadTask$1;->val$localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-interface {v0, v1, v2}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txUpdateDownloadFinishedInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/micloud/midrive/task/DownloadTask$1;->this$0:Lcom/micloud/midrive/task/DownloadTask;

    invoke-static {v0}, Lcom/micloud/midrive/task/DownloadTask;->access$000(Lcom/micloud/midrive/task/DownloadTask;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/task/DownloadTask$1;->val$goal:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/DiskFileOperator;->move(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    iget-object v0, p0, Lcom/micloud/midrive/task/DownloadTask$1;->this$0:Lcom/micloud/midrive/task/DownloadTask;

    invoke-virtual {v0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/task/DownloadTask$1;->this$0:Lcom/micloud/midrive/task/DownloadTask;

    invoke-virtual {v1}, Lcom/micloud/midrive/task/BaseTask;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->postNotifySyncOrStartSession(Landroid/content/Context;Landroid/accounts/Account;Z)V

    :cond_36
    return-void
.end method
