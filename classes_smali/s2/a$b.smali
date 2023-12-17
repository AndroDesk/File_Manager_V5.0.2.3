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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ls2/a$a;)V
    .registers 4

    invoke-direct {p0}, Li2/i$b;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ls2/a$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Ls2/a$b;->b:Ls2/a$a;

    new-instance v0, Lk2/a;

    invoke-direct {v0}, Lk2/a;-><init>()V

    iput-object v0, p0, Ls2/a$b;->a:Lk2/a;

    iget-object v0, p1, Ls2/a$a;->c:Lk2/a;

    iget-boolean v0, v0, Lk2/a;->b:Z

    if-eqz v0, :cond_1c

    sget-object p1, Ls2/a;->e:Ls2/a$c;

    goto :goto_3c

    :cond_1c
    iget-object v0, p1, Ls2/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p1, Ls2/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls2/a$c;

    if-eqz v0, :cond_1c

    goto :goto_3b

    :cond_2f
    new-instance v0, Ls2/a$c;

    iget-object v1, p1, Ls2/a$a;->f:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Ls2/a$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    iget-object p1, p1, Ls2/a$a;->c:Lk2/a;

    invoke-virtual {p1, v0}, Lk2/a;->c(Lk2/b;)Z

    :goto_3b
    move-object p1, v0

    :goto_3c
    iput-object p1, p0, Ls2/a$b;->c:Ls2/a$c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lk2/b;
    .registers 11

    iget-object v0, p0, Ls2/a$b;->a:Lk2/a;

    iget-boolean v0, v0, Lk2/a;->b:Z

    if-eqz v0, :cond_9

    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    :cond_9
    iget-object v0, p0, Ls2/a$b;->c:Ls2/a$c;

    iget-object v5, p0, Ls2/a$b;->a:Lk2/a;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ls2/c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lm2/a;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    move-result-object p1

    return-object p1
.end method

.method public final dispose()V
    .registers 7

    iget-object v0, p0, Ls2/a$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Ls2/a$b;->a:Lk2/a;

    invoke-virtual {v0}, Lk2/a;->dispose()V

    iget-object v0, p0, Ls2/a$b;->b:Ls2/a$a;

    iget-object v1, p0, Ls2/a$b;->c:Ls2/a$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, v0, Ls2/a$a;->a:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Ls2/a$c;->c:J

    iget-object v0, v0, Ls2/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    :cond_24
    return-void
.end method

.method public final isDisposed()Z
    .registers 2

    iget-object v0, p0, Ls2/a$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
