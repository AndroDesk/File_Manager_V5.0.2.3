.class public Lcom/xiaomi/opensdk/pdc/SyncRecord;
.super Ljava/lang/Object;
.source "SyncRecord.java"


# instance fields
.field public final assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

.field public final contentJson:Lorg/json/JSONObject;

.field public final eTag:J

.field public final id:Ljava/lang/String;

.field public final parentId:Ljava/lang/String;

.field public final status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

.field public final type:Ljava/lang/String;

.field public final uniqueKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->eTag:J

    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->id:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->uniqueKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->parentId:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->type:Ljava/lang/String;

    iput-object p7, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;

    iput-object p8, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    iput-object p9, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 15

    instance-of v0, p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    :cond_a
    check-cast p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->eTag:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->id:Ljava/lang/String;

    aput-object v4, v3, v0

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->uniqueKey:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->parentId:Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->type:Ljava/lang/String;

    const/4 v7, 0x4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;

    const/4 v8, 0x5

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    const/4 v9, 0x6

    aput-object v4, v3, v9

    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    const/4 v10, 0x7

    aput-object v4, v3, v10

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v11, p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;->eTag:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v1

    iget-object v1, p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;->id:Ljava/lang/String;

    aput-object v1, v2, v0

    iget-object v0, p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;->uniqueKey:Ljava/lang/String;

    aput-object v0, v2, v5

    iget-object v0, p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;->parentId:Ljava/lang/String;

    aput-object v0, v2, v6

    iget-object v0, p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;->type:Ljava/lang/String;

    aput-object v0, v2, v7

    iget-object v0, p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;

    aput-object v0, v2, v8

    iget-object v0, p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    aput-object v0, v2, v9

    iget-object p1, p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    aput-object p1, v2, v10

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->eTag:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->id:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->uniqueKey:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->parentId:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->type:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const-string v0, "eTag="

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->eTag:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; uniqueKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->uniqueKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; parentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    if-eqz v1, :cond_5c

    array-length v2, v1

    const/4 v3, 0x0

    :goto_4d
    if-ge v3, v2, :cond_61

    aget-object v4, v1, v3

    const-string v5, "; asset="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    :cond_5c
    const-string v1, "; no assets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
