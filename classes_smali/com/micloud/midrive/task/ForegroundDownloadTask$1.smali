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
.method public constructor <init>(Lcom/micloud/midrive/task/ForegroundDownloadTask;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/infos/SyncTotalFileInfo;Ljava/io/File;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->this$0:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->val$localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 5
    iput-object p3, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->val$targetInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

    .line 7
    iput-object p4, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->val$totalFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 9
    iput-object p5, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->val$goal:Ljava/io/File;

    .line 11
    invoke-direct {p0}, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->this$0:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    .line 7
    invoke-static {v1}, Lcom/micloud/midrive/task/ForegroundDownloadTask;->access$000(Lcom/micloud/midrive/task/ForegroundDownloadTask;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->val$localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 13
    iget-object v3, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->val$targetInfo:Lcom/micloud/midrive/infos/SyncTargetInfo;

    .line 15
    iget-object v4, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->val$totalFileInfo:Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 17
    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 19
    iget-object v4, v4, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->revision:Ljava/lang/String;

    .line 21
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->insertLocalAndTargetFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->dbChanged:Z

    .line 27
    if-eqz v0, :cond_35

    .line 29
    iget-object v0, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->this$0:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    .line 31
    invoke-static {v0}, Lcom/micloud/midrive/task/ForegroundDownloadTask;->access$100(Lcom/micloud/midrive/task/ForegroundDownloadTask;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->val$goal:Ljava/io/File;

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/micloud/midrive/utils/DiskFileOperator;->move(Ljava/lang/String;Ljava/lang/String;)Z

    .line 44
    move-result v0

    .line 45
    iput-boolean v0, p0, Lcom/micloud/midrive/helper/LocalWriteActionWithResult;->fileChanged:Z

    .line 47
    iget-object v0, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->this$0:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    .line 49
    const/4 v1, 0x1

    .line 50
    invoke-static {v0, v1}, Lcom/micloud/midrive/task/ForegroundDownloadTask;->access$202(Lcom/micloud/midrive/task/ForegroundDownloadTask;Z)Z

    .line 53
    goto :goto_44

    .line 54
    :cond_35
    iget-object v0, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->this$0:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-static {v0, v1}, Lcom/micloud/midrive/task/ForegroundDownloadTask;->access$202(Lcom/micloud/midrive/task/ForegroundDownloadTask;Z)Z

    .line 60
    iget-object v0, p0, Lcom/micloud/midrive/task/ForegroundDownloadTask$1;->this$0:Lcom/micloud/midrive/task/ForegroundDownloadTask;

    .line 62
    invoke-static {v0}, Lcom/micloud/midrive/task/ForegroundDownloadTask;->access$100(Lcom/micloud/midrive/task/ForegroundDownloadTask;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/micloud/midrive/utils/DiskFileOperator;->delete(Ljava/lang/String;)Z

    .line 69
    :goto_44
    return-void
.end method
