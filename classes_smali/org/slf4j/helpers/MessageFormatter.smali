.class public final Lorg/slf4j/helpers/MessageFormatter;
.super Ljava/lang/Object;
.source "MessageFormatter.java"


# static fields
.field public static final DELIM_START:C = '{'

.field public static final DELIM_STOP:C = '}'

.field public static final DELIM_STR:Ljava/lang/String; = "{}"

.field private static final ESCAPE_CHAR:C = '\\'


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;
    .registers 3

    .line 1
    invoke-static {p1}, Lorg/slf4j/helpers/MessageFormatter;->getThrowableCandidate([Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2
    invoke-static {p1}, Lorg/slf4j/helpers/MessageFormatter;->trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 3
    :cond_a
    invoke-static {p0, p1, v0}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p0

    return-object p0
.end method

.method public static final arrayFormat(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/slf4j/helpers/FormattingTuple;
    .registers 8

    if-nez p0, :cond_9

    .line 4
    new-instance p0, Lorg/slf4j/helpers/FormattingTuple;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0

    :cond_9
    if-nez p1, :cond_11

    .line 5
    new-instance p1, Lorg/slf4j/helpers/FormattingTuple;

    invoke-direct {p1, p0}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 7
    :goto_1e
    array-length v3, p1

    if-ge v1, v3, :cond_81

    const-string v3, "{}"

    .line 8
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_43

    if-nez v2, :cond_32

    .line 9
    new-instance v0, Lorg/slf4j/helpers/FormattingTuple;

    invoke-direct {v0, p0, p1, p2}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0

    .line 10
    :cond_32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 11
    new-instance p0, Lorg/slf4j/helpers/FormattingTuple;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0

    .line 12
    :cond_43
    invoke-static {p0, v3}, Lorg/slf4j/helpers/MessageFormatter;->isEscapedDelimeter(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 13
    invoke-static {p0, v3}, Lorg/slf4j/helpers/MessageFormatter;->isDoubleEscaped(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5e

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v3, -0x1

    .line 14
    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/16 v2, 0x7b

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7d

    :cond_5e
    add-int/lit8 v4, v3, -0x1

    .line 16
    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 17
    aget-object v2, p1, v1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v2, v4}, Lorg/slf4j/helpers/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_7b

    .line 18
    :cond_6e
    invoke-virtual {v0, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 19
    aget-object v2, p1, v1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v2, v4}, Lorg/slf4j/helpers/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Map;)V

    :goto_7b
    add-int/lit8 v3, v3, 0x2

    :goto_7d
    move v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 20
    :cond_81
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 21
    new-instance p0, Lorg/slf4j/helpers/FormattingTuple;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/slf4j/helpers/FormattingTuple;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static booleanArrayAppend(Ljava/lang/StringBuilder;[Z)V
    .registers 5

    .line 1
    const/16 v0, 0x5b

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 10
    aget-boolean v2, p1, v1

    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    add-int/lit8 v2, v0, -0x1

    .line 17
    if-eq v1, v2, :cond_17

    .line 19
    const-string v2, ", "

    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_17
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_7

    .line 27
    :cond_1a
    const/16 p1, 0x5d

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    return-void
.end method

.method private static byteArrayAppend(Ljava/lang/StringBuilder;[B)V
    .registers 5

    .line 1
    const/16 v0, 0x5b

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 10
    aget-byte v2, p1, v1

    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    add-int/lit8 v2, v0, -0x1

    .line 17
    if-eq v1, v2, :cond_17

    .line 19
    const-string v2, ", "

    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_17
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_7

    .line 27
    :cond_1a
    const/16 p1, 0x5d

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    return-void
.end method

.method private static charArrayAppend(Ljava/lang/StringBuilder;[C)V
    .registers 5

    .line 1
    const/16 v0, 0x5b

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 10
    aget-char v2, p1, v1

    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    add-int/lit8 v2, v0, -0x1

    .line 17
    if-eq v1, v2, :cond_17

    .line 19
    const-string v2, ", "

    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_17
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_7

    .line 27
    :cond_1a
    const/16 p1, 0x5d

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    return-void
.end method

.method private static deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_8

    .line 3
    const-string p1, "null"

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    return-void

    .line 9
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_16

    .line 19
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->safeObjectAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 22
    goto :goto_6b

    .line 23
    :cond_16
    instance-of v0, p1, [Z

    .line 25
    if-eqz v0, :cond_20

    .line 27
    check-cast p1, [Z

    .line 29
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->booleanArrayAppend(Ljava/lang/StringBuilder;[Z)V

    .line 32
    goto :goto_6b

    .line 33
    :cond_20
    instance-of v0, p1, [B

    .line 35
    if-eqz v0, :cond_2a

    .line 37
    check-cast p1, [B

    .line 39
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->byteArrayAppend(Ljava/lang/StringBuilder;[B)V

    .line 42
    goto :goto_6b

    .line 43
    :cond_2a
    instance-of v0, p1, [C

    .line 45
    if-eqz v0, :cond_34

    .line 47
    check-cast p1, [C

    .line 49
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->charArrayAppend(Ljava/lang/StringBuilder;[C)V

    .line 52
    goto :goto_6b

    .line 53
    :cond_34
    instance-of v0, p1, [S

    .line 55
    if-eqz v0, :cond_3e

    .line 57
    check-cast p1, [S

    .line 59
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->shortArrayAppend(Ljava/lang/StringBuilder;[S)V

    .line 62
    goto :goto_6b

    .line 63
    :cond_3e
    instance-of v0, p1, [I

    .line 65
    if-eqz v0, :cond_48

    .line 67
    check-cast p1, [I

    .line 69
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->intArrayAppend(Ljava/lang/StringBuilder;[I)V

    .line 72
    goto :goto_6b

    .line 73
    :cond_48
    instance-of v0, p1, [J

    .line 75
    if-eqz v0, :cond_52

    .line 77
    check-cast p1, [J

    .line 79
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->longArrayAppend(Ljava/lang/StringBuilder;[J)V

    .line 82
    goto :goto_6b

    .line 83
    :cond_52
    instance-of v0, p1, [F

    .line 85
    if-eqz v0, :cond_5c

    .line 87
    check-cast p1, [F

    .line 89
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->floatArrayAppend(Ljava/lang/StringBuilder;[F)V

    .line 92
    goto :goto_6b

    .line 93
    :cond_5c
    instance-of v0, p1, [D

    .line 95
    if-eqz v0, :cond_66

    .line 97
    check-cast p1, [D

    .line 99
    invoke-static {p0, p1}, Lorg/slf4j/helpers/MessageFormatter;->doubleArrayAppend(Ljava/lang/StringBuilder;[D)V

    .line 102
    goto :goto_6b

    .line 103
    :cond_66
    check-cast p1, [Ljava/lang/Object;

    .line 105
    invoke-static {p0, p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->objectArrayAppend(Ljava/lang/StringBuilder;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 108
    :goto_6b
    return-void
.end method

.method private static doubleArrayAppend(Ljava/lang/StringBuilder;[D)V
    .registers 6

    .line 1
    const/16 v0, 0x5b

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 10
    aget-wide v2, p1, v1

    .line 12
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 15
    add-int/lit8 v2, v0, -0x1

    .line 17
    if-eq v1, v2, :cond_17

    .line 19
    const-string v2, ", "

    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_17
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_7

    .line 27
    :cond_1a
    const/16 p1, 0x5d

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    return-void
.end method

.method private static floatArrayAppend(Ljava/lang/StringBuilder;[F)V
    .registers 5

    .line 1
    const/16 v0, 0x5b

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 10
    aget v2, p1, v1

    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    add-int/lit8 v2, v0, -0x1

    .line 17
    if-eq v1, v2, :cond_17

    .line 19
    const-string v2, ", "

    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_17
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_7

    .line 27
    :cond_1a
    const/16 p1, 0x5d

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    return-void
.end method

.method public static final format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p0

    return-object p0
.end method

.method public static final format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 2
    invoke-static {p0, v0}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p0

    return-object p0
.end method

.method public static final getThrowableCandidate([Ljava/lang/Object;)Ljava/lang/Throwable;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_13

    .line 4
    array-length v1, p0

    .line 5
    if-nez v1, :cond_7

    .line 7
    goto :goto_13

    .line 8
    :cond_7
    array-length v1, p0

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 11
    aget-object p0, p0, v1

    .line 13
    instance-of v1, p0, Ljava/lang/Throwable;

    .line 15
    if-eqz v1, :cond_13

    .line 17
    check-cast p0, Ljava/lang/Throwable;

    .line 19
    return-object p0

    .line 20
    :cond_13
    :goto_13
    return-object v0
.end method

.method private static intArrayAppend(Ljava/lang/StringBuilder;[I)V
    .registers 5

    .line 1
    const/16 v0, 0x5b

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 10
    aget v2, p1, v1

    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    add-int/lit8 v2, v0, -0x1

    .line 17
    if-eq v1, v2, :cond_17

    .line 19
    const-string v2, ", "

    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_17
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_7

    .line 27
    :cond_1a
    const/16 p1, 0x5d

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    return-void
.end method

.method public static final isDoubleEscaped(Ljava/lang/String;I)Z
    .registers 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-lt p1, v0, :cond_e

    .line 4
    sub-int/2addr p1, v0

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 8
    move-result p0

    .line 9
    const/16 p1, 0x5c

    .line 11
    if-ne p0, p1, :cond_e

    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public static final isEscapedDelimeter(Ljava/lang/String;I)Z
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x1

    .line 6
    sub-int/2addr p1, v1

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 10
    move-result p0

    .line 11
    const/16 p1, 0x5c

    .line 13
    if-ne p0, p1, :cond_f

    .line 15
    return v1

    .line 16
    :cond_f
    return v0
.end method

.method private static longArrayAppend(Ljava/lang/StringBuilder;[J)V
    .registers 6

    .line 1
    const/16 v0, 0x5b

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 10
    aget-wide v2, p1, v1

    .line 12
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    add-int/lit8 v2, v0, -0x1

    .line 17
    if-eq v1, v2, :cond_17

    .line 19
    const-string v2, ", "

    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_17
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_7

    .line 27
    :cond_1a
    const/16 p1, 0x5d

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    return-void
.end method

.method private static objectArrayAppend(Ljava/lang/StringBuilder;[Ljava/lang/Object;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/16 v0, 0x5b

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_28

    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    array-length v0, p1

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_11
    if-ge v1, v0, :cond_24

    .line 20
    aget-object v2, p1, v1

    .line 22
    invoke-static {p0, v2, p2}, Lorg/slf4j/helpers/MessageFormatter;->deeplyAppendParameter(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/util/Map;)V

    .line 25
    add-int/lit8 v2, v0, -0x1

    .line 27
    if-eq v1, v2, :cond_21

    .line 29
    const-string v2, ", "

    .line 31
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_21
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_11

    .line 37
    :cond_24
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    goto :goto_2d

    .line 41
    :cond_28
    const-string p1, "..."

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :goto_2d
    const/16 p1, 0x5d

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    return-void
.end method

.method private static safeObjectAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    .line 8
    goto :goto_2b

    .line 9
    :catchall_8
    move-exception v0

    .line 10
    const-string v1, "SLF4J: Failed toString() invocation on an object of type ["

    .line 12
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string p1, "]"

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1, v0}, Lorg/slf4j/helpers/Util;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    const-string p1, "[FAILED toString()]"

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :goto_2b
    return-void
.end method

.method private static shortArrayAppend(Ljava/lang/StringBuilder;[S)V
    .registers 5

    .line 1
    const/16 v0, 0x5b

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 10
    aget-short v2, p1, v1

    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    add-int/lit8 v2, v0, -0x1

    .line 17
    if-eq v1, v2, :cond_17

    .line 19
    const-string v2, ", "

    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_17
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_7

    .line 27
    :cond_1a
    const/16 p1, 0x5d

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    return-void
.end method

.method private static trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4

    .line 1
    if-eqz p0, :cond_f

    .line 3
    array-length v0, p0

    .line 4
    if-eqz v0, :cond_f

    .line 6
    array-length v0, p0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    new-array v1, v0, [Ljava/lang/Object;

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    return-object v1

    .line 16
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 18
    const-string v0, "non-sensical empty or null argument array"

    .line 20
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0
.end method
