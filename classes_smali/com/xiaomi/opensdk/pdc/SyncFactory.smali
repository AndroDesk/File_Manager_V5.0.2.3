.class public Lcom/xiaomi/opensdk/pdc/SyncFactory;
.super Ljava/lang/Object;
.source "SyncFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncFactory"


# instance fields
.field public final mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    .line 6
    return-void
.end method

.method private varargs getAssetJsonArray([Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lorg/json/JSONArray;
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "SyncFactory"

    .line 4
    if-nez p1, :cond_b

    .line 6
    const-string p1, "getAssetJsonArray() with null argument, handled."

    .line 8
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-object v0

    .line 12
    :cond_b
    new-instance v2, Lorg/json/JSONArray;

    .line 14
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 17
    array-length v3, p1

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_12
    if-ge v4, v3, :cond_37

    .line 21
    aget-object v5, p1, v4

    .line 23
    new-instance v6, Lorg/json/JSONObject;

    .line 25
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 28
    :try_start_1b
    const-string v7, "assetId"

    .line 30
    iget-object v8, v5, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->assetID:Ljava/lang/String;

    .line 32
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v7, "size"

    .line 37
    iget-wide v8, v5, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->size:J

    .line 39
    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_2c} :catch_2d

    .line 45
    goto :goto_34

    .line 46
    :catch_2d
    move-exception v2

    .line 47
    const-string v5, "JSONException in getAssetJsonArray()"

    .line 49
    invoke-static {v1, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    move-object v2, v0

    .line 53
    :goto_34
    add-int/lit8 v4, v4, 0x1

    .line 55
    goto :goto_12

    .line 56
    :cond_37
    return-object v2
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 14

    .line 1
    new-instance v7, Lcom/xiaomi/opensdk/pdc/CreateOperation;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/CreateOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v7}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->execute()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public varargs create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 16

    .line 2
    new-instance v8, Lcom/xiaomi/opensdk/pdc/CreateOperation;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    invoke-direct {p0, p6}, Lcom/xiaomi/opensdk/pdc/SyncFactory;->getAssetJsonArray([Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lorg/json/JSONArray;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/opensdk/pdc/CreateOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    invoke-virtual {v8}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->execute()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 12

    .line 1
    new-instance v6, Lcom/xiaomi/opensdk/pdc/DeleteOperation;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    .line 5
    move-object v0, v6

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-wide v4, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    invoke-virtual {v6}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->execute()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public download(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;
    .registers 4

    .line 1
    new-instance v0, Lcom/xiaomi/opensdk/pdc/DownloadOperation;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    .line 5
    invoke-direct {v0, v1, p1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;->execute()Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public fetchChildren(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;
    .registers 6

    .line 1
    new-instance v0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    .line 5
    invoke-direct {v0, v1, p1, p2, p3}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->execute()Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public fetchRecord(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
    .registers 4

    .line 1
    new-instance v0, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    .line 5
    invoke-direct {v0, v1, p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->execute()Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public fetchRecordsByIndex(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
    .registers 12

    .line 1
    new-instance v6, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    .line 5
    move-object v0, v6

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move v5, p4

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 13
    invoke-virtual {v6}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->execute()Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public newBatchUploadOp()Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;
    .registers 3

    .line 1
    new-instance v0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    .line 5
    invoke-direct {v0, v1}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;)V

    .line 8
    return-object v0
.end method

.method public newCreateOp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/CreateOperation;
    .registers 14

    .line 1
    new-instance v7, Lcom/xiaomi/opensdk/pdc/CreateOperation;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/opensdk/pdc/CreateOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v7
.end method

.method public varargs newCreateOp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/CreateOperation;
    .registers 16

    .line 2
    new-instance v8, Lcom/xiaomi/opensdk/pdc/CreateOperation;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    .line 3
    invoke-direct {p0, p6}, Lcom/xiaomi/opensdk/pdc/SyncFactory;->getAssetJsonArray([Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lorg/json/JSONArray;

    move-result-object v7

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/opensdk/pdc/CreateOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    return-object v8
.end method

.method public newDeleteOp(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaomi/opensdk/pdc/DeleteOperation;
    .registers 12

    .line 1
    new-instance v6, Lcom/xiaomi/opensdk/pdc/DeleteOperation;

    .line 3
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    .line 5
    move-object v0, v6

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-wide v4, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    return-object v6
.end method

.method public newUpdateOp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)Lcom/xiaomi/opensdk/pdc/UpdateOperation;
    .registers 19

    .line 1
    new-instance v9, Lcom/xiaomi/opensdk/pdc/UpdateOperation;

    move-object v10, p0

    iget-object v1, v10, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-object v9
.end method

.method public varargs newUpdateOp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/UpdateOperation;
    .registers 21

    move-object v0, p0

    .line 2
    new-instance v11, Lcom/xiaomi/opensdk/pdc/UpdateOperation;

    iget-object v2, v0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    move-object/from16 v1, p8

    .line 3
    invoke-direct {p0, v1}, Lcom/xiaomi/opensdk/pdc/SyncFactory;->getAssetJsonArray([Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lorg/json/JSONArray;

    move-result-object v10

    move-object v1, v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JLorg/json/JSONArray;)V

    return-object v11
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 19

    .line 1
    new-instance v9, Lcom/xiaomi/opensdk/pdc/UpdateOperation;

    move-object v10, p0

    iget-object v1, v10, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V

    invoke-virtual {v9}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->execute()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public varargs update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 21

    move-object v0, p0

    .line 2
    new-instance v11, Lcom/xiaomi/opensdk/pdc/UpdateOperation;

    iget-object v2, v0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    move-object/from16 v1, p8

    invoke-direct {p0, v1}, Lcom/xiaomi/opensdk/pdc/SyncFactory;->getAssetJsonArray([Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lorg/json/JSONArray;

    move-result-object v10

    move-object v1, v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JLorg/json/JSONArray;)V

    invoke-virtual {v11}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->execute()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v1

    return-object v1
.end method
