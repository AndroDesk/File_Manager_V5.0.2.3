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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Li2/e;Lj2/b;I)V
    .registers 4

    invoke-direct {p0, p1}, Lq2/a;-><init>(Li2/e;)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->b:Li2/i;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->c:Z

    iput p3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->d:I

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

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->b:Li2/i;

    instance-of v1, v0, Ls2/e;

    if-eqz v1, :cond_c

    iget-object v0, p0, Lq2/a;->a:Li2/e;

    invoke-virtual {v0, p1}, Li2/e;->c(Li2/h;)V

    goto :goto_1e

    :cond_c
    invoke-virtual {v0}, Li2/i;->a()Li2/i$b;

    move-result-object v0

    iget-object v1, p0, Lq2/a;->a:Li2/e;

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;

    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->c:Z

    iget v4, p0, Lio/reactivex/internal/operators/observable/ObservableObserveOn;->d:I

    invoke-direct {v2, p1, v0, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver;-><init>(Li2/h;Li2/i$b;ZI)V

    invoke-virtual {v1, v2}, Li2/e;->c(Li2/h;)V

    :goto_1e
    return-void
.end method
