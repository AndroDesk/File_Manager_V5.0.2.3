.class public interface abstract Lcom/micloud/midrive/server/transport/SFSFileTransferClient$DownloadController;
.super Ljava/lang/Object;
.source "SFSFileTransferClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/server/transport/SFSFileTransferClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadController"
.end annotation


# virtual methods
.method public abstract getRequestDownloadParams(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestDownloadURL()Ljava/lang/String;
.end method

.method public abstract onProgress(JJ)V
.end method

.method public abstract onRequestDownloadResponse(ILorg/json/JSONObject;)V
.end method
