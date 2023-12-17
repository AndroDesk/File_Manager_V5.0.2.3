.class public final Lkotlin/coroutines/CombinedContext;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/coroutines/CombinedContext$Serialized;
    }
.end annotation


# instance fields
.field private final element:Lkotlin/coroutines/CoroutineContext$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final left:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext$a;)V
    .registers 4
    .param p1  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lkotlin/coroutines/CoroutineContext$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "left"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "element"

    .line 8
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lkotlin/coroutines/CombinedContext;->left:Lkotlin/coroutines/CoroutineContext;

    .line 16
    iput-object p2, p0, Lkotlin/coroutines/CombinedContext;->element:Lkotlin/coroutines/CoroutineContext$a;

    .line 18
    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lkotlin/coroutines/CombinedContext;->b()I

    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [Lkotlin/coroutines/CoroutineContext;

    .line 7
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 9
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 12
    sget-object v3, Ly2/e;->a:Ly2/e;

    .line 14
    new-instance v4, Lkotlin/coroutines/CombinedContext$writeReplace$1;

    .line 16
    invoke-direct {v4, v1, v2}, Lkotlin/coroutines/CombinedContext$writeReplace$1;-><init>([Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 19
    invoke-virtual {p0, v3, v4}, Lkotlin/coroutines/CombinedContext;->fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;

    .line 22
    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 24
    if-ne v2, v0, :cond_1b

    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 v0, 0x0

    .line 29
    :goto_1c
    if-eqz v0, :cond_24

    .line 31
    new-instance v0, Lkotlin/coroutines/CombinedContext$Serialized;

    .line 33
    invoke-direct {v0, v1}, Lkotlin/coroutines/CombinedContext$Serialized;-><init>([Lkotlin/coroutines/CoroutineContext;)V

    .line 36
    return-object v0

    .line 37
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 39
    const-string v1, "Check failed."

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0
.end method


# virtual methods
.method public final b()I
    .registers 4

    .line 1
    const/4 v0, 0x2

    .line 2
    move-object v1, p0

    .line 3
    :goto_2
    iget-object v1, v1, Lkotlin/coroutines/CombinedContext;->left:Lkotlin/coroutines/CoroutineContext;

    .line 5
    instance-of v2, v1, Lkotlin/coroutines/CombinedContext;

    .line 7
    if-eqz v2, :cond_b

    .line 9
    check-cast v1, Lkotlin/coroutines/CombinedContext;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v1, 0x0

    .line 13
    :goto_c
    if-nez v1, :cond_f

    .line 15
    return v0

    .line 16
    :cond_f
    add-int/lit8 v0, v0, 0x1

    .line 18
    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eq p0, p1, :cond_44

    .line 4
    instance-of v1, p1, Lkotlin/coroutines/CombinedContext;

    .line 6
    if-eqz v1, :cond_45

    .line 8
    check-cast p1, Lkotlin/coroutines/CombinedContext;

    .line 10
    invoke-virtual {p1}, Lkotlin/coroutines/CombinedContext;->b()I

    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Lkotlin/coroutines/CombinedContext;->b()I

    .line 17
    move-result v2

    .line 18
    if-ne v1, v2, :cond_45

    .line 20
    move-object v1, p0

    .line 21
    :goto_14
    iget-object v2, v1, Lkotlin/coroutines/CombinedContext;->element:Lkotlin/coroutines/CoroutineContext$a;

    .line 23
    invoke-interface {v2}, Lkotlin/coroutines/CoroutineContext$a;->getKey()Lkotlin/coroutines/CoroutineContext$b;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p1, v3}, Lkotlin/coroutines/CombinedContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3, v2}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_26

    .line 37
    move p1, v0

    .line 38
    goto :goto_42

    .line 39
    :cond_26
    iget-object v1, v1, Lkotlin/coroutines/CombinedContext;->left:Lkotlin/coroutines/CoroutineContext;

    .line 41
    instance-of v2, v1, Lkotlin/coroutines/CombinedContext;

    .line 43
    if-eqz v2, :cond_2f

    .line 45
    check-cast v1, Lkotlin/coroutines/CombinedContext;

    .line 47
    goto :goto_14

    .line 48
    :cond_2f
    const-string v2, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    .line 50
    invoke-static {v1, v2}, Li3/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    check-cast v1, Lkotlin/coroutines/CoroutineContext$a;

    .line 55
    invoke-interface {v1}, Lkotlin/coroutines/CoroutineContext$a;->getKey()Lkotlin/coroutines/CoroutineContext$b;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p1, v2}, Lkotlin/coroutines/CombinedContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1, v1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    move-result p1

    .line 67
    :goto_42
    if-eqz p1, :cond_45

    .line 69
    :cond_44
    const/4 v0, 0x1

    .line 70
    :cond_45
    return v0
.end method

.method public fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;
    .registers 4
    .param p2  # Lh3/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lh3/p<",
            "-TR;-",
            "Lkotlin/coroutines/CoroutineContext$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    const-string v0, "operation"

    .line 3
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->left:Lkotlin/coroutines/CoroutineContext;

    .line 8
    invoke-interface {v0, p1, p2}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->element:Lkotlin/coroutines/CoroutineContext$a;

    .line 14
    invoke-interface {p2, p1, v0}, Lh3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;
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
    move-object v0, p0

    .line 7
    :goto_6
    iget-object v1, v0, Lkotlin/coroutines/CombinedContext;->element:Lkotlin/coroutines/CoroutineContext$a;

    .line 9
    invoke-interface {v1, p1}, Lkotlin/coroutines/CoroutineContext$a;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_f

    .line 15
    return-object v1

    .line 16
    :cond_f
    iget-object v0, v0, Lkotlin/coroutines/CombinedContext;->left:Lkotlin/coroutines/CoroutineContext;

    .line 18
    instance-of v1, v0, Lkotlin/coroutines/CombinedContext;

    .line 20
    if-eqz v1, :cond_18

    .line 22
    check-cast v0, Lkotlin/coroutines/CombinedContext;

    .line 24
    goto :goto_6

    .line 25
    :cond_18
    invoke-interface {v0, p1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->left:Lkotlin/coroutines/CoroutineContext;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lkotlin/coroutines/CombinedContext;->element:Lkotlin/coroutines/CoroutineContext$a;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    return v1
.end method

.method public minusKey(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext;
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
    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->element:Lkotlin/coroutines/CoroutineContext$a;

    .line 8
    invoke-interface {v0, p1}, Lkotlin/coroutines/CoroutineContext$a;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$a;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_10

    .line 14
    iget-object p1, p0, Lkotlin/coroutines/CombinedContext;->left:Lkotlin/coroutines/CoroutineContext;

    .line 16
    return-object p1

    .line 17
    :cond_10
    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->left:Lkotlin/coroutines/CoroutineContext;

    .line 19
    invoke-interface {v0, p1}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext;

    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lkotlin/coroutines/CombinedContext;->left:Lkotlin/coroutines/CoroutineContext;

    .line 25
    if-ne p1, v0, :cond_1c

    .line 27
    move-object p1, p0

    .line 28
    goto :goto_2b

    .line 29
    :cond_1c
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 31
    if-ne p1, v0, :cond_23

    .line 33
    iget-object p1, p0, Lkotlin/coroutines/CombinedContext;->element:Lkotlin/coroutines/CoroutineContext$a;

    .line 35
    goto :goto_2b

    .line 36
    :cond_23
    new-instance v0, Lkotlin/coroutines/CombinedContext;

    .line 38
    iget-object v1, p0, Lkotlin/coroutines/CombinedContext;->element:Lkotlin/coroutines/CoroutineContext$a;

    .line 40
    invoke-direct {v0, p1, v1}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext$a;)V

    .line 43
    move-object p1, v0

    .line 44
    :goto_2b
    return-object p1
.end method

.method public plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .registers 2
    .param p1  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/coroutines/CoroutineContext$DefaultImpls;->a(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/16 v1, 0x5b

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    sget-object v1, Lkotlin/coroutines/CombinedContext$toString$1;->INSTANCE:Lkotlin/coroutines/CombinedContext$toString$1;

    .line 13
    const-string v2, ""

    .line 15
    invoke-virtual {p0, v2, v1}, Lkotlin/coroutines/CombinedContext;->fold(Ljava/lang/Object;Lh3/p;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const/16 v1, 0x5d

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
