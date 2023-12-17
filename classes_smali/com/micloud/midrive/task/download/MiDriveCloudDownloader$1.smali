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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;)V
    .registers 3

    iput-object p1, p0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader$1;->this$0:Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;

    iput-object p2, p0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader$1;->val$listener:Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, -0x7d1

    iput-wide p1, p0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader$1;->mSendTimeStamp:J

    return-void
.end method


# virtual methods
.method public onProgress(JJ)V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader$1;->mSendTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_11

    cmp-long v0, p1, p3

    if-ltz v0, :cond_20

    :cond_11
    iget-object v0, p0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader$1;->val$listener:Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;->onProgress(JJ)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader$1;->mSendTimeStamp:J

    :cond_20
    return-void
.end method
