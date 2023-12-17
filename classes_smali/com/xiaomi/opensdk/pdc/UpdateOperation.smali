.class public final Lcom/xiaomi/opensdk/pdc/UpdateOperation;
.super Ljava/lang/Object;
.source "UpdateOperation.java"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/UploadOperation;


# instance fields
.field private final mAssetList:Lorg/json/JSONArray;

.field private final mContentJson:Lorg/json/JSONObject;

.field private final mETag:J

.field private final mId:Ljava/lang/String;

.field private mOperationJson:Lorg/json/JSONObject;

.field private final mParentId:Ljava/lang/String;

.field private final mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

.field private final mType:Ljava/lang/String;

.field private final mUniqueKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V
    .registers 19

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JLorg/json/JSONArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;JLorg/json/JSONArray;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mOperationJson:Lorg/json/JSONObject;

    if-eqz p1, :cond_25

    if-eqz p2, :cond_25

    if-eqz p3, :cond_25

    if-eqz p6, :cond_25

    const-wide/16 v0, -0x1

    cmp-long v0, p7, v0

    if-eqz v0, :cond_25

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mType:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mId:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mUniqueKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mParentId:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mContentJson:Lorg/json/JSONObject;

    iput-wide p7, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mETag:J

    iput-object p9, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mAssetList:Lorg/json/JSONArray;

    return-void

    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic execute()Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
    .registers 2

    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->execute()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->update(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public getAssetList()Lorg/json/JSONArray;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mAssetList:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getContentJson()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mContentJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getETag()J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mETag:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationJson()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mOperationJson:Lorg/json/JSONObject;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getUpdateJson(Lcom/xiaomi/opensdk/pdc/UpdateOperation;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mOperationJson:Lorg/json/JSONObject;

    :cond_c
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mOperationJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mParentId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerConnector()Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UpdateOperation;->mUniqueKey:Ljava/lang/String;

    return-object v0
.end method
