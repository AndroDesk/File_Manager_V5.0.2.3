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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/util/Map;IZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol;->fillInCommonParams(Ljava/util/Map;IZ)V

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

    new-instance v0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;

    invoke-direct {v0, p5, p4, p2}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;-><init>(Z[Ljava/lang/String;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;)V

    invoke-static {p0, p1, p3, v0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->download(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;)V

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

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "retry"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_12

    const-string p1, "priority"

    const-string p2, "idle"

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    :try_start_0
    invoke-static {p3}, Lcom/micloud/midrive/utils/CloudCenterProtocolDataUtils;->getUploadAppMeta(Lcom/micloud/midrive/infos/FileUploadInfo;)Lorg/json/JSONObject;

    move-result-object p3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_17

    new-instance v0, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;-><init>(Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$1;)V

    new-instance v1, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;

    invoke-direct {v1, p5, p3, v0, p2}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$2;-><init>(ZLorg/json/JSONObject;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$IProgressListener;)V

    invoke-static {p0, p1, p4, v1}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->upload(Landroid/content/Context;Lcom/micloud/midrive/server/transport/Network;Ljava/lang/Object;Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;)V

    invoke-static {v0}, Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;->access$200(Lcom/micloud/midrive/server/protocol/SFSFileTransferProtocol$UploadRecordKeeper;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_17
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
