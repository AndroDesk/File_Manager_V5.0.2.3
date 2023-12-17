.class public Lcom/google/android/datatransport/runtime/time/TestClock;
.super Ljava/lang/Object;
.source "TestClock.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/time/Clock;


# instance fields
.field private final timestamp:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(J)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 9
    iput-object v0, p0, Lcom/google/android/datatransport/runtime/time/TestClock;->timestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 11
    return-void
.end method


# virtual methods
.method public advance(J)V
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p1, v0

    .line 5
    if-ltz v0, :cond_c

    .line 7
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/time/TestClock;->timestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 12
    return-void

    .line 13
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    const-string p2, "cannot advance time backwards."

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1
.end method

.method public getTime()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/time/TestClock;->timestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public tick()V
    .registers 3

    .line 1
    const-wide/16 v0, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/android/datatransport/runtime/time/TestClock;->advance(J)V

    .line 6
    return-void
.end method
