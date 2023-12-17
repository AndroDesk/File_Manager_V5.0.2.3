.class public final Ls2/e;
.super Li2/i;
.source "TrampolineScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls2/e$a;,
        Ls2/e$b;,
        Ls2/e$c;
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ls2/e;

    .line 3
    invoke-direct {v0}, Ls2/e;-><init>()V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Li2/i;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Li2/i$b;
    .registers 2

    .line 1
    new-instance v0, Ls2/e$c;

    .line 3
    invoke-direct {v0}, Ls2/e$c;-><init>()V

    .line 6
    return-object v0
.end method

.method public final b(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;)Lk2/b;
    .registers 2

    .line 1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;->run()V

    .line 4
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 6
    return-object p1
.end method

.method public final c(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;Ljava/util/concurrent/TimeUnit;)Lk2/b;
    .registers 5

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    :try_start_2
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 6
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;->run()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_8} :catch_9

    .line 9
    goto :goto_14

    .line 10
    :catch_9
    move-exception p1

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 18
    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    .line 21
    :goto_14
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    .line 23
    return-object p1
.end method
