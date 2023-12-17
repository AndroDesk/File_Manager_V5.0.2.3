.class public abstract Lcom/micloud/midrive/task/download/BaseDownloader;
.super Ljava/lang/Object;
.source "BaseDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/task/download/BaseDownloader$CreateDownloaderFailedException;,
        Lcom/micloud/midrive/task/download/BaseDownloader$TransferException;,
        Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_PROGRESS_UPDATE_INTERVAL:J = 0x7d0L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFileDownloader(Lcom/micloud/midrive/infos/FileDownloadInfo;)Lcom/micloud/midrive/task/download/BaseDownloader;
    .registers 4

    if-eqz p0, :cond_10

    new-instance v0, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/micloud/midrive/infos/FileDownloadInfo;->fileId:Ljava/lang/String;

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lcom/micloud/midrive/task/download/MiDriveCloudDownloader;-><init>([Ljava/lang/String;)V

    return-object v0

    :cond_10
    new-instance p0, Lcom/micloud/midrive/task/download/BaseDownloader$CreateDownloaderFailedException;

    const-string v0, "create file downloader failed"

    invoke-direct {p0, v0}, Lcom/micloud/midrive/task/download/BaseDownloader$CreateDownloaderFailedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract syncDownload(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/task/download/BaseDownloader$DownloadListener;Ljava/lang/Object;Z)V
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
.end method
