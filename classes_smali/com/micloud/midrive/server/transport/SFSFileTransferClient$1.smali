.class Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;
.super Ljava/lang/Object;
.source "SFSFileTransferClient.java"

# interfaces
.implements Lcom/micloud/midrive/server/transport/SFSFileTransferClient$TransferAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->uploadInner(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;

.field public final synthetic val$network:Lcom/micloud/midrive/server/transport/Network;

.field public final synthetic val$uploadFile:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/Network;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;->val$context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;->val$controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;

    .line 5
    iput-object p3, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;->val$uploadFile:Ljava/lang/Object;

    .line 7
    iput-object p4, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;->val$network:Lcom/micloud/midrive/server/transport/Network;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public doAction(I)V
    .registers 8

    .line 1
    invoke-static {}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->access$000()Lcom/micloud/midrive/server/transport/SFSFileTransferClient$IMiCloudFileClient;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;->val$context:Landroid/content/Context;

    .line 7
    new-instance v2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadFileTransferContext;

    .line 9
    iget-object v3, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;->val$controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;

    .line 11
    invoke-direct {v2, p1, v3}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadFileTransferContext;-><init>(ILcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;)V

    .line 14
    iget-object v3, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;->val$uploadFile:Ljava/lang/Object;

    .line 16
    new-instance v4, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1$1;

    .line 18
    invoke-direct {v4, p0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1$1;-><init>(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;)V

    .line 21
    new-instance v5, Lcom/micloud/midrive/server/transport/NetworkTransferStopper;

    .line 23
    iget-object p1, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;->val$network:Lcom/micloud/midrive/server/transport/Network;

    .line 25
    invoke-direct {v5, p1}, Lcom/micloud/midrive/server/transport/NetworkTransferStopper;-><init>(Lcom/micloud/midrive/server/transport/Network;)V

    .line 28
    invoke-interface/range {v0 .. v5}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$IMiCloudFileClient;->upload(Landroid/content/Context;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;Ljava/lang/Object;Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;Lcom/xiaomi/opensdk/file/model/MiCloudTransferStopper;)Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferContext;

    .line 31
    return-void
.end method
