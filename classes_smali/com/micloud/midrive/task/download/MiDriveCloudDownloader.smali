.class public Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;
.super Lcom/micloud/midrive/task/download/BaseDownloader;
.source "MiDriveCloudDownloader.java"


# instance fields
.field private final mFileIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/micloud/midrive/task/download/BaseDownloader;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;->mFileIds:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public syncDownload(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;Ljava/lang/Object;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/micloud/midrive/server/transport/Network;",
            "Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;",
            "TT;Z)V"
        }
    .end annotation

    if-eqz p3, :cond_8

    new-instance v0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader$1;

    invoke-direct {v0, p0, p3}, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader$1;-><init>(Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    move-object v3, v0

    :try_start_a
    iget-object v5, p0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;->mFileIds:[Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol;->download(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;Ljava/lang/Object;[Ljava/lang/String;Z)V
    :try_end_13
    .catch Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException; {:try_start_a .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    new-instance p2, Lcom/micloud/midrive/task/download/BaseDownloader$TransferException;

    invoke-direct {p2, p1}, Lcom/micloud/midrive/task/download/BaseDownloader$TransferException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
