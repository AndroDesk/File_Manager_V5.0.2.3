.class public Lcom/bumptech/glide/load/MultiTransformation;
.super Ljava/lang/Object;
.source "MultiTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Transformation<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final transformations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lcom/bumptech/glide/load/Transformation<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/bumptech/glide/load/Transformation<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 7
    iput-object p1, p0, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    return-void

    .line 8
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MultiTransformation must contain at least one Transformation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>([Lcom/bumptech/glide/load/Transformation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_d

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    return-void

    .line 4
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MultiTransformation must contain at least one Transformation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/load/MultiTransformation;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    check-cast p1, Lcom/bumptech/glide/load/MultiTransformation;

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    .line 9
    iget-object p1, p1, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TT;>;II)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    move-object v1, p2

    .line 8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_2a

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/bumptech/glide/load/Transformation;

    .line 20
    invoke-interface {v2, p1, v1, p3, p4}, Lcom/bumptech/glide/load/Transformation;->transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    .line 23
    move-result-object v2

    .line 24
    if-eqz v1, :cond_28

    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_28

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_28

    .line 38
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 41
    :cond_28
    move-object v1, v2

    .line 42
    goto :goto_7

    .line 43
    :cond_2a
    return-object v1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/bumptech/glide/load/Transformation;

    .line 19
    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method
