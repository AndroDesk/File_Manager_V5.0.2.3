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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFrom(Lcom/xiaomi/opensdk/pdc/SyncRecord;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 4

    new-instance v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;

    invoke-direct {v0}, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;-><init>()V

    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->eTag:J

    iput-wide v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->eTag:J

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->uniqueKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->uniqueKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->parentId:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->parentId:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->contentJson:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    iput-object v1, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    iget-object p0, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    iput-object p0, v0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/xiaomi/opensdk/pdc/SyncRecord;
    .registers 12

    new-instance v10, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->eTag:J

    iget-object v3, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->uniqueKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->parentId:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->type:Ljava/lang/String;

    iget-object v7, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->contentJson:Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    iget-object v9, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/opensdk/pdc/SyncRecord;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V

    return-object v10
.end method

.method public setAssetEntities([Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    return-object p0
.end method

.method public setContentJson(Lorg/json/JSONObject;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->contentJson:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setETag(J)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 3

    iput-wide p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->eTag:J

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setParentId(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public setStatus(Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setUniqueKey(Ljava/lang/String;)Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/PdcSyncer$SyncRecordBuilder;->uniqueKey:Ljava/lang/String;

    return-object p0
.end method
