.class Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;
.super Ljava/lang/Object;
.source "SFSFileTransferProtocol.java"

# interfaces
.implements Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol;->download(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;Ljava/lang/Object;[Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$background:Z

.field public final synthetic val$fileIds:[Ljava/lang/String;

.field public final synthetic val$progressListener:Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/String;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;)V
    .registers 4

    iput-boolean p1, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;->val$background:Z

    iput-object p2, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;->val$fileIds:[Ljava/lang/String;

    iput-object p3, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;->val$progressListener:Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestDownloadParams(I)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-boolean v1, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;->val$background:Z

    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol;->access$000(Ljava/util/Map;IZ)V

    iget-object p1, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;->val$fileIds:[Ljava/lang/String;

    invoke-static {p1}, Lcom/micloud/midrive/utils/JsonUtils;->arrayToJson([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ids"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getRequestDownloadURL()Ljava/lang/String;
    .registers 2

    const-string v0, "http://driveapi.micloud.xiaomi.net/v2/user/files/download"

    return-object v0
.end method

.method public onProgress(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;->val$progressListener:Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;->onProgress(JJ)V

    :cond_7
    return-void
.end method

.method public onRequestDownloadResponse(ILorg/json/JSONObject;)V
    .registers 3

    const-string p1, "onRequestDownloadResponse"

    invoke-static {p1, p2}, Lcom/micloud/midrive/server/protocol/CheckResponse;->checkServiceAvailable(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_5
    invoke-static {p1, p2}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_8
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_5 .. :try_end_8} :catch_10
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_5 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p1

    new-instance p2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    invoke-direct {p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_10
    move-exception p1

    new-instance p2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    invoke-direct {p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
