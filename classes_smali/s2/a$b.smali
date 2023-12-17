.class public final Ls2/a$b;
.super Li2/i$b;
.source "IoScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lk2/a;

.field public final b:Ls2/a$a;

.field public final c:Ls2/a$c;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ls2/a$a;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Li2/i$b;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 9
    iput-object v0, p0, Ls2/a$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    iput-object p1, p0, Ls2/a$b;->b:Ls2/a$a;

    .line 13
    new-instance v0, Lk2/a;

    .line 15
    invoke-direct {v0}, Lk2/a;-><init>()V

    .line 18
    iput-object v0, p0, Ls2/a$b;->a:Lk2/a;

    .line 20
    iget-object v0, p1, Ls2/a$a;->c:Lk2/a;

    .line 22
    iget-boolean v0, v0, Lk2/a;->b:Z

    .line 24
    if-eqz v0, :cond_1c

    .line 26
    sget-object p1, Ls2/a;->e:Ls2/a$c;

    .line 28
    goto :goto_3c

    .line 29
    :cond_1c
    iget-object v0, p1, Ls2/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2f

    .line 37
    iget-object v0, p1, Ls2/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ls2/a$c;

    .line 45
    if-eqz v0, :cond_1c

    .line 47
    goto :goto_3b

    .line 48
    :cond_2f
    new-instance v0, Ls2/a$c;

    .line 50
    iget-object v1, p1, Ls2/a$a;->f:Ljava/util/concurrent/ThreadFactory;

    .line 52
    invoke-direct {v0, v1}, Ls2/a$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 55
    iget-object p1, p1, Ls2/a$a;->c:Lk2/a;

    .line 57
    invoke-virtual {p1, v0}, Lk2/a;->c(Lk2/b;)Z

    .line 60
    :goto_3b
    move-object p1, v0

    .line 61
    :goto_3c
    iput-object p1, p0, Ls2/a$b;->c:Ls2/a$c;

    .line 63
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lk2/b;
    .registers 11

    .line 1
    iget-object v0, p0, Ls2/a$b;->a:Lk2/a;

    .line 3
    iget-boolean v0, v0, Lk2/a;->b:Z

    .line 5
    if-eqz v0, :cond_9

    .line 7
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 9
    return-object p1

    .line 10
    :cond_9
    iget-object v0, p0, Ls2/a$b;->c:Ls2/a$c;

    .line 12
    iget-object v5, p0, Ls2/a$b;->a:Lk2/a;

    .line 14
    move-object v1, p1

    .line 15
    move-wide v2, p2

    .line 16
    move-object v4, p4

    .line 17
    invoke-virtual/range {v0 .. v5}, Ls2/c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lm2/a;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final dispose()V
    .registers 7

    .line 1
    iget-object v0, p0, Ls2/a$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_24

    .line 11
    iget-object v0, p0, Ls2/a$b;->a:Lk2/a;

    .line 13
    invoke-virtual {v0}, Lk2/a;->dispose()V

    .line 16
    iget-object v0, p0, Ls2/a$b;->b:Ls2/a$a;

    .line 18
    iget-object v1, p0, Ls2/a$b;->c:Ls2/a$c;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 26
    move-result-wide v2

    .line 27
    iget-wide v4, v0, Ls2/a$a;->a:J

    .line 29
    add-long/2addr v2, v4

    .line 30
    iput-wide v2, v1, Ls2/a$c;->c:J

    .line 32
    iget-object v0, v0, Ls2/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 37
    :cond_24
    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ls2/a$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
