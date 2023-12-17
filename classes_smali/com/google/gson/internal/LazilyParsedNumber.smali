.class public final Lcom/google/gson/internal/LazilyParsedNumber;
.super Ljava/lang/Number;
.source "LazilyParsedNumber.java"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    .line 6
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/io/InvalidObjectException;

    .line 3
    const-string v0, "Deserialization is unsupported"

    .line 5
    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 3
    iget-object v1, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    .line 5
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 8
    return-object v0
.end method


# virtual methods
.method public doubleValue()D
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lcom/google/gson/internal/LazilyParsedNumber;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1a

    .line 10
    check-cast p1, Lcom/google/gson/internal/LazilyParsedNumber;

    .line 12
    iget-object v1, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    .line 14
    iget-object p1, p1, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    .line 16
    if-eq v1, p1, :cond_19

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_18

    .line 24
    goto :goto_19

    .line 25
    :cond_18
    move v0, v2

    .line 26
    :cond_19
    :goto_19
    return v0

    .line 27
    :cond_1a
    return v2
.end method

.method public floatValue()F
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public intValue()I
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    move-result v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    .line 7
    return v0

    .line 8
    :catch_7
    :try_start_7
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 13
    move-result-wide v0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_d} :catch_f

    .line 14
    long-to-int v0, v0

    .line 15
    return v0

    .line 16
    :catch_f
    new-instance v0, Ljava/math/BigDecimal;

    .line 18
    iget-object v1, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    .line 20
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    .line 26
    move-result v0

    .line 27
    return v0
.end method

.method public longValue()J
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 6
    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    .line 7
    return-wide v0

    .line 8
    :catch_7
    new-instance v0, Ljava/math/BigDecimal;

    .line 10
    iget-object v1, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    .line 12
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    .line 18
    move-result-wide v0

    .line 19
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    .line 3
    return-object v0
.end method
