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

    .line 1
    new-instance v0, Lkotlinx/coroutines/c;

    .line 3
    invoke-direct {v0}, Lkotlinx/coroutines/c;-><init>()V

    .line 6
    sput-object v0, Lkotlinx/coroutines/c;->g:Lkotlinx/coroutines/c;

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lp3/d0;->w(Z)V

    .line 12
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    const-wide/16 v1, 0x3e8

    .line 16
    :try_start_f
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    .line 18
    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    .line 21
    move-result-object v1
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_15} :catch_16

    .line 22
    goto :goto_1a

    .line 23
    :catch_16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    move-result-object v1

    .line 27
    :goto_1a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 30
    move-result-wide v1

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 34
    move-result-wide v0

    .line 35
    sput-wide v0, Lkotlinx/coroutines/c;->h:J

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/d;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Runnable;)V
    .registers 4
    .param p1  # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lkotlinx/coroutines/c;->debugStatus:I

    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_7

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    :goto_8
    if-nez v0, :cond_e

    .line 11
    invoke-super {p0, p1}, Lkotlinx/coroutines/d;->A(Ljava/lang/Runnable;)V

    .line 14
    return-void

    .line 15
    :cond_e
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 17
    const-string v0, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    .line 19
    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p1
.end method

.method public final declared-synchronized G()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget v0, Lkotlinx/coroutines/c;->debugStatus:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x3

    .line 6
    if-eq v0, v1, :cond_c

    .line 8
    if-ne v0, v2, :cond_a

    .line 10
    goto :goto_c

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    :goto_c
    const/4 v0, 0x1

    .line 14
    :goto_d
    if-nez v0, :cond_11

    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :cond_11
    :try_start_11
    sput v2, Lkotlinx/coroutines/c;->debugStatus:I

    .line 20
    invoke-virtual {p0}, Lkotlinx/coroutines/d;->E()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1b

    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_1b
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0
.end method

.method public final run()V
    .registers 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    sget-object v0, Lp3/y0;->a:Ljava/lang/ThreadLocal;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_8
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_91

    .line 10
    :try_start_9
    sget v0, Lkotlinx/coroutines/c;->debugStatus:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_93

    .line 12
    const/4 v3, 0x3

    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x1

    .line 16
    if-eq v0, v4, :cond_16

    .line 18
    if-ne v0, v3, :cond_14

    .line 20
    goto :goto_16

    .line 21
    :cond_14
    move v0, v5

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    :goto_16
    move v0, v6

    .line 24
    :goto_17
    if-eqz v0, :cond_1c

    .line 26
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_91

    .line 27
    move v0, v5

    .line 28
    goto :goto_23

    .line 29
    :cond_1c
    :try_start_1c
    sput v6, Lkotlinx/coroutines/c;->debugStatus:I

    .line 31
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_93

    .line 34
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_91

    .line 35
    move v0, v6

    .line 36
    :goto_23
    if-nez v0, :cond_34

    .line 38
    sput-object v2, Lkotlinx/coroutines/c;->_thread:Ljava/lang/Thread;

    .line 40
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/c;->G()V

    .line 43
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/d;->C()Z

    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_33

    .line 49
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/c;->y()Ljava/lang/Thread;

    .line 52
    :cond_33
    return-void

    .line 53
    :cond_34
    const-wide v7, 0x7fffffffffffffffL

    .line 58
    move-wide v9, v7

    .line 59
    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 62
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/d;->D()J

    .line 65
    move-result-wide v11

    .line 66
    cmp-long v0, v11, v7

    .line 68
    const-wide/16 v13, 0x0

    .line 70
    if-nez v0, :cond_6d

    .line 72
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 75
    move-result-wide v15

    .line 76
    cmp-long v0, v9, v7

    .line 78
    if-nez v0, :cond_52

    .line 80
    sget-wide v9, Lkotlinx/coroutines/c;->h:J
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_91

    .line 82
    add-long/2addr v9, v15

    .line 83
    :cond_52
    sub-long v15, v9, v15

    .line 85
    cmp-long v0, v15, v13

    .line 87
    if-gtz v0, :cond_67

    .line 89
    sput-object v2, Lkotlinx/coroutines/c;->_thread:Ljava/lang/Thread;

    .line 91
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/c;->G()V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/d;->C()Z

    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_66

    .line 100
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/c;->y()Ljava/lang/Thread;

    .line 103
    :cond_66
    return-void

    .line 104
    :cond_67
    cmp-long v0, v11, v15

    .line 106
    if-lez v0, :cond_6e

    .line 108
    move-wide v11, v15

    .line 109
    goto :goto_6e

    .line 110
    :cond_6d
    move-wide v9, v7

    .line 111
    :cond_6e
    :goto_6e
    cmp-long v0, v11, v13

    .line 113
    if-lez v0, :cond_3a

    .line 115
    :try_start_72
    sget v0, Lkotlinx/coroutines/c;->debugStatus:I
    :try_end_74
    .catchall {:try_start_72 .. :try_end_74} :catchall_91

    .line 117
    if-eq v0, v4, :cond_7b

    .line 119
    if-ne v0, v3, :cond_79

    .line 121
    goto :goto_7b

    .line 122
    :cond_79
    move v0, v5

    .line 123
    goto :goto_7c

    .line 124
    :cond_7b
    :goto_7b
    move v0, v6

    .line 125
    :goto_7c
    if-eqz v0, :cond_8d

    .line 127
    sput-object v2, Lkotlinx/coroutines/c;->_thread:Ljava/lang/Thread;

    .line 129
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/c;->G()V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/d;->C()Z

    .line 135
    move-result v0

    .line 136
    if-nez v0, :cond_8c

    .line 138
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/c;->y()Ljava/lang/Thread;

    .line 141
    :cond_8c
    return-void

    .line 142
    :cond_8d
    :try_start_8d
    invoke-static {v1, v11, v12}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 145
    goto :goto_3a

    .line 146
    :catchall_91
    move-exception v0

    .line 147
    goto :goto_96

    .line 148
    :catchall_93
    move-exception v0

    .line 149
    monitor-exit p0

    .line 150
    throw v0
    :try_end_96
    .catchall {:try_start_8d .. :try_end_96} :catchall_91

    .line 151
    :goto_96
    sput-object v2, Lkotlinx/coroutines/c;->_thread:Ljava/lang/Thread;

    .line 153
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/c;->G()V

    .line 156
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/d;->C()Z

    .line 159
    move-result v2

    .line 160
    if-nez v2, :cond_a4

    .line 162
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/c;->y()Ljava/lang/Thread;

    .line 165
    :cond_a4
    throw v0
.end method

.method public final shutdown()V
    .registers 2

    .line 1
    const/4 v0, 0x4

    .line 2
    sput v0, Lkotlinx/coroutines/c;->debugStatus:I

    .line 4
    invoke-super {p0}, Lkotlinx/coroutines/d;->shutdown()V

    .line 7
    return-void
.end method

.method public final y()Ljava/lang/Thread;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/c;->_thread:Ljava/lang/Thread;

    .line 3
    if-nez v0, :cond_1e

    .line 5
    monitor-enter p0

    .line 6
    :try_start_5
    sget-object v0, Lkotlinx/coroutines/c;->_thread:Ljava/lang/Thread;

    .line 8
    if-nez v0, :cond_19

    .line 10
    new-instance v0, Ljava/lang/Thread;

    .line 12
    const-string v1, "kotlinx.coroutines.DefaultExecutor"

    .line 14
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 17
    sput-object v0, Lkotlinx/coroutines/c;->_thread:Ljava/lang/Thread;

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1b

    .line 26
    :cond_19
    monitor-exit p0

    .line 27
    goto :goto_1e

    .line 28
    :catchall_1b
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0

    .line 31
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

    .line 1
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 3
    const-string p2, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    .line 5
    invoke-direct {p1, p2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method
