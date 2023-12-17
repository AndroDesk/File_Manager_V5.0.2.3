.class public final Landroidx/concurrent/futures/AbstractResolvableFuture$f;
.super Landroidx/concurrent/futures/AbstractResolvableFuture$a;
.source "AbstractResolvableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/AbstractResolvableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$a;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$c;Landroidx/concurrent/futures/AbstractResolvableFuture$c;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/AbstractResolvableFuture<",
            "*>;",
            "Landroidx/concurrent/futures/AbstractResolvableFuture$c;",
            "Landroidx/concurrent/futures/AbstractResolvableFuture$c;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_1
    iget-object v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 4
    if-ne v0, p2, :cond_a

    .line 6
    iput-object p3, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$c;

    .line 8
    const/4 p2, 0x1

    .line 9
    monitor-exit p1

    .line 10
    return p2

    .line 11
    :cond_a
    const/4 p2, 0x0

    .line 12
    monitor-exit p1

    .line 13
    return p2

    .line 14
    :catchall_d
    move-exception p2

    .line 15
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    .line 16
    throw p2
.end method

.method public final b(Landroidx/concurrent/futures/AbstractResolvableFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/AbstractResolvableFuture<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_1
    iget-object v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    .line 4
    if-ne v0, p2, :cond_a

    .line 6
    iput-object p3, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->a:Ljava/lang/Object;

    .line 8
    const/4 p2, 0x1

    .line 9
    monitor-exit p1

    .line 10
    return p2

    .line 11
    :cond_a
    const/4 p2, 0x0

    .line 12
    monitor-exit p1

    .line 13
    return p2

    .line 14
    :catchall_d
    move-exception p2

    .line 15
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    .line 16
    throw p2
.end method

.method public final c(Landroidx/concurrent/futures/AbstractResolvableFuture;Landroidx/concurrent/futures/AbstractResolvableFuture$g;Landroidx/concurrent/futures/AbstractResolvableFuture$g;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/concurrent/futures/AbstractResolvableFuture<",
            "*>;",
            "Landroidx/concurrent/futures/AbstractResolvableFuture$g;",
            "Landroidx/concurrent/futures/AbstractResolvableFuture$g;",
            ")Z"
        }
    .end annotation

    .line 1
    monitor-enter p1

    .line 2
    :try_start_1
    iget-object v0, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    .line 4
    if-ne v0, p2, :cond_a

    .line 6
    iput-object p3, p1, Landroidx/concurrent/futures/AbstractResolvableFuture;->c:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    .line 8
    const/4 p2, 0x1

    .line 9
    monitor-exit p1

    .line 10
    return p2

    .line 11
    :cond_a
    const/4 p2, 0x0

    .line 12
    monitor-exit p1

    .line 13
    return p2

    .line 14
    :catchall_d
    move-exception p2

    .line 15
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    .line 16
    throw p2
.end method

.method public final d(Landroidx/concurrent/futures/AbstractResolvableFuture$g;Landroidx/concurrent/futures/AbstractResolvableFuture$g;)V
    .registers 3

    .line 1
    iput-object p2, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->b:Landroidx/concurrent/futures/AbstractResolvableFuture$g;

    .line 3
    return-void
.end method

.method public final e(Landroidx/concurrent/futures/AbstractResolvableFuture$g;Ljava/lang/Thread;)V
    .registers 3

    .line 1
    iput-object p2, p1, Landroidx/concurrent/futures/AbstractResolvableFuture$g;->a:Ljava/lang/Thread;

    .line 3
    return-void
.end method
