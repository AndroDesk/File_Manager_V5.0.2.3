.class public Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;
.super Ljava/lang/Object;
.source "Pdc4SyncServerAdapter.java"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "Pdc4SyncServerAdapter"


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private final mSpaceId:Ljava/lang/String;

.field private mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    new-instance p1, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    invoke-direct {p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    return-void
.end method

.method private getCreateRecordJson(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lorg/json/JSONObject;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uniqueKey"

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->getUniqueKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "parentId"

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->getParentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "contentJson"

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->getContentJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->getAssetList()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->getAssetList()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "assetList"

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->getAssetList()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4b
    const-string p1, "status"

    const-string v1, "normal"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_52} :catch_53

    return-object v0

    :catch_53
    move-exception p1

    const-string v0, "Pdc4SyncServerAdapter"

    const-string v1, "getCreateRecordJson error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    invoke-direct {p1, v1}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getUpdateRecordJson(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lorg/json/JSONObject;
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uniqueKey"

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getUniqueKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "parentId"

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getParentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "contentJson"

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getContentJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getAssetList()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getAssetList()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "assetList"

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getAssetList()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4b
    const-string p1, "status"

    const-string v1, "normal"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_52} :catch_53

    return-object v0

    :catch_53
    move-exception p1

    const-string v0, "Pdc4SyncServerAdapter"

    const-string v1, "getUpdateRecordJson error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    invoke-direct {p1, v1}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public batchUpload(Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;)Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/opensdk/pdc/UploadOperation;

    invoke-interface {v2}, Lcom/xiaomi/opensdk/pdc/UploadOperation;->getOperationJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_e

    :cond_22
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "batchContent"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getBatchUploadRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseBatchUploadResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public commitAsset(Ljava/lang/String;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;
    .registers 13

    const-string v0, "Pdc4SyncServerAdapter"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_c
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "storage"

    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/CommitParameter;->toJsonObject()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "fullJson"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "commitAsset:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_37} :catch_6a

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    iget-object p2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-virtual {p1, p2, v2}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getCommitAssetRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_42
    invoke-static {p2, p1, v1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1
    :try_end_46
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_42 .. :try_end_46} :catch_5c

    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;

    iget-boolean v1, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    iget-object v2, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget v8, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    iget-wide v5, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    iget-object v7, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

    iget-object v9, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

    move-object v0, p2

    move v4, v8

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;ILorg/json/JSONObject;)V

    return-object p2

    :catch_5c
    move-exception p1

    const-string p2, "commitAsset SyncException"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    const-string v0, "SyncException in commitAsset"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_6a
    move-exception p1

    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    const-string v0, "JSONException in commitAsset"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public create(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->getCreateRecordJson(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "record"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getCreateRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseUploadResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public delete(Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getETag()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eTag"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getDeleteRequestUrl(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseUploadResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public download(Lcom/xiaomi/opensdk/pdc/DownloadOperation;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;->getSyncToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;->getSyncToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "syncToken"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const/16 p1, 0xc8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "limit"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getDownloadRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseDownloadResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public fetchChildren(Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->getParentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->getCursor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->getCursor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cursor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getFetchChildrenRequestUrl(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseFetchChildrenResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public fetchRecord(Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getFetchRecordRequestUrl(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseFetchRecordResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public fetchRecordsByIndex(Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->getIndexName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "indexName"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->getBeginKey()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "beginKey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->getEndKey()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "endKey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->isReverse()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "isReverse"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xc8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "limit"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getFetchRecordsByIndexRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseFetchRecordsByIndexResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetUrl(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;
    .registers 15

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p2, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->type:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAssetUrl:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Pdc4SyncServerAdapter"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, p2}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getAssetUrlRequestUrl(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    :try_start_32
    invoke-static {p2, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;

    iget-boolean v3, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    iget-object v4, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    iget-object v5, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget v10, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    iget-wide v7, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    iget-object v9, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

    iget-object v11, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

    move-object v2, p2

    move v6, v10

    invoke-direct/range {v2 .. v11}, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;ILorg/json/JSONObject;)V
    :try_end_4b
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_32 .. :try_end_4b} :catch_4c

    return-object p2

    :catch_4c
    move-exception p1

    const-string p2, "getAssetUrl SyncException"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    const-string v0, "SyncException in getAssetUrl"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getCreateJson(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lorg/json/JSONObject;
    .registers 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "record"

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->getCreateRecordJson(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "path"

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getCreateRequestPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "params"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_27} :catch_28

    return-object p1

    :catch_28
    move-exception p1

    const-string v0, "Pdc4SyncServerAdapter"

    const-string v1, "getCreateJson error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    invoke-direct {p1, v1}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDeleteJson(Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Lorg/json/JSONObject;
    .registers 8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eTag"

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getETag()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "path"

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getDeleteRequestPath(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "params"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_39} :catch_3a

    return-object v1

    :catch_3a
    move-exception p1

    const-string v0, "Pdc4SyncServerAdapter"

    const-string v1, "getDeleteJson error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    invoke-direct {p1, v1}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSpaceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateJson(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lorg/json/JSONObject;
    .registers 8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "record"

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->getUpdateRecordJson(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eTag"

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getETag()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "path"

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getUpdateRequestPath(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "params"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_30} :catch_31

    return-object v1

    :catch_31
    move-exception p1

    const-string v0, "Pdc4SyncServerAdapter"

    const-string v1, "getUpdateJson error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    invoke-direct {p1, v1}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestDownload(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;
    .registers 15

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p2, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->type:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestDownload:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Pdc4SyncServerAdapter"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, p2}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getRequestDownloadRequestUrl(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    :try_start_32
    invoke-static {p2, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;

    iget-boolean v3, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    iget-object v4, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    iget-object v5, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget v10, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    iget-wide v7, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    iget-object v9, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

    iget-object v11, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

    move-object v2, p2

    move v6, v10

    invoke-direct/range {v2 .. v11}, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;ILorg/json/JSONObject;)V
    :try_end_4b
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_32 .. :try_end_4b} :catch_4c

    return-object p2

    :catch_4c
    move-exception p1

    const-string p2, "requestDownload SyncException"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    const-string v0, "SyncException in requestDownload"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public requestUploadAsset(Ljava/lang/String;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;
    .registers 13

    const-string v0, "Pdc4SyncServerAdapter"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_c
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "storage"

    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->toJsonObject()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "fullJson"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "requestUploadAsset:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_37} :catch_6a

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    iget-object p2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-virtual {p1, p2, v2}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getRequestUploadAssetRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_42
    invoke-static {p2, p1, v1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1
    :try_end_46
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_42 .. :try_end_46} :catch_5c

    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;

    iget-boolean v1, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    iget-object v2, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget v8, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    iget-wide v5, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    iget-object v7, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

    iget-object v9, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

    move-object v0, p2

    move v4, v8

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;ILorg/json/JSONObject;)V

    return-object p2

    :catch_5c
    move-exception p1

    const-string p2, "requestUploadAsset SyncException"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    const-string v0, "SyncException in requestUploadAsset"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_6a
    move-exception p1

    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    const-string v0, "JSONException in requestUploadAsset"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public update(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->getUpdateRecordJson(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "record"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getETag()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eTag"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getUpdateRequestUrl(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseUploadResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    return-object p1
.end method
