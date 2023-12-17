.class public final Lio/reactivex/internal/operators/observable/ObservableCreate;
.super Li2/e;
.source "ObservableCreate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableCreate$SerializedEmitter;,
        Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li2/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Li2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li2/g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li2/g;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/g<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li2/e;-><init>()V

    .line 4
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate;->a:Li2/g;

    .line 6
    return-void
.end method


# virtual methods
.method public final d(Li2/h;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/h<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;

    .line 3
    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;-><init>(Li2/h;)V

    .line 6
    invoke-interface {p1, v0}, Li2/h;->onSubscribe(Lk2/b;)V

    .line 9
    :try_start_8
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate;->a:Li2/g;

    .line 11
    invoke-interface {p1, v0}, Li2/g;->subscribe(Li2/f;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    .line 14
    goto :goto_15

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    invoke-static {p1}, La/b;->d0(Ljava/lang/Throwable;)V

    .line 19
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;->onError(Ljava/lang/Throwable;)V

    .line 22
    :goto_15
    return-void
.end method
