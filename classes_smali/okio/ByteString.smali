.class public Lokio/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lokio/ByteString;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lokio/ByteString;

.field public static final HEX_DIGITS:[C

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final data:[B

.field public transient hashCode:I

.field public transient utf8:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/16 v0, 0x10

    .line 3
    new-array v0, v0, [C

    .line 5
    fill-array-data v0, :array_14

    .line 8
    sput-object v0, Lokio/ByteString;->HEX_DIGITS:[C

    .line 10
    const/4 v0, 0x0

    .line 11
    new-array v0, v0, [B

    .line 13
    invoke-static {v0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_14
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lokio/ByteString;->data:[B

    .line 6
    return-void
.end method

.method public static a(C)I
    .registers 4

    .line 1
    const/16 v0, 0x30

    .line 3
    if-lt p0, v0, :cond_a

    .line 5
    const/16 v1, 0x39

    .line 7
    if-gt p0, v1, :cond_a

    .line 9
    sub-int/2addr p0, v0

    .line 10
    return p0

    .line 11
    :cond_a
    const/16 v0, 0x61

    .line 13
    if-lt p0, v0, :cond_16

    .line 15
    const/16 v1, 0x66

    .line 17
    if-gt p0, v1, :cond_16

    .line 19
    :goto_12
    sub-int/2addr p0, v0

    .line 20
    add-int/lit8 p0, p0, 0xa

    .line 22
    return p0

    .line 23
    :cond_16
    const/16 v0, 0x41

    .line 25
    if-lt p0, v0, :cond_1f

    .line 27
    const/16 v1, 0x46

    .line 29
    if-gt p0, v1, :cond_1f

    .line 31
    goto :goto_12

    .line 32
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string v2, "Unexpected hex digit: "

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    throw v0
.end method

.method public static codePointIndexToCharIndex(Ljava/lang/String;I)I
    .registers 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    if-ge v1, v0, :cond_2c

    .line 9
    if-ne v2, p1, :cond_b

    .line 11
    return v1

    .line 12
    :cond_b
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    .line 15
    move-result v3

    .line 16
    invoke-static {v3}, Ljava/lang/Character;->isISOControl(I)Z

    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_1d

    .line 22
    const/16 v4, 0xa

    .line 24
    if-eq v3, v4, :cond_1d

    .line 26
    const/16 v4, 0xd

    .line 28
    if-ne v3, v4, :cond_22

    .line 30
    :cond_1d
    const v4, 0xfffd

    .line 33
    if-ne v3, v4, :cond_24

    .line 35
    :cond_22
    const/4 p0, -0x1

    .line 36
    return p0

    .line 37
    :cond_24
    add-int/lit8 v2, v2, 0x1

    .line 39
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    .line 42
    move-result v3

    .line 43
    add-int/2addr v1, v3

    .line 44
    goto :goto_6

    .line 45
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public static decodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .registers 16
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    if-eqz p0, :cond_d6

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    :goto_6
    const/16 v1, 0x9

    .line 9
    const/16 v2, 0x20

    .line 11
    const/16 v3, 0xd

    .line 13
    const/16 v4, 0xa

    .line 15
    if-lez v0, :cond_25

    .line 17
    add-int/lit8 v5, v0, -0x1

    .line 19
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 22
    move-result v6

    .line 23
    const/16 v7, 0x3d

    .line 25
    if-eq v6, v7, :cond_23

    .line 27
    if-eq v6, v4, :cond_23

    .line 29
    if-eq v6, v3, :cond_23

    .line 31
    if-eq v6, v2, :cond_23

    .line 33
    if-eq v6, v1, :cond_23

    .line 35
    goto :goto_25

    .line 36
    :cond_23
    move v0, v5

    .line 37
    goto :goto_6

    .line 38
    :cond_25
    :goto_25
    int-to-long v5, v0

    .line 39
    const-wide/16 v7, 0x6

    .line 41
    mul-long/2addr v5, v7

    .line 42
    const-wide/16 v7, 0x8

    .line 44
    div-long/2addr v5, v7

    .line 45
    long-to-int v5, v5

    .line 46
    new-array v6, v5, [B

    .line 48
    const/4 v7, 0x0

    .line 49
    move v8, v7

    .line 50
    move v9, v8

    .line 51
    move v10, v9

    .line 52
    move v11, v10

    .line 53
    :goto_34
    const/4 v12, 0x0

    .line 54
    if-ge v8, v0, :cond_9d

    .line 56
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    .line 59
    move-result v13

    .line 60
    const/16 v14, 0x41

    .line 62
    if-lt v13, v14, :cond_46

    .line 64
    const/16 v14, 0x5a

    .line 66
    if-gt v13, v14, :cond_46

    .line 68
    add-int/lit8 v13, v13, -0x41

    .line 70
    goto :goto_7c

    .line 71
    :cond_46
    const/16 v14, 0x61

    .line 73
    if-lt v13, v14, :cond_51

    .line 75
    const/16 v14, 0x7a

    .line 77
    if-gt v13, v14, :cond_51

    .line 79
    add-int/lit8 v13, v13, -0x47

    .line 81
    goto :goto_7c

    .line 82
    :cond_51
    const/16 v14, 0x30

    .line 84
    if-lt v13, v14, :cond_5c

    .line 86
    const/16 v14, 0x39

    .line 88
    if-gt v13, v14, :cond_5c

    .line 90
    add-int/lit8 v13, v13, 0x4

    .line 92
    goto :goto_7c

    .line 93
    :cond_5c
    const/16 v14, 0x2b

    .line 95
    if-eq v13, v14, :cond_7a

    .line 97
    const/16 v14, 0x2d

    .line 99
    if-ne v13, v14, :cond_65

    .line 101
    goto :goto_7a

    .line 102
    :cond_65
    const/16 v14, 0x2f

    .line 104
    if-eq v13, v14, :cond_77

    .line 106
    const/16 v14, 0x5f

    .line 108
    if-ne v13, v14, :cond_6e

    .line 110
    goto :goto_77

    .line 111
    :cond_6e
    if-eq v13, v4, :cond_9a

    .line 113
    if-eq v13, v3, :cond_9a

    .line 115
    if-eq v13, v2, :cond_9a

    .line 117
    if-ne v13, v1, :cond_a2

    .line 119
    goto :goto_9a

    .line 120
    :cond_77
    :goto_77
    const/16 v13, 0x3f

    .line 122
    goto :goto_7c

    .line 123
    :cond_7a
    :goto_7a
    const/16 v13, 0x3e

    .line 125
    :goto_7c
    shl-int/lit8 v10, v10, 0x6

    .line 127
    int-to-byte v12, v13

    .line 128
    or-int/2addr v10, v12

    .line 129
    add-int/lit8 v9, v9, 0x1

    .line 131
    rem-int/lit8 v12, v9, 0x4

    .line 133
    if-nez v12, :cond_9a

    .line 135
    add-int/lit8 v12, v11, 0x1

    .line 137
    shr-int/lit8 v13, v10, 0x10

    .line 139
    int-to-byte v13, v13

    .line 140
    aput-byte v13, v6, v11

    .line 142
    add-int/lit8 v11, v12, 0x1

    .line 144
    shr-int/lit8 v13, v10, 0x8

    .line 146
    int-to-byte v13, v13

    .line 147
    aput-byte v13, v6, v12

    .line 149
    add-int/lit8 v12, v11, 0x1

    .line 151
    int-to-byte v13, v10

    .line 152
    aput-byte v13, v6, v11

    .line 154
    move v11, v12

    .line 155
    :cond_9a
    :goto_9a
    add-int/lit8 v8, v8, 0x1

    .line 157
    goto :goto_34

    .line 158
    :cond_9d
    rem-int/lit8 v9, v9, 0x4

    .line 160
    const/4 p0, 0x1

    .line 161
    if-ne v9, p0, :cond_a4

    .line 163
    :cond_a2
    move-object v6, v12

    .line 164
    goto :goto_ce

    .line 165
    :cond_a4
    const/4 p0, 0x2

    .line 166
    if-ne v9, p0, :cond_b2

    .line 168
    shl-int/lit8 p0, v10, 0xc

    .line 170
    add-int/lit8 v0, v11, 0x1

    .line 172
    shr-int/lit8 p0, p0, 0x10

    .line 174
    int-to-byte p0, p0

    .line 175
    aput-byte p0, v6, v11

    .line 177
    move v11, v0

    .line 178
    goto :goto_c5

    .line 179
    :cond_b2
    const/4 p0, 0x3

    .line 180
    if-ne v9, p0, :cond_c5

    .line 182
    shl-int/lit8 p0, v10, 0x6

    .line 184
    add-int/lit8 v0, v11, 0x1

    .line 186
    shr-int/lit8 v1, p0, 0x10

    .line 188
    int-to-byte v1, v1

    .line 189
    aput-byte v1, v6, v11

    .line 191
    add-int/lit8 v11, v0, 0x1

    .line 193
    shr-int/lit8 p0, p0, 0x8

    .line 195
    int-to-byte p0, p0

    .line 196
    aput-byte p0, v6, v0

    .line 198
    :cond_c5
    :goto_c5
    if-ne v11, v5, :cond_c8

    .line 200
    goto :goto_ce

    .line 201
    :cond_c8
    new-array p0, v11, [B

    .line 203
    invoke-static {v6, v7, p0, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    move-object v6, p0

    .line 207
    :goto_ce
    if-eqz v6, :cond_d5

    .line 209
    new-instance v12, Lokio/ByteString;

    .line 211
    invoke-direct {v12, v6}, Lokio/ByteString;-><init>([B)V

    .line 214
    :cond_d5
    return-object v12

    .line 215
    :cond_d6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 217
    const-string v0, "base64 == null"

    .line 219
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 222
    throw p0
.end method

.method public static decodeHex(Ljava/lang/String;)Lokio/ByteString;
    .registers 6

    .line 1
    if-eqz p0, :cond_43

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    rem-int/lit8 v0, v0, 0x2

    .line 9
    if-nez v0, :cond_37

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    move-result v0

    .line 15
    div-int/lit8 v0, v0, 0x2

    .line 17
    new-array v1, v0, [B

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_13
    if-ge v2, v0, :cond_32

    .line 22
    mul-int/lit8 v3, v2, 0x2

    .line 24
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 27
    move-result v4

    .line 28
    invoke-static {v4}, Lokio/ByteString;->a(C)I

    .line 31
    move-result v4

    .line 32
    shl-int/lit8 v4, v4, 0x4

    .line 34
    add-int/lit8 v3, v3, 0x1

    .line 36
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 39
    move-result v3

    .line 40
    invoke-static {v3}, Lokio/ByteString;->a(C)I

    .line 43
    move-result v3

    .line 44
    add-int/2addr v3, v4

    .line 45
    int-to-byte v3, v3

    .line 46
    aput-byte v3, v1, v2

    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_13

    .line 51
    :cond_32
    invoke-static {v1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 58
    const-string v1, "Unexpected hex string: "

    .line 60
    invoke-static {v1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    throw v0

    .line 68
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 70
    const-string v0, "hex == null"

    .line 72
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p0
.end method

.method public static encodeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/ByteString;
    .registers 3

    .line 1
    if-eqz p0, :cond_16

    .line 3
    if-eqz p1, :cond_e

    .line 5
    new-instance v0, Lokio/ByteString;

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    .line 14
    return-object v0

    .line 15
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    const-string p1, "charset == null"

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0

    .line 23
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 25
    const-string p1, "s == null"

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    throw p0
.end method

.method public static encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .registers 3

    .line 1
    if-eqz p0, :cond_10

    .line 3
    new-instance v0, Lokio/ByteString;

    .line 5
    sget-object v1, Lp4/j;->a:Ljava/nio/charset/Charset;

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 14
    iput-object p0, v0, Lokio/ByteString;->utf8:Ljava/lang/String;

    .line 16
    return-object v0

    .line 17
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    const-string v0, "s == null"

    .line 21
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p0
.end method

.method public static of(Ljava/nio/ByteBuffer;)Lokio/ByteString;
    .registers 2

    if-eqz p0, :cond_11

    .line 8
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 9
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 10
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    return-object p0

    .line 11
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs of([B)Lokio/ByteString;
    .registers 2

    if-eqz p0, :cond_e

    .line 1
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0

    .line 2
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static of([BII)Lokio/ByteString;
    .registers 10

    if-eqz p0, :cond_15

    .line 3
    array-length v0, p0

    int-to-long v1, v0

    int-to-long v3, p1

    int-to-long v5, p2

    invoke-static/range {v1 .. v6}, Lp4/j;->b(JJJ)V

    .line 4
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance p0, Lokio/ByteString;

    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    return-object p0

    .line 7
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "data == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljava/io/InputStream;I)Lokio/ByteString;
    .registers 6

    .line 1
    if-eqz p0, :cond_2c

    .line 3
    if-ltz p1, :cond_20

    .line 5
    new-array v0, p1, [B

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, p1, :cond_1a

    .line 10
    sub-int v2, p1, v1

    .line 12
    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 15
    move-result v2

    .line 16
    const/4 v3, -0x1

    .line 17
    if-eq v2, v3, :cond_14

    .line 19
    add-int/2addr v1, v2

    .line 20
    goto :goto_7

    .line 21
    :cond_14
    new-instance p0, Ljava/io/EOFException;

    .line 23
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 26
    throw p0

    .line 27
    :cond_1a
    new-instance p0, Lokio/ByteString;

    .line 29
    invoke-direct {p0, v0}, Lokio/ByteString;-><init>([B)V

    .line 32
    return-object p0

    .line 33
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 35
    const-string v0, "byteCount < 0: "

    .line 37
    invoke-static {v0, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0

    .line 45
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 47
    const-string p1, "in == null"

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 4
    move-result v0

    .line 5
    invoke-static {p1, v0}, Lokio/ByteString;->read(Ljava/io/InputStream;I)Lokio/ByteString;

    .line 8
    move-result-object p1

    .line 9
    :try_start_8
    const-class v0, Lokio/ByteString;

    .line 11
    const-string v1, "data"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 21
    iget-object p1, p1, Lokio/ByteString;->data:[B

    .line 23
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/NoSuchFieldException; {:try_start_8 .. :try_end_19} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_19} :catch_1a

    .line 26
    return-void

    .line 27
    :catch_1a
    new-instance p1, Ljava/lang/AssertionError;

    .line 29
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 32
    throw p1

    .line 33
    :catch_20
    new-instance p1, Ljava/lang/AssertionError;

    .line 35
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 38
    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 3
    array-length v0, v0

    .line 4
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 7
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 9
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 12
    return-void
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lokio/ByteString;
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 7
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    .line 14
    move-result-object p1
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_f

    .line 15
    return-object p1

    .line 16
    :catch_f
    move-exception p1

    .line 17
    new-instance v0, Ljava/lang/AssertionError;

    .line 19
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 22
    throw v0
.end method

.method public base64()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 3
    sget-object v1, La/b;->h:[B

    .line 5
    invoke-static {v0, v1}, La/b;->w([B[B)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public base64Url()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 3
    sget-object v1, La/b;->i:[B

    .line 5
    invoke-static {v0, v1}, La/b;->w([B[B)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final c(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .registers 5

    .line 1
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 7
    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    .line 10
    move-result-object p2

    .line 11
    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 14
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 17
    iget-object p1, p0, Lokio/ByteString;->data:[B

    .line 19
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    .line 26
    move-result-object p1
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1a} :catch_22
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 27
    return-object p1

    .line 28
    :catch_1b
    move-exception p1

    .line 29
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 31
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    throw p2

    .line 35
    :catch_22
    move-exception p1

    .line 36
    new-instance p2, Ljava/lang/AssertionError;

    .line 38
    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 41
    throw p2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/ByteString;->compareTo(Lokio/ByteString;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lokio/ByteString;)I
    .registers 11

    .line 2
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v4, v2, :cond_28

    .line 5
    invoke-virtual {p0, v4}, Lokio/ByteString;->getByte(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 6
    invoke-virtual {p1, v4}, Lokio/ByteString;->getByte(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-ne v7, v8, :cond_23

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_23
    if-ge v7, v8, :cond_26

    goto :goto_27

    :cond_26
    move v5, v6

    :goto_27
    return v5

    :cond_28
    if-ne v0, v1, :cond_2b

    return v3

    :cond_2b
    if-ge v0, v1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v5, v6

    :goto_2f
    return v5
.end method

.method public final endsWith(Lokio/ByteString;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public final endsWith([B)Z
    .registers 5

    .line 2
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    array-length v1, p1

    sub-int/2addr v0, v1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lokio/ByteString;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1c

    .line 10
    check-cast p1, Lokio/ByteString;

    .line 12
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 15
    move-result v1

    .line 16
    iget-object v3, p0, Lokio/ByteString;->data:[B

    .line 18
    array-length v4, v3

    .line 19
    if-ne v1, v4, :cond_1c

    .line 21
    array-length v1, v3

    .line 22
    invoke-virtual {p1, v2, v3, v2, v1}, Lokio/ByteString;->rangeEquals(I[BII)Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1c

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v0, v2

    .line 30
    :goto_1d
    return v0
.end method

.method public getByte(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 3
    aget-byte p1, v0, p1

    .line 5
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lokio/ByteString;->hashCode:I

    .line 3
    if-eqz v0, :cond_5

    .line 5
    goto :goto_d

    .line 6
    :cond_5
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lokio/ByteString;->hashCode:I

    .line 14
    :goto_d
    return v0
.end method

.method public hex()Ljava/lang/String;
    .registers 10

    .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 3
    array-length v1, v0

    .line 4
    mul-int/lit8 v1, v1, 0x2

    .line 6
    new-array v1, v1, [C

    .line 8
    array-length v2, v0

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_a
    if-ge v3, v2, :cond_25

    .line 13
    aget-byte v5, v0, v3

    .line 15
    add-int/lit8 v6, v4, 0x1

    .line 17
    sget-object v7, Lokio/ByteString;->HEX_DIGITS:[C

    .line 19
    shr-int/lit8 v8, v5, 0x4

    .line 21
    and-int/lit8 v8, v8, 0xf

    .line 23
    aget-char v8, v7, v8

    .line 25
    aput-char v8, v1, v4

    .line 27
    add-int/lit8 v4, v6, 0x1

    .line 29
    and-int/lit8 v5, v5, 0xf

    .line 31
    aget-char v5, v7, v5

    .line 33
    aput-char v5, v1, v6

    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 37
    goto :goto_a

    .line 38
    :cond_25
    new-instance v0, Ljava/lang/String;

    .line 40
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 43
    return-object v0
.end method

.method public hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    .line 1
    const-string v0, "HmacSHA1"

    .line 3
    invoke-virtual {p0, v0, p1}, Lokio/ByteString;->c(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    .line 1
    const-string v0, "HmacSHA256"

    .line 3
    invoke-virtual {p0, v0, p1}, Lokio/ByteString;->c(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    .line 1
    const-string v0, "HmacSHA512"

    .line 3
    invoke-virtual {p0, v0, p1}, Lokio/ByteString;->c(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final indexOf(Lokio/ByteString;)I
    .registers 3

    .line 1
    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lokio/ByteString;->indexOf([BI)I

    move-result p1

    return p1
.end method

.method public final indexOf(Lokio/ByteString;I)I
    .registers 3

    .line 2
    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->indexOf([BI)I

    move-result p1

    return p1
.end method

.method public final indexOf([B)I
    .registers 3

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lokio/ByteString;->indexOf([BI)I

    move-result p1

    return p1
.end method

.method public indexOf([BI)I
    .registers 7

    const/4 v0, 0x0

    .line 4
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 5
    iget-object v1, p0, Lokio/ByteString;->data:[B

    array-length v1, v1

    array-length v2, p1

    sub-int/2addr v1, v2

    :goto_a
    if-gt p2, v1, :cond_19

    .line 6
    iget-object v2, p0, Lokio/ByteString;->data:[B

    array-length v3, p1

    invoke-static {v2, p2, v0, p1, v3}, Lp4/j;->a([BII[BI)Z

    move-result v2

    if-eqz v2, :cond_16

    return p2

    :cond_16
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method public internalArray()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 3
    return-object v0
.end method

.method public final lastIndexOf(Lokio/ByteString;)I
    .registers 3

    .line 1
    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object p1

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result p1

    return p1
.end method

.method public final lastIndexOf(Lokio/ByteString;I)I
    .registers 3

    .line 2
    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result p1

    return p1
.end method

.method public final lastIndexOf([B)I
    .registers 3

    .line 3
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result p1

    return p1
.end method

.method public lastIndexOf([BI)I
    .registers 6

    .line 4
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_9
    if-ltz p2, :cond_19

    .line 5
    iget-object v0, p0, Lokio/ByteString;->data:[B

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {v0, p2, v1, p1, v2}, Lp4/j;->a([BII[BI)Z

    move-result v0

    if-eqz v0, :cond_16

    return p2

    :cond_16
    add-int/lit8 p2, p2, -0x1

    goto :goto_9

    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method public md5()Lokio/ByteString;
    .registers 2

    .line 1
    const-string v0, "MD5"

    .line 3
    invoke-virtual {p0, v0}, Lokio/ByteString;->b(Ljava/lang/String;)Lokio/ByteString;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p1

    return p1
.end method

.method public rangeEquals(I[BII)Z
    .registers 7

    if-ltz p1, :cond_16

    .line 2
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v1, v0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_16

    if-ltz p3, :cond_16

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_16

    .line 3
    invoke-static {v0, p1, p3, p2, p4}, Lp4/j;->a([BII[BI)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public sha1()Lokio/ByteString;
    .registers 2

    .line 1
    const-string v0, "SHA-1"

    .line 3
    invoke-virtual {p0, v0}, Lokio/ByteString;->b(Ljava/lang/String;)Lokio/ByteString;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public sha256()Lokio/ByteString;
    .registers 2

    .line 1
    const-string v0, "SHA-256"

    .line 3
    invoke-virtual {p0, v0}, Lokio/ByteString;->b(Ljava/lang/String;)Lokio/ByteString;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public sha512()Lokio/ByteString;
    .registers 2

    .line 1
    const-string v0, "SHA-512"

    .line 3
    invoke-virtual {p0, v0}, Lokio/ByteString;->b(Ljava/lang/String;)Lokio/ByteString;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public final startsWith(Lokio/ByteString;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public final startsWith([B)Z
    .registers 4

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result p1

    return p1
.end method

.method public string(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .line 1
    if-eqz p1, :cond_a

    .line 3
    new-instance v0, Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lokio/ByteString;->data:[B

    .line 7
    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 10
    return-object v0

    .line 11
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string v0, "charset == null"

    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method

.method public substring(I)Lokio/ByteString;
    .registers 3

    .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p0, p1, v0}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public substring(II)Lokio/ByteString;
    .registers 6

    if-ltz p1, :cond_3a

    .line 2
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v1, v0

    if-gt p2, v1, :cond_25

    sub-int v1, p2, p1

    if-ltz v1, :cond_1d

    if-nez p1, :cond_11

    .line 3
    array-length v2, v0

    if-ne p2, v2, :cond_11

    return-object p0

    .line 4
    :cond_11
    new-array p2, v1, [B

    const/4 v2, 0x0

    .line 5
    invoke-static {v0, p1, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance p1, Lokio/ByteString;

    invoke-direct {p1, p2}, Lokio/ByteString;-><init>([B)V

    return-object p1

    .line 7
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endIndex < beginIndex"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endIndex > length("

    .line 9
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 10
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    const-string v1, ")"

    .line 11
    invoke-static {p2, v0, v1}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "beginIndex < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lokio/ByteString;->data:[B

    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_39

    .line 7
    aget-byte v2, v1, v0

    .line 9
    const/16 v3, 0x41

    .line 11
    if-lt v2, v3, :cond_36

    .line 13
    const/16 v4, 0x5a

    .line 15
    if-le v2, v4, :cond_11

    .line 17
    goto :goto_36

    .line 18
    :cond_11
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, [B

    .line 24
    add-int/lit8 v5, v0, 0x1

    .line 26
    add-int/lit8 v2, v2, 0x20

    .line 28
    int-to-byte v2, v2

    .line 29
    aput-byte v2, v1, v0

    .line 31
    :goto_1e
    array-length v0, v1

    .line 32
    if-ge v5, v0, :cond_30

    .line 34
    aget-byte v0, v1, v5

    .line 36
    if-lt v0, v3, :cond_2d

    .line 38
    if-le v0, v4, :cond_28

    .line 40
    goto :goto_2d

    .line 41
    :cond_28
    add-int/lit8 v0, v0, 0x20

    .line 43
    int-to-byte v0, v0

    .line 44
    aput-byte v0, v1, v5

    .line 46
    :cond_2d
    :goto_2d
    add-int/lit8 v5, v5, 0x1

    .line 48
    goto :goto_1e

    .line 49
    :cond_30
    new-instance v0, Lokio/ByteString;

    .line 51
    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 54
    return-object v0

    .line 55
    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_39
    return-object p0
.end method

.method public toAsciiUppercase()Lokio/ByteString;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lokio/ByteString;->data:[B

    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_39

    .line 7
    aget-byte v2, v1, v0

    .line 9
    const/16 v3, 0x61

    .line 11
    if-lt v2, v3, :cond_36

    .line 13
    const/16 v4, 0x7a

    .line 15
    if-le v2, v4, :cond_11

    .line 17
    goto :goto_36

    .line 18
    :cond_11
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, [B

    .line 24
    add-int/lit8 v5, v0, 0x1

    .line 26
    add-int/lit8 v2, v2, -0x20

    .line 28
    int-to-byte v2, v2

    .line 29
    aput-byte v2, v1, v0

    .line 31
    :goto_1e
    array-length v0, v1

    .line 32
    if-ge v5, v0, :cond_30

    .line 34
    aget-byte v0, v1, v5

    .line 36
    if-lt v0, v3, :cond_2d

    .line 38
    if-le v0, v4, :cond_28

    .line 40
    goto :goto_2d

    .line 41
    :cond_28
    add-int/lit8 v0, v0, -0x20

    .line 43
    int-to-byte v0, v0

    .line 44
    aput-byte v0, v1, v5

    .line 46
    :cond_2d
    :goto_2d
    add-int/lit8 v5, v5, 0x1

    .line 48
    goto :goto_1e

    .line 49
    :cond_30
    new-instance v0, Lokio/ByteString;

    .line 51
    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    .line 54
    return-object v0

    .line 55
    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_39
    return-object p0
.end method

.method public toByteArray()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 3
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [B

    .line 9
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 3
    array-length v0, v0

    .line 4
    if-nez v0, :cond_8

    .line 6
    const-string v0, "[size=0]"

    .line 8
    return-object v0

    .line 9
    :cond_8
    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const/16 v1, 0x40

    .line 15
    invoke-static {v0, v1}, Lokio/ByteString;->codePointIndexToCharIndex(Ljava/lang/String;I)I

    .line 18
    move-result v2

    .line 19
    const/4 v3, -0x1

    .line 20
    const-string v4, "…]"

    .line 22
    const-string v5, "[size="

    .line 24
    const-string v6, "]"

    .line 26
    const/4 v7, 0x0

    .line 27
    if-ne v2, v3, :cond_58

    .line 29
    iget-object v0, p0, Lokio/ByteString;->data:[B

    .line 31
    array-length v0, v0

    .line 32
    if-gt v0, v1, :cond_36

    .line 34
    const-string v0, "[hex="

    .line 36
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    goto :goto_57

    .line 55
    :cond_36
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    move-result-object v0

    .line 59
    iget-object v2, p0, Lokio/ByteString;->data:[B

    .line 61
    array-length v2, v2

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string v2, " hex="

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p0, v7, v1}, Lokio/ByteString;->substring(II)Lokio/ByteString;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    :goto_57
    return-object v0

    .line 89
    :cond_58
    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    const-string v3, "\\"

    .line 95
    const-string v7, "\\\\"

    .line 97
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    const-string v3, "\n"

    .line 103
    const-string v7, "\\n"

    .line 105
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    const-string v3, "\r"

    .line 111
    const-string v7, "\\r"

    .line 113
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 120
    move-result v0

    .line 121
    if-ge v2, v0, :cond_94

    .line 123
    invoke-static {v5}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    move-result-object v0

    .line 127
    iget-object v2, p0, Lokio/ByteString;->data:[B

    .line 129
    array-length v2, v2

    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string v2, " text="

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    goto :goto_9a

    .line 149
    :cond_94
    const-string v0, "[text="

    .line 151
    invoke-static {v0, v1, v6}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    :goto_9a
    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    goto :goto_10

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lokio/ByteString;->data:[B

    .line 10
    sget-object v2, Lp4/j;->a:Ljava/nio/charset/Charset;

    .line 12
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 15
    iput-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    .line 17
    :goto_10
    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 1
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 2
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "out == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lokio/a;)V
    .registers 13

    .line 3
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_37

    .line 4
    array-length v2, v0

    int-to-long v3, v2

    const/4 v2, 0x0

    int-to-long v5, v2

    int-to-long v9, v1

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lp4/j;->b(JJJ)V

    add-int/2addr v1, v2

    :goto_12
    if-ge v2, v1, :cond_31

    const/4 v3, 0x1

    .line 5
    invoke-virtual {p1, v3}, Lokio/a;->o(I)Lp4/g;

    move-result-object v3

    sub-int v4, v1, v2

    .line 6
    iget v5, v3, Lp4/g;->c:I

    rsub-int v5, v5, 0x2000

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 7
    iget-object v5, v3, Lp4/g;->a:[B

    iget v6, v3, Lp4/g;->c:I

    invoke-static {v0, v2, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    .line 8
    iget v5, v3, Lp4/g;->c:I

    add-int/2addr v5, v4

    iput v5, v3, Lp4/g;->c:I

    goto :goto_12

    .line 9
    :cond_31
    iget-wide v0, p1, Lokio/a;->b:J

    add-long/2addr v0, v9

    iput-wide v0, p1, Lokio/a;->b:J

    return-void

    .line 10
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
