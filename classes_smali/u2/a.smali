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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Li2/h;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/h<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu2/a;->a:Li2/h;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 2

    iget-object v0, p0, Lu2/a;->b:Lk2/b;

    invoke-interface {v0}, Lk2/b;->dispose()V

    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    iget-object v0, p0, Lu2/a;->b:Lk2/b;

    invoke-interface {v0}, Lk2/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .registers 3

    iget-boolean v0, p0, Lu2/a;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-boolean v0, p0, Lu2/a;->e:Z

    if-eqz v0, :cond_c

    monitor-exit p0

    return-void

    :cond_c
    iget-boolean v0, p0, Lu2/a;->c:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lu2/a;->d:Lt2/a;

    if-nez v0, :cond_1b

    new-instance v0, Lt2/a;

    invoke-direct {v0}, Lt2/a;-><init>()V

    iput-object v0, p0, Lu2/a;->d:Lt2/a;

    :cond_1b
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt2/a;->a(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lu2/a;->e:Z

    iput-boolean v0, p0, Lu2/a;->c:Z

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_30

    iget-object v0, p0, Lu2/a;->a:Li2/h;

    invoke-interface {v0}, Li2/h;->onComplete()V

    return-void

    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .registers 5

    iget-boolean v0, p0, Lu2/a;->e:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_8
    monitor-enter p0

    :try_start_9
    iget-boolean v0, p0, Lu2/a;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    move v1, v2

    goto :goto_30

    :cond_11
    iget-boolean v0, p0, Lu2/a;->c:Z

    if-eqz v0, :cond_2c

    iput-boolean v2, p0, Lu2/a;->e:Z

    iget-object v0, p0, Lu2/a;->d:Lt2/a;

    if-nez v0, :cond_22

    new-instance v0, Lt2/a;

    invoke-direct {v0}, Lt2/a;-><init>()V

    iput-object v0, p0, Lu2/a;->d:Lt2/a;

    :cond_22
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, v0, Lt2/a;->a:[Ljava/lang/Object;

    aput-object p1, v0, v1

    monitor-exit p0

    return-void

    :cond_2c
    iput-boolean v2, p0, Lu2/a;->e:Z

    iput-boolean v2, p0, Lu2/a;->c:Z

    :goto_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_3d

    if-eqz v1, :cond_37

    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_37
    iget-object v0, p0, Lu2/a;->a:Li2/h;

    invoke-interface {v0, p1}, Li2/h;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public final onNext(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lu2/a;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_17

    iget-object p1, p0, Lu2/a;->b:Lk2/b;

    invoke-interface {p1}, Lk2/b;->dispose()V

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lu2/a;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_17
    monitor-enter p0

    :try_start_18
    iget-boolean v0, p0, Lu2/a;->e:Z

    if-eqz v0, :cond_1e

    monitor-exit p0

    return-void

    :cond_1e
    iget-boolean v0, p0, Lu2/a;->c:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lu2/a;->d:Lt2/a;

    if-nez v0, :cond_2d

    new-instance v0, Lt2/a;

    invoke-direct {v0}, Lt2/a;-><init>()V

    iput-object v0, p0, Lu2/a;->d:Lt2/a;

    :cond_2d
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lt2/a;->a(Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :cond_36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lu2/a;->c:Z

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_18 .. :try_end_3a} :catchall_72

    iget-object v1, p0, Lu2/a;->a:Li2/h;

    invoke-interface {v1, p1}, Li2/h;->onNext(Ljava/lang/Object;)V

    :cond_3f
    monitor-enter p0

    :try_start_40
    iget-object p1, p0, Lu2/a;->d:Lt2/a;

    const/4 v1, 0x0

    if-nez p1, :cond_49

    iput-boolean v1, p0, Lu2/a;->c:Z

    monitor-exit p0

    goto :goto_6e

    :cond_49
    const/4 v2, 0x0

    iput-object v2, p0, Lu2/a;->d:Lt2/a;

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_6f

    iget-object v2, p0, Lu2/a;->a:Li2/h;

    iget-object p1, p1, Lt2/a;->a:[Ljava/lang/Object;

    const/4 v3, 0x4

    :goto_52
    if-eqz p1, :cond_6c

    move v4, v1

    :goto_55
    if-ge v4, v3, :cond_67

    aget-object v5, p1, v4

    if-nez v5, :cond_5c

    goto :goto_67

    :cond_5c
    invoke-static {v5, v2}, Lio/reactivex/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Li2/h;)Z

    move-result v5

    if-eqz v5, :cond_64

    move v1, v0

    goto :goto_6c

    :cond_64
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    :cond_67
    :goto_67
    aget-object p1, p1, v3

    check-cast p1, [Ljava/lang/Object;

    goto :goto_52

    :cond_6c
    :goto_6c
    if-eqz v1, :cond_3f

    :goto_6e
    return-void

    :catchall_6f
    move-exception p1

    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw p1

    :catchall_72
    move-exception p1

    :try_start_73
    monitor-exit p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw p1
.end method

.method public final onSubscribe(Lk2/b;)V
    .registers 3

    iget-object v0, p0, Lu2/a;->b:Lk2/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lk2/b;Lk2/b;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object p1, p0, Lu2/a;->b:Lk2/b;

    iget-object p1, p0, Lu2/a;->a:Li2/h;

    invoke-interface {p1, p0}, Li2/h;->onSubscribe(Lk2/b;)V

    :cond_f
    return-void
.end method
