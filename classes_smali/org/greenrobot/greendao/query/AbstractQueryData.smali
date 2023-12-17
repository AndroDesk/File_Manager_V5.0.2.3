.class abstract Lorg/greenrobot/greendao/query/AbstractQueryData;
.super Ljava/lang/Object;
.source "AbstractQueryData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Q:",
        "Lorg/greenrobot/greendao/query/AbstractQuery<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final dao:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;*>;"
        }
    .end annotation
.end field

.field public final initialValues:[Ljava/lang/String;

.field public final queriesForThreads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference<",
            "TQ;>;>;"
        }
    .end annotation
.end field

.field public final sql:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 6
    iput-object p2, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->sql:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    .line 10
    new-instance p1, Ljava/util/HashMap;

    .line 12
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Ljava/util/Map;

    .line 17
    return-void
.end method


# virtual methods
.method public abstract createQuery()Lorg/greenrobot/greendao/query/AbstractQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TQ;"
        }
    .end annotation
.end method

.method public forCurrentThread()Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TQ;"
        }
    .end annotation

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Ljava/util/Map;

    monitor-enter v2

    .line 6
    :try_start_b
    iget-object v3, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_20

    .line 7
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/greenrobot/greendao/query/AbstractQuery;

    goto :goto_21

    :cond_20
    const/4 v3, 0x0

    :goto_21
    if-nez v3, :cond_39

    .line 8
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->gc()V

    .line 9
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->createQuery()Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object v3

    .line 10
    iget-object v4, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 11
    :cond_39
    iget-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    iget-object v1, v3, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    :goto_42
    monitor-exit v2

    return-object v3

    :catchall_44
    move-exception v0

    .line 13
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_b .. :try_end_46} :catchall_44

    throw v0
.end method

.method public forCurrentThread(Lorg/greenrobot/greendao/query/AbstractQuery;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQ;)TQ;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p1, Lorg/greenrobot/greendao/query/AbstractQuery;->ownerThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_12

    .line 2
    iget-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    iget-object v1, p1, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 3
    :cond_12
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->forCurrentThread()Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p1

    return-object p1
.end method

.method public gc()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->queriesForThreads:Ljava/util/Map;

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_29

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 32
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    if-nez v2, :cond_d

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 41
    goto :goto_d

    .line 42
    :cond_29
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_2b
    move-exception v1

    .line 45
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    .line 46
    throw v1
.end method
