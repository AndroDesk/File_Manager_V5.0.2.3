.class public final Lcom/bumptech/glide/load/Options;
.super Ljava/lang/Object;
.source "Options.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final values:Landroidx/collection/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/a<",
            "Lcom/bumptech/glide/load/Option<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    .line 6
    invoke-direct {v0}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/a;

    .line 11
    return-void
.end method

.method private static updateDiskCacheKey(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/Option;->update(Ljava/lang/Object;Ljava/security/MessageDigest;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/load/Options;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    check-cast p1, Lcom/bumptech/glide/load/Options;

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/a;

    .line 9
    iget-object p1, p1, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/a;

    .line 11
    invoke-virtual {v0, p1}, Landroidx/collection/f;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/a;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/f;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_f

    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/a;

    .line 11
    invoke-virtual {v0, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    goto :goto_13

    .line 16
    :cond_f
    invoke-virtual {p1}, Lcom/bumptech/glide/load/Option;->getDefaultValue()Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    :goto_13
    return-object p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/a;

    .line 3
    invoke-virtual {v0}, Landroidx/collection/f;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public putAll(Lcom/bumptech/glide/load/Options;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/a;

    .line 3
    iget-object p1, p1, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/a;

    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/f;->putAll(Landroidx/collection/f;)V

    .line 8
    return-void
.end method

.method public set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/load/Options;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option<",
            "TT;>;TT;)",
            "Lcom/bumptech/glide/load/Options;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/a;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "Options{values="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/a;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const/16 v1, 0x7d

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/a;

    invoke-virtual {v1}, Landroidx/collection/f;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 2
    iget-object v1, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/a;

    invoke-virtual {v1, v0}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/Option;

    .line 3
    iget-object v2, p0, Lcom/bumptech/glide/load/Options;->values:Landroidx/collection/a;

    invoke-virtual {v2, v0}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {v1, v2, p1}, Lcom/bumptech/glide/load/Options;->updateDiskCacheKey(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;Ljava/security/MessageDigest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method
