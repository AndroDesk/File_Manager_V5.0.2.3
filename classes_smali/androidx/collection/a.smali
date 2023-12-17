.class public Landroidx/collection/a;
.super Landroidx/collection/f;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/collection/a$d;,
        Landroidx/collection/a$f;,
        Landroidx/collection/a$b;,
        Landroidx/collection/a$e;,
        Landroidx/collection/a$c;,
        Landroidx/collection/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/collection/f<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public mEntrySet:Landroidx/collection/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/a<",
            "TK;TV;>.a;"
        }
    .end annotation
.end field

.field public mKeySet:Landroidx/collection/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/a<",
            "TK;TV;>.c;"
        }
    .end annotation
.end field

.field public mValues:Landroidx/collection/a$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/a<",
            "TK;TV;>.e;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/collection/f;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Landroidx/collection/f;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/collection/f;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Landroidx/collection/f;-><init>(Landroidx/collection/f;)V

    return-void
.end method

.method public static equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1e

    .line 10
    check-cast p1, Ljava/util/Set;

    .line 12
    :try_start_b
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 15
    move-result v1

    .line 16
    invoke-interface {p1}, Ljava/util/Set;->size()I

    .line 19
    move-result v3

    .line 20
    if-ne v1, v3, :cond_1c

    .line 22
    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 25
    move-result p0
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_19} :catch_1e
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_19} :catch_1e

    .line 26
    if-eqz p0, :cond_1c

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v0, v2

    .line 30
    :goto_1d
    return v0

    .line 31
    :catch_1e
    :cond_1e
    return v2
.end method


# virtual methods
.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_16

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Landroidx/collection/f;->containsKey(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_4

    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_16
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/collection/a;->mEntrySet:Landroidx/collection/a$a;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/collection/a$a;

    .line 7
    invoke-direct {v0, p0}, Landroidx/collection/a$a;-><init>(Landroidx/collection/a;)V

    .line 10
    iput-object v0, p0, Landroidx/collection/a;->mEntrySet:Landroidx/collection/a$a;

    .line 12
    :cond_b
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/collection/a;->mKeySet:Landroidx/collection/a$c;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/collection/a$c;

    .line 7
    invoke-direct {v0, p0}, Landroidx/collection/a$c;-><init>(Landroidx/collection/a;)V

    .line 10
    iput-object v0, p0, Landroidx/collection/a;->mKeySet:Landroidx/collection/a$c;

    .line 12
    :cond_b
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/collection/f;->mSize:I

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 6
    move-result v1

    .line 7
    add-int/2addr v1, v0

    .line 8
    invoke-virtual {p0, v1}, Landroidx/collection/f;->ensureCapacity(I)V

    .line 11
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p1

    .line 19
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2a

    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v1, v0}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    goto :goto_12

    .line 43
    :cond_2a
    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/collection/f;->mSize:I

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_14

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v1}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    goto :goto_6

    .line 21
    :cond_14
    iget p1, p0, Landroidx/collection/f;->mSize:I

    .line 23
    if-eq v0, p1, :cond_1a

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    :goto_1b
    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/collection/f;->mSize:I

    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 5
    :goto_4
    if-ltz v1, :cond_16

    .line 7
    invoke-virtual {p0, v1}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_13

    .line 17
    invoke-virtual {p0, v1}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    .line 20
    :cond_13
    add-int/lit8 v1, v1, -0x1

    .line 22
    goto :goto_4

    .line 23
    :cond_16
    iget p1, p0, Landroidx/collection/f;->mSize:I

    .line 25
    if-eq v0, p1, :cond_1c

    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    :goto_1d
    return p1
.end method

.method public toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/collection/f;->mSize:I

    .line 3
    array-length v1, p1

    .line 4
    if-ge v1, v0, :cond_13

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, [Ljava/lang/Object;

    .line 20
    :cond_13
    const/4 v1, 0x0

    .line 21
    :goto_14
    if-ge v1, v0, :cond_22

    .line 23
    iget-object v2, p0, Landroidx/collection/f;->mArray:[Ljava/lang/Object;

    .line 25
    shl-int/lit8 v3, v1, 0x1

    .line 27
    add-int/2addr v3, p2

    .line 28
    aget-object v2, v2, v3

    .line 30
    aput-object v2, p1, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_14

    .line 35
    :cond_22
    array-length p2, p1

    .line 36
    if-le p2, v0, :cond_28

    .line 38
    const/4 p2, 0x0

    .line 39
    aput-object p2, p1, v0

    .line 41
    :cond_28
    return-object p1
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/collection/a;->mValues:Landroidx/collection/a$e;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Landroidx/collection/a$e;

    .line 7
    invoke-direct {v0, p0}, Landroidx/collection/a$e;-><init>(Landroidx/collection/a;)V

    .line 10
    iput-object v0, p0, Landroidx/collection/a;->mValues:Landroidx/collection/a$e;

    .line 12
    :cond_b
    return-object v0
.end method
