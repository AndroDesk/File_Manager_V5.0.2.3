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
.method public constructor <init>(Z[Ljava/lang/String;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;)V
    .registers 4

    .line 1
    iput-boolean p1, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;->val$background:Z

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;->val$fileIds:[Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;->val$progressListener:Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
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

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-boolean v1, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;->val$background:Z

    .line 8
    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol;->access$000(Ljava/util/Map;IZ)V

    .line 11
    iget-object p1, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;->val$fileIds:[Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/micloud/midrive/utils/JsonUtils;->arrayToJson([Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    const-string v1, "ids"

    .line 19
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-object v0
.end method

.method public getRequestDownloadURL()Ljava/lang/String;
    .registers 2

    const-string v0, "http://driveapi.micloud.xiaomi.net/v2/user/files/download"

    return-object v0
.end method

.method public onProgress(JJ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;->val$progressListener:Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;->onProgress(JJ)V

    .line 8
    :cond_7
    return-void
.end method

.method public onRequestDownloadResponse(ILorg/json/JSONObject;)V
    .registers 3

    .line 1
    const-string p1, "onRequestDownloadResponse"

    .line 3
    invoke-static {p1, p2}, Lcom/micloud/midrive/server/protocol/CheckResponse;->checkServiceAvailable(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    :try_start_5
    invoke-static {p1, p2}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_8
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_5 .. :try_end_8} :catch_10
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_5 .. :try_end_8} :catch_9

    .line 9
    return-void

    .line 10
    :catch_9
    move-exception p1

    .line 11
    new-instance p2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    .line 13
    invoke-direct {p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    throw p2

    .line 17
    :catch_10
    move-exception p1

    .line 18
    new-instance p2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    .line 20
    invoke-direct {p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    throw p2
.end method
