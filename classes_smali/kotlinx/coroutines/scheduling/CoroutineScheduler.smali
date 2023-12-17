.class public final Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.super Ljava/lang/Object;
.source "CoroutineScheduler.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;,
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;,
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$a;
    }
.end annotation


# static fields
.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final k:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile synthetic _isTerminated:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final a:I

.field public final b:I

.field public final c:J

.field public volatile synthetic controlState:J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lv3/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lv3/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lu3/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/o<",
            "Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic parkedWorkersStack:J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lu3/r;

    const-string v1, "NOT_IN_STACK"

    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lu3/r;

    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const-string v1, "parkedWorkersStack"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const-string v1, "controlState"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const-string v1, "_isTerminated"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .registers 9
    .param p5  # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:I

    iput p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b:I

    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->c:J

    iput-object p5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d:Ljava/lang/String;

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_11

    move v1, v0

    goto :goto_12

    :cond_11
    move v1, p5

    :goto_12
    if-eqz v1, :cond_a4

    if-lt p2, p1, :cond_18

    move v1, v0

    goto :goto_19

    :cond_18
    move v1, p5

    :goto_19
    const-string v2, "Max pool size "

    if-eqz v1, :cond_83

    const v1, 0x1ffffe

    if-gt p2, v1, :cond_24

    move v1, v0

    goto :goto_25

    :cond_24
    move v1, p5

    :goto_25
    if-eqz v1, :cond_73

    const-wide/16 v1, 0x0

    cmp-long p2, p3, v1

    if-lez p2, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, p5

    :goto_2f
    if-eqz v0, :cond_53

    new-instance p2, Lv3/c;

    invoke-direct {p2}, Lv3/c;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Lv3/c;

    new-instance p2, Lv3/c;

    invoke-direct {p2}, Lv3/c;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    iput-wide v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:J

    new-instance p2, Lu3/o;

    add-int/lit8 p3, p1, 0x1

    invoke-direct {p2, p3}, Lu3/o;-><init>(I)V

    iput-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    int-to-long p1, p1

    const/16 p3, 0x2a

    shl-long/2addr p1, p3

    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    iput p5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:I

    return-void

    :cond_53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Idle worker keep alive time "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " must be positive"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_73
    const-string p1, " should not exceed maximal supported number of threads 2097150"

    invoke-static {v2, p2, p1}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_83
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should be greater than or equals to core pool size "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a4
    const-string p2, "Core pool size "

    const-string p3, " should be at least 1"

    invoke-static {p2, p1, p3}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final a()I
    .registers 11

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_78

    if-eqz v1, :cond_a

    const/4 v1, -0x1

    monitor-exit v0

    return v1

    :cond_a
    :try_start_a
    iget-wide v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    const-wide/32 v3, 0x1fffff

    and-long v5, v1, v3

    long-to-int v5, v5

    const-wide v6, 0x3ffffe00000L

    and-long/2addr v1, v6

    const/16 v6, 0x15

    shr-long/2addr v1, v6

    long-to-int v1, v1

    sub-int v1, v5, v1

    const/4 v2, 0x0

    if-gez v1, :cond_22

    move v1, v2

    :cond_22
    iget v6, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:I
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_78

    if-lt v1, v6, :cond_28

    monitor-exit v0

    return v2

    :cond_28
    :try_start_28
    iget v6, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b:I
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_78

    if-lt v5, v6, :cond_2e

    monitor-exit v0

    return v2

    :cond_2e
    :try_start_2e
    iget-wide v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    and-long/2addr v5, v3

    long-to-int v5, v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    if-lez v5, :cond_40

    iget-object v7, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    invoke-virtual {v7, v5}, Lu3/o;->b(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_40

    move v7, v6

    goto :goto_41

    :cond_40
    move v7, v2

    :goto_41
    if-eqz v7, :cond_6c

    new-instance v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    invoke-direct {v7, p0, v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;-><init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V

    iget-object v8, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    invoke-virtual {v8, v5, v7}, Lu3/o;->c(ILkotlinx/coroutines/scheduling/CoroutineScheduler$b;)V

    sget-object v8, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v8

    and-long/2addr v3, v8

    long-to-int v3, v3

    if-ne v5, v3, :cond_58

    move v2, v6

    :cond_58
    if-eqz v2, :cond_60

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_5d
    .catchall {:try_start_2e .. :try_end_5d} :catchall_78

    add-int/2addr v1, v6

    monitor-exit v0

    return v1

    :cond_60
    :try_start_60
    const-string v1, "Failed requirement."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6c
    const-string v1, "Failed requirement."

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_78
    .catchall {:try_start_60 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final close()V
    .registers 11

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_b1

    :cond_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v3, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    const/4 v4, 0x0

    if-eqz v3, :cond_18

    check-cast v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    goto :goto_19

    :cond_18
    move-object v0, v4

    :goto_19
    if-nez v0, :cond_1c

    goto :goto_25

    :cond_1c
    iget-object v3, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v3, p0}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_26

    :cond_25
    :goto_25
    move-object v0, v4

    :goto_26
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    monitor-enter v3

    :try_start_29
    iget-wide v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_c5

    const-wide/32 v7, 0x1fffff

    and-long/2addr v5, v7

    long-to-int v5, v5

    monitor-exit v3

    if-gt v2, v5, :cond_7b

    move v3, v2

    :goto_34
    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    invoke-virtual {v7, v3}, Lu3/o;->b(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Li3/g;->b(Ljava/lang/Object;)V

    check-cast v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    if-eq v7, v0, :cond_76

    :goto_43
    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_52

    invoke-static {v7}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const-wide/16 v8, 0x2710

    invoke-virtual {v7, v8, v9}, Ljava/lang/Thread;->join(J)V

    goto :goto_43

    :cond_52
    iget-object v7, v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    iget-object v8, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lv3/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v9, v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv3/g;

    if-nez v9, :cond_64

    goto :goto_67

    :cond_64
    invoke-virtual {v8, v9}, Lu3/i;->a(Ljava/lang/Object;)Z

    :goto_67
    invoke-virtual {v7}, Lv3/m;->d()Lv3/g;

    move-result-object v9

    if-nez v9, :cond_6f

    move v9, v1

    goto :goto_73

    :cond_6f
    invoke-virtual {v8, v9}, Lu3/i;->a(Ljava/lang/Object;)Z

    move v9, v2

    :goto_73
    if-eqz v9, :cond_76

    goto :goto_67

    :cond_76
    if-ne v3, v5, :cond_79

    goto :goto_7b

    :cond_79
    move v3, v6

    goto :goto_34

    :cond_7b
    :goto_7b
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    invoke-virtual {v1}, Lu3/i;->b()V

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Lv3/c;

    invoke-virtual {v1}, Lu3/i;->b()V

    :goto_85
    if-nez v0, :cond_89

    move-object v1, v4

    goto :goto_8d

    :cond_89
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a(Z)Lv3/g;

    move-result-object v1

    :goto_8d
    if-nez v1, :cond_b2

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Lv3/c;

    invoke-virtual {v1}, Lu3/i;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/g;

    if-nez v1, :cond_b2

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    invoke-virtual {v1}, Lu3/i;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/g;

    if-nez v1, :cond_b2

    if-nez v0, :cond_a6

    goto :goto_ab

    :cond_a6
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    :goto_ab
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:J

    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    :goto_b1
    return-void

    :cond_b2
    :try_start_b2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b6

    goto :goto_85

    :catchall_b6
    move-exception v1

    :try_start_b7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    invoke-interface {v5, v3, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_c2
    .catchall {:try_start_b7 .. :try_end_c2} :catchall_c3

    goto :goto_85

    :catchall_c3
    move-exception v0

    throw v0

    :catchall_c5
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final e(Ljava/lang/Runnable;Lv3/h;Z)V
    .registers 8
    .param p1  # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lv3/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lv3/k;->e:Lv3/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    instance-of v2, p1, Lv3/g;

    if-eqz v2, :cond_14

    check-cast p1, Lv3/g;

    iput-wide v0, p1, Lv3/g;->a:J

    iput-object p2, p1, Lv3/g;->b:Lv3/h;

    goto :goto_1a

    :cond_14
    new-instance v2, Lv3/j;

    invoke-direct {v2, p1, v0, v1, p2}, Lv3/j;-><init>(Ljava/lang/Runnable;JLv3/h;)V

    move-object p1, v2

    :goto_1a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    instance-of v0, p2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    check-cast p2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    goto :goto_27

    :cond_26
    move-object p2, v1

    :goto_27
    if-nez p2, :cond_2a

    goto :goto_33

    :cond_2a
    iget-object v0, p2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v0, p0}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    move-object v1, p2

    :cond_33
    :goto_33
    const/4 p2, 0x1

    if-nez v1, :cond_37

    goto :goto_4c

    :cond_37
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v2, :cond_3e

    goto :goto_4c

    :cond_3e
    iget-object v0, p1, Lv3/g;->b:Lv3/h;

    invoke-interface {v0}, Lv3/h;->b()I

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v2, :cond_4e

    :goto_4c
    move-object v0, p1

    goto :goto_56

    :cond_4e
    iput-boolean p2, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->f:Z

    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    invoke-virtual {v0, p1, p3}, Lv3/m;->a(Lv3/g;Z)Lv3/g;

    move-result-object v0

    :goto_56
    const/4 v2, 0x0

    if-eqz v0, :cond_84

    iget-object v3, v0, Lv3/g;->b:Lv3/h;

    invoke-interface {v3}, Lv3/h;->b()I

    move-result v3

    if-ne v3, p2, :cond_63

    move v3, p2

    goto :goto_64

    :cond_63
    move v3, v2

    :goto_64
    if-eqz v3, :cond_6d

    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    invoke-virtual {v3, v0}, Lu3/i;->a(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_73

    :cond_6d
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Lv3/c;

    invoke-virtual {v3, v0}, Lu3/i;->a(Ljava/lang/Object;)Z

    move-result v0

    :goto_73
    if-eqz v0, :cond_76

    goto :goto_84

    :cond_76
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    iget-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d:Ljava/lang/String;

    const-string p3, " was terminated"

    invoke-static {p3, p2}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_84
    :goto_84
    if-eqz p3, :cond_89

    if-eqz v1, :cond_89

    goto :goto_8a

    :cond_89
    move p2, v2

    :goto_8a
    iget-object p1, p1, Lv3/g;->b:Lv3/h;

    invoke-interface {p1}, Lv3/h;->b()I

    move-result p1

    if-nez p1, :cond_a9

    if-eqz p2, :cond_95

    return-void

    :cond_95
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j()Z

    move-result p1

    if-eqz p1, :cond_9c

    goto :goto_c6

    :cond_9c
    iget-wide p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i(J)Z

    move-result p1

    if-eqz p1, :cond_a5

    goto :goto_c6

    :cond_a5
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j()Z

    goto :goto_c6

    :cond_a9
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v0, 0x200000

    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v0

    if-eqz p2, :cond_b5

    goto :goto_c6

    :cond_b5
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j()Z

    move-result p1

    if-eqz p1, :cond_bc

    goto :goto_c6

    :cond_bc
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i(J)Z

    move-result p1

    if-eqz p1, :cond_c3

    goto :goto_c6

    :cond_c3
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j()Z

    :goto_c6
    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1  # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lv3/k;->f:Lv3/i;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e(Ljava/lang/Runnable;Lv3/h;Z)V

    return-void
.end method

.method public final g(Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;)V
    .registers 10
    .param p1  # Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lu3/r;

    if-eq v0, v1, :cond_9

    return-void

    :cond_9
    iget-wide v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v4

    long-to-int v0, v0

    const-wide/32 v1, 0x200000

    add-long/2addr v1, v4

    const-wide/32 v6, -0x200000

    and-long/2addr v1, v6

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b()I

    move-result v3

    iget-object v6, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    invoke-virtual {v6, v0}, Lu3/o;->b(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g(Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v3

    or-long/2addr v6, v1

    move-object v2, v0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void
.end method

.method public final h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;II)V
    .registers 12
    .param p1  # Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    :cond_0
    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    const-wide/32 v4, 0x200000

    add-long/2addr v4, v2

    const-wide/32 v6, -0x200000

    and-long/2addr v4, v6

    if-ne v0, p2, :cond_31

    if-nez p3, :cond_30

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c()Ljava/lang/Object;

    move-result-object v0

    :goto_17
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lu3/r;

    if-ne v0, v1, :cond_1d

    const/4 v0, -0x1

    goto :goto_31

    :cond_1d
    if-nez v0, :cond_21

    const/4 v0, 0x0

    goto :goto_31

    :cond_21
    check-cast v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b()I

    move-result v1

    if-eqz v1, :cond_2b

    move v0, v1

    goto :goto_31

    :cond_2b
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c()Ljava/lang/Object;

    move-result-object v0

    goto :goto_17

    :cond_30
    move v0, p3

    :cond_31
    :goto_31
    if-gez v0, :cond_34

    goto :goto_0

    :cond_34
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v0

    or-long/2addr v4, v6

    move-object v0, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final i(J)Z
    .registers 6

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, p1

    long-to-int v0, v0

    const-wide v1, 0x3ffffe00000L

    and-long/2addr p1, v1

    const/16 v1, 0x15

    shr-long/2addr p1, v1

    long-to-int p1, p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    if-gez v0, :cond_14

    move v0, p1

    :cond_14
    iget p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:I

    if-ge v0, p2, :cond_29

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_26

    iget v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:I

    if-le v1, v0, :cond_26

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a()I

    :cond_26
    if-lez p2, :cond_29

    return v0

    :cond_29
    return p1
.end method

.method public final isTerminated()Z
    .registers 2

    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:I

    return v0
.end method

.method public final j()Z
    .registers 13

    :cond_0
    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    invoke-virtual {v1, v0}, Lu3/o;->b(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-nez v6, :cond_16

    const/4 v6, 0x0

    goto :goto_47

    :cond_16
    const-wide/32 v0, 0x200000

    add-long/2addr v0, v2

    const-wide/32 v4, -0x200000

    and-long/2addr v0, v4

    invoke-virtual {v6}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c()Ljava/lang/Object;

    move-result-object v4

    :goto_22
    sget-object v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lu3/r;

    if-ne v4, v9, :cond_28

    move v5, v8

    goto :goto_34

    :cond_28
    if-nez v4, :cond_2c

    move v5, v7

    goto :goto_34

    :cond_2c
    check-cast v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    invoke-virtual {v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b()I

    move-result v5

    if-eqz v5, :cond_57

    :goto_34
    if-gez v5, :cond_37

    goto :goto_0

    :cond_37
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v10, v5

    or-long/2addr v10, v0

    move-object v0, v4

    move-object v1, p0

    move-wide v4, v10

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6, v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g(Ljava/lang/Object;)V

    :goto_47
    if-nez v6, :cond_4a

    return v7

    :cond_4a
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, v6, v8, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const/4 v0, 0x1

    return v0

    :cond_57
    invoke-virtual {v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c()Ljava/lang/Object;

    move-result-object v4

    goto :goto_22
.end method

.method public final toString()Ljava/lang/String;
    .registers 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    invoke-virtual {v1}, Lu3/o;->a()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v3

    :goto_12
    if-ge v8, v1, :cond_8e

    add-int/lit8 v9, v8, 0x1

    iget-object v10, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    invoke-virtual {v10, v8}, Lu3/o;->b(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    if-nez v8, :cond_22

    :cond_20
    :goto_20
    move v8, v9

    goto :goto_12

    :cond_22
    iget-object v10, v8, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    invoke-virtual {v10}, Lv3/m;->c()I

    move-result v10

    iget-object v8, v8, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v11, Lkotlinx/coroutines/scheduling/CoroutineScheduler$a;->a:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v11, v8

    if-eq v8, v3, :cond_8b

    const/4 v11, 0x2

    if-eq v8, v11, :cond_74

    const/4 v11, 0x3

    if-eq v8, v11, :cond_5d

    const/4 v11, 0x4

    if-eq v8, v11, :cond_44

    const/4 v10, 0x5

    if-eq v8, v10, :cond_41

    goto :goto_20

    :cond_41
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    :cond_44
    add-int/lit8 v6, v6, 0x1

    if-lez v10, :cond_20

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x64

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_5d
    add-int/lit8 v2, v2, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x63

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_74
    add-int/lit8 v4, v4, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v10, 0x62

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_8b
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_8e
    iget-wide v8, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[Pool Size {core = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}, Worker States {CPU = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", blocking = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", parked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dormant = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", terminated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}, running workers queues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", global CPU queue size = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Lv3/c;

    invoke-virtual {v0}, Lu3/i;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", global blocking queue size = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    invoke-virtual {v0}, Lu3/i;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Control State {created workers= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v2, 0x1fffff

    and-long/2addr v2, v8

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", blocking tasks = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v2, 0x3ffffe00000L

    and-long/2addr v2, v8

    const/16 v0, 0x15

    shr-long/2addr v2, v0

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", CPUs acquired = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:I

    const-wide v2, 0x7ffffc0000000000L

    and-long/2addr v2, v8

    const/16 v4, 0x2a

    shr-long/2addr v2, v4

    long-to-int v2, v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
