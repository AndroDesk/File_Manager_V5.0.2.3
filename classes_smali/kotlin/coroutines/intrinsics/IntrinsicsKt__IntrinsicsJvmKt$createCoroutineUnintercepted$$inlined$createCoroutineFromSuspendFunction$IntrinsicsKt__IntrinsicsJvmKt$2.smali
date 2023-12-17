.class public final Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "IntrinsicsJvm.kt"


# instance fields
.field public final synthetic $this_createCoroutineUnintercepted$inlined:Lh3/l;

.field private label:I


# direct methods
.method public constructor <init>(La3/c;Lkotlin/coroutines/CoroutineContext;Lh3/l;)V
    .registers 4

    .line 1
    iput-object p3, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2;->$this_createCoroutineUnintercepted$inlined:Lh3/l;

    .line 3
    const-string p3, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    .line 5
    invoke-static {p1, p3}, Li3/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(La3/c;Lkotlin/coroutines/CoroutineContext;)V

    .line 11
    return-void
.end method


# virtual methods
.method public invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2;->label:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1a

    .line 6
    if-ne v0, v1, :cond_e

    .line 8
    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2;->label:I

    .line 11
    invoke-static {p1}, Lkotlin/a;->d(Ljava/lang/Object;)V

    .line 14
    goto :goto_2f

    .line 15
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    const-string v0, "This coroutine had already completed"

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p1

    .line 27
    :cond_1a
    iput v1, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2;->label:I

    .line 29
    invoke-static {p1}, Lkotlin/a;->d(Ljava/lang/Object;)V

    .line 32
    iget-object p1, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2;->$this_createCoroutineUnintercepted$inlined:Lh3/l;

    .line 34
    const-string v0, "null cannot be cast to non-null type kotlin.Function1<kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$0>, kotlin.Any?>"

    .line 36
    invoke-static {p1, v0}, Li3/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$2;->$this_createCoroutineUnintercepted$inlined:Lh3/l;

    .line 41
    invoke-static {v1, p1}, Li3/k;->a(ILjava/lang/Object;)V

    .line 44
    invoke-interface {p1, p0}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    :goto_2f
    return-object p1
.end method
