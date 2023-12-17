.class public final Landroid/micloud/asn1/Asn1BerParser;
.super Ljava/lang/Object;
.source "Asn1BerParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/micloud/asn1/Asn1BerParser$BerDataValue;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeBase128UnsignedLong(Ljava/nio/ByteBuffer;)J
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-wide v1

    .line 10
    :cond_9
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_31

    .line 16
    const-wide v3, 0xffffffffffffffL

    .line 21
    cmp-long v0, v1, v3

    .line 23
    if-gtz v0, :cond_29

    .line 25
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 28
    move-result v0

    .line 29
    and-int/lit16 v0, v0, 0xff

    .line 31
    const/4 v3, 0x7

    .line 32
    shl-long/2addr v1, v3

    .line 33
    and-int/lit8 v3, v0, 0x7f

    .line 35
    int-to-long v3, v3

    .line 36
    or-long/2addr v1, v3

    .line 37
    and-int/lit16 v0, v0, 0x80

    .line 39
    if-nez v0, :cond_9

    .line 41
    return-wide v1

    .line 42
    :cond_29
    new-instance p0, Landroid/micloud/asn1/exception/Asn1DecodingException;

    .line 44
    const-string v0, "Base-128 number too large"

    .line 46
    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0

    .line 50
    :cond_31
    new-instance p0, Landroid/micloud/asn1/exception/Asn1DecodingException;

    .line 52
    const-string v0, "Truncated base-128 encoded input: missing terminating byte, with highest bit not set"

    .line 54
    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0
.end method

.method private static getFieldFrom(Landroid/micloud/asn1/Asn1BerParser$BerDataValue;)Landroid/micloud/asn1/Asn1Field;
    .registers 5

    .line 1
    new-instance v0, Landroid/micloud/asn1/Asn1Field;

    .line 3
    invoke-direct {v0}, Landroid/micloud/asn1/Asn1Field;-><init>()V

    .line 6
    iget v1, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagNumber:I

    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v1, v2, :cond_34

    .line 11
    const/4 v3, 0x4

    .line 12
    if-eq v1, v3, :cond_31

    .line 14
    const/4 v2, 0x6

    .line 15
    if-eq v1, v2, :cond_2d

    .line 17
    const/16 v2, 0x10

    .line 19
    if-ne v1, v2, :cond_18

    .line 21
    const/4 v1, 0x5

    .line 22
    iput v1, v0, Landroid/micloud/asn1/Asn1Field;->type:I

    .line 24
    goto :goto_37

    .line 25
    :cond_18
    new-instance v0, Landroid/micloud/asn1/exception/Asn1DecodingException;

    .line 27
    const-string v1, "Found mismatch tag: "

    .line 29
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v1

    .line 33
    iget p0, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagNumber:I

    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v0, p0}, Landroid/micloud/asn1/exception/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    .line 45
    throw v0

    .line 46
    :cond_2d
    const/4 v1, 0x3

    .line 47
    iput v1, v0, Landroid/micloud/asn1/Asn1Field;->type:I

    .line 49
    goto :goto_37

    .line 50
    :cond_31
    iput v2, v0, Landroid/micloud/asn1/Asn1Field;->type:I

    .line 52
    goto :goto_37

    .line 53
    :cond_34
    const/4 v1, 0x1

    .line 54
    iput v1, v0, Landroid/micloud/asn1/Asn1Field;->type:I

    .line 56
    :goto_37
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->getFieldValue(Landroid/micloud/asn1/Asn1BerParser$BerDataValue;)Ljava/lang/Object;

    .line 59
    move-result-object p0

    .line 60
    iput-object p0, v0, Landroid/micloud/asn1/Asn1Field;->value:Ljava/lang/Object;

    .line 62
    return-object v0
.end method

.method private static getFieldValue(Landroid/micloud/asn1/Asn1BerParser$BerDataValue;)Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->encodedContents:Ljava/nio/ByteBuffer;

    .line 3
    iget v1, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagNumber:I

    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq v1, v2, :cond_31

    .line 8
    const/4 v2, 0x4

    .line 9
    if-eq v1, v2, :cond_30

    .line 11
    const/4 v2, 0x6

    .line 12
    if-eq v1, v2, :cond_2b

    .line 14
    const/16 v0, 0x10

    .line 16
    if-ne v1, v0, :cond_16

    .line 18
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->parseSequence(Landroid/micloud/asn1/Asn1BerParser$BerDataValue;)Landroid/micloud/asn1/Asn1Sequence;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_16
    new-instance v0, Landroid/micloud/asn1/exception/Asn1DecodingException;

    .line 25
    const-string v1, "Found mismatch tag: "

    .line 27
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    move-result-object v1

    .line 31
    iget p0, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagNumber:I

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    invoke-direct {v0, p0}, Landroid/micloud/asn1/exception/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    .line 43
    throw v0

    .line 44
    :cond_2b
    invoke-static {v0}, Landroid/micloud/asn1/Asn1BerParser;->oidToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_30
    return-object v0

    .line 50
    :cond_31
    invoke-static {v0}, Landroid/micloud/asn1/Asn1BerParser;->integerToBigInteger(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method private static integerToBigInteger(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_9

    .line 7
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 9
    return-object p0

    .line 10
    :cond_9
    new-instance v0, Ljava/math/BigInteger;

    .line 12
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->toByteArray(Ljava/nio/ByteBuffer;)[B

    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    .line 19
    return-object v0
.end method

.method private static oidToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4c

    .line 7
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->decodeBase128UnsignedLong(Ljava/nio/ByteBuffer;)J

    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x28

    .line 13
    div-long v2, v0, v2

    .line 15
    const-wide/16 v4, 0x2

    .line 17
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 20
    move-result-wide v2

    .line 21
    long-to-int v2, v2

    .line 22
    mul-int/lit8 v3, v2, 0x28

    .line 24
    int-to-long v3, v3

    .line 25
    sub-long/2addr v0, v3

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    int-to-long v4, v2

    .line 32
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const/16 v2, 0x2e

    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :goto_32
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_47

    .line 57
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->decodeBase128UnsignedLong(Ljava/nio/ByteBuffer;)J

    .line 60
    move-result-wide v0

    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    goto :goto_32

    .line 72
    :cond_47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_4c
    new-instance p0, Landroid/micloud/asn1/exception/Asn1DecodingException;

    .line 79
    const-string v0, "Empty OBJECT IDENTIFIER"

    .line 81
    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p0
.end method

.method private static parse(Landroid/micloud/asn1/Asn1BerParser$BerDataValue;)Landroid/micloud/asn1/Asn1Sequence;
    .registers 5

    .line 7
    iget v0, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagClass:I

    const/16 v1, 0x10

    if-nez v0, :cond_f

    iget v0, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagNumber:I

    if-ne v0, v1, :cond_f

    .line 8
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->parseSequence(Landroid/micloud/asn1/Asn1BerParser$BerDataValue;)Landroid/micloud/asn1/Asn1Sequence;

    move-result-object p0

    return-object p0

    .line 9
    :cond_f
    new-instance v0, Landroid/micloud/asn1/exception/Asn1DecodingException;

    const-string v2, "Unexpected data value.Expected "

    .line 10
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    .line 11
    invoke-static {v3, v1}, Landroid/micloud/asn1/BerEncoding;->tagClassAndNumberToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but read: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagClass:I

    iget p0, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagNumber:I

    .line 12
    invoke-static {v1, p0}, Landroid/micloud/asn1/BerEncoding;->tagClassAndNumberToString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/micloud/asn1/exception/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/micloud/asn1/Asn1Sequence;
    .registers 3

    .line 3
    :try_start_0
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->readDataValue(Ljava/nio/ByteBuffer;)Landroid/micloud/asn1/Asn1BerParser$BerDataValue;

    move-result-object p0
    :try_end_4
    .catch Landroid/micloud/asn1/exception/BerDataValueFormatException; {:try_start_0 .. :try_end_4} :catch_13

    if-eqz p0, :cond_b

    .line 4
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->parse(Landroid/micloud/asn1/Asn1BerParser$BerDataValue;)Landroid/micloud/asn1/Asn1Sequence;

    move-result-object p0

    return-object p0

    .line 5
    :cond_b
    new-instance p0, Landroid/micloud/asn1/exception/Asn1DecodingException;

    const-string v0, "Empty input"

    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_13
    move-exception p0

    .line 6
    new-instance v0, Landroid/micloud/asn1/exception/Asn1DecodingException;

    const-string v1, "Failed to decode top-level data value"

    invoke-direct {v0, v1, p0}, Landroid/micloud/asn1/exception/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parse([B)Landroid/micloud/asn1/Asn1Sequence;
    .registers 1

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->parse(Ljava/nio/ByteBuffer;)Landroid/micloud/asn1/Asn1Sequence;

    move-result-object p0

    return-object p0
.end method

.method private static parseSequence(Landroid/micloud/asn1/Asn1BerParser$BerDataValue;)Landroid/micloud/asn1/Asn1Sequence;
    .registers 4

    .line 1
    new-instance v0, Landroid/micloud/asn1/Asn1Sequence;

    .line 3
    invoke-direct {v0}, Landroid/micloud/asn1/Asn1Sequence;-><init>()V

    .line 6
    iget-object p0, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->encodedContents:Ljava/nio/ByteBuffer;

    .line 8
    :goto_7
    :try_start_7
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->readDataValue(Ljava/nio/ByteBuffer;)Landroid/micloud/asn1/Asn1BerParser$BerDataValue;

    .line 11
    move-result-object v1
    :try_end_b
    .catch Landroid/micloud/asn1/exception/BerDataValueFormatException; {:try_start_7 .. :try_end_b} :catch_18

    .line 12
    if-nez v1, :cond_e

    .line 14
    return-object v0

    .line 15
    :cond_e
    invoke-static {v1}, Landroid/micloud/asn1/Asn1BerParser;->getFieldFrom(Landroid/micloud/asn1/Asn1BerParser$BerDataValue;)Landroid/micloud/asn1/Asn1Field;

    .line 18
    move-result-object v1

    .line 19
    iget-object v2, v0, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    .line 21
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    goto :goto_7

    .line 25
    :catch_18
    move-exception p0

    .line 26
    new-instance v0, Landroid/micloud/asn1/exception/Asn1DecodingException;

    .line 28
    const-string v1, "Malformed data value"

    .line 30
    invoke-direct {v0, v1, p0}, Landroid/micloud/asn1/exception/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    throw v0
.end method

.method private static readDataValue(Ljava/nio/ByteBuffer;)Landroid/micloud/asn1/Asn1BerParser$BerDataValue;
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_c

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 16
    move-result v1

    .line 17
    invoke-static {v1, p0}, Landroid/micloud/asn1/Asn1BerParser;->readTagNumber(BLjava/nio/ByteBuffer;)I

    .line 20
    move-result v7

    .line 21
    invoke-static {v1}, Landroid/micloud/asn1/BerEncoding;->isConstructed(B)Z

    .line 24
    move-result v6

    .line 25
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_8e

    .line 31
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 34
    move-result v2

    .line 35
    and-int/lit16 v2, v2, 0xff

    .line 37
    and-int/lit16 v3, v2, 0x80

    .line 39
    if-nez v3, :cond_35

    .line 41
    invoke-static {v2}, Landroid/micloud/asn1/Asn1BerParser;->readShortFormLength(I)I

    .line 44
    move-result v2

    .line 45
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 48
    move-result v3

    .line 49
    sub-int/2addr v3, v0

    .line 50
    invoke-static {v2, p0}, Landroid/micloud/asn1/Asn1BerParser;->skipDefiniteLengthContents(ILjava/nio/ByteBuffer;)V

    .line 53
    goto :goto_57

    .line 54
    :cond_35
    const/16 v3, 0x80

    .line 56
    if-eq v2, v3, :cond_46

    .line 58
    invoke-static {v2, p0}, Landroid/micloud/asn1/Asn1BerParser;->readLongFormLength(ILjava/nio/ByteBuffer;)I

    .line 61
    move-result v2

    .line 62
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 65
    move-result v3

    .line 66
    sub-int/2addr v3, v0

    .line 67
    invoke-static {v2, p0}, Landroid/micloud/asn1/Asn1BerParser;->skipDefiniteLengthContents(ILjava/nio/ByteBuffer;)V

    .line 70
    goto :goto_57

    .line 71
    :cond_46
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 74
    move-result v2

    .line 75
    sub-int v3, v2, v0

    .line 77
    if-eqz v6, :cond_53

    .line 79
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->skipConstructedIndefiniteLengthContents(Ljava/nio/ByteBuffer;)I

    .line 82
    move-result v2

    .line 83
    goto :goto_57

    .line 84
    :cond_53
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->skipPrimitiveIndefiniteLengthContents(Ljava/nio/ByteBuffer;)I

    .line 87
    move-result v2

    .line 88
    :goto_57
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 91
    move-result v4

    .line 92
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 98
    move-result v0

    .line 99
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 102
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 109
    move-result v5

    .line 110
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 113
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 116
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    add-int/2addr v3, v2

    .line 120
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 123
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 130
    new-instance v0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;

    .line 132
    invoke-static {v1}, Landroid/micloud/asn1/BerEncoding;->getTagClass(B)I

    .line 135
    move-result v5

    .line 136
    move-object v2, v0

    .line 137
    move-object v3, v4

    .line 138
    move-object v4, p0

    .line 139
    invoke-direct/range {v2 .. v7}, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IZI)V

    .line 142
    return-object v0

    .line 143
    :cond_8e
    new-instance p0, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    .line 145
    const-string v0, "Missing length"

    .line 147
    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    .line 150
    throw p0
.end method

.method private static readHighTagNumber(Ljava/nio/ByteBuffer;)I
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_22

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 11
    move-result v1

    .line 12
    const v2, 0xffffff

    .line 15
    if-gt v0, v2, :cond_1a

    .line 17
    shl-int/lit8 v0, v0, 0x7

    .line 19
    and-int/lit8 v2, v1, 0x7f

    .line 21
    or-int/2addr v0, v2

    .line 22
    and-int/lit16 v1, v1, 0x80

    .line 24
    if-nez v1, :cond_1

    .line 26
    return v0

    .line 27
    :cond_1a
    new-instance p0, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    .line 29
    const-string v0, "Tag number too large"

    .line 31
    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0

    .line 35
    :cond_22
    new-instance p0, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    .line 37
    const-string v0, "Truncated tag number"

    .line 39
    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p0
.end method

.method private static readLongFormLength(ILjava/nio/ByteBuffer;)I
    .registers 6

    .line 1
    and-int/lit8 p0, p0, 0x7f

    .line 3
    const/4 v0, 0x4

    .line 4
    if-gt p0, v0, :cond_31

    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :goto_7
    if-ge v0, p0, :cond_30

    .line 10
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_28

    .line 16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 19
    move-result v2

    .line 20
    const v3, 0x7fffff

    .line 23
    if-gt v1, v3, :cond_20

    .line 25
    shl-int/lit8 v1, v1, 0x8

    .line 27
    and-int/lit16 v2, v2, 0xff

    .line 29
    or-int/2addr v1, v2

    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 32
    goto :goto_7

    .line 33
    :cond_20
    new-instance p0, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    .line 35
    const-string p1, "Length too large"

    .line 37
    invoke-direct {p0, p1}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0

    .line 41
    :cond_28
    new-instance p0, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    .line 43
    const-string p1, "Truncated length"

    .line 45
    invoke-direct {p0, p1}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    .line 48
    throw p0

    .line 49
    :cond_30
    return v1

    .line 50
    :cond_31
    new-instance p1, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    .line 52
    const-string v0, "Length too large: "

    .line 54
    const-string v1, " bytes"

    .line 56
    invoke-static {v0, p0, v1}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    invoke-direct {p1, p0}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p1
.end method

.method private static readShortFormLength(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x7f

    return p0
.end method

.method private static readTagNumber(BLjava/nio/ByteBuffer;)I
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/micloud/asn1/BerEncoding;->getTagNumber(B)I

    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x1f

    .line 7
    if-ne p0, v0, :cond_c

    .line 9
    invoke-static {p1}, Landroid/micloud/asn1/Asn1BerParser;->readHighTagNumber(Ljava/nio/ByteBuffer;)I

    .line 12
    move-result p0

    .line 13
    :cond_c
    return p0
.end method

.method private static skipConstructedIndefiniteLengthContents(Ljava/nio/ByteBuffer;)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 4
    move-result v0

    .line 5
    :goto_4
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2e

    .line 11
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-le v1, v2, :cond_2a

    .line 18
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_2a

    .line 28
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 31
    move-result v1

    .line 32
    sub-int/2addr v1, v0

    .line 33
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 36
    move-result v0

    .line 37
    add-int/lit8 v0, v0, 0x2

    .line 39
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 42
    return v1

    .line 43
    :cond_2a
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->readDataValue(Ljava/nio/ByteBuffer;)Landroid/micloud/asn1/Asn1BerParser$BerDataValue;

    .line 46
    goto :goto_4

    .line 47
    :cond_2e
    new-instance v1, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    .line 49
    const-string v2, "Truncated indefinite-length contents: "

    .line 51
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 58
    move-result p0

    .line 59
    sub-int/2addr p0, v0

    .line 60
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string p0, " bytes read"

    .line 65
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    invoke-direct {v1, p0}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    .line 75
    throw v1
.end method

.method private static skipDefiniteLengthContents(ILjava/nio/ByteBuffer;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 4
    move-result v0

    .line 5
    if-lt v0, p0, :cond_f

    .line 7
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 10
    move-result v0

    .line 11
    add-int/2addr v0, p0

    .line 12
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 15
    return-void

    .line 16
    :cond_f
    new-instance v0, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    .line 18
    const-string v1, "Truncated contents. Need: "

    .line 20
    const-string v2, " bytes, available: "

    .line 22
    invoke-static {v1, p0, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 29
    move-result p1

    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0
.end method

.method private static skipPrimitiveIndefiniteLengthContents(Ljava/nio/ByteBuffer;)I
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 7
    move-result v3

    .line 8
    if-eqz v3, :cond_24

    .line 10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 13
    move-result v3

    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 16
    if-ltz v1, :cond_1c

    .line 18
    if-nez v3, :cond_1a

    .line 20
    if-eqz v2, :cond_18

    .line 22
    add-int/lit8 v1, v1, -0x2

    .line 24
    return v1

    .line 25
    :cond_18
    const/4 v2, 0x1

    .line 26
    goto :goto_3

    .line 27
    :cond_1a
    move v2, v0

    .line 28
    goto :goto_3

    .line 29
    :cond_1c
    new-instance p0, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    .line 31
    const-string v0, "Indefinite-length contents too long"

    .line 33
    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0

    .line 37
    :cond_24
    new-instance p0, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    .line 39
    const-string v0, "Truncated indefinite-length contents: "

    .line 41
    const-string v2, " bytes read"

    .line 43
    invoke-static {v0, v1, v2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p0
.end method

.method private static toByteArray(Ljava/nio/ByteBuffer;)[B
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [B

    .line 7
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 10
    return-object v0
.end method
