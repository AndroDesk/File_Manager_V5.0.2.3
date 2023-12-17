.class public final Lkotlinx/coroutines/internal/ThreadContextKt;
.super Ljava/lang/Object;
.source "ThreadContext.kt"


# static fields
.field public static final a:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lh3/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh3/p<",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/CoroutineContext$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lh3/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh3/p<",
            "Lp3/x0<",
            "*>;",
            "Lkotlin/coroutines/CoroutineContext$a;",
            "Lp3/x0<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lh3/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh3/p<",
            "Lu3/v;",
            "Lkotlin/coroutines/CoroutineContext$a;",
            "Lu3/v;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lu3/r;

    .line 3
    const-string v1, "NO_THREAD_ELEMENTS"

    .line 5
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->a:Lu3/r;

    .line 10
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$countAll$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$countAll$1;

    .line 12
    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->b:Lh3/p;

    .line 14
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;

    .line 16
    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->c:Lh3/p;

    .line 18
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;

    .line 20
    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->d:Lh3/p;

    .line 22
    return-void
.end method

.method public static final a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    .registers 5
    .param p0  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->a:Lu3/r;

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    instance-of v0, p1, Lu3/v;

    .line 8
    if-eqz v0, :cond_27

    .line 10
    check-cast p1, Lu3/v;

    .line 12
    iget-object p0, p1, Lu3/v;->c:[Lp3/x0;

    .line 14
    array-length p0, p0

    .line 15
    add-int/lit8 p0, p0, -0x1

    .line 17
    if-ltz p0, :cond_35

    .line 19
    :goto_12
    add-int/lit8 v0, p0, -0x1

    .line 21
    iget-object v1, p1, Lu3/v;->c:[Lp3/x0;

    .line 23
    aget-object v1, v1, p0

    .line 25
    invoke-static {v1}, Li3/g;->b(Ljava/lang/Object;)V

    .line 28
    iget-object v2, p1, Lu3/v;->b:[Ljava/lang/Object;

    .line 30
    aget-object p0, v2, p0

    .line 32
    invoke-interface {v1, p0}, Lp3/x0;->l(Ljava/lang/Object;)V

    .line 35
    if-gez v0, :cond_25

    .line 37
    goto :goto_35

    .line 38
    :cond_25
    move p0, v0

    .line 39
    goto :goto_12

    .line 40
    :cond_27
    const/4 v0, 0x0

    .line 41
    sget-object v1, Lkotlinx/coroutines/internal/ThreadContextKt;->c:Lh3/p;

    .line 43
    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 47
    if-eqz p0, :cond_36

    .line 49
    check-cast p0, Lp3/x0;

    .line 51
    invoke-interface {p0, p1}, Lp3/x0;->l(Ljava/lang/Object;)V

    .line 54
    :cond_35
    :goto_35
    return-void

    .line 55
    :cond_36
    new-instance p0, Ljava/lang/NullPointerException;

    .line 57
    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p0
.end method

.method public static final b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    move-result-object v0

    .line 6
    if-nez p1, :cond_10

    .line 8
    sget-object p1, Lkotlinx/coroutines/internal/ThreadContextKt;->b:Lh3/p;

    .line 10
    invoke-interface {p0, v0, p1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Li3/g;->b(Ljava/lang/Object;)V

    .line 17
    :cond_10
    if-ne p1, v0, :cond_15

    .line 19
    sget-object p0, Lkotlinx/coroutines/internal/ThreadContextKt;->a:Lu3/r;

    .line 21
    goto :goto_31

    .line 22
    :cond_15
    instance-of v0, p1, Ljava/lang/Integer;

    .line 24
    if-eqz v0, :cond_2b

    .line 26
    new-instance v0, Lu3/v;

    .line 28
    check-cast p1, Ljava/lang/Number;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 33
    move-result p1

    .line 34
    invoke-direct {v0, p0, p1}, Lu3/v;-><init>(Lkotlin/coroutines/CoroutineContext;I)V

    .line 37
    sget-object p1, Lkotlinx/coroutines/internal/ThreadContextKt;->d:Lh3/p;

    .line 39
    invoke-interface {p0, v0, p1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 43
    goto :goto_31

    .line 44
    :cond_2b
    check-cast p1, Lp3/x0;

    .line 46
    invoke-interface {p1, p0}, Lp3/x0;->q(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    :goto_31
    return-object p0
.end method
