.class public Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol;
.super Ljava/lang/Object;
.source "SFSFileTransferProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;,
        Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/util/Map;IZ)V
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol;->fillInCommonParams(Ljava/util/Map;IZ)V

    .line 4
    return-void
.end method

.method public static download(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;Ljava/lang/Object;[Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/micloud/midrive/server/transport/Network;",
            "Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;",
            "TT;[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;

    .line 3
    invoke-direct {v0, p5, p4, p2}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;-><init>(Z[Ljava/lang/String;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;)V

    .line 6
    invoke-static {p0, p1, p3, v0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->download(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;)V

    .line 9
    return-void
.end method

.method private static fillInCommonParams(Ljava/util/Map;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "retry"

    .line 7
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    if-eqz p2, :cond_12

    .line 12
    const-string p1, "priority"

    .line 14
    const-string p2, "idle"

    .line 16
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_12
    return-void
.end method

.method public static upload(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;Lcom/micloud/midrive/infos/FileUploadInfo;Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/micloud/midrive/server/transport/Network;",
            "Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;",
            "Lcom/micloud/midrive/infos/FileUploadInfo;",
            "TT;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p3}, Lcom/micloud/midrive/utils/CloudCenterProtocolDataUtils;->getUploadAppMeta(Lcom/micloud/midrive/infos/FileUploadInfo;)Lorg/json/JSONObject;

    .line 4
    move-result-object p3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_17

    .line 5
    new-instance v0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;-><init>(Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;)V

    .line 11
    new-instance v1, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;

    .line 13
    invoke-direct {v1, p5, p3, v0, p2}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;-><init>(ZLorg/json/JSONObject;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;)V

    .line 16
    invoke-static {p0, p1, p4, v1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->upload(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;)V

    .line 19
    invoke-static {v0}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;->access$200(Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :catch_17
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 30
    throw p1
.end method
