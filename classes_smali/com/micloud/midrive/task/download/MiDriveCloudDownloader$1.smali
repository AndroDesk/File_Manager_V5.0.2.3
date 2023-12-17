.class Lcom/micloud/midrive/task/download/MiDriveCloudDownloader$1;
.super Ljava/lang/Object;
.source "MiDriveCloudDownloader.java"

# interfaces
.implements Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;->syncDownload(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mSendTimeStamp:J

.field public final synthetic this$0:Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;

.field public final synthetic val$listener:Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;


# direct methods
.method public constructor <init>(Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader$1;->this$0:Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader$1;->val$listener:Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 p1, -0x7d1

    .line 10
    iput-wide p1, p0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader$1;->mSendTimeStamp:J

    .line 12
    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .registers 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader$1;->mSendTimeStamp:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x7d0

    .line 10
    cmp-long v0, v0, v2

    .line 12
    if-gtz v0, :cond_11

    .line 14
    cmp-long v0, p1, p3

    .line 16
    if-ltz v0, :cond_20

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader$1;->val$listener:Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;

    .line 20
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 23
    move-result-wide p1

    .line 24
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;->onProgress(JJ)V

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    move-result-wide p1

    .line 31
    iput-wide p1, p0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader$1;->mSendTimeStamp:J

    .line 33
    :cond_20
    return-void
.end method
