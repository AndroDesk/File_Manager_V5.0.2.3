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

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    new-instance p1, Lv3/m;

    invoke-direct {p1}, Lv3/m;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 p1, 0x0

    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->workerCtl:I

    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lu3/r;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->nextParkedWorker:Ljava/lang/Object;

    sget-object p1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {p1}, Lkotlin/random/Random$Default;->nextInt()I

    move-result p1

    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->e:I

    invoke-virtual {p0, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->f(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lv3/g;
    .registers 12
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_9

    goto :goto_32

    :cond_9
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    :cond_b
    iget-wide v6, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    const-wide v4, 0x7ffffc0000000000L

    and-long/2addr v4, v6

    const/16 v1, 0x2a

    shr-long/2addr v4, v1

    long-to-int v1, v4

    if-nez v1, :cond_1b

    move v0, v2

    goto :goto_2c

    :cond_1b
    const-wide v4, 0x40000000000L

    sub-long v8, v6, v4

    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_b

    move v0, v3

    :goto_2c
    if-eqz v0, :cond_34

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :goto_32
    move v0, v3

    goto :goto_35

    :cond_34
    move v0, v2

    :goto_35
    const/4 v1, 0x0

    if-eqz v0, :cond_7b

    if-eqz p1, :cond_70

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->d(I)I

    move-result p1

    if-nez p1, :cond_47

    goto :goto_48

    :cond_47
    move v3, v2

    :goto_48
    if-eqz v3, :cond_50

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->e()Lv3/g;

    move-result-object p1

    if-nez p1, :cond_7a

    :cond_50
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lv3/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/g;

    if-nez v0, :cond_64

    invoke-virtual {p1}, Lv3/m;->d()Lv3/g;

    move-result-object p1

    goto :goto_65

    :cond_64
    move-object p1, v0

    :goto_65
    if-nez p1, :cond_7a

    if-nez v3, :cond_76

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->e()Lv3/g;

    move-result-object p1

    if-nez p1, :cond_7a

    goto :goto_76

    :cond_70
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->e()Lv3/g;

    move-result-object p1

    if-nez p1, :cond_7a

    :cond_76
    :goto_76
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->i(Z)Lv3/g;

    move-result-object p1

    :cond_7a
    return-object p1

    :cond_7b
    if-eqz p1, :cond_9e

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lv3/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/g;

    if-nez v0, :cond_90

    invoke-virtual {p1}, Lv3/m;->d()Lv3/g;

    move-result-object v0

    :cond_90
    if-nez v0, :cond_a9

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    invoke-virtual {p1}, Lu3/i;->d()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lv3/g;

    goto :goto_a9

    :cond_9e
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object p1, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    invoke-virtual {p1}, Lu3/i;->d()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lv3/g;

    :cond_a9
    :goto_a9
    if-nez v0, :cond_af

    invoke-virtual {p0, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->i(Z)Lv3/g;

    move-result-object v0

    :cond_af
    return-object v0
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->indexInArray:I

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->nextParkedWorker:Ljava/lang/Object;

    return-object v0
.end method

.method public final d(I)I
    .registers 5

    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->e:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->e:I

    add-int/lit8 v1, p1, -0x1

    and-int v2, v1, p1

    if-nez v2, :cond_16

    and-int p1, v0, v1

    return p1

    :cond_16
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/2addr v0, p1

    return v0
.end method

.method public final e()Lv3/g;
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->d(I)I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Lv3/c;

    invoke-virtual {v0}, Lu3/i;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/g;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    invoke-virtual {v0}, Lu3/i;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/g;

    :cond_1d
    return-object v0

    :cond_1e
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:Lv3/c;

    invoke-virtual {v0}, Lu3/i;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/g;

    if-nez v0, :cond_34

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Lv3/c;

    invoke-virtual {v0}, Lu3/i;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/g;

    :cond_34
    return-object v0
.end method

.method public final f(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v1, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_16

    const-string v1, "TERMINATED"

    goto :goto_1a

    :cond_16
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->indexInArray:I

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z
    .registers 8
    .param p1  # Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_17

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v4, 0x40000000000L

    invoke-virtual {v3, v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_17
    if-eq v0, p1, :cond_1b

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_1b
    return v1
.end method

.method public final i(Z)Lv3/g;
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-wide v1, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_10

    return-object v2

    :cond_10
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->d(I)I

    move-result v3

    iget-object v4, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const/4 v5, 0x0

    move v8, v5

    const-wide v9, 0x7fffffffffffffffL

    :cond_1d
    :goto_1d
    const-wide/16 v11, 0x0

    if-ge v8, v1, :cond_78

    add-int/lit8 v8, v8, 0x1

    const/4 v13, 0x1

    add-int/2addr v3, v13

    if-le v3, v1, :cond_28

    move v3, v13

    :cond_28
    iget-object v13, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    invoke-virtual {v13, v3}, Lu3/o;->b(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    if-eqz v13, :cond_1d

    if-eq v13, v0, :cond_1d

    const-wide/16 v14, -0x1

    if-eqz p1, :cond_41

    iget-object v6, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    iget-object v7, v13, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    invoke-virtual {v6, v7}, Lv3/m;->e(Lv3/m;)J

    move-result-wide v6

    goto :goto_57

    :cond_41
    iget-object v6, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    iget-object v7, v13, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Lv3/m;->d()Lv3/g;

    move-result-object v13

    if-eqz v13, :cond_53

    invoke-virtual {v6, v13, v5}, Lv3/m;->a(Lv3/g;Z)Lv3/g;

    move-wide v6, v14

    goto :goto_57

    :cond_53
    invoke-virtual {v6, v7, v5}, Lv3/m;->f(Lv3/m;Z)J

    move-result-wide v6

    :goto_57
    cmp-long v13, v6, v14

    if-nez v13, :cond_6f

    iget-object v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a:Lv3/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lv3/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv3/g;

    if-nez v2, :cond_6e

    invoke-virtual {v1}, Lv3/m;->d()Lv3/g;

    move-result-object v2

    :cond_6e
    return-object v2

    :cond_6f
    cmp-long v11, v6, v11

    if-lez v11, :cond_1d

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    goto :goto_1d

    :cond_78
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v1, v9, v6

    if-eqz v1, :cond_82

    goto :goto_83

    :cond_82
    move-wide v9, v11

    :goto_83
    iput-wide v9, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->d:J

    return-object v2
.end method

.method public final run()V
    .registers 16

    :cond_0
    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :cond_3
    :goto_3
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->isTerminated()Z

    move-result v3

    if-nez v3, :cond_158

    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-eq v3, v4, :cond_158

    iget-boolean v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->f:Z

    invoke-virtual {p0, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->a(Z)Lv3/g;

    move-result-object v3

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_7c

    iput-wide v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->d:J

    iget-object v0, v3, Lv3/g;->b:Lv3/h;

    invoke-interface {v0}, Lv3/h;->b()I

    move-result v0

    iput-wide v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c:J

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v1, v2, :cond_2f

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_2f
    if-nez v0, :cond_32

    goto :goto_4f

    :cond_32
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j()Z

    move-result v2

    if-eqz v2, :cond_43

    goto :goto_4f

    :cond_43
    iget-wide v5, v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    invoke-virtual {v1, v5, v6}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i(J)Z

    move-result v2

    if-eqz v2, :cond_4c

    goto :goto_4f

    :cond_4c
    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j()Z

    :cond_4f
    :goto_4f
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_54
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_64

    :catchall_58
    move-exception v1

    :try_start_59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_7a

    :goto_64
    if-nez v0, :cond_67

    goto :goto_0

    :cond_67
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v2, -0x200000

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-eq v0, v4, :cond_0

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->DORMANT:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    goto :goto_0

    :catchall_7a
    move-exception v0

    throw v0

    :cond_7c
    iput-boolean v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->f:Z

    iget-wide v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->d:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9a

    if-nez v2, :cond_89

    move v2, v0

    goto/16 :goto_3

    :cond_89
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->d:J

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iput-wide v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->d:J

    goto/16 :goto_0

    :cond_9a
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->nextParkedWorker:Ljava/lang/Object;

    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lu3/r;

    if-eq v3, v4, :cond_a2

    move v3, v0

    goto :goto_a3

    :cond_a2
    move v3, v1

    :goto_a3
    if-nez v3, :cond_ac

    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v3, p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g(Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;)V

    goto/16 :goto_3

    :cond_ac
    const/4 v3, -0x1

    iput v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->workerCtl:I

    :cond_af
    :goto_af
    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->nextParkedWorker:Ljava/lang/Object;

    sget-object v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Lu3/r;

    if-eq v4, v7, :cond_b7

    move v4, v0

    goto :goto_b8

    :cond_b7
    move v4, v1

    :goto_b8
    if-eqz v4, :cond_3

    iget v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->workerCtl:I

    if-ne v4, v3, :cond_3

    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-virtual {v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->isTerminated()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v4, v7, :cond_ce

    goto/16 :goto_3

    :cond_ce
    sget-object v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v8, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c:J

    cmp-long v4, v8, v5

    if-nez v4, :cond_e7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-wide v10, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->c:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c:J

    :cond_e7
    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-wide v8, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->c:J

    invoke-static {v8, v9}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iget-wide v10, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c:J

    sub-long/2addr v8, v10

    cmp-long v4, v8, v5

    if-ltz v4, :cond_af

    iput-wide v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->c:J

    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->g:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    iget-object v8, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    monitor-enter v8

    :try_start_100
    invoke-virtual {v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->isTerminated()Z

    move-result v9
    :try_end_104
    .catchall {:try_start_100 .. :try_end_104} :catchall_155

    if-eqz v9, :cond_108

    monitor-exit v8

    goto :goto_af

    :cond_108
    :try_start_108
    iget-wide v9, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    const-wide/32 v11, 0x1fffff

    and-long/2addr v9, v11

    long-to-int v9, v9

    iget v10, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:I
    :try_end_111
    .catchall {:try_start_108 .. :try_end_111} :catchall_155

    if-gt v9, v10, :cond_115

    monitor-exit v8

    goto :goto_af

    :cond_115
    :try_start_115
    sget-object v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v9, p0, v3, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v9
    :try_end_11b
    .catchall {:try_start_115 .. :try_end_11b} :catchall_155

    if-nez v9, :cond_11f

    monitor-exit v8

    goto :goto_af

    :cond_11f
    :try_start_11f
    iget v9, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->indexInArray:I

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->f(I)V

    invoke-virtual {v4, p0, v9, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;II)V

    sget-object v10, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v10, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v13

    and-long v10, v13, v11

    long-to-int v10, v10

    if-eq v10, v9, :cond_148

    iget-object v11, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    invoke-virtual {v11, v10}, Lu3/o;->b(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Li3/g;->b(Ljava/lang/Object;)V

    check-cast v11, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;

    iget-object v12, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    invoke-virtual {v12, v9, v11}, Lu3/o;->c(ILkotlinx/coroutines/scheduling/CoroutineScheduler$b;)V

    invoke-virtual {v11, v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->f(I)V

    invoke-virtual {v4, v11, v10, v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;II)V

    :cond_148
    iget-object v4, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Lu3/o;

    const/4 v9, 0x0

    invoke-virtual {v4, v10, v9}, Lu3/o;->c(ILkotlinx/coroutines/scheduling/CoroutineScheduler$b;)V

    sget-object v4, Ly2/e;->a:Ly2/e;
    :try_end_150
    .catchall {:try_start_11f .. :try_end_150} :catchall_155

    monitor-exit v8

    iput-object v7, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    goto/16 :goto_af

    :catchall_155
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_158
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$b;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    return-void
.end method
