.class final Lcom/bumptech/glide/load/engine/DataCacheKey;
.super Ljava/lang/Object;
.source "DataCacheKey.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final signature:Lcom/bumptech/glide/load/Key;

.field private final sourceKey:Lcom/bumptech/glide/load/Key;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DataCacheKey;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DataCacheKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1c

    .line 6
    check-cast p1, Lcom/bumptech/glide/load/engine/DataCacheKey;

    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheKey;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 10
    iget-object v2, p1, Lcom/bumptech/glide/load/engine/DataCacheKey;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 12
    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1c

    .line 18
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 20
    iget-object p1, p1, Lcom/bumptech/glide/load/engine/DataCacheKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 22
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1c

    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_1c
    return v1
.end method

.method public getSourceKey()Lcom/bumptech/glide/load/Key;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheKey;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheKey;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 3
    invoke-interface {v0}, Lcom/bumptech/glide/load/Key;->hashCode()I

    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DataCacheKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 11
    invoke-interface {v1}, Lcom/bumptech/glide/load/Key;->hashCode()I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "DataCacheKey{sourceKey="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DataCacheKey;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", signature="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DataCacheKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const/16 v1, 0x7d

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheKey;->sourceKey:Lcom/bumptech/glide/load/Key;

    .line 3
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DataCacheKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 8
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 11
    return-void
.end method
