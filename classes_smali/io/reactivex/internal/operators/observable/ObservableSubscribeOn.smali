.class public final Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;
.super Lq2/a;
.source "ObservableSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;,
        Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;
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


# direct methods
.method public constructor <init>(Li2/e;Li2/i;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/e;",
            "Li2/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lq2/a;-><init>(Li2/e;)V

    .line 4
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;->b:Li2/i;

    .line 6
    return-void
.end method


# virtual methods
.method public final d(Li2/h;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/h<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;

    .line 3
    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;-><init>(Li2/h;)V

    .line 6
    invoke-interface {p1, v0}, Li2/h;->onSubscribe(Lk2/b;)V

    .line 9
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;->b:Li2/i;

    .line 11
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;

    .line 13
    invoke-direct {v1, p0, v0}, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;-><init>(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;)V

    .line 16
    invoke-virtual {p1, v1}, Li2/i;->b(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;)Lk2/b;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver;->setDisposable(Lk2/b;)V

    .line 23
    return-void
.end method
