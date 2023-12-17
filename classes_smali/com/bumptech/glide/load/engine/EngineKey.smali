.class Lcom/bumptech/glide/load/engine/EngineKey;
.super Ljava/lang/Object;
.source "EngineKey.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private hashCode:I

.field private final height:I

.field private final model:Ljava/lang/Object;

.field private final options:Lcom/bumptech/glide/load/Options;

.field private final resourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final signature:Lcom/bumptech/glide/load/Key;

.field private final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final transformations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/Options;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/Key;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Options;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->model:Ljava/lang/Object;

    .line 10
    const-string p1, "Signature must not be null"

    .line 12
    invoke-static {p2, p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/bumptech/glide/load/Key;

    .line 18
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 20
    iput p3, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    .line 22
    iput p4, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    .line 24
    invoke-static {p5}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/util/Map;

    .line 30
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformations:Ljava/util/Map;

    .line 32
    const-string p1, "Resource class must not be null"

    .line 34
    invoke-static {p6, p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/Class;

    .line 40
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->resourceClass:Ljava/lang/Class;

    .line 42
    const-string p1, "Transcode class must not be null"

    .line 44
    invoke-static {p7, p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Ljava/lang/Class;

    .line 50
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcodeClass:Ljava/lang/Class;

    .line 52
    invoke-static {p8}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/bumptech/glide/load/Options;

    .line 58
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->options:Lcom/bumptech/glide/load/Options;

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/EngineKey;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_50

    .line 6
    check-cast p1, Lcom/bumptech/glide/load/engine/EngineKey;

    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->model:Ljava/lang/Object;

    .line 10
    iget-object v2, p1, Lcom/bumptech/glide/load/engine/EngineKey;->model:Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_50

    .line 18
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 20
    iget-object v2, p1, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 22
    invoke-interface {v0, v2}, Lcom/bumptech/glide/load/Key;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_50

    .line 28
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    .line 30
    iget v2, p1, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    .line 32
    if-ne v0, v2, :cond_50

    .line 34
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    .line 36
    iget v2, p1, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    .line 38
    if-ne v0, v2, :cond_50

    .line 40
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformations:Ljava/util/Map;

    .line 42
    iget-object v2, p1, Lcom/bumptech/glide/load/engine/EngineKey;->transformations:Ljava/util/Map;

    .line 44
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_50

    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->resourceClass:Ljava/lang/Class;

    .line 52
    iget-object v2, p1, Lcom/bumptech/glide/load/engine/EngineKey;->resourceClass:Ljava/lang/Class;

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_50

    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcodeClass:Ljava/lang/Class;

    .line 62
    iget-object v2, p1, Lcom/bumptech/glide/load/engine/EngineKey;->transcodeClass:Ljava/lang/Class;

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_50

    .line 70
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->options:Lcom/bumptech/glide/load/Options;

    .line 72
    iget-object p1, p1, Lcom/bumptech/glide/load/engine/EngineKey;->options:Lcom/bumptech/glide/load/Options;

    .line 74
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/Options;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_50

    .line 80
    const/4 v1, 0x1

    .line 81
    :cond_50
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 3
    if-nez v0, :cond_4d

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->model:Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 17
    invoke-interface {v1}, Lcom/bumptech/glide/load/Key;->hashCode()I

    .line 20
    move-result v1

    .line 21
    add-int/2addr v1, v0

    .line 22
    mul-int/lit8 v1, v1, 0x1f

    .line 24
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    .line 26
    add-int/2addr v1, v0

    .line 27
    mul-int/lit8 v1, v1, 0x1f

    .line 29
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    .line 31
    add-int/2addr v1, v0

    .line 32
    iput v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 34
    mul-int/lit8 v1, v1, 0x1f

    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformations:Ljava/util/Map;

    .line 38
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    .line 41
    move-result v0

    .line 42
    add-int/2addr v0, v1

    .line 43
    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 47
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->resourceClass:Ljava/lang/Class;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 52
    move-result v1

    .line 53
    add-int/2addr v1, v0

    .line 54
    iput v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 56
    mul-int/lit8 v1, v1, 0x1f

    .line 58
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcodeClass:Ljava/lang/Class;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 63
    move-result v0

    .line 64
    add-int/2addr v0, v1

    .line 65
    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 67
    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->options:Lcom/bumptech/glide/load/Options;

    .line 71
    invoke-virtual {v1}, Lcom/bumptech/glide/load/Options;->hashCode()I

    .line 74
    move-result v1

    .line 75
    add-int/2addr v1, v0

    .line 76
    iput v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 78
    :cond_4d
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 80
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "EngineKey{model="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->model:Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", width="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->width:I

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", height="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->height:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", resourceClass="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->resourceClass:Ljava/lang/Class;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", transcodeClass="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transcodeClass:Ljava/lang/Class;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", signature="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->signature:Lcom/bumptech/glide/load/Key;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", hashCode="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->hashCode:I

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", transformations="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->transformations:Ljava/util/Map;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", options="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineKey;->options:Lcom/bumptech/glide/load/Options;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    const/16 v1, 0x7d

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method
