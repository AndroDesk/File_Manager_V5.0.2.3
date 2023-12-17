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
.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    .line 6
    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 14
    return-void
.end method

.method private getCreateBodyJson(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lorg/json/JSONObject;
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

    .line 83
    new-instance p1, Lorg/json/JSONObject;

    .line 85
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 88
    const-string v1, "record"

    .line 90
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5c} :catch_5d

    .line 93
    return-object p1

    .line 94
    :catch_5d
    move-exception p1

    .line 95
    const-string v0, "OpenPdcSyncServerAdapter"

    .line 97
    const-string v1, "getCreateRecordJson error"

    .line 99
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 104
    invoke-direct {p1, v1}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p1
.end method

.method private getCreateRequestPath()Ljava/lang/String;
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 15
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 22
    const-string v1, "/mic/open/pdc/apps/%s/spaces/%s/records"

    .line 24
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method private getDeleteRequestPath(Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Ljava/lang/String;
    .registers 5

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 15
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 22
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getId()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    const/4 v1, 0x2

    .line 31
    aput-object p1, v0, v1

    .line 33
    const-string p1, "/mic/open/pdc/apps/%s/spaces/%s/records/%s"

    .line 35
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method private getFullHost()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "https://"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    .line 9
    if-nez v1, :cond_d

    .line 11
    const-string v1, "micpdc.openapi.xiaomi.net"

    .line 13
    goto :goto_11

    .line 14
    :cond_d
    invoke-interface {v1}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;->getHost()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method private getUpdateBodyJson(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lorg/json/JSONObject;
    .registers 7

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
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

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
    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    :cond_4b
    const-string v1, "status"

    .line 78
    const-string v2, "normal"

    .line 80
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    new-instance v1, Lorg/json/JSONObject;

    .line 85
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 88
    const-string v2, "eTag"

    .line 90
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getETag()J

    .line 93
    move-result-wide v3

    .line 94
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 97
    const-string p1, "record"

    .line 99
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_65} :catch_66

    .line 102
    return-object v1

    .line 103
    :catch_66
    move-exception p1

    .line 104
    const-string v0, "OpenPdcSyncServerAdapter"

    .line 106
    const-string v1, "getUpdateBodyJson error"

    .line 108
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    new-instance p1, Lcom/xiaomi/opensdk/pdc/SyncException;

    .line 113
    invoke-direct {p1, v1}, Lcom/xiaomi/opensdk/pdc/SyncException;-><init>(Ljava/lang/String;)V

    .line 116
    throw p1
.end method

.method private getUpdateRequestPath(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Ljava/lang/String;
    .registers 5

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 15
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 22
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->getId()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    const/4 v1, 0x2

    .line 31
    aput-object p1, v0, v1

    .line 33
    const-string p1, "/mic/open/pdc/apps/%s/spaces/%s/records/%s"

    .line 35
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method


# virtual methods
.method public batchUpload(Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;)Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;
    .registers 11

    .line 1
    new-instance v8, Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 6
    move-result v0

    .line 7
    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_a
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_22

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/xiaomi/opensdk/pdc/UploadOperation;

    .line 23
    invoke-interface {v1}, Lcom/xiaomi/opensdk/pdc/SyncOperation;->execute()Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    .line 29
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_a

    .line 35
    :cond_22
    new-instance p1, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;

    .line 37
    const/4 v1, 0x1

    .line 38
    const/4 v2, 0x0

    .line 39
    sget-object v3, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->OK:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 41
    const/4 v4, 0x0

    .line 42
    const-wide/16 v5, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    move-object v0, p1

    .line 46
    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;Ljava/util/ArrayList;)V

    .line 49
    return-object p1
.end method

.method public commitAsset(Ljava/lang/String;Lcom/xiaomi/opensdk/file/model/CommitParameter;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;
    .registers 14

    .line 1
    const-string v0, "OpenPdcSyncServerAdapter"

    .line 3
    new-instance v4, Ljava/util/HashMap;

    .line 5
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    .line 10
    const-string v2, "clientId"

    .line 12
    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    .line 17
    const-string v2, "token"

    .line 19
    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    const-string v3, "/mic/open/pdc/apps/%s/spaces/%s/records/assets/commit"

    .line 33
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x2

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    .line 40
    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 42
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    const/4 v5, 0x0

    .line 47
    aput-object v3, v2, v5

    .line 49
    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 51
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    const/4 v5, 0x1

    .line 56
    aput-object v3, v2, v5

    .line 58
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    :try_start_3d
    new-instance v1, Lorg/json/JSONObject;

    .line 64
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    const-string v3, "storage"

    .line 69
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/CommitParameter;->toJsonObject()Lorg/json/JSONObject;

    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string p2, "type"

    .line 78
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    iget-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    .line 83
    const-string v3, "POST"

    .line 85
    const/4 v5, 0x0

    .line 86
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 89
    move-result-object v6

    .line 90
    move-object v1, p1

    .line 91
    invoke-static/range {v1 .. v6}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    .line 94
    move-result-object p1

    .line 95
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;

    .line 97
    iget-boolean v2, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    .line 99
    iget-object v3, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->description:Ljava/lang/String;

    .line 101
    iget-object v4, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 103
    iget v9, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->code:I

    .line 105
    iget-wide v6, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J

    .line 107
    iget-object v8, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    .line 109
    iget-object v10, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 111
    move-object v1, p2

    .line 112
    move v5, v9

    .line 113
    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;ILorg/json/JSONObject;)V
    :try_end_73
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_3d .. :try_end_73} :catch_82
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_73} :catch_74

    .line 116
    return-object p2

    .line 117
    :catch_74
    move-exception p1

    .line 118
    const-string p2, "JSONException in requestUploadAsset"

    .line 120
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    .line 125
    const-string v0, "JSONException in getAssetRequsetUploadBodyJson"

    .line 127
    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    throw p2

    .line 131
    :catch_82
    move-exception p1

    .line 132
    const-string p2, "commitAsset SyncException"

    .line 134
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    .line 139
    const-string v0, "SyncException in commitAsset"

    .line 141
    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    throw p2
.end method

.method public create(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 8

    .line 1
    new-instance v3, Ljava/util/HashMap;

    .line 3
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    .line 8
    const-string v1, "clientId"

    .line 10
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    .line 15
    const-string v1, "token"

    .line 17
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getCreateRequestPath()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getCreateBodyJson(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lorg/json/JSONObject;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 52
    move-result-object v5

    .line 53
    const-string v2, "POST"

    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseUploadResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method

.method public delete(Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 8

    .line 1
    new-instance v3, Ljava/util/HashMap;

    .line 3
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    .line 8
    const-string v1, "clientId"

    .line 10
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    .line 15
    const-string v1, "token"

    .line 17
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getETag()J

    .line 23
    move-result-wide v0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string v1, "eTag"

    .line 30
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->getType()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    const-string v1, "type"

    .line 39
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getDeleteRequestPath(Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    .line 67
    const-string v2, "DELETE"

    .line 69
    const/4 v4, 0x0

    .line 70
    const/4 v5, 0x0

    .line 71
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseUploadResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    .line 78
    move-result-object p1

    .line 79
    return-object p1
.end method

.method public download(Lcom/xiaomi/opensdk/pdc/DownloadOperation;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;
    .registers 8

    .line 1
    new-instance v3, Ljava/util/HashMap;

    .line 3
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    .line 8
    const-string v1, "clientId"

    .line 10
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    .line 15
    const-string v1, "token"

    .line 17
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;->getSyncToken()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_22

    .line 26
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;->getSyncToken()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    const-string v0, "syncToken"

    .line 32
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_22
    const/16 p1, 0xc8

    .line 37
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    const-string v0, "limit"

    .line 43
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    const-string v1, "/mic/open/pdc/apps/%s/spaces/%s/records"

    .line 57
    invoke-static {p1, v0, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    const/4 v0, 0x2

    .line 62
    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    const/4 v1, 0x0

    .line 65
    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 67
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    aput-object v2, v0, v1

    .line 73
    const/4 v1, 0x1

    .line 74
    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 76
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    aput-object v2, v0, v1

    .line 82
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    .line 88
    const/4 v4, 0x0

    .line 89
    const/4 v5, 0x0

    .line 90
    const-string v2, "GET"

    .line 92
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseDownloadResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;

    .line 99
    move-result-object p1

    .line 100
    return-object p1
.end method

.method public fetchChildren(Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;
    .registers 8

    .line 1
    new-instance v3, Ljava/util/HashMap;

    .line 3
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    .line 8
    const-string v1, "clientId"

    .line 10
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    .line 15
    const-string v1, "token"

    .line 17
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->getParentType()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "type"

    .line 26
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->getCursor()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2b

    .line 35
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->getCursor()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    const-string v1, "cursor"

    .line 41
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_2b
    const/16 v0, 0xc8

    .line 46
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    const-string v1, "limit"

    .line 52
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    const-string v2, "/mic/open/pdc/apps/%s/spaces/%s/records/%s/children"

    .line 66
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    const/4 v1, 0x3

    .line 71
    new-array v1, v1, [Ljava/lang/Object;

    .line 73
    const/4 v2, 0x0

    .line 74
    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 76
    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 80
    aput-object v4, v1, v2

    .line 82
    const/4 v2, 0x1

    .line 83
    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 85
    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v4

    .line 89
    aput-object v4, v1, v2

    .line 91
    const/4 v2, 0x2

    .line 92
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->getParentId()Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    aput-object p1, v1, v2

    .line 102
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    .line 108
    const/4 v4, 0x0

    .line 109
    const/4 v5, 0x0

    .line 110
    const-string v2, "GET"

    .line 112
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    .line 115
    move-result-object p1

    .line 116
    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseFetchChildrenResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

    .line 119
    move-result-object p1

    .line 120
    return-object p1
.end method

.method public fetchRecord(Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
    .registers 8

    .line 1
    new-instance v3, Ljava/util/HashMap;

    .line 3
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    .line 8
    const-string v1, "clientId"

    .line 10
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    .line 15
    const-string v1, "token"

    .line 17
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    const-string v2, "/mic/open/pdc/apps/%s/spaces/%s/records/%s"

    .line 31
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x3

    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 40
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    const/4 v4, 0x0

    .line 45
    aput-object v2, v1, v4

    .line 47
    iget-object v2, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 49
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    const/4 v4, 0x1

    .line 54
    aput-object v2, v1, v4

    .line 56
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->getId()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    const/4 v2, 0x2

    .line 65
    aput-object p1, v1, v2

    .line 67
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    .line 73
    const-string v2, "GET"

    .line 75
    const/4 v4, 0x0

    .line 76
    const/4 v5, 0x0

    .line 77
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseFetchRecordResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    .line 84
    move-result-object p1

    .line 85
    return-object p1
.end method

.method public fetchRecordsByIndex(Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
    .registers 8

    .line 1
    new-instance v3, Ljava/util/HashMap;

    .line 3
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    .line 8
    const-string v1, "clientId"

    .line 10
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    .line 15
    const-string v1, "token"

    .line 17
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->getIndexName()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "indexName"

    .line 26
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->getBeginKey()Lorg/json/JSONObject;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    const-string v1, "beginKey"

    .line 39
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->getEndKey()Lorg/json/JSONObject;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    const-string v1, "endKey"

    .line 52
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->isReverse()Z

    .line 58
    move-result p1

    .line 59
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    const-string v0, "isReverse"

    .line 65
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const/16 p1, 0xc8

    .line 70
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    const-string v0, "limit"

    .line 76
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    const-string v1, "/mic/open/pdc/apps/%s/spaces/%s/records/index"

    .line 90
    invoke-static {p1, v0, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    const/4 v0, 0x2

    .line 95
    new-array v0, v0, [Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 99
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    const/4 v2, 0x0

    .line 104
    aput-object v1, v0, v2

    .line 106
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 108
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    const/4 v2, 0x1

    .line 113
    aput-object v1, v0, v2

    .line 115
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    .line 121
    const-string v2, "GET"

    .line 123
    const/4 v4, 0x0

    .line 124
    const/4 v5, 0x0

    .line 125
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    .line 128
    move-result-object p1

    .line 129
    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseFetchRecordsByIndexResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

    .line 132
    move-result-object p1

    .line 133
    return-object p1
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getAssetUrl(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;
    .registers 10

    .line 1
    new-instance p1, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    .line 3
    sget-object v2, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 5
    const-string v1, "方法未实现"

    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const-wide/16 v5, 0x0

    .line 11
    move-object v0, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IZJ)V

    .line 15
    throw p1
.end method

.method public getCreateJson(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lorg/json/JSONObject;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/NoSuchMethodError;

    .line 3
    const-string v0, "OpenPDC doesn\'t support batch operations"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public getDeleteJson(Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Lorg/json/JSONObject;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/NoSuchMethodError;

    .line 3
    const-string v0, "OpenPDC doesn\'t support batch operations"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public getSpaceId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getUpdateJson(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lorg/json/JSONObject;
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/NoSuchMethodError;

    .line 3
    const-string v0, "OpenPDC doesn\'t support batch operations"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method public requestDownload(Ljava/lang/String;Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;
    .registers 13

    .line 1
    new-instance v3, Ljava/util/HashMap;

    .line 3
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    .line 8
    const-string v1, "clientId"

    .line 10
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    .line 15
    const-string v1, "token"

    .line 17
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p2, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->type:Ljava/lang/String;

    .line 22
    const-string v1, "type"

    .line 24
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "id"

    .line 29
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    const-string v1, "/mic/open/pdc/apps/%s/spaces/%s/records/assets/%s"

    .line 43
    invoke-static {p1, v0, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    const/4 v0, 0x3

    .line 48
    new-array v0, v0, [Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 52
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x0

    .line 57
    aput-object v1, v0, v2

    .line 59
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 61
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    const/4 v2, 0x1

    .line 66
    aput-object v1, v0, v2

    .line 68
    iget-object p2, p2, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->assetID:Ljava/lang/String;

    .line 70
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    const/4 v1, 0x2

    .line 75
    aput-object p2, v0, v1

    .line 77
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    :try_start_50
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    .line 83
    const-string v2, "GET"

    .line 85
    const/4 v4, 0x0

    .line 86
    const/4 v5, 0x0

    .line 87
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    .line 90
    move-result-object p1

    .line 91
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;

    .line 93
    iget-boolean v1, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    .line 95
    iget-object v2, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->description:Ljava/lang/String;

    .line 97
    iget-object v3, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 99
    iget v8, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->code:I

    .line 101
    iget-wide v5, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J

    .line 103
    iget-object v7, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    .line 105
    iget-object v9, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 107
    move-object v0, p2

    .line 108
    move v4, v8

    .line 109
    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;ILorg/json/JSONObject;)V
    :try_end_6f
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_50 .. :try_end_6f} :catch_70

    .line 112
    return-object p2

    .line 113
    :catch_70
    move-exception p1

    .line 114
    const-string p2, "OpenPdcSyncServerAdapter"

    .line 116
    const-string v0, "requestDownload SyncException"

    .line 118
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    .line 123
    const-string v0, "SyncException in requestDownload"

    .line 125
    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    throw p2
.end method

.method public requestUploadAsset(Ljava/lang/String;Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;)Lcom/xiaomi/opensdk/pdc/asset/AssetResult;
    .registers 14

    .line 1
    const-string v0, "OpenPdcSyncServerAdapter"

    .line 3
    new-instance v4, Ljava/util/HashMap;

    .line 5
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    .line 10
    const-string v2, "clientId"

    .line 12
    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    .line 17
    const-string v2, "token"

    .line 19
    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    const-string v3, "/mic/open/pdc/apps/%s/spaces/%s/records/assets/upload"

    .line 33
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x2

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    .line 40
    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mAppId:Ljava/lang/String;

    .line 42
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    const/4 v5, 0x0

    .line 47
    aput-object v3, v2, v5

    .line 49
    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mSpaceId:Ljava/lang/String;

    .line 51
    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    const/4 v5, 0x1

    .line 56
    aput-object v3, v2, v5

    .line 58
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    :try_start_3d
    new-instance v1, Lorg/json/JSONObject;

    .line 64
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 67
    const-string v3, "storage"

    .line 69
    invoke-virtual {p2}, Lcom/xiaomi/opensdk/file/model/RequestUploadParameter;->toJsonObject()Lorg/json/JSONObject;

    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string p2, "type"

    .line 78
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    iget-object p1, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    .line 83
    const-string v3, "POST"

    .line 85
    const/4 v5, 0x0

    .line 86
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 89
    move-result-object v6

    .line 90
    move-object v1, p1

    .line 91
    invoke-static/range {v1 .. v6}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    .line 94
    move-result-object p1

    .line 95
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;

    .line 97
    iget-boolean v2, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->isSuccess:Z

    .line 99
    iget-object v3, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->description:Ljava/lang/String;

    .line 101
    iget-object v4, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->errorType:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 103
    iget v9, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->code:I

    .line 105
    iget-wide v6, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->retryTime:J

    .line 107
    iget-object v8, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->result:Ljava/lang/String;

    .line 109
    iget-object v10, p1, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;->data:Lorg/json/JSONObject;

    .line 111
    move-object v1, p2

    .line 112
    move v5, v9

    .line 113
    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/opensdk/pdc/asset/AssetResult;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;ILorg/json/JSONObject;)V
    :try_end_73
    .catch Lcom/xiaomi/opensdk/pdc/SyncException; {:try_start_3d .. :try_end_73} :catch_82
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_73} :catch_74

    .line 116
    return-object p2

    .line 117
    :catch_74
    move-exception p1

    .line 118
    const-string p2, "JSONException in requestUploadAsset"

    .line 120
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    .line 125
    const-string v0, "JSONException in getAssetRequsetUploadBodyJson"

    .line 127
    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    throw p2

    .line 131
    :catch_82
    move-exception p1

    .line 132
    const-string p2, "requestUploadAsset SyncException"

    .line 134
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    new-instance p2, Lcom/xiaomi/opensdk/pdc/asset/AssetException;

    .line 139
    const-string v0, "SyncException in requestUploadAsset"

    .line 141
    invoke-direct {p2, v0, p1}, Lcom/xiaomi/opensdk/pdc/asset/AssetException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    throw p2
.end method

.method public update(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 8

    .line 1
    new-instance v3, Ljava/util/HashMap;

    .line 3
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mClientId:Ljava/lang/String;

    .line 8
    const-string v1, "clientId"

    .line 10
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mToken:Ljava/lang/String;

    .line 15
    const-string v1, "token"

    .line 17
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-direct {p0}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getFullHost()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getUpdateRequestPath(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->mEnvironment:Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter;->getUpdateBodyJson(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lorg/json/JSONObject;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 52
    move-result-object v5

    .line 53
    const-string v2, "PUT"

    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/OpenPdcRequest;->request(Lcom/xiaomi/opensdk/pdc/OpenPdcSyncServerAdapter$Environment;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;

    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/xiaomi/opensdk/pdc/OpenPdcUtils;->parseUploadResult(Lcom/xiaomi/opensdk/pdc/OpenPdcRequest$SyncOperationResult;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    .line 63
    move-result-object p1

    .line 64
    return-object p1
.end method
