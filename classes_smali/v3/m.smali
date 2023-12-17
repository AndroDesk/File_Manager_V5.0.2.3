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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6
    const/16 v1, 0x80

    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 11
    iput-object v0, p0, Lv3/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lv3/m;->lastScheduledTask:Ljava/lang/Object;

    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lv3/m;->producerIndex:I

    .line 19
    iput v0, p0, Lv3/m;->consumerIndex:I

    .line 21
    iput v0, p0, Lv3/m;->blockingTasksInBuffer:I

    .line 23
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

    .line 1
    if-eqz p2, :cond_7

    .line 3
    invoke-virtual {p0, p1}, Lv3/m;->b(Lv3/g;)Lv3/g;

    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_7
    sget-object p2, Lv3/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 10
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lv3/g;

    .line 16
    if-nez p1, :cond_13

    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_13
    invoke-virtual {p0, p1}, Lv3/m;->b(Lv3/g;)Lv3/g;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final b(Lv3/g;)Lv3/g;
    .registers 4

    .line 1
    iget-object v0, p1, Lv3/g;->b:Lv3/h;

    .line 3
    invoke-interface {v0}, Lv3/h;->b()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_a

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    :goto_b
    if-eqz v1, :cond_12

    .line 14
    sget-object v0, Lv3/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 16
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 19
    :cond_12
    iget v0, p0, Lv3/m;->producerIndex:I

    .line 21
    iget v1, p0, Lv3/m;->consumerIndex:I

    .line 23
    sub-int/2addr v0, v1

    .line 24
    const/16 v1, 0x7f

    .line 26
    if-ne v0, v1, :cond_1c

    .line 28
    return-object p1

    .line 29
    :cond_1c
    iget v0, p0, Lv3/m;->producerIndex:I

    .line 31
    and-int/2addr v0, v1

    .line 32
    :goto_1f
    iget-object v1, p0, Lv3/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 34
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_2b

    .line 40
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 43
    goto :goto_1f

    .line 44
    :cond_2b
    iget-object v1, p0, Lv3/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 46
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 49
    sget-object p1, Lv3/m;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 51
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 54
    const/4 p1, 0x0

    .line 55
    return-object p1
.end method

.method public final c()I
    .registers 3

    .line 1
    iget-object v0, p0, Lv3/m;->lastScheduledTask:Ljava/lang/Object;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    iget v0, p0, Lv3/m;->producerIndex:I

    .line 7
    iget v1, p0, Lv3/m;->consumerIndex:I

    .line 9
    sub-int/2addr v0, v1

    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 12
    goto :goto_11

    .line 13
    :cond_c
    iget v0, p0, Lv3/m;->producerIndex:I

    .line 15
    iget v1, p0, Lv3/m;->consumerIndex:I

    .line 17
    sub-int/2addr v0, v1

    .line 18
    :goto_11
    return v0
.end method

.method public final d()Lv3/g;
    .registers 6

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lv3/m;->consumerIndex:I

    .line 3
    iget v1, p0, Lv3/m;->producerIndex:I

    .line 5
    sub-int v1, v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return-object v2

    .line 11
    :cond_a
    and-int/lit8 v1, v0, 0x7f

    .line 13
    sget-object v3, Lv3/m;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 15
    add-int/lit8 v4, v0, 0x1

    .line 17
    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lv3/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lv3/g;

    .line 31
    if-nez v0, :cond_21

    .line 33
    goto :goto_0

    .line 34
    :cond_21
    iget-object v1, v0, Lv3/g;->b:Lv3/h;

    .line 36
    invoke-interface {v1}, Lv3/h;->b()I

    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x1

    .line 41
    if-ne v1, v2, :cond_2b

    .line 43
    goto :goto_2c

    .line 44
    :cond_2b
    const/4 v2, 0x0

    .line 45
    :goto_2c
    if-eqz v2, :cond_33

    .line 47
    sget-object v1, Lv3/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 49
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 52
    :cond_33
    return-object v0
.end method

.method public final e(Lv3/m;)J
    .registers 10
    .param p1  # Lv3/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Lv3/m;->consumerIndex:I

    .line 3
    iget v1, p1, Lv3/m;->producerIndex:I

    .line 5
    iget-object v2, p1, Lv3/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 7
    :goto_6
    const/4 v3, 0x1

    .line 8
    if-eq v0, v1, :cond_45

    .line 10
    and-int/lit8 v4, v0, 0x7f

    .line 12
    iget v5, p1, Lv3/m;->blockingTasksInBuffer:I

    .line 14
    if-nez v5, :cond_10

    .line 16
    goto :goto_45

    .line 17
    :cond_10
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Lv3/g;

    .line 23
    if-eqz v5, :cond_42

    .line 25
    iget-object v6, v5, Lv3/g;->b:Lv3/h;

    .line 27
    invoke-interface {v6}, Lv3/h;->b()I

    .line 30
    move-result v6

    .line 31
    const/4 v7, 0x0

    .line 32
    if-ne v6, v3, :cond_23

    .line 34
    move v6, v3

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v6, v7

    .line 37
    :goto_24
    if-eqz v6, :cond_42

    .line 39
    :cond_26
    const/4 v6, 0x0

    .line 40
    invoke-virtual {v2, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_2e

    .line 46
    goto :goto_35

    .line 47
    :cond_2e
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v6

    .line 51
    if-eq v6, v5, :cond_26

    .line 53
    move v3, v7

    .line 54
    :goto_35
    if-eqz v3, :cond_42

    .line 56
    sget-object v0, Lv3/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 58
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 61
    invoke-virtual {p0, v5, v7}, Lv3/m;->a(Lv3/g;Z)Lv3/g;

    .line 64
    const-wide/16 v0, -0x1

    .line 66
    return-wide v0

    .line 67
    :cond_42
    add-int/lit8 v0, v0, 0x1

    .line 69
    goto :goto_6

    .line 70
    :cond_45
    :goto_45
    invoke-virtual {p0, p1, v3}, Lv3/m;->f(Lv3/m;Z)J

    .line 73
    move-result-wide v0

    .line 74
    return-wide v0
.end method

.method public final f(Lv3/m;Z)J
    .registers 11

    .line 1
    :cond_0
    iget-object v0, p1, Lv3/m;->lastScheduledTask:Ljava/lang/Object;

    .line 3
    check-cast v0, Lv3/g;

    .line 5
    const-wide/16 v1, -0x2

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-wide v1

    .line 10
    :cond_9
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz p2, :cond_1b

    .line 14
    iget-object v5, v0, Lv3/g;->b:Lv3/h;

    .line 16
    invoke-interface {v5}, Lv3/h;->b()I

    .line 19
    move-result v5

    .line 20
    if-ne v5, v3, :cond_17

    .line 22
    move v5, v3

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v5, v4

    .line 25
    :goto_18
    if-nez v5, :cond_1b

    .line 27
    return-wide v1

    .line 28
    :cond_1b
    sget-object v1, Lv3/k;->e:Lv3/d;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 36
    move-result-wide v1

    .line 37
    iget-wide v5, v0, Lv3/g;->a:J

    .line 39
    sub-long/2addr v1, v5

    .line 40
    sget-wide v5, Lv3/k;->a:J

    .line 42
    cmp-long v7, v1, v5

    .line 44
    if-gez v7, :cond_2f

    .line 46
    sub-long/2addr v5, v1

    .line 47
    return-wide v5

    .line 48
    :cond_2f
    sget-object v1, Lv3/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 50
    :cond_31
    const/4 v2, 0x0

    .line 51
    invoke-virtual {v1, p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_39

    .line 57
    goto :goto_40

    .line 58
    :cond_39
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 62
    if-eq v2, v0, :cond_31

    .line 64
    move v3, v4

    .line 65
    :goto_40
    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {p0, v0, v4}, Lv3/m;->a(Lv3/g;Z)Lv3/g;

    .line 70
    const-wide/16 p1, -0x1

    .line 72
    return-wide p1
.end method
