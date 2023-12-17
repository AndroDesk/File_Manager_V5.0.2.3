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
.method public constructor <init>(Lcom/micloud/midrive/task/DownloadTask;Lcom/micloud/midrive/infos/FileDownloadInfo;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/io/File;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/task/DownloadTask$1;->this$0:Lcom/micloud/midrive/task/DownloadTask;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/task/DownloadTask$1;->val$downloadInfo:Lcom/micloud/midrive/infos/FileDownloadInfo;

    .line 5
    iput-object p3, p0, Lcom/micloud/midrive/task/DownloadTask$1;->val$localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 7
    iput-object p4, p0, Lcom/micloud/midrive/task/DownloadTask$1;->val$goal:Ljava/io/File;

    .line 9
    invoke-direct {p0}, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/micloud/midrive/task/DownloadTask$1;->val$downloadInfo:Lcom/micloud/midrive/infos/FileDownloadInfo;

    .line 7
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/FileDownloadInfo;->getKey()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/micloud/midrive/task/DownloadTask$1;->val$localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 13
    invoke-interface {v0, v1, v2}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->txUpdateDownloadFinishedInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    .line 16
    move-result v0

    .line 17
    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    .line 19
    if-eqz v0, :cond_36

    .line 21
    iget-object v0, p0, Lcom/micloud/midrive/task/DownloadTask$1;->this$0:Lcom/micloud/midrive/task/DownloadTask;

    .line 23
    invoke-static {v0}, Lcom/micloud/midrive/task/DownloadTask;->access$000(Lcom/micloud/midrive/task/DownloadTask;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/micloud/midrive/task/DownloadTask$1;->val$goal:Ljava/io/File;

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/DiskFileOperator;->move(Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    move-result v0

    .line 37
    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    .line 39
    iget-object v0, p0, Lcom/micloud/midrive/task/DownloadTask$1;->this$0:Lcom/micloud/midrive/task/DownloadTask;

    .line 41
    invoke-virtual {v0}, Lcom/micloud/midrive/task/BaseTask;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/micloud/midrive/task/DownloadTask$1;->this$0:Lcom/micloud/midrive/task/DownloadTask;

    .line 47
    invoke-virtual {v1}, Lcom/micloud/midrive/task/BaseTask;->getAccount()Landroid/accounts/Account;

    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-static {v0, v1, v2}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->postNotifySyncOrStartSession(Landroid/content/Context;Landroid/accounts/Account;Z)V

    .line 55
    :cond_36
    return-void
.end method
