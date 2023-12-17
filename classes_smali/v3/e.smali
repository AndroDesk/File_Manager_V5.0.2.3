.class public Lv3/e;
.super Lkotlinx/coroutines/e;
.source "Dispatcher.kt"


# instance fields
.field public b:Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIJ)V
    .registers 12

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/e;-><init>()V

    .line 4
    new-instance v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 6
    const-string v5, "DefaultDispatcher"

    .line 8
    move-object v0, v6

    .line 9
    move v1, p1

    .line 10
    move v2, p2

    .line 11
    move-wide v3, p3

    .line 12
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;-><init>(IIJLjava/lang/String;)V

    .line 15
    iput-object v6, p0, Lv3/e;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 17
    return-void
.end method


# virtual methods
.method public final s(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .registers 5
    .param p1  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lv3/e;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 3
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 5
    sget-object v0, Lv3/k;->f:Lv3/i;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e(Ljava/lang/Runnable;Lv3/h;Z)V

    .line 11
    return-void
.end method
