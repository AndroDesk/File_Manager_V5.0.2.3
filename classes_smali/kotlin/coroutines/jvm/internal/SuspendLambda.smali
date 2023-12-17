.class public abstract Lkotlin/coroutines/jvm/internal/SuspendLambda;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ContinuationImpl.kt"

# interfaces
.implements Li3/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;",
        "Li3/f<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILa3/c;)V

    return-void
.end method

.method public constructor <init>(ILa3/c;)V
    .registers 3
    .param p2  # La3/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "La3/c<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(La3/c;)V

    .line 2
    iput p1, p0, Lkotlin/coroutines/jvm/internal/SuspendLambda;->arity:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .registers 2

    .line 1
    iget v0, p0, Lkotlin/coroutines/jvm/internal/SuspendLambda;->arity:I

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->getCompletion()La3/c;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_15

    .line 7
    sget-object v0, Li3/i;->a:Li3/j;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {p0}, Li3/j;->a(Li3/f;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "renderLambdaToString(this)"

    .line 18
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    goto :goto_19

    .line 22
    :cond_15
    invoke-super {p0}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    :goto_19
    return-object v0
.end method
