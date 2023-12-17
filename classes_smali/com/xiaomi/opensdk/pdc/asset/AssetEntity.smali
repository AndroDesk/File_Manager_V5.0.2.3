.class public Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;
.super Ljava/lang/Object;
.source "AssetEntity.java"


# instance fields
.field public final assetID:Ljava/lang/String;

.field public final existed:Z

.field public final size:J

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->type:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->assetID:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->size:J

    .line 6
    iput-boolean p5, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->existed:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1
    instance-of v0, p1, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_24

    .line 6
    check-cast p1, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;

    .line 8
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->type:Ljava/lang/String;

    .line 10
    iget-object v2, p1, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->type:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_24

    .line 18
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->assetID:Ljava/lang/String;

    .line 20
    iget-object v2, p1, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->assetID:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_24

    .line 28
    iget-wide v2, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->size:J

    .line 30
    iget-wide v4, p1, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->size:J

    .line 32
    cmp-long p1, v2, v4

    .line 34
    if-nez p1, :cond_24

    .line 36
    const/4 v1, 0x1

    .line 37
    :cond_24
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->toString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "AssetEntity [type="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->type:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", assetID="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->assetID:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", size="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-wide v1, p0, Lcom/xiaomi/opensdk/pdc/asset/AssetEntity;->size:J

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "]"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method
