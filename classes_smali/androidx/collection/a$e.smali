.class public final Landroidx/collection/a$e;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/collection/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/collection/a;)V
    .registers 2

    iput-object p1, p0, Landroidx/collection/a$e;->a:Landroidx/collection/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final clear()V
    .registers 2

    iget-object v0, p0, Landroidx/collection/a$e;->a:Landroidx/collection/a;

    invoke-virtual {v0}, Landroidx/collection/f;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroidx/collection/a$e;->a:Landroidx/collection/a;

    invoke-virtual {v0, p1}, Landroidx/collection/f;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/collection/a$e;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method public final isEmpty()Z
    .registers 2

    iget-object v0, p0, Landroidx/collection/a$e;->a:Landroidx/collection/a;

    invoke-virtual {v0}, Landroidx/collection/f;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Landroidx/collection/a$f;

    iget-object v1, p0, Landroidx/collection/a$e;->a:Landroidx/collection/a;

    invoke-direct {v0, v1}, Landroidx/collection/a$f;-><init>(Landroidx/collection/a;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroidx/collection/a$e;->a:Landroidx/collection/a;

    invoke-virtual {v0, p1}, Landroidx/collection/f;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_f

    iget-object v0, p0, Landroidx/collection/a$e;->a:Landroidx/collection/a;

    invoke-virtual {v0, p1}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/a$e;->a:Landroidx/collection/a;

    iget v0, v0, Landroidx/collection/f;->mSize:I

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_21

    iget-object v3, p0, Landroidx/collection/a$e;->a:Landroidx/collection/a;

    invoke-virtual {v3, v1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1f

    iget-object v2, p0, Landroidx/collection/a$e;->a:Landroidx/collection/a;

    invoke-virtual {v2, v1}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    move v2, v4

    :cond_1f
    add-int/2addr v1, v4

    goto :goto_6

    :cond_21
    return v2
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/a$e;->a:Landroidx/collection/a;

    iget v0, v0, Landroidx/collection/f;->mSize:I

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_21

    iget-object v3, p0, Landroidx/collection/a$e;->a:Landroidx/collection/a;

    invoke-virtual {v3, v1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1f

    iget-object v2, p0, Landroidx/collection/a$e;->a:Landroidx/collection/a;

    invoke-virtual {v2, v1}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    move v2, v4

    :cond_1f
    add-int/2addr v1, v4

    goto :goto_6

    :cond_21
    return v2
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Landroidx/collection/a$e;->a:Landroidx/collection/a;

    iget v0, v0, Landroidx/collection/f;->mSize:I

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Landroidx/collection/a$e;->a:Landroidx/collection/a;

    iget v0, v0, Landroidx/collection/f;->mSize:I

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_14

    iget-object v3, p0, Landroidx/collection/a$e;->a:Landroidx/collection/a;

    invoke-virtual {v3, v2}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_14
    return-object v1
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/a$e;->a:Landroidx/collection/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/collection/a;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
