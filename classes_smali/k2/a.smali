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
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lk2/b;)Z
    .registers 9

    .line 1
    const-string v0, "Disposable item is null"

    .line 3
    if-eqz p1, :cond_51

    .line 5
    iget-boolean v0, p0, Lk2/a;->b:Z

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
    iget-boolean v0, p0, Lk2/a;->b:Z

    .line 14
    if-eqz v0, :cond_11

    .line 16
    monitor-exit p0

    .line 17
    return v1

    .line 18
    :cond_11
    iget-object v0, p0, Lk2/a;->a:Lt2/b;

    .line 20
    if-eqz v0, :cond_4c

    .line 22
    iget-object v2, v0, Lt2/b;->d:[Ljava/lang/Object;

    .line 24
    iget v3, v0, Lt2/b;->a:I

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 29
    move-result v4

    .line 30
    const v5, -0x61c88647

    .line 33
    mul-int/2addr v4, v5

    .line 34
    ushr-int/lit8 v5, v4, 0x10

    .line 36
    xor-int/2addr v4, v5

    .line 37
    and-int/2addr v4, v3

    .line 38
    aget-object v5, v2, v4

    .line 40
    const/4 v6, 0x1

    .line 41
    if-nez v5, :cond_2b

    .line 43
    goto :goto_3b

    .line 44
    :cond_2b
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_35

    .line 50
    invoke-virtual {v0, v4, v3, v2}, Lt2/b;->b(II[Ljava/lang/Object;)V

    .line 53
    goto :goto_46

    .line 54
    :cond_35
    add-int/2addr v4, v6

    .line 55
    and-int/2addr v4, v3

    .line 56
    aget-object v5, v2, v4

    .line 58
    if-nez v5, :cond_3d

    .line 60
    :goto_3b
    move p1, v1

    .line 61
    goto :goto_47

    .line 62
    :cond_3d
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_35

    .line 68
    invoke-virtual {v0, v4, v3, v2}, Lt2/b;->b(II[Ljava/lang/Object;)V

    .line 71
    :goto_46
    move p1, v6

    .line 72
    :goto_47
    if-nez p1, :cond_4a

    .line 74
    goto :goto_4c

    .line 75
    :cond_4a
    monitor-exit p0

    .line 76
    return v6

    .line 77
    :cond_4c
    :goto_4c
    monitor-exit p0

    .line 78
    return v1

    .line 79
    :catchall_4e
    move-exception p1

    .line 80
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_b .. :try_end_50} :catchall_4e

    .line 81
    throw p1

    .line 82
    :cond_51
    new-instance p1, Ljava/lang/NullPointerException;

    .line 84
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p1
.end method

.method public final b(Lk2/b;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lk2/a;->a(Lk2/b;)Z

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
    const-string v0, "d is null"

    .line 3
    if-eqz p1, :cond_28

    .line 5
    iget-boolean v0, p0, Lk2/a;->b:Z

    .line 7
    if-nez v0, :cond_23

    .line 9
    monitor-enter p0

    .line 10
    :try_start_9
    iget-boolean v0, p0, Lk2/a;->b:Z

    .line 12
    if-nez v0, :cond_1e

    .line 14
    iget-object v0, p0, Lk2/a;->a:Lt2/b;

    .line 16
    if-nez v0, :cond_18

    .line 18
    new-instance v0, Lt2/b;

    .line 20
    invoke-direct {v0}, Lt2/b;-><init>()V

    .line 23
    iput-object v0, p0, Lk2/a;->a:Lt2/b;

    .line 25
    :cond_18
    invoke-virtual {v0, p1}, Lt2/b;->a(Ljava/lang/Object;)V

    .line 28
    const/4 p1, 0x1

    .line 29
    monitor-exit p0

    .line 30
    return p1

    .line 31
    :cond_1e
    monitor-exit p0

    .line 32
    goto :goto_23

    .line 33
    :catchall_20
    move-exception p1

    .line 34
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    .line 35
    throw p1

    .line 36
    :cond_23
    :goto_23
    invoke-interface {p1}, Lk2/b;->dispose()V

    .line 39
    const/4 p1, 0x0

    .line 40
    return p1

    .line 41
    :cond_28
    new-instance p1, Ljava/lang/NullPointerException;

    .line 43
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p1
.end method

.method public final dispose()V
    .registers 9

    .line 1
    iget-boolean v0, p0, Lk2/a;->b:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    monitor-enter p0

    .line 7
    :try_start_6
    iget-boolean v0, p0, Lk2/a;->b:Z

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
    iput-boolean v0, p0, Lk2/a;->b:Z

    .line 16
    iget-object v1, p0, Lk2/a;->a:Lt2/b;

    .line 18
    const/4 v2, 0x0

    .line 19
    iput-object v2, p0, Lk2/a;->a:Lt2/b;

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
    iget-object v1, v1, Lt2/b;->d:[Ljava/lang/Object;

    .line 27
    array-length v3, v1

    .line 28
    const/4 v4, 0x0

    .line 29
    move v5, v4

    .line 30
    :goto_1d
    if-ge v5, v3, :cond_3c

    .line 32
    aget-object v6, v1, v5

    .line 34
    instance-of v7, v6, Lk2/b;

    .line 36
    if-eqz v7, :cond_39

    .line 38
    :try_start_25
    check-cast v6, Lk2/b;

    .line 40
    invoke-interface {v6}, Lk2/b;->dispose()V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_2b

    .line 43
    goto :goto_39

    .line 44
    :catchall_2b
    move-exception v6

    .line 45
    invoke-static {v6}, La/b;->d0(Ljava/lang/Throwable;)V

    .line 48
    if-nez v2, :cond_36

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    :cond_36
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_39
    :goto_39
    add-int/lit8 v5, v5, 0x1

    .line 60
    goto :goto_1d

    .line 61
    :cond_3c
    if-eqz v2, :cond_55

    .line 63
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 66
    move-result v1

    .line 67
    if-ne v1, v0, :cond_4f

    .line 69
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    iget-boolean v0, p0, Lk2/a;->b:Z

    .line 3
    return v0
.end method
