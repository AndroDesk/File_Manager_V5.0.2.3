.class public final Landroid/micloud/asn1/Asn1DerEncoder;
.super Ljava/lang/Object;
.source "Asn1DerEncoder.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs createTag(IZI[[B)[B
    .registers 14

    .line 1
    const/16 v0, 0x1f

    .line 3
    if-ge p2, v0, :cond_ad

    .line 5
    const/4 v0, 0x6

    .line 6
    shl-int/2addr p0, v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_c

    .line 10
    const/16 p1, 0x20

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move p1, v1

    .line 14
    :goto_d
    or-int/2addr p0, p1

    .line 15
    or-int/2addr p0, p2

    .line 16
    int-to-byte p0, p0

    .line 17
    array-length p1, p3

    .line 18
    move p2, v1

    .line 19
    move v2, p2

    .line 20
    :goto_13
    if-ge p2, p1, :cond_1c

    .line 22
    aget-object v3, p3, p2

    .line 24
    array-length v3, v3

    .line 25
    add-int/2addr v2, v3

    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 28
    goto :goto_13

    .line 29
    :cond_1c
    const/16 p1, 0x80

    .line 31
    const/4 p2, 0x2

    .line 32
    const/4 v3, 0x1

    .line 33
    if-ge v2, p1, :cond_2d

    .line 35
    add-int/lit8 p1, v2, 0x2

    .line 37
    new-array p1, p1, [B

    .line 39
    aput-byte p0, p1, v1

    .line 41
    int-to-byte p0, v2

    .line 42
    aput-byte p0, p1, v3

    .line 44
    goto/16 :goto_9d

    .line 46
    :cond_2d
    const/4 p1, 0x5

    .line 47
    const/4 v4, 0x4

    .line 48
    const/4 v5, 0x3

    .line 49
    const/16 v6, 0xff

    .line 51
    if-gt v2, v6, :cond_41

    .line 53
    add-int/lit8 p1, v2, 0x3

    .line 55
    new-array p1, p1, [B

    .line 57
    const/16 v0, -0x7f

    .line 59
    aput-byte v0, p1, v3

    .line 61
    int-to-byte v0, v2

    .line 62
    aput-byte v0, p1, p2

    .line 64
    move v0, v5

    .line 65
    goto :goto_9a

    .line 66
    :cond_41
    const v7, 0xffff

    .line 69
    if-gt v2, v7, :cond_5a

    .line 71
    add-int/lit8 p1, v2, 0x4

    .line 73
    new-array p1, p1, [B

    .line 75
    const/16 v0, -0x7e

    .line 77
    aput-byte v0, p1, v3

    .line 79
    shr-int/lit8 v0, v2, 0x8

    .line 81
    int-to-byte v0, v0

    .line 82
    aput-byte v0, p1, p2

    .line 84
    and-int/lit16 p2, v2, 0xff

    .line 86
    int-to-byte p2, p2

    .line 87
    aput-byte p2, p1, v5

    .line 89
    move v0, v4

    .line 90
    goto :goto_9a

    .line 91
    :cond_5a
    const v7, 0xffffff

    .line 94
    if-gt v2, v7, :cond_7b

    .line 96
    add-int/lit8 v0, v2, 0x5

    .line 98
    new-array v0, v0, [B

    .line 100
    const/16 v7, -0x7d

    .line 102
    aput-byte v7, v0, v3

    .line 104
    shr-int/lit8 v3, v2, 0x10

    .line 106
    int-to-byte v3, v3

    .line 107
    aput-byte v3, v0, p2

    .line 109
    shr-int/lit8 p2, v2, 0x8

    .line 111
    and-int/2addr p2, v6

    .line 112
    int-to-byte p2, p2

    .line 113
    aput-byte p2, v0, v5

    .line 115
    and-int/lit16 p2, v2, 0xff

    .line 117
    int-to-byte p2, p2

    .line 118
    aput-byte p2, v0, v4

    .line 120
    move-object v9, v0

    .line 121
    move v0, p1

    .line 122
    move-object p1, v9

    .line 123
    goto :goto_9a

    .line 124
    :cond_7b
    add-int/lit8 v7, v2, 0x6

    .line 126
    new-array v7, v7, [B

    .line 128
    const/16 v8, -0x7c

    .line 130
    aput-byte v8, v7, v3

    .line 132
    shr-int/lit8 v3, v2, 0x18

    .line 134
    int-to-byte v3, v3

    .line 135
    aput-byte v3, v7, p2

    .line 137
    shr-int/lit8 p2, v2, 0x10

    .line 139
    and-int/2addr p2, v6

    .line 140
    int-to-byte p2, p2

    .line 141
    aput-byte p2, v7, v5

    .line 143
    shr-int/lit8 p2, v2, 0x8

    .line 145
    and-int/2addr p2, v6

    .line 146
    int-to-byte p2, p2

    .line 147
    aput-byte p2, v7, v4

    .line 149
    and-int/lit16 p2, v2, 0xff

    .line 151
    int-to-byte p2, p2

    .line 152
    aput-byte p2, v7, p1

    .line 154
    move-object p1, v7

    .line 155
    :goto_9a
    aput-byte p0, p1, v1

    .line 157
    move p2, v0

    .line 158
    :goto_9d
    array-length p0, p3

    .line 159
    move v0, v1

    .line 160
    :goto_9f
    if-ge v0, p0, :cond_ac

    .line 162
    aget-object v2, p3, v0

    .line 164
    array-length v3, v2

    .line 165
    invoke-static {v2, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    array-length v2, v2

    .line 169
    add-int/2addr p2, v2

    .line 170
    add-int/lit8 v0, v0, 0x1

    .line 172
    goto :goto_9f

    .line 173
    :cond_ac
    return-object p1

    .line 174
    :cond_ad
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 176
    const-string p1, "High tag numbers not supported: "

    .line 178
    invoke-static {p1, p2}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 181
    move-result-object p1

    .line 182
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 185
    throw p0
.end method

.method public static encode(Landroid/micloud/asn1/Asn1Sequence;)[B
    .registers 2

    .line 1
    if-eqz p0, :cond_7

    .line 3
    invoke-static {p0}, Landroid/micloud/asn1/Asn1DerEncoder;->toSequence(Landroid/micloud/asn1/Asn1Sequence;)[B

    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string v0, "The origin data must not be null!"

    .line 12
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p0
.end method

.method private static toDer(Ljava/lang/Object;I)[B
    .registers 6

    .line 1
    if-eqz p0, :cond_b8

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_6c

    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x4

    .line 8
    if-eq p1, v1, :cond_42

    .line 10
    const/4 v0, 0x3

    .line 11
    if-eq p1, v0, :cond_37

    .line 13
    if-eq p1, v2, :cond_1c

    .line 15
    const/4 v0, 0x5

    .line 16
    if-ne p1, v0, :cond_95

    .line 18
    instance-of v0, p0, Landroid/micloud/asn1/Asn1Sequence;

    .line 20
    if-eqz v0, :cond_95

    .line 22
    check-cast p0, Landroid/micloud/asn1/Asn1Sequence;

    .line 24
    invoke-static {p0}, Landroid/micloud/asn1/Asn1DerEncoder;->toSequence(Landroid/micloud/asn1/Asn1Sequence;)[B

    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1c
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    .line 31
    if-eqz v0, :cond_30

    .line 33
    check-cast p0, Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 38
    move-result p1

    .line 39
    new-array p1, p1, [B

    .line 41
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 48
    return-object p1

    .line 49
    :cond_30
    instance-of v0, p0, [B

    .line 51
    if-eqz v0, :cond_95

    .line 53
    check-cast p0, [B

    .line 55
    return-object p0

    .line 56
    :cond_37
    instance-of v0, p0, Ljava/lang/String;

    .line 58
    if-eqz v0, :cond_95

    .line 60
    check-cast p0, Ljava/lang/String;

    .line 62
    invoke-static {p0}, Landroid/micloud/asn1/Asn1DerEncoder;->toOid(Ljava/lang/String;)[B

    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_42
    const/4 v1, 0x0

    .line 68
    instance-of v3, p0, Ljava/nio/ByteBuffer;

    .line 70
    if-eqz v3, :cond_59

    .line 72
    move-object v1, p0

    .line 73
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 78
    move-result v3

    .line 79
    new-array v3, v3, [B

    .line 81
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 88
    move-object v1, v3

    .line 89
    goto :goto_60

    .line 90
    :cond_59
    instance-of v3, p0, [B

    .line 92
    if-eqz v3, :cond_60

    .line 94
    move-object v1, p0

    .line 95
    check-cast v1, [B

    .line 97
    :cond_60
    :goto_60
    if-eqz v1, :cond_95

    .line 99
    new-array p0, v0, [[B

    .line 101
    const/4 p1, 0x0

    .line 102
    aput-object v1, p0, p1

    .line 104
    invoke-static {p1, p1, v2, p0}, Landroid/micloud/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :cond_6c
    instance-of v0, p0, Ljava/lang/Integer;

    .line 111
    if-eqz v0, :cond_7b

    .line 113
    check-cast p0, Ljava/lang/Integer;

    .line 115
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 118
    move-result p0

    .line 119
    invoke-static {p0}, Landroid/micloud/asn1/Asn1DerEncoder;->toInteger(I)[B

    .line 122
    move-result-object p0

    .line 123
    return-object p0

    .line 124
    :cond_7b
    instance-of v0, p0, Ljava/lang/Long;

    .line 126
    if-eqz v0, :cond_8a

    .line 128
    check-cast p0, Ljava/lang/Long;

    .line 130
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 133
    move-result-wide p0

    .line 134
    invoke-static {p0, p1}, Landroid/micloud/asn1/Asn1DerEncoder;->toInteger(J)[B

    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :cond_8a
    instance-of v0, p0, Ljava/math/BigInteger;

    .line 141
    if-eqz v0, :cond_95

    .line 143
    check-cast p0, Ljava/math/BigInteger;

    .line 145
    invoke-static {p0}, Landroid/micloud/asn1/Asn1DerEncoder;->toInteger(Ljava/math/BigInteger;)[B

    .line 148
    move-result-object p0

    .line 149
    return-object p0

    .line 150
    :cond_95
    new-instance v0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    .line 152
    const-string v1, "Unsupported conversion: "

    .line 154
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string p0, " to ASN.1 "

    .line 171
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    move-result-object p0

    .line 181
    invoke-direct {v0, p0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 184
    throw v0

    .line 185
    :cond_b8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 187
    const-string p1, "Asn1 field source can\'t be null"

    .line 189
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 192
    throw p0
.end method

.method private static toInteger(I)[B
    .registers 3

    int-to-long v0, p0

    .line 1
    invoke-static {v0, v1}, Landroid/micloud/asn1/Asn1DerEncoder;->toInteger(J)[B

    move-result-object p0

    return-object p0
.end method

.method private static toInteger(J)[B
    .registers 2

    .line 2
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

    .line 3
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x2

    .line 4
    invoke-static {v1, v1, p0, v0}, Landroid/micloud/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static toOid(Ljava/lang/String;)[B
    .registers 11

    .line 1
    const-string v0, "Node #"

    .line 3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 5
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8
    const-string v2, "\\."

    .line 10
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    array-length v3, v2

    .line 15
    const/4 v4, 0x2

    .line 16
    if-lt v3, v4, :cond_131

    .line 18
    const/4 p0, 0x0

    .line 19
    :try_start_12
    aget-object v3, v2, p0

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    move-result v3
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_18} :catch_11c

    .line 25
    const/4 v5, 0x6

    .line 26
    if-gt v3, v5, :cond_110

    .line 28
    if-ltz v3, :cond_110

    .line 30
    const/4 v6, 0x1

    .line 31
    :try_start_1e
    aget-object v7, v2, v6

    .line 33
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    move-result v7
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_24} :catch_fb

    .line 37
    const/16 v8, 0x28

    .line 39
    if-ge v7, v8, :cond_ef

    .line 41
    if-ltz v7, :cond_ef

    .line 43
    mul-int/lit8 v8, v3, 0x28

    .line 45
    add-int/2addr v8, v7

    .line 46
    const/16 v9, 0xff

    .line 48
    if-gt v8, v9, :cond_d0

    .line 50
    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 53
    :goto_34
    array-length v3, v2

    .line 54
    if-ge v4, v3, :cond_c3

    .line 56
    aget-object v3, v2, v4

    .line 58
    :try_start_39
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    move-result v3
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_3d} :catch_a9

    .line 62
    if-ltz v3, :cond_8d

    .line 64
    const/16 v7, 0x7f

    .line 66
    if-gt v3, v7, :cond_47

    .line 68
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 71
    goto :goto_70

    .line 72
    :cond_47
    const/16 v8, 0x4000

    .line 74
    if-ge v3, v8, :cond_58

    .line 76
    shr-int/lit8 v7, v3, 0x7

    .line 78
    or-int/lit16 v7, v7, 0x80

    .line 80
    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 83
    and-int/lit8 v3, v3, 0x7f

    .line 85
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 88
    goto :goto_70

    .line 89
    :cond_58
    const/high16 v8, 0x200000

    .line 91
    if-ge v3, v8, :cond_73

    .line 93
    shr-int/lit8 v8, v3, 0xe

    .line 95
    or-int/lit16 v8, v8, 0x80

    .line 97
    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 100
    shr-int/lit8 v8, v3, 0x7

    .line 102
    and-int/2addr v7, v8

    .line 103
    or-int/lit16 v7, v7, 0x80

    .line 105
    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 108
    and-int/lit8 v3, v3, 0x7f

    .line 110
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 113
    :goto_70
    add-int/lit8 v4, v4, 0x1

    .line 115
    goto :goto_34

    .line 116
    :cond_73
    new-instance p0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    .line 118
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    move-result-object v0

    .line 122
    add-int/2addr v4, v6

    .line 123
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, " too large: "

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 141
    throw p0

    .line 142
    :cond_8d
    new-instance p0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    .line 144
    const-string v0, "Invalid value for node #"

    .line 146
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    move-result-object v0

    .line 150
    add-int/2addr v4, v6

    .line 151
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, ": "

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 166
    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 169
    throw p0

    .line 170
    :catch_a9
    new-instance p0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    .line 172
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    move-result-object v0

    .line 176
    add-int/2addr v4, v6

    .line 177
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, " not numeric: "

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v0

    .line 192
    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 195
    throw p0

    .line 196
    :cond_c3
    new-array v0, v6, [[B

    .line 198
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 201
    move-result-object v1

    .line 202
    aput-object v1, v0, p0

    .line 204
    invoke-static {p0, p0, v5, v0}, Landroid/micloud/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    .line 207
    move-result-object p0

    .line 208
    return-object p0

    .line 209
    :cond_d0
    new-instance p0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    .line 213
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    const-string v1, "First two nodes out of range: "

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    const-string v1, "."

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    move-result-object v0

    .line 236
    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 239
    throw p0

    .line 240
    :cond_ef
    new-instance p0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    .line 242
    const-string v0, "Invalid value for node #2: "

    .line 244
    invoke-static {v0, v7}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 247
    move-result-object v0

    .line 248
    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 251
    throw p0

    .line 252
    :catch_fb
    new-instance p0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    .line 254
    const-string v0, "Node #2 not numeric: "

    .line 256
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    move-result-object v0

    .line 260
    aget-object v1, v2, v6

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    move-result-object v0

    .line 269
    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 272
    throw p0

    .line 273
    :cond_110
    new-instance p0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    .line 275
    const-string v0, "Invalid value for node #1: "

    .line 277
    invoke-static {v0, v3}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 280
    move-result-object v0

    .line 281
    invoke-direct {p0, v0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 284
    throw p0

    .line 285
    :catch_11c
    new-instance v0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    .line 287
    const-string v1, "Node #1 not numeric: "

    .line 289
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    move-result-object v1

    .line 293
    aget-object p0, v2, p0

    .line 295
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    move-result-object p0

    .line 302
    invoke-direct {v0, p0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 305
    throw v0

    .line 306
    :cond_131
    new-instance v0, Landroid/micloud/asn1/exception/Asn1EncodingException;

    .line 308
    const-string v1, "OBJECT IDENTIFIER must contain at least two nodes: "

    .line 310
    invoke-static {v1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    move-result-object p0

    .line 314
    invoke-direct {v0, p0}, Landroid/micloud/asn1/exception/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 317
    throw v0
.end method

.method private static toSequence(Landroid/micloud/asn1/Asn1Sequence;)[B
    .registers 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    iget-object p0, p0, Landroid/micloud/asn1/Asn1Sequence;->fieldList:Ljava/util/List;

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 18
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_29

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/micloud/asn1/Asn1Field;

    .line 30
    iget-object v2, v1, Landroid/micloud/asn1/Asn1Field;->value:Ljava/lang/Object;

    .line 32
    iget v1, v1, Landroid/micloud/asn1/Asn1Field;->type:I

    .line 34
    invoke-static {v2, v1}, Landroid/micloud/asn1/Asn1DerEncoder;->toDer(Ljava/lang/Object;I)[B

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_11

    .line 42
    :cond_29
    const/4 p0, 0x1

    .line 43
    const/16 v1, 0x10

    .line 45
    const/4 v2, 0x0

    .line 46
    new-array v3, v2, [[B

    .line 48
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    check-cast v0, [[B

    .line 54
    invoke-static {v2, p0, v1, v0}, Landroid/micloud/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    .line 57
    move-result-object p0

    .line 58
    return-object p0
.end method
