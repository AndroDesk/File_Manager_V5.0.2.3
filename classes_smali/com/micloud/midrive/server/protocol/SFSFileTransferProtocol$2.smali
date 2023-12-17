.class Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;
.super Ljava/lang/Object;
.source "SFSFileTransferProtocol.java"

# interfaces
.implements Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol;->upload(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;Lcom/micloud/midrive/infos/FileUploadInfo;Ljava/lang/Object;Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$appMeta:Lorg/json/JSONObject;

.field public final synthetic val$background:Z

.field public final synthetic val$progressListener:Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;

.field public final synthetic val$recordKeeper:Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ZLorg/json/JSONObject;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;)V
    .registers 5

    iput-boolean p1, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$background:Z

    iput-object p2, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$appMeta:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$recordKeeper:Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;

    iput-object p4, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$progressListener:Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommitUploadParams(I)Ljava/util/Map;
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

    iget-boolean v1, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$background:Z

    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol;->access$000(Ljava/util/Map;IZ)V

    return-object v0
.end method

.method public getCommitUploadURL(I)Ljava/lang/String;
    .registers 2

    const-string p1, "http://driveapi.micloud.xiaomi.net/v2/user/files/commit"

    return-object p1
.end method

.method public getRequestUploadParams(I)Ljava/util/Map;
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

    iget-boolean v1, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$background:Z

    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol;->access$000(Ljava/util/Map;IZ)V

    iget-object p1, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$appMeta:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getRequestUploadURL(I)Ljava/lang/String;
    .registers 2

    const-string p1, "http://driveapi.micloud.xiaomi.net/v2/user/files/create"

    return-object p1
.end method

.method public onCommitUploadResponse(ILorg/json/JSONObject;)V
    .registers 4

    const-string p1, "onCommitUploadResponse"

    invoke-static {p1, p2}, Lcom/micloud/midrive/server/protocol/CheckResponse;->checkServiceAvailable(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_5
    invoke-static {p1, p2}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$recordKeeper:Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;

    const-string v0, "data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;->access$202(Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_5 .. :try_end_19} :catch_28
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_5 .. :try_end_19} :catch_21
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p1

    new-instance p2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    invoke-direct {p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_21
    move-exception p1

    new-instance p2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    invoke-direct {p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_28
    move-exception p1

    new-instance p2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    invoke-direct {p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public onProgress(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$progressListener:Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;->onProgress(JJ)V

    :cond_7
    return-void
.end method

.method public onRequestUploadResponse(ILorg/json/JSONObject;)Z
    .registers 4

    const-string p1, "onRequestUploadResponse"

    invoke-static {p1, p2}, Lcom/micloud/midrive/server/protocol/CheckResponse;->checkServiceAvailable(Ljava/lang/String;Lorg/json/JSONObject;)V

    :try_start_5
    invoke-static {p1, p2}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string p1, "data"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "exists"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_18

    const/4 p1, 0x0

    return p1

    :cond_18
    iget-object p2, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$recordKeeper:Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;->access$202(Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;Ljava/lang/String;)Ljava/lang/String;
    :try_end_23
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_5 .. :try_end_23} :catch_38
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_5 .. :try_end_23} :catch_31
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_23} :catch_25

    const/4 p1, 0x1

    return p1

    :catch_25
    move-exception p1

    new-instance p2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    new-instance v0, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    invoke-direct {v0, p1}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p2, v0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_31
    move-exception p1

    new-instance p2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    invoke-direct {p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_38
    move-exception p1

    new-instance p2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    invoke-direct {p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
