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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mOperationJson:Lorg/json/JSONObject;

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    if-eqz p3, :cond_1b

    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-eqz v0, :cond_1b

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mType:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mId:Ljava/lang/String;

    iput-wide p4, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mETag:J

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

    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->execute()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->delete(Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;

    move-result-object v0

    return-object v0
.end method

.method public getETag()J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mETag:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationJson()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mOperationJson:Lorg/json/JSONObject;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    invoke-interface {v0, p0}, Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;->getDeleteJson(Lcom/xiaomi/opensdk/pdc/DeleteOperation;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mOperationJson:Lorg/json/JSONObject;

    :cond_c
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mOperationJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getSyncServer()Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mSyncServer:Lcom/xiaomi/opensdk/pdc/SyncServerAdapter;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/DeleteOperation;->mType:Ljava/lang/String;

    return-object v0
.end method
