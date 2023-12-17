.class public abstract La3/b;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lkotlin/coroutines/CoroutineContext$a;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/CoroutineContext$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lh3/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh3/l<",
            "Lkotlin/coroutines/CoroutineContext$a;",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkotlin/coroutines/CoroutineContext$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/CoroutineContext$b<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext$b;Lh3/l;)V
    .registers 4
    .param p1  # Lkotlin/coroutines/CoroutineContext$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext$b<",
            "TB;>;",
            "Lh3/l<",
            "-",
            "Lkotlin/coroutines/CoroutineContext$a;",
            "+TE;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "baseKey"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "safeCast"

    .line 8
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p2, p0, La3/b;->a:Lh3/l;

    .line 16
    instance-of p2, p1, La3/b;

    .line 18
    if-eqz p2, :cond_17

    .line 20
    check-cast p1, La3/b;

    .line 22
    iget-object p1, p1, La3/b;->b:Lkotlin/coroutines/CoroutineContext$b;

    .line 24
    :cond_17
    iput-object p1, p0, La3/b;->b:Lkotlin/coroutines/CoroutineContext$b;

    .line 26
    return-void
.end method
