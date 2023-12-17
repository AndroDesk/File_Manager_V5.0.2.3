.class public final Lu3/g;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "LimitedDispatcher.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lp3/w;


# instance fields
.field public final b:Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:I

.field public final synthetic d:Lp3/w;

.field public final e:Lu3/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/i<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile runningWorkers:I


# direct methods
.method public constructor <init>(Lv3/l;I)V
    .registers 3
    .param p1  # Lv3/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    .line 4
    iput-object p1, p0, Lu3/g;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 6
    iput p2, p0, Lu3/g;->c:I

    .line 8
    instance-of p2, p1, Lp3/w;

    .line 10
    if-eqz p2, :cond_e

    .line 12
    check-cast p1, Lp3/w;

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    :goto_f
    if-nez p1, :cond_13

    .line 18
    sget-object p1, Lp3/v;->a:Lp3/w;

    .line 20
    :cond_13
    iput-object p1, p0, Lu3/g;->d:Lp3/w;

    .line 22
    new-instance p1, Lu3/i;

    .line 24
    invoke-direct {p1}, Lu3/i;-><init>()V

    .line 27
    iput-object p1, p0, Lu3/g;->e:Lu3/i;

    .line 29
    new-instance p1, Ljava/lang/Object;

    .line 31
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lu3/g;->f:Ljava/lang/Object;

    .line 36
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    :cond_1
    iget-object v1, p0, Lu3/g;->e:Lu3/i;

    .line 4
    invoke-virtual {v1}, Lu3/i;->d()Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Runnable;

    .line 10
    if-eqz v1, :cond_29

    .line 12
    :try_start_b
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    .line 15
    goto :goto_15

    .line 16
    :catchall_f
    move-exception v1

    .line 17
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 19
    invoke-static {v2, v1}, Lkotlinx/coroutines/a;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 22
    :goto_15
    add-int/lit8 v0, v0, 0x1

    .line 24
    const/16 v1, 0x10

    .line 26
    if-lt v0, v1, :cond_1

    .line 28
    iget-object v1, p0, Lu3/g;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 30
    invoke-virtual {v1}, Lkotlinx/coroutines/CoroutineDispatcher;->t()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 36
    iget-object v0, p0, Lu3/g;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 38
    invoke-virtual {v0, p0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->s(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 41
    return-void

    .line 42
    :cond_29
    iget-object v0, p0, Lu3/g;->f:Ljava/lang/Object;

    .line 44
    monitor-enter v0

    .line 45
    :try_start_2c
    iget v1, p0, Lu3/g;->runningWorkers:I

    .line 47
    add-int/lit8 v1, v1, -0x1

    .line 49
    iput v1, p0, Lu3/g;->runningWorkers:I

    .line 51
    iget-object v1, p0, Lu3/g;->e:Lu3/i;

    .line 53
    invoke-virtual {v1}, Lu3/i;->c()I

    .line 56
    move-result v1
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_46

    .line 57
    if-nez v1, :cond_3c

    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :cond_3c
    :try_start_3c
    iget v1, p0, Lu3/g;->runningWorkers:I

    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 65
    iput v1, p0, Lu3/g;->runningWorkers:I

    .line 67
    sget-object v1, Ly2/e;->a:Ly2/e;
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_46

    .line 69
    monitor-exit v0

    .line 70
    goto :goto_0

    .line 71
    :catchall_46
    move-exception v1

    .line 72
    monitor-exit v0

    .line 73
    throw v1
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
    iget-object p1, p0, Lu3/g;->e:Lu3/i;

    .line 3
    invoke-virtual {p1, p2}, Lu3/i;->a(Ljava/lang/Object;)Z

    .line 6
    iget p1, p0, Lu3/g;->runningWorkers:I

    .line 8
    iget p2, p0, Lu3/g;->c:I

    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-lt p1, p2, :cond_f

    .line 14
    move p1, v0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move p1, v1

    .line 17
    :goto_10
    if-eqz p1, :cond_13

    .line 19
    goto :goto_2d

    .line 20
    :cond_13
    iget-object p1, p0, Lu3/g;->f:Ljava/lang/Object;

    .line 22
    monitor-enter p1

    .line 23
    :try_start_16
    iget p2, p0, Lu3/g;->runningWorkers:I

    .line 25
    iget v2, p0, Lu3/g;->c:I
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_2e

    .line 27
    if-lt p2, v2, :cond_1f

    .line 29
    monitor-exit p1

    .line 30
    move v0, v1

    .line 31
    goto :goto_25

    .line 32
    :cond_1f
    :try_start_1f
    iget p2, p0, Lu3/g;->runningWorkers:I

    .line 34
    add-int/2addr p2, v0

    .line 35
    iput p2, p0, Lu3/g;->runningWorkers:I
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2e

    .line 37
    monitor-exit p1

    .line 38
    :goto_25
    if-nez v0, :cond_28

    .line 40
    goto :goto_2d

    .line 41
    :cond_28
    iget-object p1, p0, Lu3/g;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 43
    invoke-virtual {p1, p0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->s(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 46
    :goto_2d
    return-void

    .line 47
    :catchall_2e
    move-exception p2

    .line 48
    monitor-exit p1

    .line 49
    throw p2
.end method
