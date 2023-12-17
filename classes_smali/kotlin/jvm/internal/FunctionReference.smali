.class public Lkotlin/jvm/internal/FunctionReference;
.super Lkotlin/jvm/internal/CallableReference;
.source "FunctionReference.java"

# interfaces
.implements Li3/f;
.implements Lm3/e;


# instance fields
.field private final arity:I

.field private final flags:I


# direct methods
.method public constructor <init>(I)V
    .registers 9

    .line 1
    sget-object v2, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 2
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15

    and-int/lit8 v0, p6, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    move v7, v1

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    move v7, v0

    :goto_9
    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 3
    invoke-direct/range {v2 .. v7}, Lkotlin/jvm/internal/CallableReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    iput p1, p0, Lkotlin/jvm/internal/FunctionReference;->arity:I

    shr-int/lit8 p1, p6, 0x1

    .line 5
    iput p1, p0, Lkotlin/jvm/internal/FunctionReference;->flags:I

    return-void
.end method


# virtual methods
.method public computeReflected()Lm3/b;
    .registers 2

    .line 1
    sget-object v0, Li3/i;->a:Li3/j;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lkotlin/jvm/internal/FunctionReference;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_52

    .line 10
    check-cast p1, Lkotlin/jvm/internal/FunctionReference;

    .line 12
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_50

    .line 26
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getSignature()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getSignature()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_50

    .line 40
    iget v1, p0, Lkotlin/jvm/internal/FunctionReference;->flags:I

    .line 42
    iget v3, p1, Lkotlin/jvm/internal/FunctionReference;->flags:I

    .line 44
    if-ne v1, v3, :cond_50

    .line 46
    iget v1, p0, Lkotlin/jvm/internal/FunctionReference;->arity:I

    .line 48
    iget v3, p1, Lkotlin/jvm/internal/FunctionReference;->arity:I

    .line 50
    if-ne v1, v3, :cond_50

    .line 52
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getBoundReceiver()Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getBoundReceiver()Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    invoke-static {v1, v3}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_50

    .line 66
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getOwner()Lm3/d;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lkotlin/jvm/internal/CallableReference;->getOwner()Lm3/d;

    .line 73
    move-result-object p1

    .line 74
    invoke-static {v1, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_50

    .line 80
    goto :goto_51

    .line 81
    :cond_50
    move v0, v2

    .line 82
    :goto_51
    return v0

    .line 83
    :cond_52
    instance-of v0, p1, Lm3/e;

    .line 85
    if-eqz v0, :cond_5f

    .line 87
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->compute()Lm3/b;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result p1

    .line 95
    return p1

    .line 96
    :cond_5f
    return v2
.end method

.method public getArity()I
    .registers 2

    .line 1
    iget v0, p0, Lkotlin/jvm/internal/FunctionReference;->arity:I

    .line 3
    return v0
.end method

.method public bridge synthetic getReflected()Lm3/b;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lm3/e;

    move-result-object v0

    return-object v0
.end method

.method public getReflected()Lm3/e;
    .registers 2

    .line 2
    invoke-super {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lm3/b;

    move-result-object v0

    check-cast v0, Lm3/e;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getOwner()Lm3/d;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_12

    .line 9
    :cond_8
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getOwner()Lm3/d;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 16
    move-result v0

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    :goto_12
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 26
    move-result v1

    .line 27
    add-int/2addr v1, v0

    .line 28
    mul-int/lit8 v1, v1, 0x1f

    .line 30
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getSignature()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 37
    move-result v0

    .line 38
    add-int/2addr v0, v1

    .line 39
    return v0
.end method

.method public isExternal()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lm3/e;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lm3/e;->isExternal()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isInfix()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lm3/e;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lm3/e;->isInfix()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isInline()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lm3/e;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lm3/e;->isInline()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isOperator()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lm3/e;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lm3/e;->isOperator()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isSuspend()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/FunctionReference;->getReflected()Lm3/e;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lm3/e;->isSuspend()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->compute()Lm3/b;

    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p0, :cond_b

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_b
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "<init>"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    const-string v0, "constructor (Kotlin reflection is not available)"

    .line 26
    goto :goto_30

    .line 27
    :cond_1a
    const-string v0, "function "

    .line 29
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getName()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, " (Kotlin reflection is not available)"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    :goto_30
    return-object v0
.end method
