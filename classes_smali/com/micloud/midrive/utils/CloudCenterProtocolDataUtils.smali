.class public Lcom/micloud/midrive/utils/CloudCenterProtocolDataUtils;
.super Ljava/lang/Object;
.source "CloudCenterProtocolDataUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    const-string v1, "private constructor of CloudCenterProtocolDataUtils"

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw v0
.end method

.method private static fillInFileItemInfo(Lorg/json/JSONObject;Lcom/micloud/midrive/infos/FileUploadInfo;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getFileItemInfo()Lcom/micloud/midrive/infos/FileItemInfo;

    .line 4
    move-result-object v0

    .line 5
    iget-wide v1, p1, Lcom/micloud/midrive/infos/FileUploadInfo;->size:J

    .line 7
    const-string p1, "size"

    .line 9
    invoke-virtual {p0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 12
    iget-object p1, v0, Lcom/micloud/midrive/infos/FileItemInfo;->sha1:Ljava/lang/String;

    .line 14
    const-string v1, "sha1"

    .line 16
    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-wide v1, v0, Lcom/micloud/midrive/infos/FileItemInfo;->lastModifyTime:J

    .line 21
    const-string p1, "localModifyTime"

    .line 23
    invoke-virtual {p0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 26
    iget-wide v0, v0, Lcom/micloud/midrive/infos/FileItemInfo;->createTime:J

    .line 28
    const-string p1, "localCreateTime"

    .line 30
    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 33
    return-void
.end method

.method public static getUploadAppMeta(Lcom/micloud/midrive/infos/FileUploadInfo;)Lorg/json/JSONObject;
    .registers 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    invoke-static {v0, p0}, Lcom/micloud/midrive/utils/CloudCenterProtocolDataUtils;->fillInFileItemInfo(Lorg/json/JSONObject;Lcom/micloud/midrive/infos/FileUploadInfo;)V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->fileName:Ljava/lang/String;

    .line 11
    const-string v2, "fileName"

    .line 13
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->parentId:Ljava/lang/String;

    .line 18
    const-string v2, "parentId"

    .line 20
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->channel:Ljava/lang/String;

    .line 25
    const-string v2, "channel"

    .line 27
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    iget-object v1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->recordId:Ljava/lang/String;

    .line 32
    if-eqz v1, :cond_26

    .line 34
    const-string v2, "recordId"

    .line 36
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    :cond_26
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/FileUploadInfo;->getMimeType()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    const-string v1, "mimeType"

    .line 45
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    return-object v0
.end method
