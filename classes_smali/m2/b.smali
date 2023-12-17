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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk2/b;)Z
    .registers 4

    const-string v0, "Disposable item is null"

    if-eqz p1, :cond_24

    iget-boolean v0, p0, Lm2/b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    monitor-enter p0

    :try_start_b
    iget-boolean v0, p0, Lm2/b;->b:Z

    if-eqz v0, :cond_11

    monitor-exit p0

    return v1

    :cond_11
    iget-object v0, p0, Lm2/b;->a:Ljava/util/LinkedList;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto :goto_1f

    :cond_1c
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1f
    :goto_1f
    monitor-exit p0

    return v1

    :catchall_21
    move-exception p1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_21

    throw p1

    :cond_24
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lk2/b;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lm2/b;->a(Lk2/b;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Lk2/b;->dispose()V

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Lk2/b;)Z
    .registers 3

    iget-boolean v0, p0, Lm2/b;->b:Z

    if-nez v0, :cond_1f

    monitor-enter p0

    :try_start_5
    iget-boolean v0, p0, Lm2/b;->b:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lm2/b;->a:Ljava/util/LinkedList;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lm2/b;->a:Ljava/util/LinkedList;

    :cond_14
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_1a
    monitor-exit p0

    goto :goto_1f

    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw p1

    :cond_1f
    :goto_1f
    invoke-interface {p1}, Lk2/b;->dispose()V

    const/4 p1, 0x0

    return p1
.end method

.method public final dispose()V
    .registers 5

    iget-boolean v0, p0, Lm2/b;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-boolean v0, p0, Lm2/b;->b:Z

    if-eqz v0, :cond_c

    monitor-exit p0

    return-void

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm2/b;->b:Z

    iget-object v1, p0, Lm2/b;->a:Ljava/util/LinkedList;

    const/4 v2, 0x0

    iput-object v2, p0, Lm2/b;->a:Ljava/util/LinkedList;

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_56

    if-nez v1, :cond_18

    goto :goto_55

    :cond_18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk2/b;

    :try_start_28
    invoke-interface {v3}, Lk2/b;->dispose()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_1c

    :catchall_2c
    move-exception v3

    invoke-static {v3}, La/b;->d0(Ljava/lang/Throwable;)V

    if-nez v2, :cond_37

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_37
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3b
    if-eqz v2, :cond_55

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_4f

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4f
    new-instance v0, Lio/reactivex/exceptions/CompositeException;

    invoke-direct {v0, v2}, Lio/reactivex/exceptions/CompositeException;-><init>(Ljava/lang/Iterable;)V

    throw v0

    :cond_55
    :goto_55
    return-void

    :catchall_56
    move-exception v0

    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v0
.end method

.method public final isDisposed()Z
    .registers 2

    iget-boolean v0, p0, Lm2/b;->b:Z

    return v0
.end method
