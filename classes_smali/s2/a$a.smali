.class public final Ls2/a$a;
.super Ljava/lang/Object;
.source "IoScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ls2/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lk2/a;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:Ljava/util/concurrent/ScheduledFuture;

.field public final f:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-eqz p3, :cond_a

    .line 6
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 9
    move-result-wide p1

    .line 10
    goto :goto_c

    .line 11
    :cond_a
    const-wide/16 p1, 0x0

    .line 13
    :goto_c
    move-wide v4, p1

    .line 14
    iput-wide v4, p0, Ls2/a$a;->a:J

    .line 16
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 18
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 21
    iput-object p1, p0, Ls2/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 23
    new-instance p1, Lk2/a;

    .line 25
    invoke-direct {p1}, Lk2/a;-><init>()V

    .line 28
    iput-object p1, p0, Ls2/a$a;->c:Lk2/a;

    .line 30
    iput-object p4, p0, Ls2/a$a;->f:Ljava/util/concurrent/ThreadFactory;

    .line 32
    const/4 p1, 0x0

    .line 33
    if-eqz p3, :cond_33

    .line 35
    const/4 p1, 0x1

    .line 36
    sget-object p2, Ls2/a;->c:Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 38
    invoke-static {p1, p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 41
    move-result-object p1

    .line 42
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    move-object v0, p1

    .line 45
    move-object v1, p0

    .line 46
    move-wide v2, v4

    .line 47
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 50
    move-result-object p2

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    move-object p2, p1

    .line 53
    :goto_34
    iput-object p1, p0, Ls2/a$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 55
    iput-object p2, p0, Ls2/a$a;->e:Ljava/util/concurrent/ScheduledFuture;

    .line 57
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget-object v0, p0, Ls2/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_32

    .line 9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p0, Ls2/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 15
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v2

    .line 19
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_32

    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ls2/a$c;

    .line 31
    iget-wide v4, v3, Ls2/a$c;->c:J

    .line 33
    cmp-long v4, v4, v0

    .line 35
    if-gtz v4, :cond_32

    .line 37
    iget-object v4, p0, Ls2/a$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 39
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_12

    .line 45
    iget-object v4, p0, Ls2/a$a;->c:Lk2/a;

    .line 47
    invoke-virtual {v4, v3}, Lk2/a;->b(Lk2/b;)Z

    .line 50
    goto :goto_12

    .line 51
    :cond_32
    return-void
.end method
