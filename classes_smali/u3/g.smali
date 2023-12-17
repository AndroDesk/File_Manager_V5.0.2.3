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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lv3/l;I)V
    .registers 3
    .param p1  # Lv3/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    iput-object p1, p0, Lu3/g;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    iput p2, p0, Lu3/g;->c:I

    instance-of p2, p1, Lp3/w;

    if-eqz p2, :cond_e

    check-cast p1, Lp3/w;

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    if-nez p1, :cond_13

    sget-object p1, Lp3/v;->a:Lp3/w;

    :cond_13
    iput-object p1, p0, Lu3/g;->d:Lp3/w;

    new-instance p1, Lu3/i;

    invoke-direct {p1}, Lu3/i;-><init>()V

    iput-object p1, p0, Lu3/g;->e:Lu3/i;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/g;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    :goto_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lu3/g;->e:Lu3/i;

    invoke-virtual {v1}, Lu3/i;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_29

    :try_start_b
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_f

    goto :goto_15

    :catchall_f
    move-exception v1

    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v2, v1}, Lkotlinx/coroutines/a;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_15
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lu3/g;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v1}, Lkotlinx/coroutines/CoroutineDispatcher;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lu3/g;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v0, p0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->s(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    return-void

    :cond_29
    iget-object v0, p0, Lu3/g;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2c
    iget v1, p0, Lu3/g;->runningWorkers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lu3/g;->runningWorkers:I

    iget-object v1, p0, Lu3/g;->e:Lu3/i;

    invoke-virtual {v1}, Lu3/i;->c()I

    move-result v1
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_46

    if-nez v1, :cond_3c

    monitor-exit v0

    return-void

    :cond_3c
    :try_start_3c
    iget v1, p0, Lu3/g;->runningWorkers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lu3/g;->runningWorkers:I

    sget-object v1, Ly2/e;->a:Ly2/e;
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_46

    monitor-exit v0

    goto :goto_0

    :catchall_46
    move-exception v1

    monitor-exit v0

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

    iget-object p1, p0, Lu3/g;->e:Lu3/i;

    invoke-virtual {p1, p2}, Lu3/i;->a(Ljava/lang/Object;)Z

    iget p1, p0, Lu3/g;->runningWorkers:I

    iget p2, p0, Lu3/g;->c:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, p2, :cond_f

    move p1, v0

    goto :goto_10

    :cond_f
    move p1, v1

    :goto_10
    if-eqz p1, :cond_13

    goto :goto_2d

    :cond_13
    iget-object p1, p0, Lu3/g;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_16
    iget p2, p0, Lu3/g;->runningWorkers:I

    iget v2, p0, Lu3/g;->c:I
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_2e

    if-lt p2, v2, :cond_1f

    monitor-exit p1

    move v0, v1

    goto :goto_25

    :cond_1f
    :try_start_1f
    iget p2, p0, Lu3/g;->runningWorkers:I

    add-int/2addr p2, v0

    iput p2, p0, Lu3/g;->runningWorkers:I
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2e

    monitor-exit p1

    :goto_25
    if-nez v0, :cond_28

    goto :goto_2d

    :cond_28
    iget-object p1, p0, Lu3/g;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {p1, p0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->s(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    :goto_2d
    return-void

    :catchall_2e
    move-exception p2

    monitor-exit p1

    throw p2
.end method
