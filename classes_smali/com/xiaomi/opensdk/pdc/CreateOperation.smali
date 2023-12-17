.class public final Lcom/xiaomi/opensdk/pdc/CreateOperation;
.super Ljava/lang/Object;
.source "CreateOperation.java"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/UploadOperation;


# instance fields
.field private final mAssetList:Lorg/json/JSONArray;

.field private final mContentJson:Lorg/json/JSONObject;

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

.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/opensdk/pdc/CreateOperation;-><init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mOperationJson:Lorg/json/JSONObject;

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    if-eqz p6, :cond_1b

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mType:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mId:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mUniqueKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mParentId:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mContentJson:Lorg/json/JSONObject;

    iput-object p7, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mAssetList:Lorg/json/JSONArray;

    return-void

    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null parameters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic execute()Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
    .registers 2

    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/CreateOperation;->execute()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->create(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public getAssetList()Lorg/json/JSONArray;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mAssetList:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getContentJson()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mContentJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationJson()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mOperationJson:Lorg/json/JSONObject;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getCreateJson(Lcom/xiaomi/opensdk/pdc/CreateOperation;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mOperationJson:Lorg/json/JSONObject;

    :cond_c
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mOperationJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mParentId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerConnector()Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/CreateOperation;->mUniqueKey:Ljava/lang/String;

    return-object v0
.end method
