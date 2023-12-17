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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ILcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;-><init>(I)V

    iput-object p2, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadFileTransferContext;->controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;

    return-void
.end method
