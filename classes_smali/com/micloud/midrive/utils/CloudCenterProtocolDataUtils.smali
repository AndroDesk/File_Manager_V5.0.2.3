.class public Lcom/micloud/midrive/utils/CloudCenterProtocolDataUtils;
.super Ljava/lang/Object;
.source "CloudCenterProtocolDataUtils.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "private constructor of CloudCenterProtocolDataUtils"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static fillInFileItemInfo(Lorg/json/JSONObject;Lcom/micloud/midrive/infos/FileUploadInfo;)V
    .registers 5

    invoke-virtual {p1}, Lcom/micloud/midrive/infos/FileUploadInfo;->getFileItemInfo()Lcom/micloud/midrive/infos/FileItemInfo;

    move-result-object v0

    iget-wide v1, p1, Lcom/micloud/midrive/infos/FileUploadInfo;->size:J

    const-string p1, "size"

    invoke-virtual {p0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object p1, v0, Lcom/micloud/midrive/infos/FileItemInfo;->sha1:Ljava/lang/String;

    const-string v1, "sha1"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v1, v0, Lcom/micloud/midrive/infos/FileItemInfo;->lastModifyTime:J

    const-string p1, "localModifyTime"

    invoke-virtual {p0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-wide v0, v0, Lcom/micloud/midrive/infos/FileItemInfo;->createTime:J

    const-string p1, "localCreateTime"

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void
.end method

.method public static getUploadAppMeta(Lcom/micloud/midrive/infos/FileUploadInfo;)Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, p0}, Lcom/micloud/midrive/utils/CloudCenterProtocolDataUtils;->fillInFileItemInfo(Lorg/json/JSONObject;Lcom/micloud/midrive/infos/FileUploadInfo;)V

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->fileName:Ljava/lang/String;

    const-string v2, "fileName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->parentId:Ljava/lang/String;

    const-string v2, "parentId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->channel:Ljava/lang/String;

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/micloud/midrive/infos/FileUploadInfo;->recordId:Ljava/lang/String;

    if-eqz v1, :cond_26

    const-string v2, "recordId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_26
    invoke-virtual {p0}, Lcom/micloud/midrive/infos/FileUploadInfo;->getMimeType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mimeType"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
