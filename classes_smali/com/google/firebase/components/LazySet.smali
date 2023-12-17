.class Lcom/google/firebase/components/LazySet;
.super Ljava/lang/Object;
.source "LazySet.java"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/inject/Provider<",
        "Ljava/util/Set<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private volatile actualSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile providers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/inject/Provider<",
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
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;

    .line 18
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;

    .line 20
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 23
    return-void
.end method

.method public static fromCollection(Ljava/util/Collection;)Lcom/google/firebase/components/LazySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/inject/Provider<",
            "*>;>;)",
            "Lcom/google/firebase/components/LazySet<",
            "*>;"
        }
    .end annotation

    .line 1
    check-cast p0, Ljava/util/Set;

    .line 3
    new-instance v0, Lcom/google/firebase/components/LazySet;

    .line 5
    invoke-direct {v0, p0}, Lcom/google/firebase/components/LazySet;-><init>(Ljava/util/Collection;)V

    .line 8
    return-object v0
.end method

.method private declared-synchronized updateSet()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v0

    .line 8
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1d

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/google/firebase/inject/Provider;

    .line 20
    iget-object v2, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    .line 22
    invoke-interface {v1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    goto :goto_7

    .line 30
    :cond_1d
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_22
    move-exception v0

    .line 36
    monitor-exit p0

    .line 37
    throw v0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/google/firebase/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    .line 4
    if-nez v0, :cond_b

    .line 6
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->providers:Ljava/util/Set;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    goto :goto_14

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    .line 14
    invoke-interface {p1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 21
    :goto_14
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_16
    move-exception p1

    .line 24
    monitor-exit p0

    .line 25
    throw p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/components/LazySet;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    if-nez v0, :cond_1c

    .line 3
    monitor-enter p0

    .line 4
    :try_start_5
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    if-nez v0, :cond_17

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    .line 6
    invoke-direct {p0}, Lcom/google/firebase/components/LazySet;->updateSet()V

    .line 7
    :cond_17
    monitor-exit p0

    goto :goto_1c

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v0

    .line 8
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/google/firebase/components/LazySet;->actualSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
