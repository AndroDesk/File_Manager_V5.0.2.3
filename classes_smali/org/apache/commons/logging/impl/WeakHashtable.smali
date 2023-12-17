.class public final Lorg/apache/commons/logging/impl/WeakHashtable;
.super Ljava/util/Hashtable;
.source "WeakHashtable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;,
        Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;,
        Lorg/apache/commons/logging/impl/WeakHashtable$Entry;
    }
.end annotation


# static fields
.field private static final MAX_CHANGES_BEFORE_PURGE:I = 0x64

.field private static final PARTIAL_PURGE_COUNT:I = 0xa


# instance fields
.field private changeCount:I

.field private queue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    .line 6
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    .line 14
    return-void
.end method

.method private purge()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 3
    monitor-enter v0

    .line 4
    :goto_3
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;

    .line 12
    if-eqz v1, :cond_15

    .line 14
    invoke-static {v1}, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;->access$400(Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;)Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 17
    move-result-object v1

    .line 18
    invoke-super {p0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    goto :goto_3

    .line 22
    :cond_15
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_17
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    .line 26
    throw v1
.end method

.method private purgeOne()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;

    .line 12
    if-eqz v1, :cond_14

    .line 14
    invoke-static {v1}, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;->access$400(Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;)Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 17
    move-result-object v1

    .line 18
    invoke-super {p0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_14
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_16
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    .line 25
    throw v1
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V

    .line 7
    invoke-super {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 4
    invoke-super {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 7

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 4
    invoke-super {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/util/HashSet;

    .line 10
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_36

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 35
    invoke-static {v3}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->access$100(Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    if-eqz v3, :cond_10

    .line 45
    new-instance v4, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-direct {v4, v3, v2, v5}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V

    .line 51
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_10

    .line 55
    :cond_36
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V

    .line 7
    invoke-super {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 4
    invoke-super {p0}, Ljava/util/Hashtable;->isEmpty()Z

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 4

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 4
    invoke-super {p0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/util/HashSet;

    .line 10
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_26

    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 29
    invoke-static {v2}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->access$100(Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_10

    .line 35
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    goto :goto_10

    .line 39
    :cond_26
    return-object v1
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 4
    invoke-super {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lorg/apache/commons/logging/impl/WeakHashtable$1;

    .line 10
    invoke-direct {v1, p0, v0}, Lorg/apache/commons/logging/impl/WeakHashtable$1;-><init>(Lorg/apache/commons/logging/impl/WeakHashtable;Ljava/util/Enumeration;)V

    .line 13
    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    if-eqz p1, :cond_31

    .line 3
    if-eqz p2, :cond_29

    .line 5
    iget v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    .line 7
    add-int/lit8 v1, v0, 0x1

    .line 9
    iput v1, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    .line 11
    const/16 v2, 0x64

    .line 13
    if-le v0, v2, :cond_15

    .line 15
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    .line 21
    goto :goto_1c

    .line 22
    :cond_15
    rem-int/lit8 v1, v1, 0xa

    .line 24
    if-nez v1, :cond_1c

    .line 26
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purgeOne()V

    .line 29
    :cond_1c
    :goto_1c
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 31
    iget-object v1, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V

    .line 37
    invoke-super {p0, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :cond_29
    new-instance p1, Ljava/lang/NullPointerException;

    .line 44
    const-string p2, "Null values are not allowed"

    .line 46
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p1

    .line 50
    :cond_31
    new-instance p1, Ljava/lang/NullPointerException;

    .line 52
    const-string p2, "Null keys are not allowed"

    .line 54
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4

    .line 1
    if-eqz p1, :cond_22

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 11
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_22

    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/logging/impl/WeakHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    goto :goto_a

    .line 35
    :cond_22
    return-void
.end method

.method public rehash()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 4
    invoke-super {p0}, Ljava/util/Hashtable;->rehash()V

    .line 7
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 5
    iput v1, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    .line 7
    const/16 v2, 0x64

    .line 9
    if-le v0, v2, :cond_11

    .line 11
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    .line 17
    goto :goto_18

    .line 18
    :cond_11
    rem-int/lit8 v1, v1, 0xa

    .line 20
    if-nez v1, :cond_18

    .line 22
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purgeOne()V

    .line 25
    :cond_18
    :goto_18
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, p1, v1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$1;)V

    .line 31
    invoke-super {p0, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public size()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 4
    invoke-super {p0}, Ljava/util/Hashtable;->size()I

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 4
    invoke-super {p0}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 4
    invoke-super {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method
