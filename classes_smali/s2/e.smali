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

    new-instance v0, Ls2/e;

    invoke-direct {v0}, Ls2/e;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Li2/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Li2/i$b;
    .registers 2

    new-instance v0, Ls2/e$c;

    invoke-direct {v0}, Ls2/e$c;-><init>()V

    return-object v0
.end method

.method public final b(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;)Lk2/b;
    .registers 2

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;->run()V

    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1
.end method

.method public final c(Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;Ljava/util/concurrent/TimeUnit;)Lk2/b;
    .registers 5

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableSubscribeOn$a;->run()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_14

    :catch_9
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    invoke-static {p1}, Lv2/a;->b(Ljava/lang/Throwable;)V

    :goto_14
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1
.end method
