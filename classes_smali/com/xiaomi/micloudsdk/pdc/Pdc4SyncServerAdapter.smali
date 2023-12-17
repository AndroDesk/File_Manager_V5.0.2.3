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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 4
    new-instance p1, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    invoke-direct {p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;)V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    return-void
.end method

.method private getCreateRecordJson(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lorg/json/JSONObject;
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "type"

    .line 8
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->getType()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v1, "id"

    .line 17
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->getId()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v1, "uniqueKey"

    .line 26
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->getUniqueKey()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v1, "parentId"

    .line 35
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->getParentId()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v1, "contentJson"

    .line 44
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->getContentJson()Lorg/json/JSONObject;

    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->getAssetList()Lorg/json/JSONArray;

    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_4b

    .line 57
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->getAssetList()Lorg/json/JSONArray;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_4b

    .line 67
    const-string v1, "assetList"

    .line 69
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->getAssetList()Lorg/json/JSONArray;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    :cond_4b
    const-string p1, "status"

    .line 78
    const-string v1, "normal"

    .line 80
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_52} :catch_53

    .line 83
    return-object v0

    .line 84
    :catch_53
    move-exception p1

    .line 85
    const-string v0, "Pdc4SyncServerAdapter"

    .line 87
    const-string v1, "getCreateRecordJson error"

    .line 89
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 94
    invoke-direct {p1, v1}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p1
.end method

.method private getUpdateRecordJson(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lorg/json/JSONObject;
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "type"

    .line 8
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getType()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v1, "id"

    .line 17
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getId()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v1, "uniqueKey"

    .line 26
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getUniqueKey()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v1, "parentId"

    .line 35
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getParentId()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v1, "contentJson"

    .line 44
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getContentJson()Lorg/json/JSONObject;

    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getAssetList()Lorg/json/JSONArray;

    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_4b

    .line 57
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getAssetList()Lorg/json/JSONArray;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_4b

    .line 67
    const-string v1, "assetList"

    .line 69
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getAssetList()Lorg/json/JSONArray;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    :cond_4b
    const-string p1, "status"

    .line 78
    const-string v1, "normal"

    .line 80
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_52} :catch_53

    .line 83
    return-object v0

    .line 84
    :catch_53
    move-exception p1

    .line 85
    const-string v0, "Pdc4SyncServerAdapter"

    .line 87
    const-string v1, "getUpdateRecordJson error"

    .line 89
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 94
    invoke-direct {p1, v1}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p1
.end method


# virtual methods
.method public batchUpload(Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;)Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v1, Lorg/json/JSONArray;

    .line 8
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 11
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_22

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/xiaomi/opensdk/pdc/UploadOperation;

    .line 27
    invoke-interface {v2}, Lcom/xiaomi/opensdk/pdc/UploadOperation;->getOperationJson()Lorg/json/JSONObject;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 34
    goto :goto_e

    .line 35
    :cond_22
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    const-string v1, "batchContent"

    .line 41
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    .line 46
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 48
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 50
    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getBatchUploadRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseBatchUploadResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;

    .line 62
    move-result-object p1

    .line 63
    return-object p1
.end method

.method public commitAsset(Ljava/lang/String;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;
    .registers 13

    .line 1
    const-string v0, "Pdc4SyncServerAdapter"

    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    const-string v2, "type"

    .line 10
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :try_start_c
    new-instance p1, Lorg/json/JSONObject;

    .line 15
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 18
    const-string v2, "storage"

    .line 20
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/CommitParameter;->toJsonObject()Lorg/json/JSONObject;

    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string p2, "fullJson"

    .line 29
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string p2, "commitAsset:"

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_37} :catch_6a

    .line 56
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    .line 58
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 62
    invoke-virtual {p1, p2, v2}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getCommitAssetRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    const/4 p2, 0x0

    .line 67
    :try_start_42
    invoke-static {p2, p1, v1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    .line 70
    move-result-object p1
    :try_end_46
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_42 .. :try_end_46} :catch_5c

    .line 71
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;

    .line 73
    iget-boolean v1, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 75
    iget-object v2, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    .line 77
    iget-object v3, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 79
    iget v8, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    .line 81
    iget-wide v5, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 83
    iget-object v7, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

    .line 85
    iget-object v9, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 87
    move-object v0, p2

    .line 88
    move v4, v8

    .line 89
    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;ILorg/json/JSONObject;)V

    .line 92
    return-object p2

    .line 93
    :catch_5c
    move-exception p1

    .line 94
    const-string p2, "commitAsset SyncException"

    .line 96
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    .line 101
    const-string v0, "SyncException in commitAsset"

    .line 103
    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    throw p2

    .line 107
    :catch_6a
    move-exception p1

    .line 108
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    .line 110
    const-string v0, "JSONException in commitAsset"

    .line 112
    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    throw p2
.end method

.method public create(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->getCreateRecordJson(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lorg/json/JSONObject;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    const-string v1, "record"

    .line 16
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    .line 21
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 23
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 25
    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getCreateRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseUploadResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public delete(Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getType()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "type"

    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getId()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    const-string v2, "id"

    .line 21
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getETag()J

    .line 27
    move-result-wide v1

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    const-string v2, "eTag"

    .line 34
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    .line 39
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 41
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 43
    invoke-virtual {v1, v2, v3, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getDeleteRequestUrl(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseUploadResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method public download(Lcom/xiaomi/opensdk/pdc/DownloadOperation;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;->getSyncToken()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_14

    .line 12
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;->getSyncToken()Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    const-string v1, "syncToken"

    .line 18
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_14
    const/16 p1, 0xc8

    .line 23
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    const-string v1, "limit"

    .line 29
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    .line 34
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 36
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 38
    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getDownloadRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseDownloadResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;

    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method

.method public fetchChildren(Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->getParentType()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "type"

    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->getCursor()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1d

    .line 21
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->getCursor()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    const-string v2, "cursor"

    .line 27
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_1d
    const/16 v1, 0xc8

    .line 32
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    const-string v2, "limit"

    .line 38
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    .line 43
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 45
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 47
    invoke-virtual {v1, v2, v3, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getFetchChildrenRequestUrl(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseFetchChildrenResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method public fetchRecord(Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    .line 8
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 10
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v2, v3, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getFetchRecordRequestUrl(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseFetchRecordResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public fetchRecordsByIndex(Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->getIndexName()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "indexName"

    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->getBeginKey()Lorg/json/JSONObject;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    const-string v2, "beginKey"

    .line 25
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->getEndKey()Lorg/json/JSONObject;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    const-string v2, "endKey"

    .line 38
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->isReverse()Z

    .line 44
    move-result p1

    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    const-string v1, "isReverse"

    .line 51
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const/16 p1, 0xc8

    .line 56
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    const-string v1, "limit"

    .line 62
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    .line 67
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 69
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 71
    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getFetchRecordsByIndexRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    const/4 v1, 0x1

    .line 76
    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseFetchRecordsByIndexResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

    .line 83
    move-result-object p1

    .line 84
    return-object p1
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getAssetUrl(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;
    .registers 15

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v1, p2, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->type:Ljava/lang/String;

    .line 8
    const-string v2, "type"

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v1, "id"

    .line 15
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    const-string v1, "getAssetUrl:"

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    const-string v1, "Pdc4SyncServerAdapter"

    .line 37
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    .line 42
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 44
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 46
    invoke-virtual {p1, v2, v3, p2}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getAssetUrlRequestUrl(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    const/4 p2, 0x1

    .line 51
    :try_start_32
    invoke-static {p2, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    .line 54
    move-result-object p1

    .line 55
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;

    .line 57
    iget-boolean v3, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 59
    iget-object v4, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    .line 61
    iget-object v5, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 63
    iget v10, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    .line 65
    iget-wide v7, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 67
    iget-object v9, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

    .line 69
    iget-object v11, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 71
    move-object v2, p2

    .line 72
    move v6, v10

    .line 73
    invoke-direct/range {v2 .. v11}, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;ILorg/json/JSONObject;)V
    :try_end_4b
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_32 .. :try_end_4b} :catch_4c

    .line 76
    return-object p2

    .line 77
    :catch_4c
    move-exception p1

    .line 78
    const-string p2, "getAssetUrl SyncException"

    .line 80
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    .line 85
    const-string v0, "SyncException in getAssetUrl"

    .line 87
    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    throw p2
.end method

.method public getCreateJson(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lorg/json/JSONObject;
    .registers 7

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "record"

    .line 8
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->getCreateRecordJson(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lorg/json/JSONObject;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    new-instance p1, Lorg/json/JSONObject;

    .line 17
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 20
    const-string v1, "path"

    .line 22
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    .line 24
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 26
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 28
    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getCreateRequestPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v1, "params"

    .line 37
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_27} :catch_28

    .line 40
    return-object p1

    .line 41
    :catch_28
    move-exception p1

    .line 42
    const-string v0, "Pdc4SyncServerAdapter"

    .line 44
    const-string v1, "getCreateJson error"

    .line 46
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 51
    invoke-direct {p1, v1}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 54
    throw p1
.end method

.method public getDeleteJson(Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Lorg/json/JSONObject;
    .registers 8

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "type"

    .line 8
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getType()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v1, "id"

    .line 17
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getId()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v1, "eTag"

    .line 26
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getETag()J

    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 33
    new-instance v1, Lorg/json/JSONObject;

    .line 35
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 38
    const-string v2, "path"

    .line 40
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    .line 42
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 44
    iget-object v5, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 46
    invoke-virtual {v3, v4, v5, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getDeleteRequestPath(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string p1, "params"

    .line 55
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_39} :catch_3a

    .line 58
    return-object v1

    .line 59
    :catch_3a
    move-exception p1

    .line 60
    const-string v0, "Pdc4SyncServerAdapter"

    .line 62
    const-string v1, "getDeleteJson error"

    .line 64
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 69
    invoke-direct {p1, v1}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1
.end method

.method public getSpaceId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getUpdateJson(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lorg/json/JSONObject;
    .registers 8

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "record"

    .line 8
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->getUpdateRecordJson(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lorg/json/JSONObject;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v1, "eTag"

    .line 17
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getETag()J

    .line 20
    move-result-wide v2

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 24
    new-instance v1, Lorg/json/JSONObject;

    .line 26
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 29
    const-string v2, "path"

    .line 31
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    .line 33
    iget-object v4, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 35
    iget-object v5, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 37
    invoke-virtual {v3, v4, v5, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getUpdateRequestPath(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string p1, "params"

    .line 46
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_30} :catch_31

    .line 49
    return-object v1

    .line 50
    :catch_31
    move-exception p1

    .line 51
    const-string v0, "Pdc4SyncServerAdapter"

    .line 53
    const-string v1, "getUpdateJson error"

    .line 55
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 60
    invoke-direct {p1, v1}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p1
.end method

.method public requestDownload(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;
    .registers 15

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v1, p2, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->type:Ljava/lang/String;

    .line 8
    const-string v2, "type"

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v1, "id"

    .line 15
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    const-string v1, "requestDownload:"

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    const-string v1, "Pdc4SyncServerAdapter"

    .line 37
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    .line 42
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 44
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 46
    invoke-virtual {p1, v2, v3, p2}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getRequestDownloadRequestUrl(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    const/4 p2, 0x1

    .line 51
    :try_start_32
    invoke-static {p2, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    .line 54
    move-result-object p1

    .line 55
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;

    .line 57
    iget-boolean v3, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 59
    iget-object v4, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    .line 61
    iget-object v5, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 63
    iget v10, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    .line 65
    iget-wide v7, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 67
    iget-object v9, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

    .line 69
    iget-object v11, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 71
    move-object v2, p2

    .line 72
    move v6, v10

    .line 73
    invoke-direct/range {v2 .. v11}, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;ILorg/json/JSONObject;)V
    :try_end_4b
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_32 .. :try_end_4b} :catch_4c

    .line 76
    return-object p2

    .line 77
    :catch_4c
    move-exception p1

    .line 78
    const-string p2, "requestDownload SyncException"

    .line 80
    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    .line 85
    const-string v0, "SyncException in requestDownload"

    .line 87
    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    throw p2
.end method

.method public requestUploadAsset(Ljava/lang/String;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;
    .registers 13

    .line 1
    const-string v0, "Pdc4SyncServerAdapter"

    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    const-string v2, "type"

    .line 10
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :try_start_c
    new-instance p1, Lorg/json/JSONObject;

    .line 15
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 18
    const-string v2, "storage"

    .line 20
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->toJsonObject()Lorg/json/JSONObject;

    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string p2, "fullJson"

    .line 29
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string p2, "requestUploadAsset:"

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_37} :catch_6a

    .line 56
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    .line 58
    iget-object p2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 62
    invoke-virtual {p1, p2, v2}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getRequestUploadAssetRequestUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    const/4 p2, 0x0

    .line 67
    :try_start_42
    invoke-static {p2, p1, v1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    .line 70
    move-result-object p1
    :try_end_46
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_42 .. :try_end_46} :catch_5c

    .line 71
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;

    .line 73
    iget-boolean v1, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->isSuccess:Z

    .line 75
    iget-object v2, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->description:Ljava/lang/String;

    .line 77
    iget-object v3, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 79
    iget v8, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->code:I

    .line 81
    iget-wide v5, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->retryTime:J

    .line 83
    iget-object v7, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->result:Ljava/lang/String;

    .line 85
    iget-object v9, p1, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 87
    move-object v0, p2

    .line 88
    move v4, v8

    .line 89
    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;ILorg/json/JSONObject;)V

    .line 92
    return-object p2

    .line 93
    :catch_5c
    move-exception p1

    .line 94
    const-string p2, "requestUploadAsset SyncException"

    .line 96
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    .line 101
    const-string v0, "SyncException in requestUploadAsset"

    .line 103
    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    throw p2

    .line 107
    :catch_6a
    move-exception p1

    .line 108
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    .line 110
    const-string v0, "JSONException in requestUploadAsset"

    .line 112
    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    throw p2
.end method

.method public update(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-direct {p0, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->getUpdateRecordJson(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lorg/json/JSONObject;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "record"

    .line 16
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getETag()J

    .line 22
    move-result-wide v1

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    const-string v2, "eTag"

    .line 29
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mUrlGenerator:Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;

    .line 34
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 36
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 38
    invoke-virtual {v1, v2, v3, p1}, Lcom/xiaomi/micloudsdk/pdc/Pdc4SyncServerUrlGenerator;->getUpdateRequestUrl(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-static {v1, p1, v0}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->requestServer(ZLjava/lang/String;Ljava/util/Map;)Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;

    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils;->parseUploadResult(Lcom/xiaomi/micloudsdk/pdc/utils/Pdc4Utils$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method
