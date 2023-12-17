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

    .line 1
    invoke-direct {p0}, Lp3/e0;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lkotlinx/coroutines/d;->_queue:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lkotlinx/coroutines/d;->_delayed:Ljava/lang/Object;

    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lkotlinx/coroutines/d;->_isCompleted:I

    .line 12
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Runnable;)V
    .registers 3
    .param p1  # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/d;->B(Ljava/lang/Runnable;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_14

    .line 7
    invoke-virtual {p0}, Lp3/e0;->y()Ljava/lang/Thread;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    move-result-object v0

    .line 15
    if-eq v0, p1, :cond_19

    .line 17
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 20
    goto :goto_19

    .line 21
    :cond_14
    sget-object v0, Lkotlinx/coroutines/c;->g:Lkotlinx/coroutines/c;

    .line 23
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/c;->A(Ljava/lang/Runnable;)V

    .line 26
    :cond_19
    :goto_19
    return-void
.end method

.method public final B(Ljava/lang/Runnable;)Z
    .registers 8

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/d;->_queue:Ljava/lang/Object;

    .line 3
    iget v1, p0, Lkotlinx/coroutines/d;->_isCompleted:I

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_8

    .line 8
    return v2

    .line 9
    :cond_8
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_1f

    .line 12
    sget-object v3, Lkotlinx/coroutines/d;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 14
    const/4 v4, 0x0

    .line 15
    :cond_e
    invoke-virtual {v3, p0, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_16

    .line 21
    move v2, v1

    .line 22
    goto :goto_1c

    .line 23
    :cond_16
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_e

    .line 29
    :goto_1c
    if-eqz v2, :cond_0

    .line 31
    return v1

    .line 32
    :cond_1f
    instance-of v3, v0, Lu3/j;

    .line 34
    if-eqz v3, :cond_48

    .line 36
    move-object v3, v0

    .line 37
    check-cast v3, Lu3/j;

    .line 39
    invoke-virtual {v3, p1}, Lu3/j;->a(Ljava/lang/Object;)I

    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_47

    .line 45
    if-eq v4, v1, :cond_33

    .line 47
    const/4 v0, 0x2

    .line 48
    if-eq v4, v0, :cond_32

    .line 50
    goto :goto_0

    .line 51
    :cond_32
    return v2

    .line 52
    :cond_33
    sget-object v2, Lkotlinx/coroutines/d;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 54
    invoke-virtual {v3}, Lu3/j;->e()Lu3/j;

    .line 57
    move-result-object v3

    .line 58
    :cond_39
    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_40

    .line 64
    goto :goto_0

    .line 65
    :cond_40
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-result-object v1

    .line 69
    if-eq v1, v0, :cond_39

    .line 71
    goto :goto_0

    .line 72
    :cond_47
    return v1

    .line 73
    :cond_48
    sget-object v3, Lp3/u;->c:Lu3/r;

    .line 75
    if-ne v0, v3, :cond_4d

    .line 77
    return v2

    .line 78
    :cond_4d
    new-instance v3, Lu3/j;

    .line 80
    const/16 v4, 0x8

    .line 82
    invoke-direct {v3, v4, v1}, Lu3/j;-><init>(IZ)V

    .line 85
    move-object v4, v0

    .line 86
    check-cast v4, Ljava/lang/Runnable;

    .line 88
    invoke-virtual {v3, v4}, Lu3/j;->a(Ljava/lang/Object;)I

    .line 91
    invoke-virtual {v3, p1}, Lu3/j;->a(Ljava/lang/Object;)I

    .line 94
    sget-object v4, Lkotlinx/coroutines/d;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 96
    :cond_5f
    invoke-virtual {v4, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_67

    .line 102
    move v2, v1

    .line 103
    goto :goto_6d

    .line 104
    :cond_67
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object v5

    .line 108
    if-eq v5, v0, :cond_5f

    .line 110
    :goto_6d
    if-eqz v2, :cond_0

    .line 112
    return v1
.end method

.method public final C()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lp3/d0;->d:Lu3/a;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_8

    .line 7
    :goto_6
    move v0, v2

    .line 8
    goto :goto_10

    .line 9
    :cond_8
    iget v3, v0, Lu3/a;->b:I

    .line 11
    iget v0, v0, Lu3/a;->c:I

    .line 13
    if-ne v3, v0, :cond_f

    .line 15
    goto :goto_6

    .line 16
    :cond_f
    move v0, v1

    .line 17
    :goto_10
    if-nez v0, :cond_13

    .line 19
    return v1

    .line 20
    :cond_13
    iget-object v0, p0, Lkotlinx/coroutines/d;->_delayed:Ljava/lang/Object;

    .line 22
    check-cast v0, Lkotlinx/coroutines/d$b;

    .line 24
    if-eqz v0, :cond_20

    .line 26
    invoke-virtual {v0}, Lu3/t;->b()Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_20

    .line 32
    return v1

    .line 33
    :cond_20
    iget-object v0, p0, Lkotlinx/coroutines/d;->_queue:Ljava/lang/Object;

    .line 35
    if-nez v0, :cond_25

    .line 37
    goto :goto_34

    .line 38
    :cond_25
    instance-of v3, v0, Lu3/j;

    .line 40
    if-eqz v3, :cond_30

    .line 42
    check-cast v0, Lu3/j;

    .line 44
    invoke-virtual {v0}, Lu3/j;->d()Z

    .line 47
    move-result v1

    .line 48
    goto :goto_35

    .line 49
    :cond_30
    sget-object v3, Lp3/u;->c:Lu3/r;

    .line 51
    if-ne v0, v3, :cond_35

    .line 53
    :goto_34
    move v1, v2

    .line 54
    :cond_35
    :goto_35
    return v1
.end method

.method public final D()J
    .registers 12

    .line 1
    invoke-virtual {p0}, Lp3/d0;->x()Z

    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    return-wide v1

    .line 10
    :cond_9
    iget-object v0, p0, Lkotlinx/coroutines/d;->_delayed:Ljava/lang/Object;

    .line 12
    check-cast v0, Lkotlinx/coroutines/d$b;

    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v0, :cond_50

    .line 19
    invoke-virtual {v0}, Lu3/t;->b()Z

    .line 22
    move-result v6

    .line 23
    if-nez v6, :cond_50

    .line 25
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 28
    move-result-wide v6

    .line 29
    :cond_1c
    monitor-enter v0

    .line 30
    :try_start_1d
    iget-object v8, v0, Lu3/t;->a:[Lu3/u;

    .line 32
    if-nez v8, :cond_23

    .line 34
    move-object v8, v4

    .line 35
    goto :goto_25

    .line 36
    :cond_23
    aget-object v8, v8, v5
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_4d

    .line 38
    :goto_25
    if-nez v8, :cond_2a

    .line 40
    monitor-exit v0

    .line 41
    move-object v8, v4

    .line 42
    goto :goto_48

    .line 43
    :cond_2a
    :try_start_2a
    check-cast v8, Lkotlinx/coroutines/d$a;

    .line 45
    iget-wide v9, v8, Lkotlinx/coroutines/d$a;->a:J

    .line 47
    sub-long v9, v6, v9

    .line 49
    cmp-long v9, v9, v1

    .line 51
    if-ltz v9, :cond_36

    .line 53
    move v9, v3

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move v9, v5

    .line 56
    :goto_37
    if-eqz v9, :cond_3e

    .line 58
    invoke-virtual {p0, v8}, Lkotlinx/coroutines/d;->B(Ljava/lang/Runnable;)Z

    .line 61
    move-result v8

    .line 62
    goto :goto_3f

    .line 63
    :cond_3e
    move v8, v5

    .line 64
    :goto_3f
    if-eqz v8, :cond_46

    .line 66
    invoke-virtual {v0, v5}, Lu3/t;->c(I)Lu3/u;

    .line 69
    move-result-object v8
    :try_end_45
    .catchall {:try_start_2a .. :try_end_45} :catchall_4d

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move-object v8, v4

    .line 72
    :goto_47
    monitor-exit v0

    .line 73
    :goto_48
    check-cast v8, Lkotlinx/coroutines/d$a;

    .line 75
    if-nez v8, :cond_1c

    .line 77
    goto :goto_50

    .line 78
    :catchall_4d
    move-exception v1

    .line 79
    monitor-exit v0

    .line 80
    throw v1

    .line 81
    :cond_50
    :goto_50
    iget-object v0, p0, Lkotlinx/coroutines/d;->_queue:Ljava/lang/Object;

    .line 83
    if-nez v0, :cond_55

    .line 85
    goto :goto_7f

    .line 86
    :cond_55
    instance-of v6, v0, Lu3/j;

    .line 88
    if-eqz v6, :cond_7b

    .line 90
    move-object v6, v0

    .line 91
    check-cast v6, Lu3/j;

    .line 93
    invoke-virtual {v6}, Lu3/j;->f()Ljava/lang/Object;

    .line 96
    move-result-object v7

    .line 97
    sget-object v8, Lu3/j;->g:Lu3/r;

    .line 99
    if-eq v7, v8, :cond_67

    .line 101
    check-cast v7, Ljava/lang/Runnable;

    .line 103
    goto :goto_97

    .line 104
    :cond_67
    sget-object v7, Lkotlinx/coroutines/d;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 106
    invoke-virtual {v6}, Lu3/j;->e()Lu3/j;

    .line 109
    move-result-object v6

    .line 110
    :cond_6d
    invoke-virtual {v7, p0, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    move-result v8

    .line 114
    if-eqz v8, :cond_74

    .line 116
    goto :goto_50

    .line 117
    :cond_74
    invoke-virtual {v7, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    move-result-object v8

    .line 121
    if-eq v8, v0, :cond_6d

    .line 123
    goto :goto_50

    .line 124
    :cond_7b
    sget-object v6, Lp3/u;->c:Lu3/r;

    .line 126
    if-ne v0, v6, :cond_81

    .line 128
    :goto_7f
    move-object v7, v4

    .line 129
    goto :goto_97

    .line 130
    :cond_81
    sget-object v6, Lkotlinx/coroutines/d;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 132
    :cond_83
    invoke-virtual {v6, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    move-result v7

    .line 136
    if-eqz v7, :cond_8b

    .line 138
    move v6, v3

    .line 139
    goto :goto_92

    .line 140
    :cond_8b
    invoke-virtual {v6, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    move-result-object v7

    .line 144
    if-eq v7, v0, :cond_83

    .line 146
    move v6, v5

    .line 147
    :goto_92
    if-eqz v6, :cond_50

    .line 149
    move-object v7, v0

    .line 150
    check-cast v7, Ljava/lang/Runnable;

    .line 152
    :goto_97
    if-eqz v7, :cond_9d

    .line 154
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 157
    return-wide v1

    .line 158
    :cond_9d
    iget-object v0, p0, Lp3/d0;->d:Lu3/a;

    .line 160
    const-wide v6, 0x7fffffffffffffffL

    .line 165
    if-nez v0, :cond_a7

    .line 167
    goto :goto_b1

    .line 168
    :cond_a7
    iget v8, v0, Lu3/a;->b:I

    .line 170
    iget v0, v0, Lu3/a;->c:I

    .line 172
    if-ne v8, v0, :cond_ae

    .line 174
    goto :goto_af

    .line 175
    :cond_ae
    move v3, v5

    .line 176
    :goto_af
    if-eqz v3, :cond_b3

    .line 178
    :goto_b1
    move-wide v8, v6

    .line 179
    goto :goto_b4

    .line 180
    :cond_b3
    move-wide v8, v1

    .line 181
    :goto_b4
    cmp-long v0, v8, v1

    .line 183
    if-nez v0, :cond_b9

    .line 185
    goto :goto_f6

    .line 186
    :cond_b9
    iget-object v0, p0, Lkotlinx/coroutines/d;->_queue:Ljava/lang/Object;

    .line 188
    if-nez v0, :cond_be

    .line 190
    goto :goto_cb

    .line 191
    :cond_be
    instance-of v3, v0, Lu3/j;

    .line 193
    if-eqz v3, :cond_f1

    .line 195
    check-cast v0, Lu3/j;

    .line 197
    invoke-virtual {v0}, Lu3/j;->d()Z

    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_cb

    .line 203
    goto :goto_f6

    .line 204
    :cond_cb
    :goto_cb
    iget-object v0, p0, Lkotlinx/coroutines/d;->_delayed:Ljava/lang/Object;

    .line 206
    check-cast v0, Lkotlinx/coroutines/d$b;

    .line 208
    if-nez v0, :cond_d2

    .line 210
    goto :goto_dd

    .line 211
    :cond_d2
    monitor-enter v0

    .line 212
    :try_start_d3
    iget-object v3, v0, Lu3/t;->a:[Lu3/u;

    .line 214
    if-nez v3, :cond_d8

    .line 216
    goto :goto_da

    .line 217
    :cond_d8
    aget-object v4, v3, v5
    :try_end_da
    .catchall {:try_start_d3 .. :try_end_da} :catchall_ee

    .line 219
    :goto_da
    monitor-exit v0

    .line 220
    check-cast v4, Lkotlinx/coroutines/d$a;

    .line 222
    :goto_dd
    if-nez v4, :cond_e0

    .line 224
    goto :goto_f5

    .line 225
    :cond_e0
    iget-wide v3, v4, Lkotlinx/coroutines/d$a;->a:J

    .line 227
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 230
    move-result-wide v5

    .line 231
    sub-long/2addr v3, v5

    .line 232
    cmp-long v0, v3, v1

    .line 234
    if-gez v0, :cond_ec

    .line 236
    goto :goto_f6

    .line 237
    :cond_ec
    move-wide v1, v3

    .line 238
    goto :goto_f6

    .line 239
    :catchall_ee
    move-exception v1

    .line 240
    monitor-exit v0

    .line 241
    throw v1

    .line 242
    :cond_f1
    sget-object v3, Lp3/u;->c:Lu3/r;

    .line 244
    if-ne v0, v3, :cond_f6

    .line 246
    :goto_f5
    move-wide v1, v6

    .line 247
    :cond_f6
    :goto_f6
    return-wide v1
.end method

.method public final E()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lkotlinx/coroutines/d;->_queue:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lkotlinx/coroutines/d;->_delayed:Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public final F(JLkotlinx/coroutines/d$a;)V
    .registers 16
    .param p3  # Lkotlinx/coroutines/d$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lkotlinx/coroutines/d;->_isCompleted:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_48

    .line 10
    :cond_9
    iget-object v0, p0, Lkotlinx/coroutines/d;->_delayed:Ljava/lang/Object;

    .line 12
    check-cast v0, Lkotlinx/coroutines/d$b;

    .line 14
    if-nez v0, :cond_2a

    .line 16
    sget-object v5, Lkotlinx/coroutines/d;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 18
    new-instance v6, Lkotlinx/coroutines/d$b;

    .line 20
    invoke-direct {v6, p1, p2}, Lkotlinx/coroutines/d$b;-><init>(J)V

    .line 23
    :cond_16
    invoke-virtual {v5, p0, v1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1d

    .line 29
    goto :goto_23

    .line 30
    :cond_1d
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_16

    .line 36
    :goto_23
    iget-object v0, p0, Lkotlinx/coroutines/d;->_delayed:Ljava/lang/Object;

    .line 38
    invoke-static {v0}, Li3/g;->b(Ljava/lang/Object;)V

    .line 41
    check-cast v0, Lkotlinx/coroutines/d$b;

    .line 43
    :cond_2a
    monitor-enter p3

    .line 44
    :try_start_2b
    iget-object v5, p3, Lkotlinx/coroutines/d$a;->b:Ljava/lang/Object;

    .line 46
    sget-object v6, Lp3/u;->b:Lu3/r;
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_b7

    .line 48
    if-ne v5, v6, :cond_34

    .line 50
    monitor-exit p3

    .line 51
    move v0, v3

    .line 52
    goto :goto_75

    .line 53
    :cond_34
    :try_start_34
    monitor-enter v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_b7

    .line 54
    :try_start_35
    iget-object v5, v0, Lu3/t;->a:[Lu3/u;

    .line 56
    if-nez v5, :cond_3b

    .line 58
    move-object v5, v1

    .line 59
    goto :goto_3d

    .line 60
    :cond_3b
    aget-object v5, v5, v2

    .line 62
    :goto_3d
    check-cast v5, Lkotlinx/coroutines/d$a;

    .line 64
    move-object v6, p0

    .line 65
    check-cast v6, Lkotlinx/coroutines/c;

    .line 67
    iget v6, v6, Lkotlinx/coroutines/d;->_isCompleted:I
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_b4

    .line 69
    if-eqz v6, :cond_4a

    .line 71
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_b7

    .line 72
    monitor-exit p3

    .line 73
    :goto_48
    move v0, v4

    .line 74
    goto :goto_75

    .line 75
    :cond_4a
    const-wide/16 v6, 0x0

    .line 77
    if-nez v5, :cond_51

    .line 79
    :try_start_4e
    iput-wide p1, v0, Lkotlinx/coroutines/d$b;->b:J

    .line 81
    goto :goto_64

    .line 82
    :cond_51
    iget-wide v8, v5, Lkotlinx/coroutines/d$a;->a:J

    .line 84
    sub-long v10, v8, p1

    .line 86
    cmp-long v5, v10, v6

    .line 88
    if-ltz v5, :cond_5a

    .line 90
    move-wide v8, p1

    .line 91
    :cond_5a
    iget-wide v10, v0, Lkotlinx/coroutines/d$b;->b:J

    .line 93
    sub-long v10, v8, v10

    .line 95
    cmp-long v5, v10, v6

    .line 97
    if-lez v5, :cond_64

    .line 99
    iput-wide v8, v0, Lkotlinx/coroutines/d$b;->b:J

    .line 101
    :cond_64
    :goto_64
    iget-wide v8, p3, Lkotlinx/coroutines/d$a;->a:J

    .line 103
    iget-wide v10, v0, Lkotlinx/coroutines/d$b;->b:J

    .line 105
    sub-long/2addr v8, v10

    .line 106
    cmp-long v5, v8, v6

    .line 108
    if-gez v5, :cond_6f

    .line 110
    iput-wide v10, p3, Lkotlinx/coroutines/d$a;->a:J

    .line 112
    :cond_6f
    invoke-virtual {v0, p3}, Lu3/t;->a(Lu3/u;)V
    :try_end_72
    .catchall {:try_start_4e .. :try_end_72} :catchall_b4

    .line 115
    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_b7

    .line 116
    monitor-exit p3

    .line 117
    move v0, v2

    .line 118
    :goto_75
    if-eqz v0, :cond_8c

    .line 120
    if-eq v0, v4, :cond_88

    .line 122
    if-ne v0, v3, :cond_7c

    .line 124
    goto :goto_b0

    .line 125
    :cond_7c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 127
    const-string p2, "unexpected result"

    .line 129
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 132
    move-result-object p2

    .line 133
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 136
    throw p1

    .line 137
    :cond_88
    invoke-virtual {p0, p1, p2, p3}, Lp3/e0;->z(JLkotlinx/coroutines/d$a;)V

    .line 140
    goto :goto_b0

    .line 141
    :cond_8c
    iget-object p1, p0, Lkotlinx/coroutines/d;->_delayed:Ljava/lang/Object;

    .line 143
    check-cast p1, Lkotlinx/coroutines/d$b;

    .line 145
    if-nez p1, :cond_93

    .line 147
    goto :goto_9e

    .line 148
    :cond_93
    monitor-enter p1

    .line 149
    :try_start_94
    iget-object p2, p1, Lu3/t;->a:[Lu3/u;

    .line 151
    if-nez p2, :cond_99

    .line 153
    goto :goto_9b

    .line 154
    :cond_99
    aget-object v1, p2, v2
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_b1

    .line 156
    :goto_9b
    monitor-exit p1

    .line 157
    check-cast v1, Lkotlinx/coroutines/d$a;

    .line 159
    :goto_9e
    if-ne v1, p3, :cond_a1

    .line 161
    move v2, v4

    .line 162
    :cond_a1
    if-eqz v2, :cond_b0

    .line 164
    invoke-virtual {p0}, Lp3/e0;->y()Ljava/lang/Thread;

    .line 167
    move-result-object p1

    .line 168
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 171
    move-result-object p2

    .line 172
    if-eq p2, p1, :cond_b0

    .line 174
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 177
    :cond_b0
    :goto_b0
    return-void

    .line 178
    :catchall_b1
    move-exception p2

    .line 179
    monitor-exit p1

    .line 180
    throw p2

    .line 181
    :catchall_b4
    move-exception p1

    .line 182
    :try_start_b5
    monitor-exit v0

    .line 183
    throw p1
    :try_end_b7
    .catchall {:try_start_b5 .. :try_end_b7} :catchall_b7

    .line 184
    :catchall_b7
    move-exception p1

    .line 185
    monitor-exit p3

    .line 186
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

    .line 1
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/d;->A(Ljava/lang/Runnable;)V

    .line 4
    return-void
.end method

.method public shutdown()V
    .registers 8

    .line 1
    sget-object v0, Lp3/y0;->a:Ljava/lang/ThreadLocal;

    .line 3
    sget-object v0, Lp3/y0;->a:Ljava/lang/ThreadLocal;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 9
    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lkotlinx/coroutines/d;->_isCompleted:I

    .line 12
    :cond_b
    iget-object v2, p0, Lkotlinx/coroutines/d;->_queue:Ljava/lang/Object;

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v2, :cond_25

    .line 17
    sget-object v4, Lkotlinx/coroutines/d;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 19
    sget-object v5, Lp3/u;->c:Lu3/r;

    .line 21
    :cond_14
    invoke-virtual {v4, p0, v1, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1c

    .line 27
    move v3, v0

    .line 28
    goto :goto_22

    .line 29
    :cond_1c
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_14

    .line 35
    :goto_22
    if-eqz v3, :cond_b

    .line 37
    goto :goto_53

    .line 38
    :cond_25
    instance-of v4, v2, Lu3/j;

    .line 40
    if-eqz v4, :cond_2f

    .line 42
    check-cast v2, Lu3/j;

    .line 44
    invoke-virtual {v2}, Lu3/j;->b()Z

    .line 47
    goto :goto_53

    .line 48
    :cond_2f
    sget-object v4, Lp3/u;->c:Lu3/r;

    .line 50
    if-ne v2, v4, :cond_34

    .line 52
    goto :goto_53

    .line 53
    :cond_34
    new-instance v4, Lu3/j;

    .line 55
    const/16 v5, 0x8

    .line 57
    invoke-direct {v4, v5, v0}, Lu3/j;-><init>(IZ)V

    .line 60
    move-object v5, v2

    .line 61
    check-cast v5, Ljava/lang/Runnable;

    .line 63
    invoke-virtual {v4, v5}, Lu3/j;->a(Ljava/lang/Object;)I

    .line 66
    sget-object v5, Lkotlinx/coroutines/d;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 68
    :cond_43
    invoke-virtual {v5, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_4b

    .line 74
    move v3, v0

    .line 75
    goto :goto_51

    .line 76
    :cond_4b
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v6

    .line 80
    if-eq v6, v2, :cond_43

    .line 82
    :goto_51
    if-eqz v3, :cond_b

    .line 84
    :goto_53
    invoke-virtual {p0}, Lkotlinx/coroutines/d;->D()J

    .line 87
    move-result-wide v2

    .line 88
    const-wide/16 v4, 0x0

    .line 90
    cmp-long v0, v2, v4

    .line 92
    if-gtz v0, :cond_5e

    .line 94
    goto :goto_53

    .line 95
    :cond_5e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 98
    move-result-wide v2

    .line 99
    :goto_62
    iget-object v0, p0, Lkotlinx/coroutines/d;->_delayed:Ljava/lang/Object;

    .line 101
    check-cast v0, Lkotlinx/coroutines/d$b;

    .line 103
    if-nez v0, :cond_6a

    .line 105
    move-object v0, v1

    .line 106
    goto :goto_70

    .line 107
    :cond_6a
    invoke-virtual {v0}, Lu3/t;->d()Lu3/u;

    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lkotlinx/coroutines/d$a;

    .line 113
    :goto_70
    if-nez v0, :cond_73

    .line 115
    return-void

    .line 116
    :cond_73
    invoke-virtual {p0, v2, v3, v0}, Lp3/e0;->z(JLkotlinx/coroutines/d$a;)V

    .line 119
    goto :goto_62
.end method
