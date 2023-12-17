.class public Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;
.super Lcom/micloud/midrive/task/download/BaseDownloader;
.source "MiDriveCloudDownloader.java"


# instance fields
.field private final mFileIds:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/task/download/BaseDownloader;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;->mFileIds:[Ljava/lang/String;

    .line 6
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

    .line 1
    if-eqz p3, :cond_8

    .line 3
    new-instance v0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader$1;

    .line 5
    invoke-direct {v0, p0, p3}, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader$1;-><init>(Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;)V

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    move-object v3, v0

    .line 11
    :try_start_a
    iget-object v5, p0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;->mFileIds:[Ljava/lang/String;

    .line 13
    move-object v1, p1

    .line 14
    move-object v2, p2

    .line 15
    move-object v4, p4

    .line 16
    move v6, p5

    .line 17
    invoke-static/range {v1 .. v6}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol;->download(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;Ljava/lang/Object;[Ljava/lang/String;Z)V
    :try_end_13
    .catch Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException; {:try_start_a .. :try_end_13} :catch_14

    .line 20
    return-void

    .line 21
    :catch_14
    move-exception p1

    .line 22
    new-instance p2, Lcom/micloud/midrive/task/download/BaseDownloader$TransferException;

    .line 24
    invoke-direct {p2, p1}, Lcom/micloud/midrive/task/download/BaseDownloader$TransferException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    throw p2
.end method
