.class final Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ThreadContext.kt"

# interfaces
.implements Lh3/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/ThreadContextKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh3/p<",
        "Lu3/v;",
        "Lkotlin/coroutines/CoroutineContext$a;",
        "Lu3/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lu3/v;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$a;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;->invoke(Lu3/v;Lkotlin/coroutines/CoroutineContext$a;)Lu3/v;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lu3/v;Lkotlin/coroutines/CoroutineContext$a;)Lu3/v;
    .registers 6
    .param p1  # Lu3/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lkotlin/coroutines/CoroutineContext$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p2, Lp3/x0;

    if-eqz v0, :cond_1a

    check-cast p2, Lp3/x0;

    iget-object v0, p1, Lu3/v;->a:Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p2, v0}, Lp3/x0;->q(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lu3/v;->b:[Ljava/lang/Object;

    iget v2, p1, Lu3/v;->d:I

    aput-object v0, v1, v2

    iget-object v0, p1, Lu3/v;->c:[Lp3/x0;

    add-int/lit8 v1, v2, 0x1

    iput v1, p1, Lu3/v;->d:I

    aput-object p2, v0, v2

    :cond_1a
    return-object p1
.end method
