.class public final Lcom/xiaomi/opensdk/pdc/DeleteOperation;
.super Ljava/lang/Object;
.source "DeleteOperation.java"

# interfaces
.implements Lcom/xiaomi/opensdk/pdc/UploadOperation;


# instance fields
.field private final mETag:J

.field private final mId:Ljava/lang/String;

.field private mOperationJson:Lorg/json/JSONObject;

.field private final mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mOperationJson:Lorg/json/JSONObject;

    .line 7
    if-eqz p1, :cond_1b

    .line 9
    if-eqz p2, :cond_1b

    .line 11
    if-eqz p3, :cond_1b

    .line 13
    const-wide/16 v0, -0x1

    .line 15
    cmp-long v0, p4, v0

    .line 17
    if-eqz v0, :cond_1b

    .line 19
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    .line 21
    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mType:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mId:Ljava/lang/String;

    .line 25
    iput-wide p4, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mETag:J

    .line 27
    return-void

    .line 28
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    const-string p2, "null parameters"

    .line 32
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1
.end method


# virtual methods
.method public bridge synthetic execute()Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->execute()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->delete(Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public getETag()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mETag:J

    .line 3
    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getOperationJson()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mOperationJson:Lorg/json/JSONObject;

    .line 3
    if-nez v0, :cond_c

    .line 5
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    .line 7
    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getDeleteJson(Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Lorg/json/JSONObject;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mOperationJson:Lorg/json/JSONObject;

    .line 13
    :cond_c
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mOperationJson:Lorg/json/JSONObject;

    .line 15
    return-object v0
.end method

.method public getSyncServer()Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mType:Ljava/lang/String;

    .line 3
    return-object v0
.end method
