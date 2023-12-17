.class public final Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;
.super Ljava/lang/Thread;
.source "CoroutineScheduler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# static fields
.field public static final synthetic h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Lv3/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:J

.field public d:J

.field public e:I

.field public f:Z

.field public final synthetic g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

.field private volatile indexInArray:I

.field private volatile nextParkedWorker:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public volatile synthetic workerCtl:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 4
    new-instance p1, Lv3/m;

    invoke-direct {p1}, Lv3/m;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    .line 5
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->workerCtl:I

    .line 7
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lu3/r;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->nextParkedWorker:Ljava/lang/Object;

    .line 8
    sget-object p1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {p1}, Lkotlin/random/Random$Default;->nextInt()I

    move-result p1

    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->e:I

    .line 9
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->f(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lv3/g;
    .registers 12
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 3
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne v0, v1, :cond_9

    .line 9
    goto :goto_32

    .line 10
    :cond_9
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 12
    :cond_b
    iget-wide v6, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .line 14
    const-wide v4, 0x7ffffc0000000000L

    .line 19
    and-long/2addr v4, v6

    .line 20
    const/16 v1, 0x2a

    .line 22
    shr-long/2addr v4, v1

    .line 23
    long-to-int v1, v4

    .line 24
    if-nez v1, :cond_1b

    .line 26
    move v0, v2

    .line 27
    goto :goto_2c

    .line 28
    :cond_1b
    const-wide v4, 0x40000000000L

    .line 33
    sub-long v8, v6, v4

    .line 35
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 37
    move-object v5, v0

    .line 38
    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_b

    .line 44
    move v0, v3

    .line 45
    :goto_2c
    if-eqz v0, :cond_34

    .line 47
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 49
    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 51
    :goto_32
    move v0, v3

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v0, v2

    .line 54
    :goto_35
    const/4 v1, 0x0

    .line 55
    if-eqz v0, :cond_7b

    .line 57
    if-eqz p1, :cond_70

    .line 59
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 61
    iget p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:I

    .line 63
    mul-int/lit8 p1, p1, 0x2

    .line 65
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->d(I)I

    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_47

    .line 71
    goto :goto_48

    .line 72
    :cond_47
    move v3, v2

    .line 73
    :goto_48
    if-eqz v3, :cond_50

    .line 75
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->e()Lv3/g;

    .line 78
    move-result-object p1

    .line 79
    if-nez p1, :cond_7a

    .line 81
    :cond_50
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    sget-object v0, Lv3/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 88
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Lv3/g;

    .line 94
    if-nez v0, :cond_64

    .line 96
    invoke-virtual {p1}, Lv3/m;->d()Lv3/g;

    .line 99
    move-result-object p1

    .line 100
    goto :goto_65

    .line 101
    :cond_64
    move-object p1, v0

    .line 102
    :goto_65
    if-nez p1, :cond_7a

    .line 104
    if-nez v3, :cond_76

    .line 106
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->e()Lv3/g;

    .line 109
    move-result-object p1

    .line 110
    if-nez p1, :cond_7a

    .line 112
    goto :goto_76

    .line 113
    :cond_70
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->e()Lv3/g;

    .line 116
    move-result-object p1

    .line 117
    if-nez p1, :cond_7a

    .line 119
    :cond_76
    :goto_76
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->i(Z)Lv3/g;

    .line 122
    move-result-object p1

    .line 123
    :cond_7a
    return-object p1

    .line 124
    :cond_7b
    if-eqz p1, :cond_9e

    .line 126
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    sget-object v0, Lv3/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 133
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lv3/g;

    .line 139
    if-nez v0, :cond_90

    .line 141
    invoke-virtual {p1}, Lv3/m;->d()Lv3/g;

    .line 144
    move-result-object v0

    .line 145
    :cond_90
    if-nez v0, :cond_a9

    .line 147
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 149
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    .line 151
    invoke-virtual {p1}, Lu3/i;->d()Ljava/lang/Object;

    .line 154
    move-result-object p1

    .line 155
    move-object v0, p1

    .line 156
    check-cast v0, Lv3/g;

    .line 158
    goto :goto_a9

    .line 159
    :cond_9e
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 161
    iget-object p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    .line 163
    invoke-virtual {p1}, Lu3/i;->d()Ljava/lang/Object;

    .line 166
    move-result-object p1

    .line 167
    move-object v0, p1

    .line 168
    check-cast v0, Lv3/g;

    .line 170
    :cond_a9
    :goto_a9
    if-nez v0, :cond_af

    .line 172
    invoke-virtual {p0, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->i(Z)Lv3/g;

    .line 175
    move-result-object v0

    .line 176
    :cond_af
    return-object v0
.end method

.method public final b()I
    .registers 2

    .line 1
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->indexInArray:I

    .line 3
    return v0
.end method

.method public final c()Ljava/lang/Object;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->nextParkedWorker:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public final d(I)I
    .registers 5

    .line 1
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->e:I

    .line 3
    shl-int/lit8 v1, v0, 0xd

    .line 5
    xor-int/2addr v0, v1

    .line 6
    shr-int/lit8 v1, v0, 0x11

    .line 8
    xor-int/2addr v0, v1

    .line 9
    shl-int/lit8 v1, v0, 0x5

    .line 11
    xor-int/2addr v0, v1

    .line 12
    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->e:I

    .line 14
    add-int/lit8 v1, p1, -0x1

    .line 16
    and-int v2, v1, p1

    .line 18
    if-nez v2, :cond_16

    .line 20
    and-int p1, v0, v1

    .line 22
    return p1

    .line 23
    :cond_16
    const v1, 0x7fffffff

    .line 26
    and-int/2addr v0, v1

    .line 27
    rem-int/2addr v0, p1

    .line 28
    return v0
.end method

.method public final e()Lv3/g;
    .registers 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->d(I)I

    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1e

    .line 8
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 10
    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Lv3/c;

    .line 12
    invoke-virtual {v0}, Lu3/i;->d()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lv3/g;

    .line 18
    if-nez v0, :cond_1d

    .line 20
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 22
    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    .line 24
    invoke-virtual {v0}, Lu3/i;->d()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lv3/g;

    .line 30
    :cond_1d
    return-object v0

    .line 31
    :cond_1e
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 33
    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    .line 35
    invoke-virtual {v0}, Lu3/i;->d()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lv3/g;

    .line 41
    if-nez v0, :cond_34

    .line 43
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 45
    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Lv3/c;

    .line 47
    invoke-virtual {v0}, Lu3/i;->d()Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lv3/g;

    .line 53
    :cond_34
    return-object v0
.end method

.method public final f(I)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 8
    iget-object v1, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "-worker-"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    if-nez p1, :cond_16

    .line 20
    const-string v1, "TERMINATED"

    .line 22
    goto :goto_1a

    .line 23
    :cond_16
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 37
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->indexInArray:I

    .line 39
    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->nextParkedWorker:Ljava/lang/Object;

    .line 3
    return-void
.end method

.method public final h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z
    .registers 8
    .param p1  # Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 3
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 5
    if-ne v0, v1, :cond_8

    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v1, 0x0

    .line 10
    :goto_9
    if-eqz v1, :cond_17

    .line 12
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 14
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 16
    const-wide v4, 0x40000000000L

    .line 21
    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 24
    :cond_17
    if-eq v0, p1, :cond_1b

    .line 26
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 28
    :cond_1b
    return v1
.end method

.method public final i(Z)Lv3/g;
    .registers 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 5
    iget-wide v1, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .line 7
    const-wide/32 v3, 0x1fffff

    .line 10
    and-long/2addr v1, v3

    .line 11
    long-to-int v1, v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x2

    .line 14
    if-ge v1, v3, :cond_10

    .line 16
    return-object v2

    .line 17
    :cond_10
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->d(I)I

    .line 20
    move-result v3

    .line 21
    iget-object v4, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 23
    const/4 v5, 0x0

    .line 24
    move v8, v5

    .line 25
    const-wide v9, 0x7fffffffffffffffL

    .line 30
    :cond_1d
    :goto_1d
    const-wide/16 v11, 0x0

    .line 32
    if-ge v8, v1, :cond_78

    .line 34
    add-int/lit8 v8, v8, 0x1

    .line 36
    const/4 v13, 0x1

    .line 37
    add-int/2addr v3, v13

    .line 38
    if-le v3, v1, :cond_28

    .line 40
    move v3, v13

    .line 41
    :cond_28
    iget-object v13, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    .line 43
    invoke-virtual {v13, v3}, Lu3/o;->b(I)Ljava/lang/Object;

    .line 46
    move-result-object v13

    .line 47
    check-cast v13, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    .line 49
    if-eqz v13, :cond_1d

    .line 51
    if-eq v13, v0, :cond_1d

    .line 53
    const-wide/16 v14, -0x1

    .line 55
    if-eqz p1, :cond_41

    .line 57
    iget-object v6, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    .line 59
    iget-object v7, v13, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    .line 61
    invoke-virtual {v6, v7}, Lv3/m;->e(Lv3/m;)J

    .line 64
    move-result-wide v6

    .line 65
    goto :goto_57

    .line 66
    :cond_41
    iget-object v6, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    .line 68
    iget-object v7, v13, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    .line 70
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    invoke-virtual {v7}, Lv3/m;->d()Lv3/g;

    .line 76
    move-result-object v13

    .line 77
    if-eqz v13, :cond_53

    .line 79
    invoke-virtual {v6, v13, v5}, Lv3/m;->a(Lv3/g;Z)Lv3/g;

    .line 82
    move-wide v6, v14

    .line 83
    goto :goto_57

    .line 84
    :cond_53
    invoke-virtual {v6, v7, v5}, Lv3/m;->f(Lv3/m;Z)J

    .line 87
    move-result-wide v6

    .line 88
    :goto_57
    cmp-long v13, v6, v14

    .line 90
    if-nez v13, :cond_6f

    .line 92
    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    .line 94
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    sget-object v3, Lv3/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 99
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Lv3/g;

    .line 105
    if-nez v2, :cond_6e

    .line 107
    invoke-virtual {v1}, Lv3/m;->d()Lv3/g;

    .line 110
    move-result-object v2

    .line 111
    :cond_6e
    return-object v2

    .line 112
    :cond_6f
    cmp-long v11, v6, v11

    .line 114
    if-lez v11, :cond_1d

    .line 116
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 119
    move-result-wide v9

    .line 120
    goto :goto_1d

    .line 121
    :cond_78
    const-wide v6, 0x7fffffffffffffffL

    .line 126
    cmp-long v1, v9, v6

    .line 128
    if-eqz v1, :cond_82

    .line 130
    goto :goto_83

    .line 131
    :cond_82
    move-wide v9, v11

    .line 132
    :goto_83
    iput-wide v9, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->d:J

    .line 134
    return-object v2
.end method

.method public final run()V
    .registers 16

    .line 1
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :cond_3
    :goto_3
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 6
    invoke-virtual {v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->isTerminated()Z

    .line 9
    move-result v3

    .line 10
    if-nez v3, :cond_158

    .line 12
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 14
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 16
    if-eq v3, v4, :cond_158

    .line 18
    iget-boolean v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->f:Z

    .line 20
    invoke-virtual {p0, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a(Z)Lv3/g;

    .line 23
    move-result-object v3

    .line 24
    const-wide/16 v5, 0x0

    .line 26
    if-eqz v3, :cond_7c

    .line 28
    iput-wide v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->d:J

    .line 30
    iget-object v0, v3, Lv3/g;->b:Lv3/h;

    .line 32
    invoke-interface {v0}, Lv3/h;->b()I

    .line 35
    move-result v0

    .line 36
    iput-wide v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c:J

    .line 38
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 40
    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 42
    if-ne v1, v2, :cond_2f

    .line 44
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 46
    iput-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 48
    :cond_2f
    if-nez v0, :cond_32

    .line 50
    goto :goto_4f

    .line 51
    :cond_32
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 53
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_4f

    .line 59
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 61
    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j()Z

    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_43

    .line 67
    goto :goto_4f

    .line 68
    :cond_43
    iget-wide v5, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .line 70
    invoke-virtual {v1, v5, v6}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i(J)Z

    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_4c

    .line 76
    goto :goto_4f

    .line 77
    :cond_4c
    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j()Z

    .line 80
    :cond_4f
    :goto_4f
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    :try_start_54
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    .line 88
    goto :goto_64

    .line 89
    :catchall_58
    move-exception v1

    .line 90
    :try_start_59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 97
    move-result-object v3

    .line 98
    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_7a

    .line 101
    :goto_64
    if-nez v0, :cond_67

    .line 103
    goto :goto_0

    .line 104
    :cond_67
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 106
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 108
    const-wide/32 v2, -0x200000

    .line 111
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 114
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 116
    if-eq v0, v4, :cond_0

    .line 118
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 120
    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 122
    goto :goto_0

    .line 123
    :catchall_7a
    move-exception v0

    .line 124
    throw v0

    .line 125
    :cond_7c
    iput-boolean v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->f:Z

    .line 127
    iget-wide v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->d:J

    .line 129
    cmp-long v3, v3, v5

    .line 131
    if-eqz v3, :cond_9a

    .line 133
    if-nez v2, :cond_89

    .line 135
    move v2, v0

    .line 136
    goto/16 :goto_3

    .line 138
    :cond_89
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 140
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 143
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 146
    iget-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->d:J

    .line 148
    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 151
    iput-wide v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->d:J

    .line 153
    goto/16 :goto_0

    .line 155
    :cond_9a
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->nextParkedWorker:Ljava/lang/Object;

    .line 157
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lu3/r;

    .line 159
    if-eq v3, v4, :cond_a2

    .line 161
    move v3, v0

    .line 162
    goto :goto_a3

    .line 163
    :cond_a2
    move v3, v1

    .line 164
    :goto_a3
    if-nez v3, :cond_ac

    .line 166
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 168
    invoke-virtual {v3, p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g(Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;)V

    .line 171
    goto/16 :goto_3

    .line 173
    :cond_ac
    const/4 v3, -0x1

    .line 174
    iput v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->workerCtl:I

    .line 176
    :cond_af
    :goto_af
    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->nextParkedWorker:Ljava/lang/Object;

    .line 178
    sget-object v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lu3/r;

    .line 180
    if-eq v4, v7, :cond_b7

    .line 182
    move v4, v0

    .line 183
    goto :goto_b8

    .line 184
    :cond_b7
    move v4, v1

    .line 185
    :goto_b8
    if-eqz v4, :cond_3

    .line 187
    iget v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->workerCtl:I

    .line 189
    if-ne v4, v3, :cond_3

    .line 191
    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 193
    invoke-virtual {v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->isTerminated()Z

    .line 196
    move-result v4

    .line 197
    if-nez v4, :cond_3

    .line 199
    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 201
    sget-object v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 203
    if-ne v4, v7, :cond_ce

    .line 205
    goto/16 :goto_3

    .line 207
    :cond_ce
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 209
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 212
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 215
    iget-wide v8, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c:J

    .line 217
    cmp-long v4, v8, v5

    .line 219
    if-nez v4, :cond_e7

    .line 221
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 224
    move-result-wide v8

    .line 225
    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 227
    iget-wide v10, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->c:J

    .line 229
    add-long/2addr v8, v10

    .line 230
    iput-wide v8, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c:J

    .line 232
    :cond_e7
    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 234
    iget-wide v8, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->c:J

    .line 236
    invoke-static {v8, v9}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    .line 239
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 242
    move-result-wide v8

    .line 243
    iget-wide v10, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c:J

    .line 245
    sub-long/2addr v8, v10

    .line 246
    cmp-long v4, v8, v5

    .line 248
    if-ltz v4, :cond_af

    .line 250
    iput-wide v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c:J

    .line 252
    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 254
    iget-object v8, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    .line 256
    monitor-enter v8

    .line 257
    :try_start_100
    invoke-virtual {v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->isTerminated()Z

    .line 260
    move-result v9
    :try_end_104
    .catchall {:try_start_100 .. :try_end_104} :catchall_155

    .line 261
    if-eqz v9, :cond_108

    .line 263
    monitor-exit v8

    .line 264
    goto :goto_af

    .line 265
    :cond_108
    :try_start_108
    iget-wide v9, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    .line 267
    const-wide/32 v11, 0x1fffff

    .line 270
    and-long/2addr v9, v11

    .line 271
    long-to-int v9, v9

    .line 272
    iget v10, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:I
    :try_end_111
    .catchall {:try_start_108 .. :try_end_111} :catchall_155

    .line 274
    if-gt v9, v10, :cond_115

    .line 276
    monitor-exit v8

    .line 277
    goto :goto_af

    .line 278
    :cond_115
    :try_start_115
    sget-object v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 280
    invoke-virtual {v9, p0, v3, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 283
    move-result v9
    :try_end_11b
    .catchall {:try_start_115 .. :try_end_11b} :catchall_155

    .line 284
    if-nez v9, :cond_11f

    .line 286
    monitor-exit v8

    .line 287
    goto :goto_af

    .line 288
    :cond_11f
    :try_start_11f
    iget v9, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->indexInArray:I

    .line 290
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->f(I)V

    .line 293
    invoke-virtual {v4, p0, v9, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;II)V

    .line 296
    sget-object v10, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 298
    invoke-virtual {v10, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    .line 301
    move-result-wide v13

    .line 302
    and-long v10, v13, v11

    .line 304
    long-to-int v10, v10

    .line 305
    if-eq v10, v9, :cond_148

    .line 307
    iget-object v11, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    .line 309
    invoke-virtual {v11, v10}, Lu3/o;->b(I)Ljava/lang/Object;

    .line 312
    move-result-object v11

    .line 313
    invoke-static {v11}, Li3/g;->b(Ljava/lang/Object;)V

    .line 316
    check-cast v11, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    .line 318
    iget-object v12, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    .line 320
    invoke-virtual {v12, v9, v11}, Lu3/o;->c(ILkotlinx/coroutines/scheduling/CoroutineScheduler$b;)V

    .line 323
    invoke-virtual {v11, v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->f(I)V

    .line 326
    invoke-virtual {v4, v11, v10, v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;II)V

    .line 329
    :cond_148
    iget-object v4, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    .line 331
    const/4 v9, 0x0

    .line 332
    invoke-virtual {v4, v10, v9}, Lu3/o;->c(ILkotlinx/coroutines/scheduling/CoroutineScheduler$b;)V

    .line 335
    sget-object v4, Ly2/e;->a:Ly2/e;
    :try_end_150
    .catchall {:try_start_11f .. :try_end_150} :catchall_155

    .line 337
    monitor-exit v8

    .line 338
    iput-object v7, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 340
    goto/16 :goto_af

    .line 342
    :catchall_155
    move-exception v0

    .line 343
    monitor-exit v8

    .line 344
    throw v0

    .line 345
    :cond_158
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 347
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 350
    return-void
.end method
