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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeBase128UnsignedLong(Ljava/nio/ByteBuffer;)J
    .registers 6

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_9

    return-wide v1

    :cond_9
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_31

    const-wide v3, 0xffffffffffffffL

    cmp-long v0, v1, v3

    if-gtz v0, :cond_29

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x7

    shl-long/2addr v1, v3

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    or-long/2addr v1, v3

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_9

    return-wide v1

    :cond_29
    new-instance p0, Landroid/micloud/asn1/exception/Asn1DecodingException;

    const-string v0, "Base-128 number too large"

    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    new-instance p0, Landroid/micloud/asn1/exception/Asn1DecodingException;

    const-string v0, "Truncated base-128 encoded input: missing terminating byte, with highest bit not set"

    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getFieldFrom(Landroid/micloud/asn1/Asn1BerParser$BerDataValue;)Landroid/micloud/asn1/Asn1Field;
    .registers 5

    new-instance v0, Landroid/micloud/asn1/Asn1Field;

    invoke-direct {v0}, Landroid/micloud/asn1/Asn1Field;-><init>()V

    iget v1, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagNumber:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_34

    const/4 v3, 0x4

    if-eq v1, v3, :cond_31

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2d

    const/16 v2, 0x10

    if-ne v1, v2, :cond_18

    const/4 v1, 0x5

    iput v1, v0, Landroid/micloud/asn1/Asn1Field;->type:I

    goto :goto_37

    :cond_18
    new-instance v0, Landroid/micloud/asn1/exception/Asn1DecodingException;

    const-string v1, "Found mismatch tag: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagNumber:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/micloud/asn1/exception/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    const/4 v1, 0x3

    iput v1, v0, Landroid/micloud/asn1/Asn1Field;->type:I

    goto :goto_37

    :cond_31
    iput v2, v0, Landroid/micloud/asn1/Asn1Field;->type:I

    goto :goto_37

    :cond_34
    const/4 v1, 0x1

    iput v1, v0, Landroid/micloud/asn1/Asn1Field;->type:I

    :goto_37
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->getFieldValue(Landroid/micloud/asn1/Asn1BerParser$BerDataValue;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Landroid/micloud/asn1/Asn1Field;->value:Ljava/lang/Object;

    return-object v0
.end method

.method private static getFieldValue(Landroid/micloud/asn1/Asn1BerParser$BerDataValue;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->encodedContents:Ljava/nio/ByteBuffer;

    iget v1, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagNumber:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_31

    const/4 v2, 0x4

    if-eq v1, v2, :cond_30

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2b

    const/16 v0, 0x10

    if-ne v1, v0, :cond_16

    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->parseSequence(Landroid/micloud/asn1/Asn1BerParser$BerDataValue;)Landroid/micloud/asn1/Asn1Sequence;

    move-result-object p0

    return-object p0

    :cond_16
    new-instance v0, Landroid/micloud/asn1/exception/Asn1DecodingException;

    const-string v1, "Found mismatch tag: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagNumber:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/micloud/asn1/exception/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-static {v0}, Landroid/micloud/asn1/Asn1BerParser;->oidToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_30
    return-object v0

    :cond_31
    invoke-static {v0}, Landroid/micloud/asn1/Asn1BerParser;->integerToBigInteger(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static integerToBigInteger(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0

    :cond_9
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->toByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method private static oidToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->decodeBase128UnsignedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    const-wide/16 v2, 0x28

    div-long v2, v0, v2

    const-wide/16 v4, 0x2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    mul-int/lit8 v3, v2, 0x28

    int-to-long v3, v3

    sub-long/2addr v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->decodeBase128UnsignedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4c
    new-instance p0, Landroid/micloud/asn1/exception/Asn1DecodingException;

    const-string v0, "Empty OBJECT IDENTIFIER"

    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parse(Landroid/micloud/asn1/Asn1BerParser$BerDataValue;)Landroid/micloud/asn1/Asn1Sequence;
    .registers 5

    iget v0, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagClass:I

    const/16 v1, 0x10

    if-nez v0, :cond_f

    iget v0, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagNumber:I

    if-ne v0, v1, :cond_f

    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->parseSequence(Landroid/micloud/asn1/Asn1BerParser$BerDataValue;)Landroid/micloud/asn1/Asn1Sequence;

    move-result-object p0

    return-object p0

    :cond_f
    new-instance v0, Landroid/micloud/asn1/exception/Asn1DecodingException;

    const-string v2, "Unexpected data value.Expected "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v1}, Landroid/micloud/asn1/BerEncoding;->tagClassAndNumberToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but read: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagClass:I

    iget p0, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->tagNumber:I

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

    :try_start_0
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->readDataValue(Ljava/nio/ByteBuffer;)Landroid/micloud/asn1/Asn1BerParser$BerDataValue;

    move-result-object p0
    :try_end_4
    .catch Landroid/micloud/asn1/exception/BerDataValueFormatException; {:try_start_0 .. :try_end_4} :catch_13

    if-eqz p0, :cond_b

    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->parse(Landroid/micloud/asn1/Asn1BerParser$BerDataValue;)Landroid/micloud/asn1/Asn1Sequence;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance p0, Landroid/micloud/asn1/exception/Asn1DecodingException;

    const-string v0, "Empty input"

    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_13
    move-exception p0

    new-instance v0, Landroid/micloud/asn1/exception/Asn1DecodingException;

    const-string v1, "Failed to decode top-level data value"

    invoke-direct {v0, v1, p0}, Landroid/micloud/asn1/exception/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parse([B)Landroid/micloud/asn1/Asn1Sequence;
    .registers 1

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->parse(Ljava/nio/ByteBuffer;)Landroid/micloud/asn1/Asn1Sequence;

    move-result-object p0

    return-object p0
.end method

.method private static parseSequence(Landroid/micloud/asn1/Asn1BerParser$BerDataValue;)Landroid/micloud/asn1/Asn1Sequence;
    .registers 4

    new-instance v0, Landroid/micloud/asn1/Asn1Sequence;

    invoke-direct {v0}, Landroid/micloud/asn1/Asn1Sequence;-><init>()V

    iget-object p0, p0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;->encodedContents:Ljava/nio/ByteBuffer;

    :goto_7
    :try_start_7
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->readDataValue(Ljava/nio/ByteBuffer;)Landroid/micloud/asn1/Asn1BerParser$BerDataValue;

    move-result-object v1
    :try_end_b
    .catch Landroid/micloud/asn1/exception/BerDataValueFormatException; {:try_start_7 .. :try_end_b} :catch_18

    if-nez v1, :cond_e

    return-object v0

    :cond_e
    invoke-static {v1}, Landroid/micloud/asn1/Asn1BerParser;->getFieldFrom(Landroid/micloud/asn1/Asn1BerParser$BerDataValue;)Landroid/micloud/asn1/Asn1Field;

    move-result-object v1

    iget-object v2, v0, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catch_18
    move-exception p0

    new-instance v0, Landroid/micloud/asn1/exception/Asn1DecodingException;

    const-string v1, "Malformed data value"

    invoke-direct {v0, v1, p0}, Landroid/micloud/asn1/exception/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static readDataValue(Ljava/nio/ByteBuffer;)Landroid/micloud/asn1/Asn1BerParser$BerDataValue;
    .registers 9

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1, p0}, Landroid/micloud/asn1/Asn1BerParser;->readTagNumber(BLjava/nio/ByteBuffer;)I

    move-result v7

    invoke-static {v1}, Landroid/micloud/asn1/BerEncoding;->isConstructed(B)Z

    move-result v6

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_35

    invoke-static {v2}, Landroid/micloud/asn1/Asn1BerParser;->readShortFormLength(I)I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v2, p0}, Landroid/micloud/asn1/Asn1BerParser;->skipDefiniteLengthContents(ILjava/nio/ByteBuffer;)V

    goto :goto_57

    :cond_35
    const/16 v3, 0x80

    if-eq v2, v3, :cond_46

    invoke-static {v2, p0}, Landroid/micloud/asn1/Asn1BerParser;->readLongFormLength(ILjava/nio/ByteBuffer;)I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v2, p0}, Landroid/micloud/asn1/Asn1BerParser;->skipDefiniteLengthContents(ILjava/nio/ByteBuffer;)V

    goto :goto_57

    :cond_46
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    sub-int v3, v2, v0

    if-eqz v6, :cond_53

    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->skipConstructedIndefiniteLengthContents(Ljava/nio/ByteBuffer;)I

    move-result v2

    goto :goto_57

    :cond_53
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->skipPrimitiveIndefiniteLengthContents(Ljava/nio/ByteBuffer;)I

    move-result v2

    :goto_57
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    new-instance v0, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;

    invoke-static {v1}, Landroid/micloud/asn1/BerEncoding;->getTagClass(B)I

    move-result v5

    move-object v2, v0

    move-object v3, v4

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Landroid/micloud/asn1/Asn1BerParser$BerDataValue;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IZI)V

    return-object v0

    :cond_8e
    new-instance p0, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    const-string v0, "Missing length"

    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readHighTagNumber(Ljava/nio/ByteBuffer;)I
    .registers 4

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const v2, 0xffffff

    if-gt v0, v2, :cond_1a

    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_1

    return v0

    :cond_1a
    new-instance p0, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    const-string v0, "Tag number too large"

    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    new-instance p0, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    const-string v0, "Truncated tag number"

    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readLongFormLength(ILjava/nio/ByteBuffer;)I
    .registers 6

    and-int/lit8 p0, p0, 0x7f

    const/4 v0, 0x4

    if-gt p0, v0, :cond_31

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v0, p0, :cond_30

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const v3, 0x7fffff

    if-gt v1, v3, :cond_20

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_20
    new-instance p0, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    const-string p1, "Length too large"

    invoke-direct {p0, p1}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    new-instance p0, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    const-string p1, "Truncated length"

    invoke-direct {p0, p1}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_30
    return v1

    :cond_31
    new-instance p1, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    const-string v0, "Length too large: "

    const-string v1, " bytes"

    invoke-static {v0, p0, v1}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static readShortFormLength(I)I
    .registers 1

    and-int/lit8 p0, p0, 0x7f

    return p0
.end method

.method private static readTagNumber(BLjava/nio/ByteBuffer;)I
    .registers 3

    invoke-static {p0}, Landroid/micloud/asn1/BerEncoding;->getTagNumber(B)I

    move-result p0

    const/16 v0, 0x1f

    if-ne p0, v0, :cond_c

    invoke-static {p1}, Landroid/micloud/asn1/Asn1BerParser;->readHighTagNumber(Ljava/nio/ByteBuffer;)I

    move-result p0

    :cond_c
    return p0
.end method

.method private static skipConstructedIndefiniteLengthContents(Ljava/nio/ByteBuffer;)I
    .registers 4

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    :goto_4
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2a

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v1

    :cond_2a
    invoke-static {p0}, Landroid/micloud/asn1/Asn1BerParser;->readDataValue(Ljava/nio/ByteBuffer;)Landroid/micloud/asn1/Asn1BerParser$BerDataValue;

    goto :goto_4

    :cond_2e
    new-instance v1, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    const-string v2, "Truncated indefinite-length contents: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes read"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static skipDefiniteLengthContents(ILjava/nio/ByteBuffer;)V
    .registers 5

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-lt v0, p0, :cond_f

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_f
    new-instance v0, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    const-string v1, "Truncated contents. Need: "

    const-string v2, " bytes, available: "

    invoke-static {v1, p0, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static skipPrimitiveIndefiniteLengthContents(Ljava/nio/ByteBuffer;)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_1c

    if-nez v3, :cond_1a

    if-eqz v2, :cond_18

    add-int/lit8 v1, v1, -0x2

    return v1

    :cond_18
    const/4 v2, 0x1

    goto :goto_3

    :cond_1a
    move v2, v0

    goto :goto_3

    :cond_1c
    new-instance p0, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    const-string v0, "Indefinite-length contents too long"

    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    new-instance p0, Landroid/micloud/asn1/exception/BerDataValueFormatException;

    const-string v0, "Truncated indefinite-length contents: "

    const-string v2, " bytes read"

    invoke-static {v0, v1, v2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/BerDataValueFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static toByteArray(Ljava/nio/ByteBuffer;)[B
    .registers 2

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method
