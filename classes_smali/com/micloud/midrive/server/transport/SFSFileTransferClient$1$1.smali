.class Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1$1;
.super Ljava/lang/Object;
.source "SFSFileTransferClient.java"

# interfaces
.implements Lcom/xiaomi/opensdk/file/model/MiCloudFileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;->doAction(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1$1;->this$0:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived(JJ)V
    .registers 5

    return-void
.end method

.method public onDataSended(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1$1;->this$0:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;

    iget-object v0, v0, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$1;->val$controller:Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;->onProgress(JJ)V

    return-void
.end method
