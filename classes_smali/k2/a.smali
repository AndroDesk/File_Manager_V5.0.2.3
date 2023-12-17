.class public final Lk2/a;
.super Ljava/lang/Object;
.source "CompositeDisposable.java"

# interfaces
.implements Lk2/b;
.implements Lm2/a;


# instance fields
.field public a:Lt2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt2/b<",
            "Lk2/b;",
            ">;"
        }
    .end annotation
.end field

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
    .registers 9

    const-string v0, "Disposable item is null"

    if-eqz p1, :cond_51

    iget-boolean v0, p0, Lk2/a;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    monitor-enter p0

    :try_start_b
    iget-boolean v0, p0, Lk2/a;->b:Z

    if-eqz v0, :cond_11

    monitor-exit p0

    return v1

    :cond_11
    iget-object v0, p0, Lk2/a;->a:Lt2/b;

    if-eqz v0, :cond_4c

    iget-object v2, v0, Lt2/b;->d:[Ljava/lang/Object;

    iget v3, v0, Lt2/b;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const v5, -0x61c88647

    mul-int/2addr v4, v5

    ushr-int/lit8 v5, v4, 0x10

    xor-int/2addr v4, v5

    and-int/2addr v4, v3

    aget-object v5, v2, v4

    const/4 v6, 0x1

    if-nez v5, :cond_2b

    goto :goto_3b

    :cond_2b
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-virtual {v0, v4, v3, v2}, Lt2/b;->b(II[Ljava/lang/Object;)V

    goto :goto_46

    :cond_35
    add-int/2addr v4, v6

    and-int/2addr v4, v3

    aget-object v5, v2, v4

    if-nez v5, :cond_3d

    :goto_3b
    move p1, v1

    goto :goto_47

    :cond_3d
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-virtual {v0, v4, v3, v2}, Lt2/b;->b(II[Ljava/lang/Object;)V

    :goto_46
    move p1, v6

    :goto_47
    if-nez p1, :cond_4a

    goto :goto_4c

    :cond_4a
    monitor-exit p0

    return v6

    :cond_4c
    :goto_4c
    monitor-exit p0

    return v1

    :catchall_4e
    move-exception p1

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_b .. :try_end_50} :catchall_4e

    throw p1

    :cond_51
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lk2/b;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lk2/a;->a(Lk2/b;)Z

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

    const-string v0, "d is null"

    if-eqz p1, :cond_28

    iget-boolean v0, p0, Lk2/a;->b:Z

    if-nez v0, :cond_23

    monitor-enter p0

    :try_start_9
    iget-boolean v0, p0, Lk2/a;->b:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lk2/a;->a:Lt2/b;

    if-nez v0, :cond_18

    new-instance v0, Lt2/b;

    invoke-direct {v0}, Lt2/b;-><init>()V

    iput-object v0, p0, Lk2/a;->a:Lt2/b;

    :cond_18
    invoke-virtual {v0, p1}, Lt2/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_1e
    monitor-exit p0

    goto :goto_23

    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    throw p1

    :cond_23
    :goto_23
    invoke-interface {p1}, Lk2/b;->dispose()V

    const/4 p1, 0x0

    return p1

    :cond_28
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final dispose()V
    .registers 9

    iget-boolean v0, p0, Lk2/a;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-boolean v0, p0, Lk2/a;->b:Z

    if-eqz v0, :cond_c

    monitor-exit p0

    return-void

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lk2/a;->b:Z

    iget-object v1, p0, Lk2/a;->a:Lt2/b;

    const/4 v2, 0x0

    iput-object v2, p0, Lk2/a;->a:Lt2/b;

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_56

    if-nez v1, :cond_18

    goto :goto_55

    :cond_18
    iget-object v1, v1, Lt2/b;->d:[Ljava/lang/Object;

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1d
    if-ge v5, v3, :cond_3c

    aget-object v6, v1, v5

    instance-of v7, v6, Lk2/b;

    if-eqz v7, :cond_39

    :try_start_25
    check-cast v6, Lk2/b;

    invoke-interface {v6}, Lk2/b;->dispose()V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2b

    goto :goto_39

    :catchall_2b
    move-exception v6

    invoke-static {v6}, La/b;->d0(Ljava/lang/Throwable;)V

    if-nez v2, :cond_36

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_36
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    :goto_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_3c
    if-eqz v2, :cond_55

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_4f

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    iget-boolean v0, p0, Lk2/a;->b:Z

    return v0
.end method
