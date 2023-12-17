.class public final Lu2/a;
.super Ljava/lang/Object;
.source "SerializedObserver.java"

# interfaces
.implements Li2/h;
.implements Lk2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li2/h<",
        "TT;>;",
        "Lk2/b;"
    }
.end annotation


# instance fields
.field public final a:Li2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li2/h<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public b:Lk2/b;

.field public c:Z

.field public d:Lt2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt2/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public volatile e:Z


# direct methods
.method public constructor <init>(Li2/h;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/h<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lu2/a;->a:Li2/h;

    .line 6
    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 2

    .line 1
    iget-object v0, p0, Lu2/a;->b:Lk2/b;

    .line 3
    invoke-interface {v0}, Lk2/b;->dispose()V

    .line 6
    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lu2/a;->b:Lk2/b;

    .line 3
    invoke-interface {v0}, Lk2/b;->isDisposed()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final onComplete()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lu2/a;->e:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    monitor-enter p0

    .line 7
    :try_start_6
    iget-boolean v0, p0, Lu2/a;->e:Z

    .line 9
    if-eqz v0, :cond_c

    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :cond_c
    iget-boolean v0, p0, Lu2/a;->c:Z

    .line 15
    if-eqz v0, :cond_24

    .line 17
    iget-object v0, p0, Lu2/a;->d:Lt2/a;

    .line 19
    if-nez v0, :cond_1b

    .line 21
    new-instance v0, Lt2/a;

    .line 23
    invoke-direct {v0}, Lt2/a;-><init>()V

    .line 26
    iput-object v0, p0, Lu2/a;->d:Lt2/a;

    .line 28
    :cond_1b
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lt2/a;->a(Ljava/lang/Object;)V

    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :cond_24
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lu2/a;->e:Z

    .line 40
    iput-boolean v0, p0, Lu2/a;->c:Z

    .line 42
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_30

    .line 43
    iget-object v0, p0, Lu2/a;->a:Li2/h;

    .line 45
    invoke-interface {v0}, Li2/h;->onComplete()V

    .line 48
    return-void

    .line 49
    :catchall_30
    move-exception v0

    .line 50
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .line 51
    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lu2/a;->e:Z

    .line 3
    if-eqz v0, :cond_8

    .line 5
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 8
    return-void

    .line 9
    :cond_8
    monitor-enter p0

    .line 10
    :try_start_9
    iget-boolean v0, p0, Lu2/a;->e:Z

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_11

    .line 16
    move v1, v2

    .line 17
    goto :goto_30

    .line 18
    :cond_11
    iget-boolean v0, p0, Lu2/a;->c:Z

    .line 20
    if-eqz v0, :cond_2c

    .line 22
    iput-boolean v2, p0, Lu2/a;->e:Z

    .line 24
    iget-object v0, p0, Lu2/a;->d:Lt2/a;

    .line 26
    if-nez v0, :cond_22

    .line 28
    new-instance v0, Lt2/a;

    .line 30
    invoke-direct {v0}, Lt2/a;-><init>()V

    .line 33
    iput-object v0, p0, Lu2/a;->d:Lt2/a;

    .line 35
    :cond_22
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    iget-object v0, v0, Lt2/a;->a:[Ljava/lang/Object;

    .line 41
    aput-object p1, v0, v1

    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :cond_2c
    iput-boolean v2, p0, Lu2/a;->e:Z

    .line 47
    iput-boolean v2, p0, Lu2/a;->c:Z

    .line 49
    :goto_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_3d

    .line 50
    if-eqz v1, :cond_37

    .line 52
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 55
    return-void

    .line 56
    :cond_37
    iget-object v0, p0, Lu2/a;->a:Li2/h;

    .line 58
    invoke-interface {v0, p1}, Li2/h;->onError(Ljava/lang/Throwable;)V

    .line 61
    return-void

    .line 62
    :catchall_3d
    move-exception p1

    .line 63
    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    .line 64
    throw p1
.end method

.method public final onNext(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lu2/a;->e:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    if-nez p1, :cond_17

    .line 8
    iget-object p1, p0, Lu2/a;->b:Lk2/b;

    .line 10
    invoke-interface {p1}, Lk2/b;->dispose()V

    .line 13
    new-instance p1, Ljava/lang/NullPointerException;

    .line 15
    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    .line 17
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1}, Lu2/a;->onError(Ljava/lang/Throwable;)V

    .line 23
    return-void

    .line 24
    :cond_17
    monitor-enter p0

    .line 25
    :try_start_18
    iget-boolean v0, p0, Lu2/a;->e:Z

    .line 27
    if-eqz v0, :cond_1e

    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :cond_1e
    iget-boolean v0, p0, Lu2/a;->c:Z

    .line 33
    if-eqz v0, :cond_36

    .line 35
    iget-object v0, p0, Lu2/a;->d:Lt2/a;

    .line 37
    if-nez v0, :cond_2d

    .line 39
    new-instance v0, Lt2/a;

    .line 41
    invoke-direct {v0}, Lt2/a;-><init>()V

    .line 44
    iput-object v0, p0, Lu2/a;->d:Lt2/a;

    .line 46
    :cond_2d
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Lt2/a;->a(Ljava/lang/Object;)V

    .line 53
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :cond_36
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lu2/a;->c:Z

    .line 58
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_18 .. :try_end_3a} :catchall_72

    .line 59
    iget-object v1, p0, Lu2/a;->a:Li2/h;

    .line 61
    invoke-interface {v1, p1}, Li2/h;->onNext(Ljava/lang/Object;)V

    .line 64
    :cond_3f
    monitor-enter p0

    .line 65
    :try_start_40
    iget-object p1, p0, Lu2/a;->d:Lt2/a;

    .line 67
    const/4 v1, 0x0

    .line 68
    if-nez p1, :cond_49

    .line 70
    iput-boolean v1, p0, Lu2/a;->c:Z

    .line 72
    monitor-exit p0

    .line 73
    goto :goto_6e

    .line 74
    :cond_49
    const/4 v2, 0x0

    .line 75
    iput-object v2, p0, Lu2/a;->d:Lt2/a;

    .line 77
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_6f

    .line 78
    iget-object v2, p0, Lu2/a;->a:Li2/h;

    .line 80
    iget-object p1, p1, Lt2/a;->a:[Ljava/lang/Object;

    .line 82
    const/4 v3, 0x4

    .line 83
    :goto_52
    if-eqz p1, :cond_6c

    .line 85
    move v4, v1

    .line 86
    :goto_55
    if-ge v4, v3, :cond_67

    .line 88
    aget-object v5, p1, v4

    .line 90
    if-nez v5, :cond_5c

    .line 92
    goto :goto_67

    .line 93
    :cond_5c
    invoke-static {v5, v2}, Lio/reactivex/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Li2/h;)Z

    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_64

    .line 99
    move v1, v0

    .line 100
    goto :goto_6c

    .line 101
    :cond_64
    add-int/lit8 v4, v4, 0x1

    .line 103
    goto :goto_55

    .line 104
    :cond_67
    :goto_67
    aget-object p1, p1, v3

    .line 106
    check-cast p1, [Ljava/lang/Object;

    .line 108
    goto :goto_52

    .line 109
    :cond_6c
    :goto_6c
    if-eqz v1, :cond_3f

    .line 111
    :goto_6e
    return-void

    .line 112
    :catchall_6f
    move-exception p1

    .line 113
    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    .line 114
    throw p1

    .line 115
    :catchall_72
    move-exception p1

    .line 116
    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    .line 117
    throw p1
.end method

.method public final onSubscribe(Lk2/b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lu2/a;->b:Lk2/b;

    .line 3
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lk2/b;Lk2/b;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_f

    .line 9
    iput-object p1, p0, Lu2/a;->b:Lk2/b;

    .line 11
    iget-object p1, p0, Lu2/a;->a:Li2/h;

    .line 13
    invoke-interface {p1, p0}, Li2/h;->onSubscribe(Lk2/b;)V

    .line 16
    :cond_f
    return-void
.end method
