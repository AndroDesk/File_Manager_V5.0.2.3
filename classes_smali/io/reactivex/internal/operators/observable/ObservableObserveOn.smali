.class public final Lio/reactivex/internal/operators/observable/ObservableObserveOn;
.super Lq2/a;
.source "ObservableObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;
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
.field public final b:Li2/i;

.field public final c:Z

.field public final d:I


# direct methods
.method public constructor <init>(Li2/e;Lj2/b;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lq2/a;-><init>(Li2/e;)V

    .line 4
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->b:Li2/i;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->c:Z

    .line 9
    iput p3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->d:I

    .line 11
    return-void
.end method


# virtual methods
.method public final d(Li2/h;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/h<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->b:Li2/i;

    .line 3
    instance-of v1, v0, Ls2/e;

    .line 5
    if-eqz v1, :cond_c

    .line 7
    iget-object v0, p0, Lq2/a;->a:Li2/e;

    .line 9
    invoke-virtual {v0, p1}, Li2/e;->c(Li2/h;)V

    .line 12
    goto :goto_1e

    .line 13
    :cond_c
    invoke-virtual {v0}, Li2/i;->a()Li2/i$b;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lq2/a;->a:Li2/e;

    .line 19
    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;

    .line 21
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->c:Z

    .line 23
    iget v4, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->d:I

    .line 25
    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;-><init>(Li2/h;Li2/i$b;ZI)V

    .line 28
    invoke-virtual {v1, v2}, Li2/e;->c(Li2/h;)V

    .line 31
    :goto_1e
    return-void
.end method
