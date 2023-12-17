.class Lcom/micloud/midrive/server/transport/SFSFileTransferClient$2;
.super Ljava/lang/Object;
.source "SFSFileTransferClient.java"

# interfaces
.implements Lcom/micloud/midrive/server/transport/SFSFileTransferClient$TransferAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->downloadInner(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;

.field public final synthetic val$downloadFile:Ljava/lang/Object;

.field public final synthetic val$network:Lcom/micloud/midrive/server/transport/Network;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/Network;)V
    .registers 5

    iput-object p1, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$2;->val$controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;

    iput-object p3, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$2;->val$downloadFile:Ljava/lang/Object;

    iput-object p4, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$2;->val$network:Lcom/micloud/midrive/server/transport/Network;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction(I)V
    .registers 8

    invoke-static {}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->access$000()Lcom/micloud/midrive/server/transport/SFSFileTransferClient$IMiCloudFileClient;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$2;->val$context:Landroid/content/Context;

    new-instance v2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadFileTransferContext;

    iget-object v3, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$2;->val$controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;

    invoke-direct {v2, p1, v3}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadFileTransferContext;-><init>(ILcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;)V

    iget-object v3, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$2;->val$downloadFile:Ljava/lang/Object;

    new-instance v4, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$2$1;

    invoke-direct {v4, p0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$2$1;-><init>(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$2;)V

    new-instance v5, Lcom/micloud/midrive/server/transport/NetworkTransferStopper;

    iget-object p1, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$2;->val$network:Lcom/micloud/midrive/server/transport/Network;

    invoke-direct {v5, p1}, Lcom/micloud/midrive/server/transport/NetworkTransferStopper;-><init>(Lcom/micloud/midrive/server/transport/Network;)V

    invoke-interface/range {v0 .. v5}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$IMiCloudFileClient;->download(Landroid/content/Context;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)V

    return-void
.end method
