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
.method public constructor <init>(ZLorg/json/JSONObject;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;)V
    .registers 5

    .line 1
    iput-boolean p1, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$background:Z

    .line 3
    iput-object p2, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$appMeta:Lorg/json/JSONObject;

    .line 5
    iput-object p3, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$recordKeeper:Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;

    .line 7
    iput-object p4, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$progressListener:Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
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

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-boolean v1, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$background:Z

    .line 8
    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol;->access$000(Ljava/util/Map;IZ)V

    .line 11
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

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-boolean v1, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$background:Z

    .line 8
    invoke-static {v0, p1, v1}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol;->access$000(Ljava/util/Map;IZ)V

    .line 11
    iget-object p1, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$appMeta:Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    const-string v1, "data"

    .line 19
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-object v0
.end method

.method public getRequestUploadURL(I)Ljava/lang/String;
    .registers 2

    const-string p1, "http://driveapi.micloud.xiaomi.net/v2/user/files/create"

    return-object p1
.end method

.method public onCommitUploadResponse(ILorg/json/JSONObject;)V
    .registers 4

    .line 1
    const-string p1, "onCommitUploadResponse"

    .line 3
    invoke-static {p1, p2}, Lcom/micloud/midrive/server/protocol/CheckResponse;->checkServiceAvailable(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    :try_start_5
    invoke-static {p1, p2}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 9
    iget-object p1, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$recordKeeper:Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;

    .line 11
    const-string v0, "data"

    .line 13
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 16
    move-result-object p2

    .line 17
    const-string v0, "id"

    .line 19
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    invoke-static {p1, p2}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;->access$202(Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_5 .. :try_end_19} :catch_28
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_5 .. :try_end_19} :catch_21
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_19} :catch_1a

    .line 26
    return-void

    .line 27
    :catch_1a
    move-exception p1

    .line 28
    new-instance p2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    .line 30
    invoke-direct {p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    .line 33
    throw p2

    .line 34
    :catch_21
    move-exception p1

    .line 35
    new-instance p2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    .line 37
    invoke-direct {p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    throw p2

    .line 41
    :catch_28
    move-exception p1

    .line 42
    new-instance p2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    .line 44
    invoke-direct {p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    throw p2
.end method

.method public onProgress(JJ)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$progressListener:Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;->onProgress(JJ)V

    .line 8
    :cond_7
    return-void
.end method

.method public onRequestUploadResponse(ILorg/json/JSONObject;)Z
    .registers 4

    .line 1
    const-string p1, "onRequestUploadResponse"

    .line 3
    invoke-static {p1, p2}, Lcom/micloud/midrive/server/protocol/CheckResponse;->checkServiceAvailable(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    :try_start_5
    invoke-static {p1, p2}, Lcom/micloud/midrive/server/protocol/CheckResponse;->ensureOperationSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 9
    const-string p1, "data"

    .line 11
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 14
    move-result-object p1

    .line 15
    const-string p2, "exists"

    .line 17
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_18

    .line 23
    const/4 p1, 0x0

    .line 24
    return p1

    .line 25
    :cond_18
    iget-object p2, p0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;->val$recordKeeper:Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;

    .line 27
    const-string v0, "id"

    .line 29
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-static {p2, p1}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;->access$202(Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;Ljava/lang/String;)Ljava/lang/String;
    :try_end_23
    .catch Lcom/micloud/midrive/server/exception/ProtocolBadContentException; {:try_start_5 .. :try_end_23} :catch_38
    .catch Lcom/micloud/midrive/server/exception/OperationFailedException; {:try_start_5 .. :try_end_23} :catch_31
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_23} :catch_25

    .line 36
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :catch_25
    move-exception p1

    .line 39
    new-instance p2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    .line 41
    new-instance v0, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;

    .line 43
    invoke-direct {v0, p1}, Lcom/micloud/midrive/server/exception/ProtocolBadContentException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    invoke-direct {p2, v0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    .line 49
    throw p2

    .line 50
    :catch_31
    move-exception p1

    .line 51
    new-instance p2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    .line 53
    invoke-direct {p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    .line 56
    throw p2

    .line 57
    :catch_38
    move-exception p1

    .line 58
    new-instance p2, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;

    .line 60
    invoke-direct {p2, p1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient$FileTransferException;-><init>(Ljava/lang/Throwable;)V

    .line 63
    throw p2
.end method
