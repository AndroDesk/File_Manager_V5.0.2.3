.class public final Lio/reactivex/internal/schedulers/RxThreadFactory;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "RxThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/RxThreadFactory$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6c1ac31a817da8a4L


# instance fields
.field public final nonBlocking:Z

.field public final prefix:Ljava/lang/String;

.field public final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 4
    iput-object p1, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->prefix:Ljava/lang/String;

    .line 5
    iput p2, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->priority:I

    .line 6
    iput-boolean p3, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->nonBlocking:Z

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->prefix:Ljava/lang/String;

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    const/16 v1, 0x2d

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    iget-boolean v1, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->nonBlocking:Z

    .line 26
    if-eqz v1, :cond_21

    .line 28
    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory$a;

    .line 30
    invoke-direct {v1, v0, p1}, Lio/reactivex/internal/schedulers/RxThreadFactory$a;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 33
    goto :goto_26

    .line 34
    :cond_21
    new-instance v1, Ljava/lang/Thread;

    .line 36
    invoke-direct {v1, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 39
    :goto_26
    iget p1, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->priority:I

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 44
    const/4 p1, 0x1

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 48
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "RxThreadFactory["

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/reactivex/internal/schedulers/RxThreadFactory;->prefix:Ljava/lang/String;

    .line 9
    const-string v2, "]"

    .line 11
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method
