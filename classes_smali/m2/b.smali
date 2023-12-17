.class public final Lm2/b;
.super Ljava/lang/Object;
.source "ListCompositeDisposable.java"

# interfaces
.implements Lk2/b;
.implements Lm2/a;


# instance fields
.field public a:Ljava/util/LinkedList;

.field public volatile b:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lk2/b;)Z
    .registers 4

    .line 1
    const-string v0, "Disposable item is null"

    .line 3
    if-eqz p1, :cond_24

    .line 5
    iget-boolean v0, p0, Lm2/b;->b:Z

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_a

    .line 10
    return v1

    .line 11
    :cond_a
    monitor-enter p0

    .line 12
    :try_start_b
    iget-boolean v0, p0, Lm2/b;->b:Z

    .line 14
    if-eqz v0, :cond_11

    .line 16
    monitor-exit p0

    .line 17
    return v1

    .line 18
    :cond_11
    iget-object v0, p0, Lm2/b;->a:Ljava/util/LinkedList;

    .line 20
    if-eqz v0, :cond_1f

    .line 22
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1c

    .line 28
    goto :goto_1f

    .line 29
    :cond_1c
    monitor-exit p0

    .line 30
    const/4 p1, 0x1

    .line 31
    return p1

    .line 32
    :cond_1f
    :goto_1f
    monitor-exit p0

    .line 33
    return v1

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_21

    .line 36
    throw p1

    .line 37
    :cond_24
    new-instance p1, Ljava/lang/NullPointerException;

    .line 39
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1
.end method

.method public final b(Lk2/b;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lm2/b;->a(Lk2/b;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_b

    .line 7
    invoke-interface {p1}, Lk2/b;->dispose()V

    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public final c(Lk2/b;)Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lm2/b;->b:Z

    .line 3
    if-nez v0, :cond_1f

    .line 5
    monitor-enter p0

    .line 6
    :try_start_5
    iget-boolean v0, p0, Lm2/b;->b:Z

    .line 8
    if-nez v0, :cond_1a

    .line 10
    iget-object v0, p0, Lm2/b;->a:Ljava/util/LinkedList;

    .line 12
    if-nez v0, :cond_14

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    .line 16
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 19
    iput-object v0, p0, Lm2/b;->a:Ljava/util/LinkedList;

    .line 21
    :cond_14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    const/4 p1, 0x1

    .line 25
    monitor-exit p0

    .line 26
    return p1

    .line 27
    :cond_1a
    monitor-exit p0

    .line 28
    goto :goto_1f

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    .line 31
    throw p1

    .line 32
    :cond_1f
    :goto_1f
    invoke-interface {p1}, Lk2/b;->dispose()V

    .line 35
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method public final dispose()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lm2/b;->b:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    monitor-enter p0

    .line 7
    :try_start_6
    iget-boolean v0, p0, Lm2/b;->b:Z

    .line 9
    if-eqz v0, :cond_c

    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :cond_c
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lm2/b;->b:Z

    .line 16
    iget-object v1, p0, Lm2/b;->a:Ljava/util/LinkedList;

    .line 18
    const/4 v2, 0x0

    .line 19
    iput-object v2, p0, Lm2/b;->a:Ljava/util/LinkedList;

    .line 21
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_56

    .line 22
    if-nez v1, :cond_18

    .line 24
    goto :goto_55

    .line 25
    :cond_18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v1

    .line 29
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_3b

    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lk2/b;

    .line 41
    :try_start_28
    invoke-interface {v3}, Lk2/b;->dispose()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    .line 44
    goto :goto_1c

    .line 45
    :catchall_2c
    move-exception v3

    .line 46
    invoke-static {v3}, La/b;->d0(Ljava/lang/Throwable;)V

    .line 49
    if-nez v2, :cond_37

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    .line 53
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    :cond_37
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_1c

    .line 60
    :cond_3b
    if-eqz v2, :cond_55

    .line 62
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 65
    move-result v1

    .line 66
    if-ne v1, v0, :cond_4f

    .line 68
    const/4 v0, 0x0

    .line 69
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/Throwable;

    .line 75
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 78
    move-result-object v0

    .line 79
    throw v0

    .line 80
    :cond_4f
    new-instance v0, Lio/reactivex/exceptions/CompositeException;

    .line 82
    invoke-direct {v0, v2}, Lio/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    .line 85
    throw v0

    .line 86
    :cond_55
    :goto_55
    return-void

    .line 87
    :catchall_56
    move-exception v0

    .line 88
    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    .line 89
    throw v0
.end method

.method public final isDisposed()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lm2/b;->b:Z

    .line 3
    return v0
.end method
