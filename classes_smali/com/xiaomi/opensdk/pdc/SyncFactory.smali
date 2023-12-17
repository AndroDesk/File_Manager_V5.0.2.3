.class public Lcom/xiaomi/opensdk/pdc/SyncFactory;
.super Ljava/lang/Object;
.source "SyncFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncFactory"


# instance fields
.field public final mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    return-void
.end method

.method private varargs getAssetJsonArray([Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lorg/json/JSONArray;
    .registers 12

    const/4 v0, 0x0

    const-string v1, "SyncFactory"

    if-nez p1, :cond_b

    const-string p1, "getAssetJsonArray() with null argument, handled."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_b
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    array-length v3, p1

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_37

    aget-object v5, p1, v4

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_1b
    const-string v7, "assetId"

    iget-object v8, v5, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->assetID:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "size"

    iget-wide v8, v5, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->size:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_2c} :catch_2d

    goto :goto_34

    :catch_2d
    move-exception v2

    const-string v5, "JSONException in getAssetJsonArray()"

    invoke-static {v1, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v0

    :goto_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_37
    return-object v2
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 14

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

    new-instance v6, Lcom/xiaomi/opensdk/pdc/DeleteOperation;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v6}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->execute()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;
    .registers 4

    new-instance v0, Lcom/xiaomi/opensdk/pdc/DownloadOperation;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/DownloadOperation;->execute()Lcom/xiaomi/opensdk/pdc/DownloadOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public fetchChildren(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;
    .registers 6

    new-instance v0, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation;->execute()Lcom/xiaomi/opensdk/pdc/FetchChildrenOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public fetchRecord(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
    .registers 4

    new-instance v0, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;->execute()Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public fetchRecordsByIndex(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;
    .registers 12

    new-instance v6, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    invoke-virtual {v6}, Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation;->execute()Lcom/xiaomi/opensdk/pdc/FetchRecordsByIndexOperation$Result;

    move-result-object p1

    return-object p1
.end method

.method public newBatchUploadOp()Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;
    .registers 3

    new-instance v0, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    invoke-direct {v0, v1}, Lcom/xiaomi/opensdk/pdc/BatchUploadOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;)V

    return-object v0
.end method

.method public newCreateOp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/CreateOperation;
    .registers 14

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

    return-object v8
.end method

.method public newDeleteOp(Ljava/lang/String;Ljava/lang/String;J)Lcom/xiaomi/opensdk/pdc/DeleteOperation;
    .registers 12

    new-instance v6, Lcom/xiaomi/opensdk/pdc/DeleteOperation;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncFactory;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v6
.end method

.method public newUpdateOp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)Lcom/xiaomi/opensdk/pdc/UpdateOperation;
    .registers 19

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

    return-object v11
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 19

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
