.class public final Lkotlinx/coroutines/c;
.super Lkotlinx/coroutines/d;
.source "DefaultExecutor.kt"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static volatile _thread:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static volatile debugStatus:I

.field public static final g:Lkotlinx/coroutines/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:J


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lkotlinx/coroutines/c;

    invoke-direct {v0}, Lkotlinx/coroutines/c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/c;->g:Lkotlinx/coroutines/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lp3/d0;->w(Z)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    :try_start_f
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/c;->h:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlinx/coroutines/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Runnable;)V
    .registers 4
    .param p1  # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget v0, Lkotlinx/coroutines/c;->debugStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lkotlinx/coroutines/d;->A(Ljava/lang/Runnable;)V

    return-void

    :cond_e
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v0, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized G()V
    .registers 4

    monitor-enter p0

    :try_start_1
    sget v0, Lkotlinx/coroutines/c;->debugStatus:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq v0, v1, :cond_c

    if-ne v0, v2, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    if-nez v0, :cond_11

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    sput v2, Lkotlinx/coroutines/c;->debugStatus:I

    invoke-virtual {p0}, Lkotlinx/coroutines/d;->E()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .registers 18

    move-object/from16 v1, p0

    sget-object v0, Lp3/y0;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v2, 0x0

    :try_start_8
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_91

    :try_start_9
    sget v0, Lkotlinx/coroutines/c;->debugStatus:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_93

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v4, :cond_16

    if-ne v0, v3, :cond_14

    goto :goto_16

    :cond_14
    move v0, v5

    goto :goto_17

    :cond_16
    :goto_16
    move v0, v6

    :goto_17
    if-eqz v0, :cond_1c

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_91

    move v0, v5

    goto :goto_23

    :cond_1c
    :try_start_1c
    sput v6, Lkotlinx/coroutines/c;->debugStatus:I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_93

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_91

    move v0, v6

    :goto_23
    if-nez v0, :cond_34

    sput-object v2, Lkotlinx/coroutines/c;->_thread:Ljava/lang/Thread;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/c;->G()V

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/d;->C()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/c;->y()Ljava/lang/Thread;

    :cond_33
    return-void

    :cond_34
    const-wide v7, 0x7fffffffffffffffL

    move-wide v9, v7

    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/d;->D()J

    move-result-wide v11

    cmp-long v0, v11, v7

    const-wide/16 v13, 0x0

    if-nez v0, :cond_6d

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    cmp-long v0, v9, v7

    if-nez v0, :cond_52

    sget-wide v9, Lkotlinx/coroutines/c;->h:J
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_91

    add-long/2addr v9, v15

    :cond_52
    sub-long v15, v9, v15

    cmp-long v0, v15, v13

    if-gtz v0, :cond_67

    sput-object v2, Lkotlinx/coroutines/c;->_thread:Ljava/lang/Thread;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/c;->G()V

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/d;->C()Z

    move-result v0

    if-nez v0, :cond_66

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/c;->y()Ljava/lang/Thread;

    :cond_66
    return-void

    :cond_67
    cmp-long v0, v11, v15

    if-lez v0, :cond_6e

    move-wide v11, v15

    goto :goto_6e

    :cond_6d
    move-wide v9, v7

    :cond_6e
    :goto_6e
    cmp-long v0, v11, v13

    if-lez v0, :cond_3a

    :try_start_72
    sget v0, Lkotlinx/coroutines/c;->debugStatus:I
    :try_end_74
    .catchall {:try_start_72 .. :try_end_74} :catchall_91

    if-eq v0, v4, :cond_7b

    if-ne v0, v3, :cond_79

    goto :goto_7b

    :cond_79
    move v0, v5

    goto :goto_7c

    :cond_7b
    :goto_7b
    move v0, v6

    :goto_7c
    if-eqz v0, :cond_8d

    sput-object v2, Lkotlinx/coroutines/c;->_thread:Ljava/lang/Thread;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/c;->G()V

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/d;->C()Z

    move-result v0

    if-nez v0, :cond_8c

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/c;->y()Ljava/lang/Thread;

    :cond_8c
    return-void

    :cond_8d
    :try_start_8d
    invoke-static {v1, v11, v12}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_3a

    :catchall_91
    move-exception v0

    goto :goto_96

    :catchall_93
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_96
    .catchall {:try_start_8d .. :try_end_96} :catchall_91

    :goto_96
    sput-object v2, Lkotlinx/coroutines/c;->_thread:Ljava/lang/Thread;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/c;->G()V

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/d;->C()Z

    move-result v2

    if-nez v2, :cond_a4

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/c;->y()Ljava/lang/Thread;

    :cond_a4
    throw v0
.end method

.method public final shutdown()V
    .registers 2

    const/4 v0, 0x4

    sput v0, Lkotlinx/coroutines/c;->debugStatus:I

    invoke-super {p0}, Lkotlinx/coroutines/d;->shutdown()V

    return-void
.end method

.method public final y()Ljava/lang/Thread;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlinx/coroutines/c;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_1e

    monitor-enter p0

    :try_start_5
    sget-object v0, Lkotlinx/coroutines/c;->_thread:Ljava/lang/Thread;

    if-nez v0, :cond_19

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "kotlinx.coroutines.DefaultExecutor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/c;->_thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    goto :goto_1e

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method public final z(JLkotlinx/coroutines/d$a;)V
    .registers 4
    .param p3  # Lkotlinx/coroutines/d$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    const-string p2, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    invoke-direct {p1, p2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
