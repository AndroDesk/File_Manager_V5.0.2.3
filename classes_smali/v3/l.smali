.class public final Lv3/l;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "Dispatcher.kt"


# static fields
.field public static final b:Lv3/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv3/l;

    invoke-direct {v0}, Lv3/l;-><init>()V

    sput-object v0, Lv3/l;->b:Lv3/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    .line 4
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
    sget-object p1, Lv3/b;->c:Lv3/b;

    .line 3
    sget-object v0, Lv3/k;->g:Lv3/i;

    .line 5
    iget-object p1, p1, Lv3/e;->b:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e(Ljava/lang/Runnable;Lv3/h;Z)V

    .line 11
    return-void
.end method
