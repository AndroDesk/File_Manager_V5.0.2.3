.class public final Lcom/google/gson/JsonArray;
.super Lcom/google/gson/JsonElement;
.source "JsonArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/JsonElement;",
        "Ljava/lang/Iterable<",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 3
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/google/gson/JsonElement;)V
    .registers 3

    if-nez p1, :cond_4

    .line 5
    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/Boolean;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_7

    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    goto :goto_d

    :cond_7
    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    move-object p1, v1

    :goto_d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/Character;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_7

    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    goto :goto_d

    :cond_7
    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Character;)V

    move-object p1, v1

    :goto_d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_7

    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    goto :goto_d

    :cond_7
    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    move-object p1, v1

    :goto_d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .registers 4

    .line 4
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_7

    sget-object p1, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    goto :goto_d

    :cond_7
    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v1, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(Lcom/google/gson/JsonArray;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    iget-object p1, p1, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    return-void
.end method

.method public contains(Lcom/google/gson/JsonElement;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public deepCopy()Lcom/google/gson/JsonArray;
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 3
    new-instance v0, Lcom/google/gson/JsonArray;

    iget-object v1, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonArray;-><init>(I)V

    .line 4
    iget-object v1, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 5
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->deepCopy()Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_19

    :cond_2d
    return-object v0

    .line 6
    :cond_2e
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/google/gson/JsonElement;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->deepCopy()Lcom/google/gson/JsonArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-eq p1, p0, :cond_15

    .line 3
    instance-of v0, p1, Lcom/google/gson/JsonArray;

    .line 5
    if-eqz v0, :cond_13

    .line 7
    check-cast p1, Lcom/google/gson/JsonArray;

    .line 9
    iget-object p1, p1, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 11
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_13

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    :goto_15
    const/4 p1, 0x1

    .line 23
    :goto_16
    return p1
.end method

.method public get(I)Lcom/google/gson/JsonElement;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 9
    return-object p1
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_17

    .line 10
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBigDecimal()Ljava/math/BigDecimal;

    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 29
    throw v0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_17

    .line 10
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBigInteger()Ljava/math/BigInteger;

    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 29
    throw v0
.end method

.method public getAsBoolean()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_17

    .line 10
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 29
    throw v0
.end method

.method public getAsByte()B
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_17

    .line 10
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsByte()B

    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 29
    throw v0
.end method

.method public getAsCharacter()C
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_17

    .line 10
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsCharacter()C

    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 29
    throw v0
.end method

.method public getAsDouble()D
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_17

    .line 10
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsDouble()D

    .line 22
    move-result-wide v0

    .line 23
    return-wide v0

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 29
    throw v0
.end method

.method public getAsFloat()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_17

    .line 10
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsFloat()F

    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 29
    throw v0
.end method

.method public getAsInt()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_17

    .line 10
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 29
    throw v0
.end method

.method public getAsLong()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_17

    .line 10
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 22
    move-result-wide v0

    .line 23
    return-wide v0

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 29
    throw v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_17

    .line 10
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsNumber()Ljava/lang/Number;

    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 29
    throw v0
.end method

.method public getAsShort()S
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_17

    .line 10
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsShort()S

    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 29
    throw v0
.end method

.method public getAsString()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_17

    .line 10
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/gson/JsonElement;

    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 29
    throw v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public remove(I)Lcom/google/gson/JsonElement;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    return-object p1
.end method

.method public remove(Lcom/google/gson/JsonElement;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public set(ILcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 9
    return-object p1
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonArray;->elements:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
