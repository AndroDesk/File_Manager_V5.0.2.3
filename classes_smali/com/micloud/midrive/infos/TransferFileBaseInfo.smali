.class public interface abstract Lcom/micloud/midrive/infos/TransferFileBaseInfo;
.super Ljava/lang/Object;
.source "TransferFileBaseInfo.java"

# interfaces
.implements Lcom/micloud/midrive/infos/DoneBaseInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;
.end method

.method public abstract getFileId()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getSha1()Ljava/lang/String;
.end method

.method public abstract getSize()J
.end method

.method public abstract getThumbnailUrl()Ljava/lang/String;
.end method

.method public abstract isBackground()Z
.end method

.method public abstract setErrInfo(Lcom/micloud/midrive/infos/ErrInfo;)V
.end method

.method public abstract toJSONObject()Lorg/json/JSONObject;
.end method
