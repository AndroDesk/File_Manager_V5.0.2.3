.class Lcom/micloud/midrive/task/ForegroundDownloadTask$1;
.super Lcom/micloud/midrive/helper/LocalWriteActionWithResult;
.source "ForegroundDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/task/ForegroundDownloadTask;->doInBackground([Ljava/lang/Void;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/task/ForegroundDownloadTask;

.field public final synthetic val$goal:Ljava/io/File;

.field public final synthetic val$localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

.field public final synthetic val$targetInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

.field public final synthetic val$totalFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/task/ForegroundDownloadTask;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/infos/SyncTotalFileInfo;Ljava/io/File;)V
    .registers 6

    iput-object p1, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->this$0:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    iput-object p2, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->val$localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    iput-object p3, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->val$targetInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

    iput-object p4, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->val$totalFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iput-object p5, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->val$goal:Ljava/io/File;

    invoke-direct {p0}, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->this$0:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    invoke-static {v1}, Lcom/micloud/midrive/task/ForegroundDownloadTask;->access$000(Lcom/micloud/midrive/task/ForegroundDownloadTask;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->val$localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    iget-object v3, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->val$targetInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

    iget-object v4, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->val$totalFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->revision:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertLocalAndTargetFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->this$0:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    invoke-static {v0}, Lcom/micloud/midrive/task/ForegroundDownloadTask;->access$100(Lcom/micloud/midrive/task/ForegroundDownloadTask;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->val$goal:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/DiskFileOperator;->move(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    iget-object v0, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->this$0:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/micloud/midrive/task/ForegroundDownloadTask;->access$202(Lcom/micloud/midrive/task/ForegroundDownloadTask;Z)Z

    goto :goto_44

    :cond_35
    iget-object v0, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->this$0:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/micloud/midrive/task/ForegroundDownloadTask;->access$202(Lcom/micloud/midrive/task/ForegroundDownloadTask;Z)Z

    iget-object v0, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->this$0:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    invoke-static {v0}, Lcom/micloud/midrive/task/ForegroundDownloadTask;->access$100(Lcom/micloud/midrive/task/ForegroundDownloadTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/utils/DiskFileOperator;->delete(Ljava/lang/String;)Z

    :goto_44
    return-void
.end method
