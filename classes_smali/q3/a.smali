.class public final Lq3/a;
.super Lq3/b;
.source "HandlerDispatcher.kt"


# instance fields
.field private volatile _immediate:Lq3/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final d:Z

.field public final e:Lq3/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, p1, v0, v1}, Lq3/a;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lq3/b;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a;->b:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lq3/a;->c:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lq3/a;->d:Z

    if-eqz p3, :cond_d

    move-object p3, p0

    goto :goto_e

    :cond_d
    const/4 p3, 0x0

    .line 5
    :goto_e
    iput-object p3, p0, Lq3/a;->_immediate:Lq3/a;

    .line 6
    iget-object p3, p0, Lq3/a;->_immediate:Lq3/a;

    if-nez p3, :cond_1c

    .line 7
    new-instance p3, Lq3/a;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lq3/a;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p3, p0, Lq3/a;->_immediate:Lq3/a;

    .line 8
    :cond_1c
    iput-object p3, p0, Lq3/a;->e:Lq3/a;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lq3/a;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    check-cast p1, Lq3/a;

    .line 7
    iget-object p1, p1, Lq3/a;->b:Landroid/os/Handler;

    .line 9
    iget-object v0, p0, Lq3/a;->b:Landroid/os/Handler;

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
    iget-object v0, p0, Lq3/a;->b:Landroid/os/Handler;

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
    iget-object v0, p0, Lq3/a;->b:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2b

    .line 9
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    const-string v2, "\' was closed"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-static {p1, v0}, Lkotlinx/coroutines/a;->a(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V

    .line 39
    sget-object v0, Lp3/a0;->b:Lv3/a;

    .line 41
    invoke-virtual {v0, p1, p2}, Lv3/a;->s(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 44
    :cond_2b
    return-void
.end method

.method public final t()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Lq3/a;->d:Z

    .line 3
    if-eqz v0, :cond_17

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lq3/a;->b:Landroid/os/Handler;

    .line 11
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 25
    :goto_18
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lp3/a0;->a:Lv3/b;

    .line 3
    sget-object v0, Lu3/l;->a:Lp3/r0;

    .line 5
    if-ne p0, v0, :cond_9

    .line 7
    const-string v0, "Dispatchers.Main"

    .line 9
    goto :goto_16

    .line 10
    :cond_9
    const/4 v1, 0x0

    .line 11
    :try_start_a
    invoke-virtual {v0}, Lp3/r0;->u()Lp3/r0;

    .line 14
    move-result-object v0
    :try_end_e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_e} :catch_f

    .line 15
    goto :goto_10

    .line 16
    :catch_f
    move-object v0, v1

    .line 17
    :goto_10
    if-ne p0, v0, :cond_15

    .line 19
    const-string v0, "Dispatchers.Main.immediate"

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move-object v0, v1

    .line 23
    :goto_16
    if-nez v0, :cond_2c

    .line 25
    iget-object v0, p0, Lq3/a;->c:Ljava/lang/String;

    .line 27
    if-nez v0, :cond_22

    .line 29
    iget-object v0, p0, Lq3/a;->b:Landroid/os/Handler;

    .line 31
    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    :cond_22
    iget-boolean v1, p0, Lq3/a;->d:Z

    .line 37
    if-eqz v1, :cond_2c

    .line 39
    const-string v1, ".immediate"

    .line 41
    invoke-static {v1, v0}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    :cond_2c
    return-object v0
.end method

.method public final u()Lp3/r0;
    .registers 2

    .line 1
    iget-object v0, p0, Lq3/a;->e:Lq3/a;

    .line 3
    return-object v0
.end method
