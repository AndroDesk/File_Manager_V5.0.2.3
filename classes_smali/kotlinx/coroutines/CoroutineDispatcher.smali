.class public abstract Lkotlinx/coroutines/CoroutineDispatcher;
.super La3/a;
.source "CoroutineDispatcher.kt"

# interfaces
.implements La3/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/CoroutineDispatcher$Key;
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/CoroutineDispatcher$Key;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/coroutines/CoroutineDispatcher$Key;

    invoke-direct {v0}, Lkotlinx/coroutines/CoroutineDispatcher$Key;-><init>()V

    sput-object v0, Lkotlinx/coroutines/CoroutineDispatcher;->a:Lkotlinx/coroutines/CoroutineDispatcher$Key;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, La3/d$a;->a:La3/d$a;

    invoke-direct {p0, v0}, La3/a;-><init>(Lkotlin/coroutines/CoroutineContext$b;)V

    return-void
.end method


# virtual methods
.method public final get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;
    .registers 4
    .param p1  # Lkotlin/coroutines/CoroutineContext$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/CoroutineContext$a;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext$b<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, La3/b;

    if-eqz v1, :cond_2b

    check-cast p1, La3/b;

    invoke-virtual {p0}, La3/a;->getKey()Lkotlin/coroutines/CoroutineContext$b;

    move-result-object v1

    invoke-static {v1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_1b

    iget-object v0, p1, La3/b;->b:Lkotlin/coroutines/CoroutineContext$b;

    if-ne v0, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    if-eqz v0, :cond_31

    iget-object p1, p1, La3/b;->a:Lh3/l;

    invoke-interface {p1, p0}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext$a;

    instance-of v0, p1, Lkotlin/coroutines/CoroutineContext$a;

    if-eqz v0, :cond_31

    goto :goto_32

    :cond_2b
    sget-object v0, La3/d$a;->a:La3/d$a;

    if-ne v0, p1, :cond_31

    move-object p1, p0

    goto :goto_32

    :cond_31
    const/4 p1, 0x0

    :goto_32
    return-object p1
.end method

.method public final j(La3/c;)V
    .registers 2
    .param p1  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La3/c<",
            "*>;)V"
        }
    .end annotation

    check-cast p1, Lu3/f;

    invoke-virtual {p1}, Lu3/f;->m()V

    return-void
.end method

.method public final minusKey(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext;
    .registers 4
    .param p1  # Lkotlin/coroutines/CoroutineContext$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext$b<",
            "*>;)",
            "Lkotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, La3/b;

    if-eqz v1, :cond_2b

    check-cast p1, La3/b;

    invoke-virtual {p0}, La3/a;->getKey()Lkotlin/coroutines/CoroutineContext$b;

    move-result-object v1

    invoke-static {v1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, p1, :cond_1b

    iget-object v0, p1, La3/b;->b:Lkotlin/coroutines/CoroutineContext$b;

    if-ne v0, v1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    if-eqz v0, :cond_32

    iget-object p1, p1, La3/b;->a:Lh3/l;

    invoke-interface {p1, p0}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext$a;

    if-eqz p1, :cond_32

    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    goto :goto_33

    :cond_2b
    sget-object v0, La3/d$a;->a:La3/d$a;

    if-ne v0, p1, :cond_32

    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    goto :goto_33

    :cond_32
    move-object p1, p0

    :goto_33
    return-object p1
.end method

.method public final r(La3/c;)Lu3/f;
    .registers 3
    .param p1  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lu3/f;

    invoke-direct {v0, p0, p1}, Lu3/f;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;La3/c;)V

    return-object v0
.end method

.method public abstract s(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .param p1  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public t()Z
    .registers 2

    instance-of v0, p0, Lkotlinx/coroutines/f;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
