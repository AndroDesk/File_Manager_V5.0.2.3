.class Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadFileTransferContext;
.super Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;
.source "SFSFileTransferClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/server/transport/SFSFileTransferClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadFileTransferContext"
.end annotation


# instance fields
.field public final controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;


# direct methods
.method public constructor <init>(ILcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;-><init>(I)V

    .line 4
    iput-object p2, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadFileTransferContext;->controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;

    .line 6
    return-void
.end method
