.class public final Landroidx/collection/a$c;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/collection/a;


# direct methods
.method public constructor <init>(Landroidx/collection/a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Landroidx/collection/a$c;->a:Landroidx/collection/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TK;>;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public final clear()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/collection/a$c;->a:Landroidx/collection/a;

    .line 3
    invoke-virtual {v0}, Landroidx/collection/f;->clear()V

    .line 6
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/collection/a$c;->a:Landroidx/collection/a;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/f;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
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

    .line 1
    iget-object v0, p0, Landroidx/collection/a$c;->a:Landroidx/collection/a;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/a;->containsAll(Ljava/util/Collection;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-static {p0, p1}, Landroidx/collection/a;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/collection/a$c;->a:Landroidx/collection/a;

    .line 3
    iget v0, v0, Landroidx/collection/f;->mSize:I

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    if-ltz v0, :cond_1c

    .line 11
    iget-object v3, p0, Landroidx/collection/a$c;->a:Landroidx/collection/a;

    .line 13
    invoke-virtual {v3, v0}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    if-nez v3, :cond_14

    .line 19
    move v3, v1

    .line 20
    goto :goto_18

    .line 21
    :cond_14
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 24
    move-result v3

    .line 25
    :goto_18
    add-int/2addr v2, v3

    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 28
    goto :goto_8

    .line 29
    :cond_1c
    return v2
.end method

.method public final isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/collection/a$c;->a:Landroidx/collection/a;

    .line 3
    invoke-virtual {v0}, Landroidx/collection/f;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/collection/a$b;

    .line 3
    iget-object v1, p0, Landroidx/collection/a$c;->a:Landroidx/collection/a;

    .line 5
    invoke-direct {v0, v1}, Landroidx/collection/a$b;-><init>(Landroidx/collection/a;)V

    .line 8
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/collection/a$c;->a:Landroidx/collection/a;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/f;->indexOfKey(Ljava/lang/Object;)I

    .line 6
    move-result p1

    .line 7
    if-ltz p1, :cond_f

    .line 9
    iget-object v0, p0, Landroidx/collection/a$c;->a:Landroidx/collection/a;

    .line 11
    invoke-virtual {v0, p1}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/collection/a$c;->a:Landroidx/collection/a;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/a;->removeAll(Ljava/util/Collection;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/collection/a$c;->a:Landroidx/collection/a;

    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/a;->retainAll(Ljava/util/Collection;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/collection/a$c;->a:Landroidx/collection/a;

    .line 3
    iget v0, v0, Landroidx/collection/f;->mSize:I

    .line 5
    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/collection/a$c;->a:Landroidx/collection/a;

    iget v0, v0, Landroidx/collection/f;->mSize:I

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_14

    .line 3
    iget-object v3, p0, Landroidx/collection/a$c;->a:Landroidx/collection/a;

    invoke-virtual {v3, v2}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

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

    .line 4
    iget-object v0, p0, Landroidx/collection/a$c;->a:Landroidx/collection/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/collection/a;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
