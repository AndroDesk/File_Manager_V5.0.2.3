.class public final Landroid/micloud/asn1/Asn1DerEncoder;
.super Ljava/lang/Object;
.source "Asn1DerEncoder.java"


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

.method public static varargs createTag(IZI[[B)[B
    .registers 14

    const/16 v0, 0x1f

    if-ge p2, v0, :cond_ad

    const/4 v0, 0x6

    shl-int/2addr p0, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    const/16 p1, 0x20

    goto :goto_d

    :cond_c
    move p1, v1

    :goto_d
    or-int/2addr p0, p1

    or-int/2addr p0, p2

    int-to-byte p0, p0

    array-length p1, p3

    move p2, v1

    move v2, p2

    :goto_13
    if-ge p2, p1, :cond_1c

    aget-object v3, p3, p2

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_13

    :cond_1c
    const/16 p1, 0x80

    const/4 p2, 0x2

    const/4 v3, 0x1

    if-ge v2, p1, :cond_2d

    add-int/lit8 p1, v2, 0x2

    new-array p1, p1, [B

    aput-byte p0, p1, v1

    int-to-byte p0, v2

    aput-byte p0, p1, v3

    goto/16 :goto_9d

    :cond_2d
    const/4 p1, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/16 v6, 0xff

    if-gt v2, v6, :cond_41

    add-int/lit8 p1, v2, 0x3

    new-array p1, p1, [B

    const/16 v0, -0x7f

    aput-byte v0, p1, v3

    int-to-byte v0, v2

    aput-byte v0, p1, p2

    move v0, v5

    goto :goto_9a

    :cond_41
    const v7, 0xffff

    if-gt v2, v7, :cond_5a

    add-int/lit8 p1, v2, 0x4

    new-array p1, p1, [B

    const/16 v0, -0x7e

    aput-byte v0, p1, v3

    shr-int/lit8 v0, v2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    and-int/lit16 p2, v2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v5

    move v0, v4

    goto :goto_9a

    :cond_5a
    const v7, 0xffffff

    if-gt v2, v7, :cond_7b

    add-int/lit8 v0, v2, 0x5

    new-array v0, v0, [B

    const/16 v7, -0x7d

    aput-byte v7, v0, v3

    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, p2

    shr-int/lit8 p2, v2, 0x8

    and-int/2addr p2, v6

    int-to-byte p2, p2

    aput-byte p2, v0, v5

    and-int/lit16 p2, v2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v0, v4

    move-object v9, v0

    move v0, p1

    move-object p1, v9

    goto :goto_9a

    :cond_7b
    add-int/lit8 v7, v2, 0x6

    new-array v7, v7, [B

    const/16 v8, -0x7c

    aput-byte v8, v7, v3

    shr-int/lit8 v3, v2, 0x18

    int-to-byte v3, v3

    aput-byte v3, v7, p2

    shr-int/lit8 p2, v2, 0x10

    and-int/2addr p2, v6

    int-to-byte p2, p2

    aput-byte p2, v7, v5

    shr-int/lit8 p2, v2, 0x8

    and-int/2addr p2, v6

    int-to-byte p2, p2

    aput-byte p2, v7, v4

    and-int/lit16 p2, v2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v7, p1

    move-object p1, v7

    :goto_9a
    aput-byte p0, p1, v1

    move p2, v0

    :goto_9d
    array-length p0, p3

    move v0, v1

    :goto_9f
    if-ge v0, p0, :cond_ac

    aget-object v2, p3, v0

    array-length v3, v2

    invoke-static {v2, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9f

    :cond_ac
    return-object p1

    :cond_ad
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "High tag numbers not supported: "

    invoke-static {p1, p2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode(Landroid/micloud/asn1/Asn1Sequence;)[B
    .registers 2

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/micloud/asn1/Asn1DerEncoder;->toSequence(Landroid/micloud/asn1/Asn1Sequence;)[B

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The origin data must not be null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static toDer(Ljava/lang/Object;I)[B
    .registers 6

    if-eqz p0, :cond_b8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6c

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq p1, v1, :cond_42

    const/4 v0, 0x3

    if-eq p1, v0, :cond_37

    if-eq p1, v2, :cond_1c

    const/4 v0, 0x5

    if-ne p1, v0, :cond_95

    instance-of v0, p0, Landroid/micloud/asn1/Asn1Sequence;

    if-eqz v0, :cond_95

    check-cast p0, Landroid/micloud/asn1/Asn1Sequence;

    invoke-static {p0}, Landroid/micloud/asn1/Asn1DerEncoder;->toSequence(Landroid/micloud/asn1/Asn1Sequence;)[B

    move-result-object p0

    return-object p0

    :cond_1c
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_30

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1

    :cond_30
    instance-of v0, p0, [B

    if-eqz v0, :cond_95

    check-cast p0, [B

    return-object p0

    :cond_37
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_95

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/micloud/asn1/Asn1DerEncoder;->toOid(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_42
    const/4 v1, 0x0

    instance-of v3, p0, Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_59

    move-object v1, p0

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v1, v3

    goto :goto_60

    :cond_59
    instance-of v3, p0, [B

    if-eqz v3, :cond_60

    move-object v1, p0

    check-cast v1, [B

    :cond_60
    :goto_60
    if-eqz v1, :cond_95

    new-array p0, v0, [[B

    const/4 p1, 0x0

    aput-object v1, p0, p1

    invoke-static {p1, p1, v2, p0}, Landroid/micloud/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    move-result-object p0

    return-object p0

    :cond_6c
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_7b

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Landroid/micloud/asn1/Asn1DerEncoder;->toInteger(I)[B

    move-result-object p0

    return-object p0

    :cond_7b
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_8a

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/micloud/asn1/Asn1DerEncoder;->toInteger(J)[B

    move-result-object p0

    return-object p0

    :cond_8a
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_95

    check-cast p0, Ljava/math/BigInteger;

    invoke-static {p0}, Landroid/micloud/asn1/Asn1DerEncoder;->toInteger(Ljava/math/BigInteger;)[B

    move-result-object p0

    return-object p0

    :cond_95
    new-instance v0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    const-string v1, "Unsupported conversion: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to ASN.1 "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Asn1 field source can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static toInteger(I)[B
    .registers 3

    int-to-long v0, p0

    invoke-static {v0, v1}, Landroid/micloud/asn1/Asn1DerEncoder;->toInteger(J)[B

    move-result-object p0

    return-object p0
.end method

.method private static toInteger(J)[B
    .registers 2

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Landroid/micloud/asn1/Asn1DerEncoder;->toInteger(Ljava/math/BigInteger;)[B

    move-result-object p0

    return-object p0
.end method

.method private static toInteger(Ljava/math/BigInteger;)[B
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [[B

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x2

    invoke-static {v1, v1, p0, v0}, Landroid/micloud/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static toOid(Ljava/lang/String;)[B
    .registers 11

    const-string v0, "Node #"

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_131

    const/4 p0, 0x0

    :try_start_12
    aget-object v3, v2, p0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_18} :catch_11c

    const/4 v5, 0x6

    if-gt v3, v5, :cond_110

    if-ltz v3, :cond_110

    const/4 v6, 0x1

    :try_start_1e
    aget-object v7, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_24} :catch_fb

    const/16 v8, 0x28

    if-ge v7, v8, :cond_ef

    if-ltz v7, :cond_ef

    mul-int/lit8 v8, v3, 0x28

    add-int/2addr v8, v7

    const/16 v9, 0xff

    if-gt v8, v9, :cond_d0

    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_34
    array-length v3, v2

    if-ge v4, v3, :cond_c3

    aget-object v3, v2, v4

    :try_start_39
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_3d} :catch_a9

    if-ltz v3, :cond_8d

    const/16 v7, 0x7f

    if-gt v3, v7, :cond_47

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_70

    :cond_47
    const/16 v8, 0x4000

    if-ge v3, v8, :cond_58

    shr-int/lit8 v7, v3, 0x7

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit8 v3, v3, 0x7f

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_70

    :cond_58
    const/high16 v8, 0x200000

    if-ge v3, v8, :cond_73

    shr-int/lit8 v8, v3, 0xe

    or-int/lit16 v8, v8, 0x80

    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v8, v3, 0x7

    and-int/2addr v7, v8

    or-int/lit16 v7, v7, 0x80

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit8 v3, v3, 0x7f

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_73
    new-instance p0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " too large: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8d
    new-instance p0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    const-string v0, "Invalid value for node #"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_a9
    new-instance p0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not numeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c3
    new-array v0, v6, [[B

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    aput-object v1, v0, p0

    invoke-static {p0, p0, v5, v0}, Landroid/micloud/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    move-result-object p0

    return-object p0

    :cond_d0
    new-instance p0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "First two nodes out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ef
    new-instance p0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    const-string v0, "Invalid value for node #2: "

    invoke-static {v0, v7}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_fb
    new-instance p0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    const-string v0, "Node #2 not numeric: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v2, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_110
    new-instance p0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    const-string v0, "Invalid value for node #1: "

    invoke-static {v0, v3}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_11c
    new-instance v0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    const-string v1, "Node #1 not numeric: "

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object p0, v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_131
    new-instance v0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    const-string v1, "OBJECT IDENTIFIER must contain at least two nodes: "

    invoke-static {v1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toSequence(Landroid/micloud/asn1/Asn1Sequence;)[B
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/micloud/asn1/Asn1Field;

    iget-object v2, v1, Landroid/micloud/asn1/Asn1Field;->value:Ljava/lang/Object;

    iget v1, v1, Landroid/micloud/asn1/Asn1Field;->type:I

    invoke-static {v2, v1}, Landroid/micloud/asn1/Asn1DerEncoder;->toDer(Ljava/lang/Object;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_29
    const/4 p0, 0x1

    const/16 v1, 0x10

    const/4 v2, 0x0

    new-array v3, v2, [[B

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    invoke-static {v2, p0, v1, v0}, Landroid/micloud/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    move-result-object p0

    return-object p0
.end method
