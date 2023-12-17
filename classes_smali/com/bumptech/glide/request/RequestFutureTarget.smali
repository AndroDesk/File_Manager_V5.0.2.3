.class public Lcom/bumptech/glide/request/RequestFutureTarget;
.super Ljava/lang/Object;
.source "RequestFutureTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/FutureTarget;
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/FutureTarget<",
        "TR;>;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_WAITER:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;


# instance fields
.field private final assertBackgroundThread:Z

.field private exception:Lcom/bumptech/glide/load/engine/GlideException;

.field private final height:I

.field private isCancelled:Z

.field private loadFailed:Z

.field private request:Lcom/bumptech/glide/request/Request;

.field private resource:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private resultReceived:Z

.field private final waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

.field private final width:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;-><init>()V

    .line 6
    sput-object v0, Lcom/bumptech/glide/request/RequestFutureTarget;->DEFAULT_WAITER:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    .line 8
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    .line 1
    sget-object v0, Lcom/bumptech/glide/request/RequestFutureTarget;->DEFAULT_WAITER:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/bumptech/glide/request/RequestFutureTarget;-><init>(IIZLcom/bumptech/glide/request/RequestFutureTarget$Waiter;)V

    return-void
.end method

.method public constructor <init>(IIZLcom/bumptech/glide/request/RequestFutureTarget$Waiter;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->width:I

    .line 4
    iput p2, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->height:I

    .line 5
    iput-boolean p3, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->assertBackgroundThread:Z

    .line 6
    iput-object p4, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    return-void
.end method

.method private declared-synchronized doGet(Ljava/lang/Long;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TR;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->assertBackgroundThread:Z

    .line 4
    if-eqz v0, :cond_e

    .line 6
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestFutureTarget;->isDone()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_e

    .line 12
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertBackgroundThread()V

    .line 15
    :cond_e
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    .line 17
    if-nez v0, :cond_87

    .line 19
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->loadFailed:Z

    .line 21
    if-nez v0, :cond_7f

    .line 23
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z

    .line 25
    if-eqz v0, :cond_1e

    .line 27
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_8d

    .line 29
    monitor-exit p0

    .line 30
    return-object p1

    .line 31
    :cond_1e
    const-wide/16 v0, 0x0

    .line 33
    if-nez p1, :cond_28

    .line 35
    :try_start_22
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    .line 37
    invoke-virtual {p1, p0, v0, v1}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->waitForTimeout(Ljava/lang/Object;J)V

    .line 40
    goto :goto_4f

    .line 41
    :cond_28
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 44
    move-result-wide v2

    .line 45
    cmp-long v0, v2, v0

    .line 47
    if-lez v0, :cond_4f

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    move-result-wide v0

    .line 53
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 56
    move-result-wide v2

    .line 57
    add-long/2addr v2, v0

    .line 58
    :goto_39
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestFutureTarget;->isDone()Z

    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_4f

    .line 64
    cmp-long p1, v0, v2

    .line 66
    if-gez p1, :cond_4f

    .line 68
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    .line 70
    sub-long v0, v2, v0

    .line 72
    invoke-virtual {p1, p0, v0, v1}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->waitForTimeout(Ljava/lang/Object;J)V

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 78
    move-result-wide v0

    .line 79
    goto :goto_39

    .line 80
    :cond_4f
    :goto_4f
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_79

    .line 86
    iget-boolean p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->loadFailed:Z

    .line 88
    if-nez p1, :cond_71

    .line 90
    iget-boolean p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    .line 92
    if-nez p1, :cond_6b

    .line 94
    iget-boolean p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z

    .line 96
    if-eqz p1, :cond_65

    .line 98
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_22 .. :try_end_63} :catchall_8d

    .line 100
    monitor-exit p0

    .line 101
    return-object p1

    .line 102
    :cond_65
    :try_start_65
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    .line 104
    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .line 107
    throw p1

    .line 108
    :cond_6b
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 110
    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    .line 113
    throw p1

    .line 114
    :cond_71
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    .line 116
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    .line 118
    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 121
    throw p1

    .line 122
    :cond_79
    new-instance p1, Ljava/lang/InterruptedException;

    .line 124
    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    .line 127
    throw p1

    .line 128
    :cond_7f
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    .line 130
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    .line 132
    invoke-direct {p1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 135
    throw p1

    .line 136
    :cond_87
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 138
    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    .line 141
    throw p1
    :try_end_8d
    .catchall {:try_start_65 .. :try_end_8d} :catchall_8d

    .line 142
    :catchall_8d
    move-exception p1

    .line 143
    monitor-exit p0

    .line 144
    throw p1
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/bumptech/glide/request/RequestFutureTarget;->isDone()Z

    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_a

    .line 8
    const/4 p1, 0x0

    .line 9
    monitor-exit p0

    .line 10
    return p1

    .line 11
    :cond_a
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    .line 14
    iget-object v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    .line 16
    invoke-virtual {v1, p0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->notifyAll(Ljava/lang/Object;)V

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz p1, :cond_1a

    .line 22
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;

    .line 24
    iput-object v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;

    .line 26
    move-object v1, p1

    .line 27
    :cond_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_21

    .line 28
    if-eqz v1, :cond_20

    .line 30
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 33
    :cond_20
    return v0

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    .line 36
    throw p1
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/RequestFutureTarget;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .line 3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/RequestFutureTarget;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getRequest()Lcom/bumptech/glide/request/Request;
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_5
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->width:I

    .line 3
    iget v1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->height:I

    .line 5
    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    .line 8
    return-void
.end method

.method public declared-synchronized isCancelled()Z
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_5
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized isDone()Z
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->isCancelled:Z

    .line 4
    if-nez v0, :cond_10

    .line 6
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z

    .line 8
    if-nez v0, :cond_10

    .line 10
    iget-boolean v0, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->loadFailed:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    .line 12
    if-eqz v0, :cond_e

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 18
    :goto_11
    monitor-exit p0

    .line 19
    return v0

    .line 20
    :catchall_13
    move-exception v0

    .line 21
    monitor-exit p0

    .line 22
    throw v0
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public declared-synchronized onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "TR;>;Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    .line 2
    :try_start_2
    iput-boolean p2, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->loadFailed:Z

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    .line 4
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->notifyAll(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_e

    const/4 p1, 0x0

    .line 5
    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public declared-synchronized onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-TR;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 p2, 0x1

    .line 2
    :try_start_2
    iput-boolean p2, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resultReceived:Z

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->resource:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->waiter:Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;->notifyAll(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_e

    const/4 p1, 0x0

    .line 5
    monitor-exit p0

    return p1

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStop()V
    .registers 1

    return-void
.end method

.method public removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 2

    return-void
.end method

.method public declared-synchronized setRequest(Lcom/bumptech/glide/request/Request;)V
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iput-object p1, p0, Lcom/bumptech/glide/request/RequestFutureTarget;->request:Lcom/bumptech/glide/request/Request;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_5
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method
