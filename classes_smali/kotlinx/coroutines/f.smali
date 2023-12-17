.class public final Lkotlinx/coroutines/f;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "Unconfined.kt"


# static fields
.field public static final synthetic b:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/coroutines/f;

    invoke-direct {v0}, Lkotlinx/coroutines/f;-><init>()V

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
    .registers 3
    .param p1  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object p2, Lp3/b1;->a:Lp3/b1$a;

    .line 3
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lp3/b1;

    .line 9
    if-eqz p1, :cond_b

    .line 11
    return-void

    .line 12
    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 14
    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    .line 16
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Dispatchers.Unconfined"

    return-object v0
.end method
