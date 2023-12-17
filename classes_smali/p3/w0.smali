.class public Lp3/w0;
.super Lp3/a;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/a<",
        "Ly2/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Z)V
    .registers 3
    .param p1  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lp3/a;-><init>(Lkotlin/coroutines/CoroutineContext;Z)V

    .line 4
    return-void
.end method


# virtual methods
.method public final C(Ljava/lang/Throwable;)Z
    .registers 3
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lp3/a;->b:Lkotlin/coroutines/CoroutineContext;

    .line 3
    invoke-static {v0, p1}, Lkotlinx/coroutines/a;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method
