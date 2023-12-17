.class public final Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;
.super Lq2/a;
.source "ObservableThrottleFirstTimed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq2/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:Ljava/util/concurrent/TimeUnit;

.field public final d:Li2/i;


# direct methods
.method public constructor <init>(Li2/e;JLjava/util/concurrent/TimeUnit;Li2/i;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/e;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li2/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lq2/a;-><init>(Li2/e;)V

    .line 4
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;->b:J

    .line 6
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;->c:Ljava/util/concurrent/TimeUnit;

    .line 8
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;->d:Li2/i;

    .line 10
    return-void
.end method


# virtual methods
.method public final d(Li2/h;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/h<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq2/a;->a:Li2/e;

    .line 3
    new-instance v7, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;

    .line 5
    new-instance v2, Lu2/a;

    .line 7
    invoke-direct {v2, p1}, Lu2/a;-><init>(Li2/h;)V

    .line 10
    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;->b:J

    .line 12
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;->c:Ljava/util/concurrent/TimeUnit;

    .line 14
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed;->d:Li2/i;

    .line 16
    invoke-virtual {p1}, Li2/i;->a()Li2/i$b;

    .line 19
    move-result-object v6

    .line 20
    move-object v1, v7

    .line 21
    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/observable/ObservableThrottleFirstTimed$DebounceTimedObserver;-><init>(Li2/h;JLjava/util/concurrent/TimeUnit;Li2/i$b;)V

    .line 24
    invoke-virtual {v0, v7}, Li2/e;->c(Li2/h;)V

    .line 27
    return-void
.end method
