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

    .line 1
    sget-object v0, La3/d$a;->a:La3/d$a;

    .line 3
    invoke-direct {p0, v0}, La3/a;-><init>(Lkotlin/coroutines/CoroutineContext$b;)V

    .line 6
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

    .line 1
    const-string v0, "key"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    instance-of v1, p1, La3/b;

    .line 8
    if-eqz v1, :cond_2b

    .line 10
    check-cast p1, La3/b;

    .line 12
    invoke-virtual {p0}, La3/a;->getKey()Lkotlin/coroutines/CoroutineContext$b;

    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    if-eq v1, p1, :cond_1b

    .line 21
    iget-object v0, p1, La3/b;->b:Lkotlin/coroutines/CoroutineContext$b;

    .line 23
    if-ne v0, v1, :cond_19

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 29
    :goto_1c
    if-eqz v0, :cond_31

    .line 31
    iget-object p1, p1, La3/b;->a:Lh3/l;

    .line 33
    invoke-interface {p1, p0}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lkotlin/coroutines/CoroutineContext$a;

    .line 39
    instance-of v0, p1, Lkotlin/coroutines/CoroutineContext$a;

    .line 41
    if-eqz v0, :cond_31

    .line 43
    goto :goto_32

    .line 44
    :cond_2b
    sget-object v0, La3/d$a;->a:La3/d$a;

    .line 46
    if-ne v0, p1, :cond_31

    .line 48
    move-object p1, p0

    .line 49
    goto :goto_32

    .line 50
    :cond_31
    const/4 p1, 0x0

    .line 51
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

    .line 1
    check-cast p1, Lu3/f;

    .line 3
    invoke-virtual {p1}, Lu3/f;->m()V

    .line 6
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

    .line 1
    const-string v0, "key"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    instance-of v1, p1, La3/b;

    .line 8
    if-eqz v1, :cond_2b

    .line 10
    check-cast p1, La3/b;

    .line 12
    invoke-virtual {p0}, La3/a;->getKey()Lkotlin/coroutines/CoroutineContext$b;

    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    if-eq v1, p1, :cond_1b

    .line 21
    iget-object v0, p1, La3/b;->b:Lkotlin/coroutines/CoroutineContext$b;

    .line 23
    if-ne v0, v1, :cond_19

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    const/4 v0, 0x0

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 29
    :goto_1c
    if-eqz v0, :cond_32

    .line 31
    iget-object p1, p1, La3/b;->a:Lh3/l;

    .line 33
    invoke-interface {p1, p0}, Lh3/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lkotlin/coroutines/CoroutineContext$a;

    .line 39
    if-eqz p1, :cond_32

    .line 41
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 43
    goto :goto_33

    .line 44
    :cond_2b
    sget-object v0, La3/d$a;->a:La3/d$a;

    .line 46
    if-ne v0, p1, :cond_32

    .line 48
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move-object p1, p0

    .line 52
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

    .line 1
    new-instance v0, Lu3/f;

    .line 3
    invoke-direct {v0, p0, p1}, Lu3/f;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;La3/c;)V

    .line 6
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

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const/16 v1, 0x40

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {p0}, Lp3/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
