.class public Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;
.super Ljava/lang/Object;
.source "OpenPdcSyncServerAdapter.java"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenPdcSyncServerAdapter"


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private final mClientId:Ljava/lang/String;

.field private final mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

.field private final mSpaceId:Ljava/lang/String;

.field private final mToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    return-void
.end method

.method private getCreateBodyJson(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lorg/json/JSONObject;
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

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "record"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5c} :catch_5d

    return-object p1

    :catch_5d
    move-exception p1

    const-string v0, "OpenPdcSyncServerAdapter"

    const-string v1, "getCreateRecordJson error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    invoke-direct {p1, v1}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getCreateRequestPath()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "/mic/open/pdc/apps/%s/spaces/%s/records"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeleteRequestPath(Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "/mic/open/pdc/apps/%s/spaces/%s/records/%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFullHost()Ljava/lang/String;
    .registers 3

    const-string v0, "https://"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    if-nez v1, :cond_d

    const-string v1, "micpdc.openapi.xiaomi.net"

    goto :goto_11

    :cond_d
    invoke-interface {v1}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;->getHost()Ljava/lang/String;

    move-result-object v1

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUpdateBodyJson(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lorg/json/JSONObject;
    .registers 7

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

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

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

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4b
    const-string v1, "status"

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "eTag"

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getETag()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "record"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_65} :catch_66

    return-object v1

    :catch_66
    move-exception p1

    const-string v0, "OpenPdcSyncServerAdapter"

    const-string v1, "getUpdateBodyJson error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    invoke-direct {p1, v1}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getUpdateRequestPath(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "/mic/open/pdc/apps/%s/spaces/%s/records/%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public batchUpload(Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;)Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;
    .registers 11

    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/opensdk/pdc/UploadOperation;

    invoke-interface {v1}, Lcom/xiaomi/opensdk/pdc/SyncOperation;->execute()Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_22
    new-instance p1, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->OK:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public commitAsset(Ljava/lang/String;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;
    .registers 14

    const-string v0, "OpenPdcSyncServerAdapter"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    const-string v2, "clientId"

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/mic/open/pdc/apps/%s/spaces/%s/records/assets/commit"

    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :try_start_3d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "storage"

    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/CommitParameter;->toJsonObject()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "type"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    const-string v3, "POST"

    const/4 v5, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;

    iget-boolean v2, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    iget-object v3, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->description:Ljava/lang/String;

    iget-object v4, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget v9, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->code:I

    iget-wide v6, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J

    iget-object v8, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    iget-object v10, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    move-object v1, p2

    move v5, v9

    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;ILorg/json/JSONObject;)V
    :try_end_73
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_3d .. :try_end_73} :catch_82
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_73} :catch_74

    return-object p2

    :catch_74
    move-exception p1

    const-string p2, "JSONException in requestUploadAsset"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    const-string v0, "JSONException in getAssetRequsetUploadBodyJson"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_82
    move-exception p1

    const-string p2, "commitAsset SyncException"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    const-string v0, "SyncException in commitAsset"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public create(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 8

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    const-string v1, "clientId"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    const-string v1, "token"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getCreateRequestPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getCreateBodyJson(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v2, "POST"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseUploadResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public delete(Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 8

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    const-string v1, "clientId"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    const-string v1, "token"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getETag()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eTag"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getDeleteRequestPath(Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    const-string v2, "DELETE"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseUploadResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public download(Lcom/xiaomi/opensdk/pdc/DownloadOperation;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;
    .registers 8

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    const-string v1, "clientId"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    const-string v1, "token"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;->getSyncToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;->getSyncToken()Ljava/lang/String;

    move-result-object p1

    const-string v0, "syncToken"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    const/16 p1, 0xc8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "limit"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mic/open/pdc/apps/%s/spaces/%s/records"

    invoke-static {p1, v0, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "GET"

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseDownloadResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public fetchChildren(Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;
    .registers 8

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    const-string v1, "clientId"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    const-string v1, "token"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->getParentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->getCursor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->getCursor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cursor"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "limit"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/mic/open/pdc/apps/%s/spaces/%s/records/%s/children"

    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "GET"

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseFetchChildrenResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public fetchRecord(Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
    .registers 8

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    const-string v1, "clientId"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    const-string v1, "token"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/mic/open/pdc/apps/%s/spaces/%s/records/%s"

    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    const-string v2, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseFetchRecordResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public fetchRecordsByIndex(Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
    .registers 8

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    const-string v1, "clientId"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    const-string v1, "token"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->getIndexName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "indexName"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->getBeginKey()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "beginKey"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->getEndKey()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "endKey"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->isReverse()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "isReverse"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xc8

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "limit"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mic/open/pdc/apps/%s/spaces/%s/records/index"

    invoke-static {p1, v0, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    const-string v2, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseFetchRecordsByIndexResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetUrl(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;
    .registers 10

    new-instance p1, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    sget-object v2, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    const-string v1, "方法未实现"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IZJ)V

    throw p1
.end method

.method public getCreateJson(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lorg/json/JSONObject;
    .registers 3

    new-instance p1, Ljava/lang/NoSuchMethodError;

    const-string v0, "OpenPDC doesn\'t support batch operations"

    invoke-direct {p1, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDeleteJson(Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Lorg/json/JSONObject;
    .registers 3

    new-instance p1, Ljava/lang/NoSuchMethodError;

    const-string v0, "OpenPDC doesn\'t support batch operations"

    invoke-direct {p1, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSpaceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateJson(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lorg/json/JSONObject;
    .registers 3

    new-instance p1, Ljava/lang/NoSuchMethodError;

    const-string v0, "OpenPDC doesn\'t support batch operations"

    invoke-direct {p1, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public requestDownload(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;
    .registers 13

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    const-string v1, "clientId"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    const-string v1, "token"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->type:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mic/open/pdc/apps/%s/spaces/%s/records/assets/%s"

    invoke-static {p1, v0, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object p2, p2, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->assetID:Ljava/lang/String;

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :try_start_50
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    const-string v2, "GET"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;

    iget-boolean v1, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    iget-object v2, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget v8, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->code:I

    iget-wide v5, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J

    iget-object v7, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    iget-object v9, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    move-object v0, p2

    move v4, v8

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;ILorg/json/JSONObject;)V
    :try_end_6f
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_50 .. :try_end_6f} :catch_70

    return-object p2

    :catch_70
    move-exception p1

    const-string p2, "OpenPdcSyncServerAdapter"

    const-string v0, "requestDownload SyncException"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    const-string v0, "SyncException in requestDownload"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public requestUploadAsset(Ljava/lang/String;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;
    .registers 14

    const-string v0, "OpenPdcSyncServerAdapter"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    const-string v2, "clientId"

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/mic/open/pdc/apps/%s/spaces/%s/records/assets/upload"

    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :try_start_3d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "storage"

    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->toJsonObject()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "type"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    const-string v3, "POST"

    const/4 v5, 0x0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;

    iget-boolean v2, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    iget-object v3, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->description:Ljava/lang/String;

    iget-object v4, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    iget v9, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->code:I

    iget-wide v6, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J

    iget-object v8, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    iget-object v10, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    move-object v1, p2

    move v5, v9

    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;ILorg/json/JSONObject;)V
    :try_end_73
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_3d .. :try_end_73} :catch_82
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_73} :catch_74

    return-object p2

    :catch_74
    move-exception p1

    const-string p2, "JSONException in requestUploadAsset"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    const-string v0, "JSONException in getAssetRequsetUploadBodyJson"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_82
    move-exception p1

    const-string p2, "requestUploadAsset SyncException"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    const-string v0, "SyncException in requestUploadAsset"

    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public update(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 8

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    const-string v1, "clientId"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    const-string v1, "token"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getUpdateRequestPath(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getUpdateBodyJson(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v2, "PUT"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseUploadResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    return-object p1
.end method
