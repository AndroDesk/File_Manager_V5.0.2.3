.class public Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
.super Ljava/lang/Object;
.source "PdcSyncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/PdcSyncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncRecordBuilder"
.end annotation


# instance fields
.field private assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

.field private contentJson:Lorg/json/JSONObject;

.field private eTag:J

.field private id:Ljava/lang/String;

.field private parentId:Ljava/lang/String;

.field private status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

.field private type:Ljava/lang/String;

.field private uniqueKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFrom(Lcom/xiaomi/opensdk/pdc/SyncRecord;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 4

    .line 1
    new-instance v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;

    .line 3
    invoke-direct {v0}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;-><init>()V

    .line 6
    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->eTag:J

    .line 8
    iput-wide v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->eTag:J

    .line 10
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->id:Ljava/lang/String;

    .line 12
    iput-object v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->id:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->uniqueKey:Ljava/lang/String;

    .line 16
    iput-object v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->uniqueKey:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->parentId:Ljava/lang/String;

    .line 20
    iput-object v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->parentId:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->type:Ljava/lang/String;

    .line 24
    iput-object v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->type:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;

    .line 28
    iput-object v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->contentJson:Lorg/json/JSONObject;

    .line 30
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    .line 32
    iput-object v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    .line 34
    iget-object p0, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    .line 36
    iput-object p0, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    .line 38
    return-object v0
.end method


# virtual methods
.method public build()Lcom/xiaomi/opensdk/pdc/SyncRecord;
    .registers 12

    .line 1
    new-instance v10, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 3
    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->eTag:J

    .line 5
    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->id:Ljava/lang/String;

    .line 7
    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->uniqueKey:Ljava/lang/String;

    .line 9
    iget-object v5, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->parentId:Ljava/lang/String;

    .line 11
    iget-object v6, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->type:Ljava/lang/String;

    .line 13
    iget-object v7, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->contentJson:Lorg/json/JSONObject;

    .line 15
    iget-object v8, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    .line 17
    iget-object v9, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    .line 19
    move-object v0, v10

    .line 20
    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/SyncRecord;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V

    .line 23
    return-object v10
.end method

.method public setAssetEntities([Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    .line 3
    return-object p0
.end method

.method public setContentJson(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->contentJson:Lorg/json/JSONObject;

    .line 3
    return-object p0
.end method

.method public setETag(J)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->eTag:J

    .line 3
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->id:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setParentId(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->parentId:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setStatus(Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    .line 3
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->type:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setUniqueKey(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->uniqueKey:Ljava/lang/String;

    .line 3
    return-object p0
.end method
