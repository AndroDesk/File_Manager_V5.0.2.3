.class public abstract Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.super Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;
.source "ContinuationImpl.kt"


# instance fields
.field private final _context:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public transient a:La3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(La3/c;)V
    .registers 3
    .param p1  # La3/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La3/c<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 3
    invoke-interface {p1}, La3/c;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-direct {p0, p1, v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(La3/c;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public constructor <init>(La3/c;Lkotlin/coroutines/CoroutineContext;)V
    .registers 3
    .param p1  # La3/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La3/c<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;-><init>(La3/c;)V

    .line 2
    iput-object p2, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->_context:Lkotlin/coroutines/CoroutineContext;

    .line 3
    invoke-static {v0}, Li3/g;->b(Ljava/lang/Object;)V

    .line 6
    return-object v0
.end method

.method public final intercepted()La3/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La3/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->a:La3/c;

    .line 3
    if-nez v0, :cond_1b

    .line 5
    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 8
    move-result-object v0

    .line 9
    sget-object v1, La3/d$a;->a:La3/d$a;

    .line 11
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, La3/d;

    .line 17
    if-eqz v0, :cond_18

    .line 19
    invoke-interface {v0, p0}, La3/d;->r(La3/c;)Lu3/f;

    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_19

    .line 25
    :cond_18
    move-object v0, p0

    .line 26
    :cond_19
    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->a:La3/c;

    .line 28
    :cond_1b
    return-object v0
.end method

.method public releaseIntercepted()V
    .registers 4

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->a:La3/c;

    .line 3
    if-eqz v0, :cond_1a

    .line 5
    if-eq v0, p0, :cond_1a

    .line 7
    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 10
    move-result-object v1

    .line 11
    sget v2, La3/d;->t:I

    .line 13
    sget-object v2, La3/d$a;->a:La3/d$a;

    .line 15
    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Li3/g;->b(Ljava/lang/Object;)V

    .line 22
    check-cast v1, La3/d;

    .line 24
    invoke-interface {v1, v0}, La3/d;->j(La3/c;)V

    .line 27
    :cond_1a
    sget-object v0, Lc3/a;->a:Lc3/a;

    .line 29
    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/ContinuationImpl;->a:La3/c;

    .line 31
    return-void
.end method
