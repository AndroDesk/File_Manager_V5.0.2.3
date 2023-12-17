.class public interface abstract Lcom/micloud/midrive/server/transport/SFSFileTransferClient$UploadController;
.super Ljava/lang/Object;
.source "SFSFileTransferClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/server/transport/SFSFileTransferClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadController"
.end annotation


# virtual methods
.method public abstract getCommitUploadParams(I)Ljava/util/Map;
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

.method public abstract getCommitUploadURL(I)Ljava/lang/String;
.end method

.method public abstract getRequestUploadParams(I)Ljava/util/Map;
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

.method public abstract getRequestUploadURL(I)Ljava/lang/String;
.end method

.method public abstract onCommitUploadResponse(ILorg/json/JSONObject;)V
.end method

.method public abstract onProgress(JJ)V
.end method

.method public abstract onRequestUploadResponse(ILorg/json/JSONObject;)Z
.end method
