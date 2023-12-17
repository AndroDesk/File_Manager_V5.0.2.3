.class public abstract Li2/i;
.super Ljava/lang/Object;
.source "Scheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/i$a;,
        Li2/i$b;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "rx2.scheduler.drift-tolerance"

    const-wide/16 v2, 0xf

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Li2/i$b;
.end method

.method public b(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;)Lk2/b;
    .registers 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0}, Li2/i;->c(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;Ljava/util/concurrent/TimeUnit;)Lk2/b;

    move-result-object p1

    return-object p1
.end method

.method public c(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;Ljava/util/concurrent/TimeUnit;)Lk2/b;
    .registers 7

    invoke-virtual {p0}, Li2/i;->a()Li2/i$b;

    move-result-object v0

    new-instance v1, Li2/i$a;

    invoke-direct {v1, p1, v0}, Li2/i$a;-><init>(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;Li2/i$b;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, p2}, Li2/i$b;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lk2/b;

    return-object v1
.end method
