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

    .line 1
    new-instance v0, Lu3/r;

    .line 3
    const-string v1, "NOT_IN_STACK"

    .line 5
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lu3/r;

    .line 10
    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 12
    const-string v1, "parkedWorkersStack"

    .line 14
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 20
    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 22
    const-string v1, "controlState"

    .line 24
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 30
    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 32
    const-string v1, "_isTerminated"

    .line 34
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 40
    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .registers 9
    .param p5  # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:I

    .line 6
    iput p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b:I

    .line 8
    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->c:J

    .line 10
    iput-object p5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d:Ljava/lang/String;

    .line 12
    const/4 p5, 0x0

    .line 13
    const/4 v0, 0x1

    .line 14
    if-lt p1, v0, :cond_11

    .line 16
    move v1, v0

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v1, p5

    .line 19
    :goto_12
    if-eqz v1, :cond_a4

    .line 21
    if-lt p2, p1, :cond_18

    .line 23
    move v1, v0

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v1, p5

    .line 26
    :goto_19
    const-string v2, "Max pool size "

    .line 28
    if-eqz v1, :cond_83

    .line 30
    const v1, 0x1ffffe

    .line 33
    if-gt p2, v1, :cond_24

    .line 35
    move v1, v0

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v1, p5

    .line 38
    :goto_25
    if-eqz v1, :cond_73

    .line 40
    const-wide/16 v1, 0x0

    .line 42
    cmp-long p2, p3, v1

    .line 44
    if-lez p2, :cond_2e

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    move v0, p5

    .line 48
    :goto_2f
    if-eqz v0, :cond_53

    .line 50
    new-instance p2, Lv3/c;

    .line 52
    invoke-direct {p2}, Lv3/c;-><init>()V

    .line 55
    iput-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Lv3/c;

    .line 57
    new-instance p2, Lv3/c;

    .line 59
    invoke-direct {p2}, Lv3/c;-><init>()V

    .line 62
    iput-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    .line 64
    iput-wide v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:J

    .line 66
    new-instance p2, Lu3/o;

    .line 68
    add-int/lit8 p3, p1, 0x1

    .line 70
    invoke-direct {p2, p3}, Lu3/o;-><init>(I)V

    .line 73
    iput-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    .line 75
    int-to-long p1, p1

    .line 76
    const/16 p3, 0x2a

    .line 78
    shl-long/2addr p1, p3

    .line 79
    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .line 81
    iput p5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:I

    .line 83
    return-void

    .line 84
    :cond_53
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const-string p2, "Idle worker keep alive time "

    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    const-string p2, " must be positive"

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    throw p2

    .line 116
    :cond_73
    const-string p1, " should not exceed maximal supported number of threads 2097150"

    .line 118
    invoke-static {v2, p2, p1}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 131
    throw p2

    .line 132
    :cond_83
    new-instance p3, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const-string p2, " should be greater than or equals to core pool size "

    .line 145
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object p1

    .line 155
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 161
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    throw p2

    .line 165
    :cond_a4
    const-string p2, "Core pool size "

    .line 167
    const-string p3, " should be at least 1"

    .line 169
    invoke-static {p2, p1, p3}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 172
    move-result-object p1

    .line 173
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 178
    move-result-object p1

    .line 179
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 182
    throw p2
.end method


# virtual methods
.method public final a()I
    .registers 11

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_78

    .line 6
    if-eqz v1, :cond_a

    .line 8
    const/4 v1, -0x1

    .line 9
    monitor-exit v0

    .line 10
    return v1

    .line 11
    :cond_a
    :try_start_a
    iget-wide v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .line 13
    const-wide/32 v3, 0x1fffff

    .line 16
    and-long v5, v1, v3

    .line 18
    long-to-int v5, v5

    .line 19
    const-wide v6, 0x3ffffe00000L

    .line 24
    and-long/2addr v1, v6

    .line 25
    const/16 v6, 0x15

    .line 27
    shr-long/2addr v1, v6

    .line 28
    long-to-int v1, v1

    .line 29
    sub-int v1, v5, v1

    .line 31
    const/4 v2, 0x0

    .line 32
    if-gez v1, :cond_22

    .line 34
    move v1, v2

    .line 35
    :cond_22
    iget v6, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:I
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_78

    .line 37
    if-lt v1, v6, :cond_28

    .line 39
    monitor-exit v0

    .line 40
    return v2

    .line 41
    :cond_28
    :try_start_28
    iget v6, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b:I
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_78

    .line 43
    if-lt v5, v6, :cond_2e

    .line 45
    monitor-exit v0

    .line 46
    return v2

    .line 47
    :cond_2e
    :try_start_2e
    iget-wide v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .line 49
    and-long/2addr v5, v3

    .line 50
    long-to-int v5, v5

    .line 51
    const/4 v6, 0x1

    .line 52
    add-int/2addr v5, v6

    .line 53
    if-lez v5, :cond_40

    .line 55
    iget-object v7, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    .line 57
    invoke-virtual {v7, v5}, Lu3/o;->b(I)Ljava/lang/Object;

    .line 60
    move-result-object v7

    .line 61
    if-nez v7, :cond_40

    .line 63
    move v7, v6

    .line 64
    goto :goto_41

    .line 65
    :cond_40
    move v7, v2

    .line 66
    :goto_41
    if-eqz v7, :cond_6c

    .line 68
    new-instance v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    .line 70
    invoke-direct {v7, p0, v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;-><init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V

    .line 73
    iget-object v8, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    .line 75
    invoke-virtual {v8, v5, v7}, Lu3/o;->c(ILkotlinx/coroutines/scheduling/CoroutineScheduler$b;)V

    .line 78
    sget-object v8, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 80
    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 83
    move-result-wide v8

    .line 84
    and-long/2addr v3, v8

    .line 85
    long-to-int v3, v3

    .line 86
    if-ne v5, v3, :cond_58

    .line 88
    move v2, v6

    .line 89
    :cond_58
    if-eqz v2, :cond_60

    .line 91
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_5d
    .catchall {:try_start_2e .. :try_end_5d} :catchall_78

    .line 94
    add-int/2addr v1, v6

    .line 95
    monitor-exit v0

    .line 96
    return v1

    .line 97
    :cond_60
    :try_start_60
    const-string v1, "Failed requirement."

    .line 99
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 105
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    throw v2

    .line 109
    :cond_6c
    const-string v1, "Failed requirement."

    .line 111
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 113
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 117
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 120
    throw v2
    :try_end_78
    .catchall {:try_start_60 .. :try_end_78} :catchall_78

    .line 121
    :catchall_78
    move-exception v1

    .line 122
    monitor-exit v0

    .line 123
    throw v1
.end method

.method public final close()V
    .registers 11

    .line 1
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_c

    .line 11
    goto/16 :goto_b1

    .line 13
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 16
    move-result-object v0

    .line 17
    instance-of v3, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v3, :cond_18

    .line 22
    check-cast v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move-object v0, v4

    .line 26
    :goto_19
    if-nez v0, :cond_1c

    .line 28
    goto :goto_25

    .line 29
    :cond_1c
    iget-object v3, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 31
    invoke-static {v3, p0}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_25

    .line 37
    goto :goto_26

    .line 38
    :cond_25
    :goto_25
    move-object v0, v4

    .line 39
    :goto_26
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    .line 41
    monitor-enter v3

    .line 42
    :try_start_29
    iget-wide v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_c5

    .line 44
    const-wide/32 v7, 0x1fffff

    .line 47
    and-long/2addr v5, v7

    .line 48
    long-to-int v5, v5

    .line 49
    monitor-exit v3

    .line 50
    if-gt v2, v5, :cond_7b

    .line 52
    move v3, v2

    .line 53
    :goto_34
    add-int/lit8 v6, v3, 0x1

    .line 55
    iget-object v7, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    .line 57
    invoke-virtual {v7, v3}, Lu3/o;->b(I)Ljava/lang/Object;

    .line 60
    move-result-object v7

    .line 61
    invoke-static {v7}, Li3/g;->b(Ljava/lang/Object;)V

    .line 64
    check-cast v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    .line 66
    if-eq v7, v0, :cond_76

    .line 68
    :goto_43
    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    .line 71
    move-result v8

    .line 72
    if-eqz v8, :cond_52

    .line 74
    invoke-static {v7}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 77
    const-wide/16 v8, 0x2710

    .line 79
    invoke-virtual {v7, v8, v9}, Ljava/lang/Thread;->join(J)V

    .line 82
    goto :goto_43

    .line 83
    :cond_52
    iget-object v7, v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    .line 85
    iget-object v8, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    .line 87
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    sget-object v9, Lv3/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 92
    invoke-virtual {v9, v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object v9

    .line 96
    check-cast v9, Lv3/g;

    .line 98
    if-nez v9, :cond_64

    .line 100
    goto :goto_67

    .line 101
    :cond_64
    invoke-virtual {v8, v9}, Lu3/i;->a(Ljava/lang/Object;)Z

    .line 104
    :goto_67
    invoke-virtual {v7}, Lv3/m;->d()Lv3/g;

    .line 107
    move-result-object v9

    .line 108
    if-nez v9, :cond_6f

    .line 110
    move v9, v1

    .line 111
    goto :goto_73

    .line 112
    :cond_6f
    invoke-virtual {v8, v9}, Lu3/i;->a(Ljava/lang/Object;)Z

    .line 115
    move v9, v2

    .line 116
    :goto_73
    if-eqz v9, :cond_76

    .line 118
    goto :goto_67

    .line 119
    :cond_76
    if-ne v3, v5, :cond_79

    .line 121
    goto :goto_7b

    .line 122
    :cond_79
    move v3, v6

    .line 123
    goto :goto_34

    .line 124
    :cond_7b
    :goto_7b
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    .line 126
    invoke-virtual {v1}, Lu3/i;->b()V

    .line 129
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Lv3/c;

    .line 131
    invoke-virtual {v1}, Lu3/i;->b()V

    .line 134
    :goto_85
    if-nez v0, :cond_89

    .line 136
    move-object v1, v4

    .line 137
    goto :goto_8d

    .line 138
    :cond_89
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a(Z)Lv3/g;

    .line 141
    move-result-object v1

    .line 142
    :goto_8d
    if-nez v1, :cond_b2

    .line 144
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Lv3/c;

    .line 146
    invoke-virtual {v1}, Lu3/i;->d()Ljava/lang/Object;

    .line 149
    move-result-object v1

    .line 150
    check-cast v1, Lv3/g;

    .line 152
    if-nez v1, :cond_b2

    .line 154
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    .line 156
    invoke-virtual {v1}, Lu3/i;->d()Ljava/lang/Object;

    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Lv3/g;

    .line 162
    if-nez v1, :cond_b2

    .line 164
    if-nez v0, :cond_a6

    .line 166
    goto :goto_ab

    .line 167
    :cond_a6
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 169
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 172
    :goto_ab
    const-wide/16 v0, 0x0

    .line 174
    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:J

    .line 176
    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .line 178
    :goto_b1
    return-void

    .line 179
    :cond_b2
    :try_start_b2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b6

    .line 182
    goto :goto_85

    .line 183
    :catchall_b6
    move-exception v1

    .line 184
    :try_start_b7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 191
    move-result-object v5

    .line 192
    invoke-interface {v5, v3, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_c2
    .catchall {:try_start_b7 .. :try_end_c2} :catchall_c3

    .line 195
    goto :goto_85

    .line 196
    :catchall_c3
    move-exception v0

    .line 197
    throw v0

    .line 198
    :catchall_c5
    move-exception v0

    .line 199
    monitor-exit v3

    .line 200
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

    .line 1
    sget-object v0, Lv3/k;->e:Lv3/d;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 9
    move-result-wide v0

    .line 10
    instance-of v2, p1, Lv3/g;

    .line 12
    if-eqz v2, :cond_14

    .line 14
    check-cast p1, Lv3/g;

    .line 16
    iput-wide v0, p1, Lv3/g;->a:J

    .line 18
    iput-object p2, p1, Lv3/g;->b:Lv3/h;

    .line 20
    goto :goto_1a

    .line 21
    :cond_14
    new-instance v2, Lv3/j;

    .line 23
    invoke-direct {v2, p1, v0, v1, p2}, Lv3/j;-><init>(Ljava/lang/Runnable;JLv3/h;)V

    .line 26
    move-object p1, v2

    .line 27
    :goto_1a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 30
    move-result-object p2

    .line 31
    instance-of v0, p2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    .line 33
    const/4 v1, 0x0

    .line 34
    if-eqz v0, :cond_26

    .line 36
    check-cast p2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move-object p2, v1

    .line 40
    :goto_27
    if-nez p2, :cond_2a

    .line 42
    goto :goto_33

    .line 43
    :cond_2a
    iget-object v0, p2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 45
    invoke-static {v0, p0}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_33

    .line 51
    move-object v1, p2

    .line 52
    :cond_33
    :goto_33
    const/4 p2, 0x1

    .line 53
    if-nez v1, :cond_37

    .line 55
    goto :goto_4c

    .line 56
    :cond_37
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 58
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 60
    if-ne v0, v2, :cond_3e

    .line 62
    goto :goto_4c

    .line 63
    :cond_3e
    iget-object v0, p1, Lv3/g;->b:Lv3/h;

    .line 65
    invoke-interface {v0}, Lv3/h;->b()I

    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_4e

    .line 71
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 73
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 75
    if-ne v0, v2, :cond_4e

    .line 77
    :goto_4c
    move-object v0, p1

    .line 78
    goto :goto_56

    .line 79
    :cond_4e
    iput-boolean p2, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->f:Z

    .line 81
    iget-object v0, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    .line 83
    invoke-virtual {v0, p1, p3}, Lv3/m;->a(Lv3/g;Z)Lv3/g;

    .line 86
    move-result-object v0

    .line 87
    :goto_56
    const/4 v2, 0x0

    .line 88
    if-eqz v0, :cond_84

    .line 90
    iget-object v3, v0, Lv3/g;->b:Lv3/h;

    .line 92
    invoke-interface {v3}, Lv3/h;->b()I

    .line 95
    move-result v3

    .line 96
    if-ne v3, p2, :cond_63

    .line 98
    move v3, p2

    .line 99
    goto :goto_64

    .line 100
    :cond_63
    move v3, v2

    .line 101
    :goto_64
    if-eqz v3, :cond_6d

    .line 103
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    .line 105
    invoke-virtual {v3, v0}, Lu3/i;->a(Ljava/lang/Object;)Z

    .line 108
    move-result v0

    .line 109
    goto :goto_73

    .line 110
    :cond_6d
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Lv3/c;

    .line 112
    invoke-virtual {v3, v0}, Lu3/i;->a(Ljava/lang/Object;)Z

    .line 115
    move-result v0

    .line 116
    :goto_73
    if-eqz v0, :cond_76

    .line 118
    goto :goto_84

    .line 119
    :cond_76
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 121
    iget-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d:Ljava/lang/String;

    .line 123
    const-string p3, " was terminated"

    .line 125
    invoke-static {p3, p2}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object p2

    .line 129
    invoke-direct {p1, p2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 132
    throw p1

    .line 133
    :cond_84
    :goto_84
    if-eqz p3, :cond_89

    .line 135
    if-eqz v1, :cond_89

    .line 137
    goto :goto_8a

    .line 138
    :cond_89
    move p2, v2

    .line 139
    :goto_8a
    iget-object p1, p1, Lv3/g;->b:Lv3/h;

    .line 141
    invoke-interface {p1}, Lv3/h;->b()I

    .line 144
    move-result p1

    .line 145
    if-nez p1, :cond_a9

    .line 147
    if-eqz p2, :cond_95

    .line 149
    return-void

    .line 150
    :cond_95
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j()Z

    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_9c

    .line 156
    goto :goto_c6

    .line 157
    :cond_9c
    iget-wide p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .line 159
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i(J)Z

    .line 162
    move-result p1

    .line 163
    if-eqz p1, :cond_a5

    .line 165
    goto :goto_c6

    .line 166
    :cond_a5
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j()Z

    .line 169
    goto :goto_c6

    .line 170
    :cond_a9
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 172
    const-wide/32 v0, 0x200000

    .line 175
    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 178
    move-result-wide v0

    .line 179
    if-eqz p2, :cond_b5

    .line 181
    goto :goto_c6

    .line 182
    :cond_b5
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j()Z

    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_bc

    .line 188
    goto :goto_c6

    .line 189
    :cond_bc
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i(J)Z

    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_c3

    .line 195
    goto :goto_c6

    .line 196
    :cond_c3
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j()Z

    .line 199
    :goto_c6
    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1  # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lv3/k;->f:Lv3/i;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e(Ljava/lang/Runnable;Lv3/h;Z)V

    .line 7
    return-void
.end method

.method public final g(Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;)V
    .registers 10
    .param p1  # Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lu3/r;

    .line 7
    if-eq v0, v1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-wide v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:J

    .line 12
    const-wide/32 v0, 0x1fffff

    .line 15
    and-long/2addr v0, v4

    .line 16
    long-to-int v0, v0

    .line 17
    const-wide/32 v1, 0x200000

    .line 20
    add-long/2addr v1, v4

    .line 21
    const-wide/32 v6, -0x200000

    .line 24
    and-long/2addr v1, v6

    .line 25
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b()I

    .line 28
    move-result v3

    .line 29
    iget-object v6, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    .line 31
    invoke-virtual {v6, v0}, Lu3/o;->b(I)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g(Ljava/lang/Object;)V

    .line 38
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 40
    int-to-long v6, v3

    .line 41
    or-long/2addr v6, v1

    .line 42
    move-object v2, v0

    .line 43
    move-object v3, p0

    .line 44
    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_9

    .line 50
    return-void
.end method

.method public final h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;II)V
    .registers 12
    .param p1  # Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :cond_0
    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:J

    .line 3
    const-wide/32 v0, 0x1fffff

    .line 6
    and-long/2addr v0, v2

    .line 7
    long-to-int v0, v0

    .line 8
    const-wide/32 v4, 0x200000

    .line 11
    add-long/2addr v4, v2

    .line 12
    const-wide/32 v6, -0x200000

    .line 15
    and-long/2addr v4, v6

    .line 16
    if-ne v0, p2, :cond_31

    .line 18
    if-nez p3, :cond_30

    .line 20
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    :goto_17
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lu3/r;

    .line 26
    if-ne v0, v1, :cond_1d

    .line 28
    const/4 v0, -0x1

    .line 29
    goto :goto_31

    .line 30
    :cond_1d
    if-nez v0, :cond_21

    .line 32
    const/4 v0, 0x0

    .line 33
    goto :goto_31

    .line 34
    :cond_21
    check-cast v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    .line 36
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b()I

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2b

    .line 42
    move v0, v1

    .line 43
    goto :goto_31

    .line 44
    :cond_2b
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    goto :goto_17

    .line 49
    :cond_30
    move v0, p3

    .line 50
    :cond_31
    :goto_31
    if-gez v0, :cond_34

    .line 52
    goto :goto_0

    .line 53
    :cond_34
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 55
    int-to-long v6, v0

    .line 56
    or-long/2addr v4, v6

    .line 57
    move-object v0, v1

    .line 58
    move-object v1, p0

    .line 59
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 65
    return-void
.end method

.method public final i(J)Z
    .registers 6

    .line 1
    const-wide/32 v0, 0x1fffff

    .line 4
    and-long/2addr v0, p1

    .line 5
    long-to-int v0, v0

    .line 6
    const-wide v1, 0x3ffffe00000L

    .line 11
    and-long/2addr p1, v1

    .line 12
    const/16 v1, 0x15

    .line 14
    shr-long/2addr p1, v1

    .line 15
    long-to-int p1, p1

    .line 16
    sub-int/2addr v0, p1

    .line 17
    const/4 p1, 0x0

    .line 18
    if-gez v0, :cond_14

    .line 20
    move v0, p1

    .line 21
    :cond_14
    iget p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:I

    .line 23
    if-ge v0, p2, :cond_29

    .line 25
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a()I

    .line 28
    move-result p2

    .line 29
    const/4 v0, 0x1

    .line 30
    if-ne p2, v0, :cond_26

    .line 32
    iget v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:I

    .line 34
    if-le v1, v0, :cond_26

    .line 36
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a()I

    .line 39
    :cond_26
    if-lez p2, :cond_29

    .line 41
    return v0

    .line 42
    :cond_29
    return p1
.end method

.method public final isTerminated()Z
    .registers 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:I

    .line 3
    return v0
.end method

.method public final j()Z
    .registers 13

    .line 1
    :cond_0
    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack:J

    .line 3
    const-wide/32 v0, 0x1fffff

    .line 6
    and-long/2addr v0, v2

    .line 7
    long-to-int v0, v0

    .line 8
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    .line 10
    invoke-virtual {v1, v0}, Lu3/o;->b(I)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    move-object v6, v0

    .line 15
    check-cast v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, -0x1

    .line 19
    if-nez v6, :cond_16

    .line 21
    const/4 v6, 0x0

    .line 22
    goto :goto_47

    .line 23
    :cond_16
    const-wide/32 v0, 0x200000

    .line 26
    add-long/2addr v0, v2

    .line 27
    const-wide/32 v4, -0x200000

    .line 30
    and-long/2addr v0, v4

    .line 31
    invoke-virtual {v6}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c()Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    :goto_22
    sget-object v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lu3/r;

    .line 37
    if-ne v4, v9, :cond_28

    .line 39
    move v5, v8

    .line 40
    goto :goto_34

    .line 41
    :cond_28
    if-nez v4, :cond_2c

    .line 43
    move v5, v7

    .line 44
    goto :goto_34

    .line 45
    :cond_2c
    check-cast v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    .line 47
    invoke-virtual {v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b()I

    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_57

    .line 53
    :goto_34
    if-gez v5, :cond_37

    .line 55
    goto :goto_0

    .line 56
    :cond_37
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 58
    int-to-long v10, v5

    .line 59
    or-long/2addr v10, v0

    .line 60
    move-object v0, v4

    .line 61
    move-object v1, p0

    .line 62
    move-wide v4, v10

    .line 63
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v6, v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g(Ljava/lang/Object;)V

    .line 72
    :goto_47
    if-nez v6, :cond_4a

    .line 74
    return v7

    .line 75
    :cond_4a
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 77
    invoke-virtual {v0, v6, v8, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_0

    .line 83
    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 86
    const/4 v0, 0x1

    .line 87
    return v0

    .line 88
    :cond_57
    invoke-virtual {v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c()Ljava/lang/Object;

    .line 91
    move-result-object v4

    .line 92
    goto :goto_22
.end method

.method public final toString()Ljava/lang/String;
    .registers 13
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    .line 8
    invoke-virtual {v1}, Lu3/o;->a()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    move v4, v2

    .line 15
    move v5, v4

    .line 16
    move v6, v5

    .line 17
    move v7, v6

    .line 18
    move v8, v3

    .line 19
    :goto_12
    if-ge v8, v1, :cond_8e

    .line 21
    add-int/lit8 v9, v8, 0x1

    .line 23
    iget-object v10, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    .line 25
    invoke-virtual {v10, v8}, Lu3/o;->b(I)Ljava/lang/Object;

    .line 28
    move-result-object v8

    .line 29
    check-cast v8, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    .line 31
    if-nez v8, :cond_22

    .line 33
    :cond_20
    :goto_20
    move v8, v9

    .line 34
    goto :goto_12

    .line 35
    :cond_22
    iget-object v10, v8, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    .line 37
    invoke-virtual {v10}, Lv3/m;->c()I

    .line 40
    move-result v10

    .line 41
    iget-object v8, v8, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 43
    sget-object v11, Lkotlinx/coroutines/scheduling/CoroutineScheduler$a;->a:[I

    .line 45
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 48
    move-result v8

    .line 49
    aget v8, v11, v8

    .line 51
    if-eq v8, v3, :cond_8b

    .line 53
    const/4 v11, 0x2

    .line 54
    if-eq v8, v11, :cond_74

    .line 56
    const/4 v11, 0x3

    .line 57
    if-eq v8, v11, :cond_5d

    .line 59
    const/4 v11, 0x4

    .line 60
    if-eq v8, v11, :cond_44

    .line 62
    const/4 v10, 0x5

    .line 63
    if-eq v8, v10, :cond_41

    .line 65
    goto :goto_20

    .line 66
    :cond_41
    add-int/lit8 v7, v7, 0x1

    .line 68
    goto :goto_20

    .line 69
    :cond_44
    add-int/lit8 v6, v6, 0x1

    .line 71
    if-lez v10, :cond_20

    .line 73
    new-instance v8, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const/16 v10, 0x64

    .line 83
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v8

    .line 90
    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 93
    goto :goto_20

    .line 94
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    .line 96
    new-instance v8, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const/16 v10, 0x63

    .line 106
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v8

    .line 113
    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 116
    goto :goto_20

    .line 117
    :cond_74
    add-int/lit8 v4, v4, 0x1

    .line 119
    new-instance v8, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    const/16 v10, 0x62

    .line 129
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v8

    .line 136
    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 139
    goto :goto_20

    .line 140
    :cond_8b
    add-int/lit8 v5, v5, 0x1

    .line 142
    goto :goto_20

    .line 143
    :cond_8e
    iget-wide v8, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d:Ljava/lang/String;

    .line 152
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const/16 v3, 0x40

    .line 157
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {p0}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v3, "[Pool Size {core = "

    .line 169
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:I

    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    const-string v3, ", max = "

    .line 179
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b:I

    .line 184
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    const-string v3, "}, Worker States {CPU = "

    .line 189
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    const-string v2, ", blocking = "

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    const-string v2, ", parked = "

    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    const-string v2, ", dormant = "

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    const-string v2, ", terminated = "

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    const-string v2, "}, running workers queues = "

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    const-string v0, ", global CPU queue size = "

    .line 237
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Lv3/c;

    .line 242
    invoke-virtual {v0}, Lu3/i;->c()I

    .line 245
    move-result v0

    .line 246
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    const-string v0, ", global blocking queue size = "

    .line 251
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    .line 256
    invoke-virtual {v0}, Lu3/i;->c()I

    .line 259
    move-result v0

    .line 260
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    const-string v0, ", Control State {created workers= "

    .line 265
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-wide/32 v2, 0x1fffff

    .line 271
    and-long/2addr v2, v8

    .line 272
    long-to-int v0, v2

    .line 273
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    const-string v0, ", blocking tasks = "

    .line 278
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-wide v2, 0x3ffffe00000L

    .line 286
    and-long/2addr v2, v8

    .line 287
    const/16 v0, 0x15

    .line 289
    shr-long/2addr v2, v0

    .line 290
    long-to-int v0, v2

    .line 291
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    const-string v0, ", CPUs acquired = "

    .line 296
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:I

    .line 301
    const-wide v2, 0x7ffffc0000000000L

    .line 306
    and-long/2addr v2, v8

    .line 307
    const/16 v4, 0x2a

    .line 309
    shr-long/2addr v2, v4

    .line 310
    long-to-int v2, v2

    .line 311
    sub-int/2addr v0, v2

    .line 312
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    const-string v0, "}]"

    .line 317
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    move-result-object v0

    .line 324
    return-object v0
.end method
