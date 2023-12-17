.class public abstract Landroidx/lifecycle/a0;
.super Ljava/lang/Object;
.source "ViewModel.java"


# instance fields
.field private final mBagOfTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mCleared:Z

.field private final mCloseables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/a0;->mBagOfTags:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/a0;->mCloseables:Ljava/util/Set;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/a0;->mCleared:Z

    return-void
.end method

.method public varargs constructor <init>([Ljava/io/Closeable;)V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/a0;->mBagOfTags:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/a0;->mCloseables:Ljava/util/Set;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Landroidx/lifecycle/a0;->mCleared:Z

    .line 9
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static closeWithRuntimeException(Ljava/lang/Object;)V
    .registers 2

    .line 1
    instance-of v0, p0, Ljava/io/Closeable;

    .line 3
    if-eqz v0, :cond_11

    .line 5
    :try_start_4
    check-cast p0, Ljava/io/Closeable;

    .line 7
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 10
    goto :goto_11

    .line 11
    :catch_a
    move-exception p0

    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    .line 14
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    throw v0

    .line 18
    :cond_11
    :goto_11
    return-void
.end method


# virtual methods
.method public addCloseable(Ljava/io/Closeable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/a0;->mCloseables:Ljava/util/Set;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    monitor-enter v0

    .line 6
    :try_start_5
    iget-object v1, p0, Landroidx/lifecycle/a0;->mCloseables:Ljava/util/Set;

    .line 8
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    monitor-exit v0

    .line 12
    goto :goto_f

    .line 13
    :catchall_c
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    .line 15
    throw p1

    .line 16
    :cond_f
    :goto_f
    return-void
.end method

.method public final clear()V
    .registers 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/lifecycle/a0;->mCleared:Z

    .line 4
    iget-object v0, p0, Landroidx/lifecycle/a0;->mBagOfTags:Ljava/util/Map;

    .line 6
    if-eqz v0, :cond_25

    .line 8
    monitor-enter v0

    .line 9
    :try_start_8
    iget-object v1, p0, Landroidx/lifecycle/a0;->mBagOfTags:Ljava/util/Map;

    .line 11
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_20

    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Landroidx/lifecycle/a0;->closeWithRuntimeException(Ljava/lang/Object;)V

    .line 32
    goto :goto_12

    .line 33
    :cond_20
    monitor-exit v0

    .line 34
    goto :goto_25

    .line 35
    :catchall_22
    move-exception v1

    .line 36
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_22

    .line 37
    throw v1

    .line 38
    :cond_25
    :goto_25
    iget-object v0, p0, Landroidx/lifecycle/a0;->mCloseables:Ljava/util/Set;

    .line 40
    if-eqz v0, :cond_45

    .line 42
    monitor-enter v0

    .line 43
    :try_start_2a
    iget-object v1, p0, Landroidx/lifecycle/a0;->mCloseables:Ljava/util/Set;

    .line 45
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v1

    .line 49
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_40

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Ljava/io/Closeable;

    .line 61
    invoke-static {v2}, Landroidx/lifecycle/a0;->closeWithRuntimeException(Ljava/lang/Object;)V

    .line 64
    goto :goto_30

    .line 65
    :cond_40
    monitor-exit v0

    .line 66
    goto :goto_45

    .line 67
    :catchall_42
    move-exception v1

    .line 68
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_2a .. :try_end_44} :catchall_42

    .line 69
    throw v1

    .line 70
    :cond_45
    :goto_45
    invoke-virtual {p0}, Landroidx/lifecycle/a0;->onCleared()V

    .line 73
    return-void
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/a0;->mBagOfTags:Ljava/util/Map;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_6
    monitor-enter v0

    .line 8
    :try_start_7
    iget-object v1, p0, Landroidx/lifecycle/a0;->mBagOfTags:Ljava/util/Map;

    .line 10
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    monitor-exit v0

    .line 15
    return-object p1

    .line 16
    :catchall_f
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    .line 18
    throw p1
.end method

.method public onCleared()V
    .registers 1

    return-void
.end method

.method public setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/a0;->mBagOfTags:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Landroidx/lifecycle/a0;->mBagOfTags:Ljava/util/Map;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_10

    .line 12
    iget-object v2, p0, Landroidx/lifecycle/a0;->mBagOfTags:Ljava/util/Map;

    .line 14
    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1d

    .line 18
    if-nez v1, :cond_14

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move-object p2, v1

    .line 22
    :goto_15
    iget-boolean p1, p0, Landroidx/lifecycle/a0;->mCleared:Z

    .line 24
    if-eqz p1, :cond_1c

    .line 26
    invoke-static {p2}, Landroidx/lifecycle/a0;->closeWithRuntimeException(Ljava/lang/Object;)V

    .line 29
    :cond_1c
    return-object p2

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    .line 32
    throw p1
.end method
