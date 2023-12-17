.class public final Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;
.super Lkotlin/coroutines/jvm/internal/RestrictedContinuationImpl;
.source "IntrinsicsJvm.kt"


# instance fields
.field public final synthetic $receiver$inlined:Ljava/lang/Object;

.field public final synthetic $this_createCoroutineUnintercepted$inlined:Lh3/p;

.field private label:I


# direct methods
.method public constructor <init>(La3/c;Lh3/p;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iput-object p2, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;->$this_createCoroutineUnintercepted$inlined:Lh3/p;

    .line 3
    iput-object p3, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;->$receiver$inlined:Ljava/lang/Object;

    .line 5
    const-string p2, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    .line 7
    invoke-static {p1, p2}, Li3/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/RestrictedContinuationImpl;-><init>(La3/c;)V

    .line 13
    return-void
.end method


# virtual methods
.method public invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;->label:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1a

    .line 7
    if-ne v0, v2, :cond_e

    .line 9
    iput v1, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;->label:I

    .line 11
    invoke-static {p1}, Lkotlin/a;->d(Ljava/lang/Object;)V

    .line 14
    goto :goto_31

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
    iput v2, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;->label:I

    .line 29
    invoke-static {p1}, Lkotlin/a;->d(Ljava/lang/Object;)V

    .line 32
    iget-object p1, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;->$this_createCoroutineUnintercepted$inlined:Lh3/p;

    .line 34
    const-string v0, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>"

    .line 36
    invoke-static {p1, v0}, Li3/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;->$this_createCoroutineUnintercepted$inlined:Lh3/p;

    .line 41
    invoke-static {v1, p1}, Li3/k;->a(ILjava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3;->$receiver$inlined:Ljava/lang/Object;

    .line 46
    invoke-interface {p1, v0, p0}, Lh3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    :goto_31
    return-object p1
.end method
