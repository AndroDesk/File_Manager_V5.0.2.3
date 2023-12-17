.class public final Lcom/google/gson/JsonPrimitive;
.super Lcom/google/gson/JsonElement;
.source "JsonPrimitive.java"


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Character;)V
    .registers 2

    .line 7
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 8
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method private static isIntegral(Lcom/google/gson/JsonPrimitive;)Z
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 3
    instance-of v0, p0, Ljava/lang/Number;

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1e

    .line 8
    check-cast p0, Ljava/lang/Number;

    .line 10
    instance-of v0, p0, Ljava/math/BigInteger;

    .line 12
    if-nez v0, :cond_1d

    .line 14
    instance-of v0, p0, Ljava/lang/Long;

    .line 16
    if-nez v0, :cond_1d

    .line 18
    instance-of v0, p0, Ljava/lang/Integer;

    .line 20
    if-nez v0, :cond_1d

    .line 22
    instance-of v0, p0, Ljava/lang/Short;

    .line 24
    if-nez v0, :cond_1d

    .line 26
    instance-of p0, p0, Ljava/lang/Byte;

    .line 28
    if-eqz p0, :cond_1e

    .line 30
    :cond_1d
    const/4 v1, 0x1

    .line 31
    :cond_1e
    return v1
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lcom/google/gson/JsonElement;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->deepCopy()Lcom/google/gson/JsonPrimitive;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public deepCopy()Lcom/google/gson/JsonPrimitive;
    .registers 1

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_76

    .line 8
    const-class v2, Lcom/google/gson/JsonPrimitive;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_10

    .line 16
    goto :goto_76

    .line 17
    :cond_10
    check-cast p1, Lcom/google/gson/JsonPrimitive;

    .line 19
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 21
    if-nez v2, :cond_1d

    .line 23
    iget-object p1, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 25
    if-nez p1, :cond_1b

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v0, v1

    .line 29
    :goto_1c
    return v0

    .line 30
    :cond_1d
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_40

    .line 36
    invoke-static {p1}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_40

    .line 42
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 49
    move-result-wide v2

    .line 50
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 57
    move-result-wide v4

    .line 58
    cmp-long p1, v2, v4

    .line 60
    if-nez p1, :cond_3e

    .line 62
    goto :goto_3f

    .line 63
    :cond_3e
    move v0, v1

    .line 64
    :goto_3f
    return v0

    .line 65
    :cond_40
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 67
    instance-of v3, v2, Ljava/lang/Number;

    .line 69
    if-eqz v3, :cond_6f

    .line 71
    iget-object v3, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 73
    instance-of v3, v3, Ljava/lang/Number;

    .line 75
    if-eqz v3, :cond_6f

    .line 77
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 84
    move-result-wide v2

    .line 85
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 92
    move-result-wide v4

    .line 93
    cmpl-double p1, v2, v4

    .line 95
    if-eqz p1, :cond_6e

    .line 97
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_6d

    .line 103
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_6d

    .line 109
    goto :goto_6e

    .line 110
    :cond_6d
    move v0, v1

    .line 111
    :cond_6e
    :goto_6e
    return v0

    .line 112
    :cond_6f
    iget-object p1, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 114
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 117
    move-result p1

    .line 118
    return p1

    .line 119
    :cond_76
    :goto_76
    return v1
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Ljava/math/BigDecimal;

    .line 5
    if-eqz v1, :cond_9

    .line 7
    check-cast v0, Ljava/math/BigDecimal;

    .line 9
    goto :goto_14

    .line 10
    :cond_9
    new-instance v0, Ljava/math/BigDecimal;

    .line 12
    iget-object v1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 21
    :goto_14
    return-object v0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Ljava/math/BigInteger;

    .line 5
    if-eqz v1, :cond_9

    .line 7
    check-cast v0, Ljava/math/BigInteger;

    .line 9
    goto :goto_14

    .line 10
    :cond_9
    new-instance v0, Ljava/math/BigInteger;

    .line 12
    iget-object v1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 21
    :goto_14
    return-object v0
.end method

.method public getAsBoolean()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public getAsByte()B
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    .line 14
    move-result v0

    .line 15
    goto :goto_17

    .line 16
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 23
    move-result v0

    .line 24
    :goto_17
    return v0
.end method

.method public getAsCharacter()C
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getAsDouble()D
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 14
    move-result-wide v0

    .line 15
    goto :goto_17

    .line 16
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 23
    move-result-wide v0

    .line 24
    :goto_17
    return-wide v0
.end method

.method public getAsFloat()F
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 14
    move-result v0

    .line 15
    goto :goto_17

    .line 16
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 23
    move-result v0

    .line 24
    :goto_17
    return v0
.end method

.method public getAsInt()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 14
    move-result v0

    .line 15
    goto :goto_17

    .line 16
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    move-result v0

    .line 24
    :goto_17
    return v0
.end method

.method public getAsLong()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 14
    move-result-wide v0

    .line 15
    goto :goto_17

    .line 16
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 23
    move-result-wide v0

    .line 24
    :goto_17
    return-wide v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 5
    if-eqz v1, :cond_e

    .line 7
    new-instance v1, Lcom/google/gson/internal/LazilyParsedNumber;

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 11
    invoke-direct {v1, v0}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    move-object v1, v0

    .line 16
    check-cast v1, Ljava/lang/Number;

    .line 18
    :goto_11
    return-object v1
.end method

.method public getAsShort()S
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    .line 14
    move-result v0

    .line 15
    goto :goto_17

    .line 16
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    .line 23
    move-result v0

    .line 24
    :goto_17
    return v0
.end method

.method public getAsString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1e

    .line 22
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 24
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 33
    check-cast v0, Ljava/lang/String;

    .line 35
    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const/16 v0, 0x1f

    .line 7
    return v0

    .line 8
    :cond_7
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x20

    .line 14
    if-eqz v0, :cond_1c

    .line 16
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 23
    move-result-wide v2

    .line 24
    :goto_17
    ushr-long v0, v2, v1

    .line 26
    xor-long/2addr v0, v2

    .line 27
    long-to-int v0, v0

    .line 28
    return v0

    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 31
    instance-of v2, v0, Ljava/lang/Number;

    .line 33
    if-eqz v2, :cond_2f

    .line 35
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 42
    move-result-wide v2

    .line 43
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 46
    move-result-wide v2

    .line 47
    goto :goto_17

    .line 48
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 51
    move-result v0

    .line 52
    return v0
.end method

.method public isBoolean()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 3
    instance-of v0, v0, Ljava/lang/Boolean;

    .line 5
    return v0
.end method

.method public isNumber()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 3
    instance-of v0, v0, Ljava/lang/Number;

    .line 5
    return v0
.end method

.method public isString()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 3
    instance-of v0, v0, Ljava/lang/String;

    .line 5
    return v0
.end method
