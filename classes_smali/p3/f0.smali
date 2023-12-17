.class public final Lp3/f0;
.super Lkotlinx/coroutines/e;
.source "Executors.kt"

# interfaces
.implements Lp3/w;


# instance fields
.field public final b:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1  # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/e;-><init>()V

    .line 4
    iput-object p1, p0, Lp3/f0;->b:Ljava/util/concurrent/Executor;

    .line 6
    sget-object v0, Lu3/d;->a:Ljava/lang/reflect/Method;

    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_8
    instance-of v1, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 11
    if-eqz v1, :cond_f

    .line 13
    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    :goto_10
    if-nez p1, :cond_13

    .line 19
    goto :goto_22

    .line 20
    :cond_13
    sget-object v1, Lu3/d;->a:Ljava/lang/reflect/Method;

    .line 22
    if-nez v1, :cond_18

    .line 24
    goto :goto_22

    .line 25
    :cond_18
    const/4 v2, 0x1

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 30
    aput-object v3, v2, v0

    .line 32
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_22

    .line 35
    :catchall_22
    :goto_22
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 3

    .line 1
    iget-object v0, p0, Lp3/f0;->b:Ljava/util/concurrent/Executor;

    .line 3
    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    .line 5
    if-eqz v1, :cond_9

    .line 7
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    if-nez v0, :cond_d

    .line 13
    goto :goto_10

    .line 14
    :cond_d
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 17
    :goto_10
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lp3/f0;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    check-cast p1, Lp3/f0;

    .line 7
    iget-object p1, p1, Lp3/f0;->b:Ljava/util/concurrent/Executor;

    .line 9
    iget-object v0, p0, Lp3/f0;->b:Ljava/util/concurrent/Executor;

    .line 11
    if-ne p1, v0, :cond_e

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    :goto_f
    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lp3/f0;->b:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final s(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .registers 6
    .param p1  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lp3/f0;->b:Ljava/util/concurrent/Executor;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_5} :catch_6

    .line 6
    goto :goto_19

    .line 7
    :catch_6
    move-exception v0

    .line 8
    new-instance v1, Ljava/util/concurrent/CancellationException;

    .line 10
    const-string v2, "The task was rejected"

    .line 12
    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 18
    invoke-static {p1, v1}, Lkotlinx/coroutines/a;->a(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V

    .line 21
    sget-object v0, Lp3/a0;->b:Lv3/a;

    .line 23
    invoke-virtual {v0, p1, p2}, Lv3/a;->s(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 26
    :goto_19
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/f0;->b:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
