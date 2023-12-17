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
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->eTag:J

    .line 6
    iput-object p3, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->id:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->uniqueKey:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->parentId:Ljava/lang/String;

    .line 12
    iput-object p6, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->type:Ljava/lang/String;

    .line 14
    iput-object p7, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;

    .line 16
    iput-object p8, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    .line 18
    iput-object p9, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 15

    .line 1
    instance-of v0, p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    const/4 v0, 0x1

    .line 8
    if-ne p0, p1, :cond_a

    .line 10
    return v0

    .line 11
    :cond_a
    check-cast p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 13
    const/16 v2, 0x8

    .line 15
    new-array v3, v2, [Ljava/lang/Object;

    .line 17
    iget-wide v4, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->eTag:J

    .line 19
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    move-result-object v4

    .line 23
    aput-object v4, v3, v1

    .line 25
    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->id:Ljava/lang/String;

    .line 27
    aput-object v4, v3, v0

    .line 29
    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->uniqueKey:Ljava/lang/String;

    .line 31
    const/4 v5, 0x2

    .line 32
    aput-object v4, v3, v5

    .line 34
    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->parentId:Ljava/lang/String;

    .line 36
    const/4 v6, 0x3

    .line 37
    aput-object v4, v3, v6

    .line 39
    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->type:Ljava/lang/String;

    .line 41
    const/4 v7, 0x4

    .line 42
    aput-object v4, v3, v7

    .line 44
    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;

    .line 46
    const/4 v8, 0x5

    .line 47
    aput-object v4, v3, v8

    .line 49
    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    .line 51
    const/4 v9, 0x6

    .line 52
    aput-object v4, v3, v9

    .line 54
    iget-object v4, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    .line 56
    const/4 v10, 0x7

    .line 57
    aput-object v4, v3, v10

    .line 59
    new-array v2, v2, [Ljava/lang/Object;

    .line 61
    iget-wide v11, p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;->eTag:J

    .line 63
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    move-result-object v4

    .line 67
    aput-object v4, v2, v1

    .line 69
    iget-object v1, p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;->id:Ljava/lang/String;

    .line 71
    aput-object v1, v2, v0

    .line 73
    iget-object v0, p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;->uniqueKey:Ljava/lang/String;

    .line 75
    aput-object v0, v2, v5

    .line 77
    iget-object v0, p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;->parentId:Ljava/lang/String;

    .line 79
    aput-object v0, v2, v6

    .line 81
    iget-object v0, p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;->type:Ljava/lang/String;

    .line 83
    aput-object v0, v2, v7

    .line 85
    iget-object v0, p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;

    .line 87
    aput-object v0, v2, v8

    .line 89
    iget-object v0, p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    .line 91
    aput-object v0, v2, v9

    .line 93
    iget-object p1, p1, Lcom/xiaomi/opensdk/pdc/SyncRecord;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    .line 95
    aput-object p1, v2, v10

    .line 97
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result p1

    .line 101
    return p1
.end method

.method public hashCode()I
    .registers 4

    .line 1
    const/16 v0, 0x8

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->eTag:J

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 14
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->id:Ljava/lang/String;

    .line 16
    const/4 v2, 0x1

    .line 17
    aput-object v1, v0, v2

    .line 19
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->uniqueKey:Ljava/lang/String;

    .line 21
    const/4 v2, 0x2

    .line 22
    aput-object v1, v0, v2

    .line 24
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->parentId:Ljava/lang/String;

    .line 26
    const/4 v2, 0x3

    .line 27
    aput-object v1, v0, v2

    .line 29
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->type:Ljava/lang/String;

    .line 31
    const/4 v2, 0x4

    .line 32
    aput-object v1, v0, v2

    .line 34
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;

    .line 36
    const/4 v2, 0x5

    .line 37
    aput-object v1, v0, v2

    .line 39
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    .line 41
    const/4 v2, 0x6

    .line 42
    aput-object v1, v0, v2

    .line 44
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    .line 46
    const/4 v2, 0x7

    .line 47
    aput-object v1, v0, v2

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 52
    move-result v0

    .line 53
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 1
    const-string v0, "eTag="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->eTag:J

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "; id="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->id:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "; uniqueKey="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->uniqueKey:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "; parentId="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->parentId:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, "; type="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->type:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "; status="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->status:Lcom/xiaomi/opensdk/pdc/Constants$RecordStatus;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, "; content="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->contentJson:Lorg/json/JSONObject;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/SyncRecord;->assetEntities:[Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    .line 74
    if-eqz v1, :cond_5c

    .line 76
    array-length v2, v1

    .line 77
    const/4 v3, 0x0

    .line 78
    :goto_4d
    if-ge v3, v2, :cond_61

    .line 80
    aget-object v4, v1, v3

    .line 82
    const-string v5, "; asset="

    .line 84
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 92
    goto :goto_4d

    .line 93
    :cond_5c
    const-string v1, "; no assets"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 102
    return-object v0
.end method
