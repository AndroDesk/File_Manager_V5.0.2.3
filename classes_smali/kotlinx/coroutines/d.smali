.class public abstract Lkotlinx/coroutines/d;
.super Lp3/e0;
.source "EventLoop.common.kt"

# interfaces
.implements Lp3/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/d$a;,
        Lkotlinx/coroutines/d$b;
    }
.end annotation


# static fields
.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _delayed:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _isCompleted:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _queue:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lkotlinx/coroutines/d;

    const-string v2, "_queue"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lkotlinx/coroutines/d;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_delayed"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/d;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lp3/e0;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/d;->_queue:Ljava/lang/Object;

    iput-object v0, p0, Lkotlinx/coroutines/d;->_delayed:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/d;->_isCompleted:I

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Runnable;)V
    .registers 3
    .param p1  # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/d;->B(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lp3/e0;->y()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p1, :cond_19

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_19

    :cond_14
    sget-object v0, Lkotlinx/coroutines/c;->g:Lkotlinx/coroutines/c;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/c;->A(Ljava/lang/Runnable;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public final B(Ljava/lang/Runnable;)Z
    .registers 8

    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/d;->_queue:Ljava/lang/Object;

    iget v1, p0, Lkotlinx/coroutines/d;->_isCompleted:I

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    return v2

    :cond_8
    const/4 v1, 0x1

    if-nez v0, :cond_1f

    sget-object v3, Lkotlinx/coroutines/d;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v4, 0x0

    :cond_e
    invoke-virtual {v3, p0, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v2, v1

    goto :goto_1c

    :cond_16
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    :goto_1c
    if-eqz v2, :cond_0

    return v1

    :cond_1f
    instance-of v3, v0, Lu3/j;

    if-eqz v3, :cond_48

    move-object v3, v0

    check-cast v3, Lu3/j;

    invoke-virtual {v3, p1}, Lu3/j;->a(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_47

    if-eq v4, v1, :cond_33

    const/4 v0, 0x2

    if-eq v4, v0, :cond_32

    goto :goto_0

    :cond_32
    return v2

    :cond_33
    sget-object v2, Lkotlinx/coroutines/d;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3}, Lu3/j;->e()Lu3/j;

    move-result-object v3

    :cond_39
    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_0

    :cond_40
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_39

    goto :goto_0

    :cond_47
    return v1

    :cond_48
    sget-object v3, Lp3/u;->c:Lu3/r;

    if-ne v0, v3, :cond_4d

    return v2

    :cond_4d
    new-instance v3, Lu3/j;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1}, Lu3/j;-><init>(IZ)V

    move-object v4, v0

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lu3/j;->a(Ljava/lang/Object;)I

    invoke-virtual {v3, p1}, Lu3/j;->a(Ljava/lang/Object;)I

    sget-object v4, Lkotlinx/coroutines/d;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_5f
    invoke-virtual {v4, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    move v2, v1

    goto :goto_6d

    :cond_67
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v0, :cond_5f

    :goto_6d
    if-eqz v2, :cond_0

    return v1
.end method

.method public final C()Z
    .registers 5

    iget-object v0, p0, Lp3/d0;->d:Lu3/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    :goto_6
    move v0, v2

    goto :goto_10

    :cond_8
    iget v3, v0, Lu3/a;->b:I

    iget v0, v0, Lu3/a;->c:I

    if-ne v3, v0, :cond_f

    goto :goto_6

    :cond_f
    move v0, v1

    :goto_10
    if-nez v0, :cond_13

    return v1

    :cond_13
    iget-object v0, p0, Lkotlinx/coroutines/d;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/d$b;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lu3/t;->b()Z

    move-result v0

    if-nez v0, :cond_20

    return v1

    :cond_20
    iget-object v0, p0, Lkotlinx/coroutines/d;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_25

    goto :goto_34

    :cond_25
    instance-of v3, v0, Lu3/j;

    if-eqz v3, :cond_30

    check-cast v0, Lu3/j;

    invoke-virtual {v0}, Lu3/j;->d()Z

    move-result v1

    goto :goto_35

    :cond_30
    sget-object v3, Lp3/u;->c:Lu3/r;

    if-ne v0, v3, :cond_35

    :goto_34
    move v1, v2

    :cond_35
    :goto_35
    return v1
.end method

.method public final D()J
    .registers 12

    invoke-virtual {p0}, Lp3/d0;->x()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_9

    return-wide v1

    :cond_9
    iget-object v0, p0, Lkotlinx/coroutines/d;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/d$b;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Lu3/t;->b()Z

    move-result v6

    if-nez v6, :cond_50

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    :cond_1c
    monitor-enter v0

    :try_start_1d
    iget-object v8, v0, Lu3/t;->a:[Lu3/u;

    if-nez v8, :cond_23

    move-object v8, v4

    goto :goto_25

    :cond_23
    aget-object v8, v8, v5
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_4d

    :goto_25
    if-nez v8, :cond_2a

    monitor-exit v0

    move-object v8, v4

    goto :goto_48

    :cond_2a
    :try_start_2a
    check-cast v8, Lkotlinx/coroutines/d$a;

    iget-wide v9, v8, Lkotlinx/coroutines/d$a;->a:J

    sub-long v9, v6, v9

    cmp-long v9, v9, v1

    if-ltz v9, :cond_36

    move v9, v3

    goto :goto_37

    :cond_36
    move v9, v5

    :goto_37
    if-eqz v9, :cond_3e

    invoke-virtual {p0, v8}, Lkotlinx/coroutines/d;->B(Ljava/lang/Runnable;)Z

    move-result v8

    goto :goto_3f

    :cond_3e
    move v8, v5

    :goto_3f
    if-eqz v8, :cond_46

    invoke-virtual {v0, v5}, Lu3/t;->c(I)Lu3/u;

    move-result-object v8
    :try_end_45
    .catchall {:try_start_2a .. :try_end_45} :catchall_4d

    goto :goto_47

    :cond_46
    move-object v8, v4

    :goto_47
    monitor-exit v0

    :goto_48
    check-cast v8, Lkotlinx/coroutines/d$a;

    if-nez v8, :cond_1c

    goto :goto_50

    :catchall_4d
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_50
    :goto_50
    iget-object v0, p0, Lkotlinx/coroutines/d;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_55

    goto :goto_7f

    :cond_55
    instance-of v6, v0, Lu3/j;

    if-eqz v6, :cond_7b

    move-object v6, v0

    check-cast v6, Lu3/j;

    invoke-virtual {v6}, Lu3/j;->f()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lu3/j;->g:Lu3/r;

    if-eq v7, v8, :cond_67

    check-cast v7, Ljava/lang/Runnable;

    goto :goto_97

    :cond_67
    sget-object v7, Lkotlinx/coroutines/d;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6}, Lu3/j;->e()Lu3/j;

    move-result-object v6

    :cond_6d
    invoke-virtual {v7, p0, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    goto :goto_50

    :cond_74
    invoke-virtual {v7, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v0, :cond_6d

    goto :goto_50

    :cond_7b
    sget-object v6, Lp3/u;->c:Lu3/r;

    if-ne v0, v6, :cond_81

    :goto_7f
    move-object v7, v4

    goto :goto_97

    :cond_81
    sget-object v6, Lkotlinx/coroutines/d;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_83
    invoke-virtual {v6, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8b

    move v6, v3

    goto :goto_92

    :cond_8b
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v0, :cond_83

    move v6, v5

    :goto_92
    if-eqz v6, :cond_50

    move-object v7, v0

    check-cast v7, Ljava/lang/Runnable;

    :goto_97
    if-eqz v7, :cond_9d

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    return-wide v1

    :cond_9d
    iget-object v0, p0, Lp3/d0;->d:Lu3/a;

    const-wide v6, 0x7fffffffffffffffL

    if-nez v0, :cond_a7

    goto :goto_b1

    :cond_a7
    iget v8, v0, Lu3/a;->b:I

    iget v0, v0, Lu3/a;->c:I

    if-ne v8, v0, :cond_ae

    goto :goto_af

    :cond_ae
    move v3, v5

    :goto_af
    if-eqz v3, :cond_b3

    :goto_b1
    move-wide v8, v6

    goto :goto_b4

    :cond_b3
    move-wide v8, v1

    :goto_b4
    cmp-long v0, v8, v1

    if-nez v0, :cond_b9

    goto :goto_f6

    :cond_b9
    iget-object v0, p0, Lkotlinx/coroutines/d;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_be

    goto :goto_cb

    :cond_be
    instance-of v3, v0, Lu3/j;

    if-eqz v3, :cond_f1

    check-cast v0, Lu3/j;

    invoke-virtual {v0}, Lu3/j;->d()Z

    move-result v0

    if-nez v0, :cond_cb

    goto :goto_f6

    :cond_cb
    :goto_cb
    iget-object v0, p0, Lkotlinx/coroutines/d;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/d$b;

    if-nez v0, :cond_d2

    goto :goto_dd

    :cond_d2
    monitor-enter v0

    :try_start_d3
    iget-object v3, v0, Lu3/t;->a:[Lu3/u;

    if-nez v3, :cond_d8

    goto :goto_da

    :cond_d8
    aget-object v4, v3, v5
    :try_end_da
    .catchall {:try_start_d3 .. :try_end_da} :catchall_ee

    :goto_da
    monitor-exit v0

    check-cast v4, Lkotlinx/coroutines/d$a;

    :goto_dd
    if-nez v4, :cond_e0

    goto :goto_f5

    :cond_e0
    iget-wide v3, v4, Lkotlinx/coroutines/d$a;->a:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-gez v0, :cond_ec

    goto :goto_f6

    :cond_ec
    move-wide v1, v3

    goto :goto_f6

    :catchall_ee
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_f1
    sget-object v3, Lp3/u;->c:Lu3/r;

    if-ne v0, v3, :cond_f6

    :goto_f5
    move-wide v1, v6

    :cond_f6
    :goto_f6
    return-wide v1
.end method

.method public final E()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/d;->_queue:Ljava/lang/Object;

    iput-object v0, p0, Lkotlinx/coroutines/d;->_delayed:Ljava/lang/Object;

    return-void
.end method

.method public final F(JLkotlinx/coroutines/d$a;)V
    .registers 16
    .param p3  # Lkotlinx/coroutines/d$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget v0, p0, Lkotlinx/coroutines/d;->_isCompleted:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_9

    goto :goto_48

    :cond_9
    iget-object v0, p0, Lkotlinx/coroutines/d;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/d$b;

    if-nez v0, :cond_2a

    sget-object v5, Lkotlinx/coroutines/d;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v6, Lkotlinx/coroutines/d$b;

    invoke-direct {v6, p1, p2}, Lkotlinx/coroutines/d$b;-><init>(J)V

    :cond_16
    invoke-virtual {v5, p0, v1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_23

    :cond_1d
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    :goto_23
    iget-object v0, p0, Lkotlinx/coroutines/d;->_delayed:Ljava/lang/Object;

    invoke-static {v0}, Li3/g;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/coroutines/d$b;

    :cond_2a
    monitor-enter p3

    :try_start_2b
    iget-object v5, p3, Lkotlinx/coroutines/d$a;->b:Ljava/lang/Object;

    sget-object v6, Lp3/u;->b:Lu3/r;
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_b7

    if-ne v5, v6, :cond_34

    monitor-exit p3

    move v0, v3

    goto :goto_75

    :cond_34
    :try_start_34
    monitor-enter v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_b7

    :try_start_35
    iget-object v5, v0, Lu3/t;->a:[Lu3/u;

    if-nez v5, :cond_3b

    move-object v5, v1

    goto :goto_3d

    :cond_3b
    aget-object v5, v5, v2

    :goto_3d
    check-cast v5, Lkotlinx/coroutines/d$a;

    move-object v6, p0

    check-cast v6, Lkotlinx/coroutines/c;

    iget v6, v6, Lkotlinx/coroutines/d;->_isCompleted:I
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_b4

    if-eqz v6, :cond_4a

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_b7

    monitor-exit p3

    :goto_48
    move v0, v4

    goto :goto_75

    :cond_4a
    const-wide/16 v6, 0x0

    if-nez v5, :cond_51

    :try_start_4e
    iput-wide p1, v0, Lkotlinx/coroutines/d$b;->b:J

    goto :goto_64

    :cond_51
    iget-wide v8, v5, Lkotlinx/coroutines/d$a;->a:J

    sub-long v10, v8, p1

    cmp-long v5, v10, v6

    if-ltz v5, :cond_5a

    move-wide v8, p1

    :cond_5a
    iget-wide v10, v0, Lkotlinx/coroutines/d$b;->b:J

    sub-long v10, v8, v10

    cmp-long v5, v10, v6

    if-lez v5, :cond_64

    iput-wide v8, v0, Lkotlinx/coroutines/d$b;->b:J

    :cond_64
    :goto_64
    iget-wide v8, p3, Lkotlinx/coroutines/d$a;->a:J

    iget-wide v10, v0, Lkotlinx/coroutines/d$b;->b:J

    sub-long/2addr v8, v10

    cmp-long v5, v8, v6

    if-gez v5, :cond_6f

    iput-wide v10, p3, Lkotlinx/coroutines/d$a;->a:J

    :cond_6f
    invoke-virtual {v0, p3}, Lu3/t;->a(Lu3/u;)V
    :try_end_72
    .catchall {:try_start_4e .. :try_end_72} :catchall_b4

    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_b7

    monitor-exit p3

    move v0, v2

    :goto_75
    if-eqz v0, :cond_8c

    if-eq v0, v4, :cond_88

    if-ne v0, v3, :cond_7c

    goto :goto_b0

    :cond_7c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected result"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_88
    invoke-virtual {p0, p1, p2, p3}, Lp3/e0;->z(JLkotlinx/coroutines/d$a;)V

    goto :goto_b0

    :cond_8c
    iget-object p1, p0, Lkotlinx/coroutines/d;->_delayed:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/d$b;

    if-nez p1, :cond_93

    goto :goto_9e

    :cond_93
    monitor-enter p1

    :try_start_94
    iget-object p2, p1, Lu3/t;->a:[Lu3/u;

    if-nez p2, :cond_99

    goto :goto_9b

    :cond_99
    aget-object v1, p2, v2
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_b1

    :goto_9b
    monitor-exit p1

    check-cast v1, Lkotlinx/coroutines/d$a;

    :goto_9e
    if-ne v1, p3, :cond_a1

    move v2, v4

    :cond_a1
    if-eqz v2, :cond_b0

    invoke-virtual {p0}, Lp3/e0;->y()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    if-eq p2, p1, :cond_b0

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_b0
    :goto_b0
    return-void

    :catchall_b1
    move-exception p2

    monitor-exit p1

    throw p2

    :catchall_b4
    move-exception p1

    :try_start_b5
    monitor-exit v0

    throw p1
    :try_end_b7
    .catchall {:try_start_b5 .. :try_end_b7} :catchall_b7

    :catchall_b7
    move-exception p1

    monitor-exit p3

    throw p1
.end method

.method public final s(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .registers 3
    .param p1  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/d;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shutdown()V
    .registers 8

    sget-object v0, Lp3/y0;->a:Ljava/lang/ThreadLocal;

    sget-object v0, Lp3/y0;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/d;->_isCompleted:I

    :cond_b
    iget-object v2, p0, Lkotlinx/coroutines/d;->_queue:Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v2, :cond_25

    sget-object v4, Lkotlinx/coroutines/d;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v5, Lp3/u;->c:Lu3/r;

    :cond_14
    invoke-virtual {v4, p0, v1, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v3, v0

    goto :goto_22

    :cond_1c
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    :goto_22
    if-eqz v3, :cond_b

    goto :goto_53

    :cond_25
    instance-of v4, v2, Lu3/j;

    if-eqz v4, :cond_2f

    check-cast v2, Lu3/j;

    invoke-virtual {v2}, Lu3/j;->b()Z

    goto :goto_53

    :cond_2f
    sget-object v4, Lp3/u;->c:Lu3/r;

    if-ne v2, v4, :cond_34

    goto :goto_53

    :cond_34
    new-instance v4, Lu3/j;

    const/16 v5, 0x8

    invoke-direct {v4, v5, v0}, Lu3/j;-><init>(IZ)V

    move-object v5, v2

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lu3/j;->a(Ljava/lang/Object;)I

    sget-object v5, Lkotlinx/coroutines/d;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_43
    invoke-virtual {v5, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    move v3, v0

    goto :goto_51

    :cond_4b
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v2, :cond_43

    :goto_51
    if-eqz v3, :cond_b

    :goto_53
    invoke-virtual {p0}, Lkotlinx/coroutines/d;->D()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5e

    goto :goto_53

    :cond_5e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    :goto_62
    iget-object v0, p0, Lkotlinx/coroutines/d;->_delayed:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/d$b;

    if-nez v0, :cond_6a

    move-object v0, v1

    goto :goto_70

    :cond_6a
    invoke-virtual {v0}, Lu3/t;->d()Lu3/u;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/d$a;

    :goto_70
    if-nez v0, :cond_73

    return-void

    :cond_73
    invoke-virtual {p0, v2, v3, v0}, Lp3/e0;->z(JLkotlinx/coroutines/d$a;)V

    goto :goto_62
.end method
