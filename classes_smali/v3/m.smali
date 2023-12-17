.class public final Lv3/m;
.super Ljava/lang/Object;
.source "WorkQueue.kt"


# static fields
.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lv3/g;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic blockingTasksInBuffer:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic consumerIndex:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic lastScheduledTask:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic producerIndex:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-class v0, Lv3/m;

    const-class v1, Ljava/lang/Object;

    const-string v2, "lastScheduledTask"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lv3/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lv3/m;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lv3/m;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "blockingTasksInBuffer"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lv3/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lv3/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    iput-object v0, p0, Lv3/m;->lastScheduledTask:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lv3/m;->producerIndex:I

    iput v0, p0, Lv3/m;->consumerIndex:I

    iput v0, p0, Lv3/m;->blockingTasksInBuffer:I

    return-void
.end method


# virtual methods
.method public final a(Lv3/g;Z)Lv3/g;
    .registers 3
    .param p1  # Lv3/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lv3/m;->b(Lv3/g;)Lv3/g;

    move-result-object p1

    return-object p1

    :cond_7
    sget-object p2, Lv3/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/g;

    if-nez p1, :cond_13

    const/4 p1, 0x0

    return-object p1

    :cond_13
    invoke-virtual {p0, p1}, Lv3/m;->b(Lv3/g;)Lv3/g;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lv3/g;)Lv3/g;
    .registers 4

    iget-object v0, p1, Lv3/g;->b:Lv3/h;

    invoke-interface {v0}, Lv3/h;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_12

    sget-object v0, Lv3/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    :cond_12
    iget v0, p0, Lv3/m;->producerIndex:I

    iget v1, p0, Lv3/m;->consumerIndex:I

    sub-int/2addr v0, v1

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_1c

    return-object p1

    :cond_1c
    iget v0, p0, Lv3/m;->producerIndex:I

    and-int/2addr v0, v1

    :goto_1f
    iget-object v1, p0, Lv3/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_1f

    :cond_2b
    iget-object v1, p0, Lv3/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    sget-object p1, Lv3/m;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()I
    .registers 3

    iget-object v0, p0, Lv3/m;->lastScheduledTask:Ljava/lang/Object;

    if-eqz v0, :cond_c

    iget v0, p0, Lv3/m;->producerIndex:I

    iget v1, p0, Lv3/m;->consumerIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_c
    iget v0, p0, Lv3/m;->producerIndex:I

    iget v1, p0, Lv3/m;->consumerIndex:I

    sub-int/2addr v0, v1

    :goto_11
    return v0
.end method

.method public final d()Lv3/g;
    .registers 6

    :cond_0
    :goto_0
    iget v0, p0, Lv3/m;->consumerIndex:I

    iget v1, p0, Lv3/m;->producerIndex:I

    sub-int v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    :cond_a
    and-int/lit8 v1, v0, 0x7f

    sget-object v3, Lv3/m;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv3/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv3/g;

    if-nez v0, :cond_21

    goto :goto_0

    :cond_21
    iget-object v1, v0, Lv3/g;->b:Lv3/h;

    invoke-interface {v1}, Lv3/h;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    if-eqz v2, :cond_33

    sget-object v1, Lv3/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    :cond_33
    return-object v0
.end method

.method public final e(Lv3/m;)J
    .registers 10
    .param p1  # Lv3/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget v0, p1, Lv3/m;->consumerIndex:I

    iget v1, p1, Lv3/m;->producerIndex:I

    iget-object v2, p1, Lv3/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    :goto_6
    const/4 v3, 0x1

    if-eq v0, v1, :cond_45

    and-int/lit8 v4, v0, 0x7f

    iget v5, p1, Lv3/m;->blockingTasksInBuffer:I

    if-nez v5, :cond_10

    goto :goto_45

    :cond_10
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lv3/g;

    if-eqz v5, :cond_42

    iget-object v6, v5, Lv3/g;->b:Lv3/h;

    invoke-interface {v6}, Lv3/h;->b()I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v3, :cond_23

    move v6, v3

    goto :goto_24

    :cond_23
    move v6, v7

    :goto_24
    if-eqz v6, :cond_42

    :cond_26
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    goto :goto_35

    :cond_2e
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v5, :cond_26

    move v3, v7

    :goto_35
    if-eqz v3, :cond_42

    sget-object v0, Lv3/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    invoke-virtual {p0, v5, v7}, Lv3/m;->a(Lv3/g;Z)Lv3/g;

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_45
    :goto_45
    invoke-virtual {p0, p1, v3}, Lv3/m;->f(Lv3/m;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(Lv3/m;Z)J
    .registers 11

    :cond_0
    iget-object v0, p1, Lv3/m;->lastScheduledTask:Ljava/lang/Object;

    check-cast v0, Lv3/g;

    const-wide/16 v1, -0x2

    if-nez v0, :cond_9

    return-wide v1

    :cond_9
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_1b

    iget-object v5, v0, Lv3/g;->b:Lv3/h;

    invoke-interface {v5}, Lv3/h;->b()I

    move-result v5

    if-ne v5, v3, :cond_17

    move v5, v3

    goto :goto_18

    :cond_17
    move v5, v4

    :goto_18
    if-nez v5, :cond_1b

    return-wide v1

    :cond_1b
    sget-object v1, Lv3/k;->e:Lv3/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v5, v0, Lv3/g;->a:J

    sub-long/2addr v1, v5

    sget-wide v5, Lv3/k;->a:J

    cmp-long v7, v1, v5

    if-gez v7, :cond_2f

    sub-long/2addr v5, v1

    return-wide v5

    :cond_2f
    sget-object v1, Lv3/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_31
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_40

    :cond_39
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v0, :cond_31

    move v3, v4

    :goto_40
    if-eqz v3, :cond_0

    invoke-virtual {p0, v0, v4}, Lv3/m;->a(Lv3/g;Z)Lv3/g;

    const-wide/16 p1, -0x1

    return-wide p1
.end method
