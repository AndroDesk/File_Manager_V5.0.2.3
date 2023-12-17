.class public Lorg/jaudiotagger/audio/asf/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final DIFF_BETWEEN_ASF_DATE_AND_JAVA_DATE:J = 0xa97307f7980L

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field private static final MAXIMUM_STRING_LENGTH_ALLOWED:I = 0x7ffe


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "line.separator"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/asf/util/Utils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkStringLengthNullSafe(Ljava/lang/String;)V
    .registers 5

    .line 1
    if-eqz p0, :cond_27

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x7ffe

    .line 9
    if-gt v0, v1, :cond_b

    .line 11
    goto :goto_27

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    sget-object v1, Lorg/jaudiotagger/logging/ErrorMessage;->WMA_LENGTH_OF_STRING_IS_TOO_LARGE:Lorg/jaudiotagger/logging/ErrorMessage;

    .line 16
    const/4 v2, 0x1

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    move-result p0

    .line 24
    mul-int/lit8 p0, p0, 0x2

    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object p0

    .line 30
    aput-object p0, v2, v3

    .line 32
    invoke-virtual {v1, v2}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg([Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    throw v0

    .line 40
    :cond_27
    :goto_27
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .registers 13

    .line 1
    const/16 v0, 0x2000

    .line 3
    new-array v1, v0, [B

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    :goto_6
    cmp-long v4, v2, p2

    .line 9
    if-gez v4, :cond_3f

    .line 11
    sub-long v4, p2, v2

    .line 13
    const-wide/16 v6, 0x2000

    .line 15
    cmp-long v6, v4, v6

    .line 17
    if-gez v6, :cond_14

    .line 19
    long-to-int v6, v4

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move v6, v0

    .line 22
    :goto_15
    const/4 v7, 0x0

    .line 23
    invoke-virtual {p0, v1, v7, v6}, Ljava/io/InputStream;->read([BII)I

    .line 26
    move-result v6

    .line 27
    const/4 v8, -0x1

    .line 28
    if-eq v6, v8, :cond_23

    .line 30
    invoke-virtual {p1, v1, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 33
    int-to-long v4, v6

    .line 34
    add-long/2addr v2, v4

    .line 35
    goto :goto_6

    .line 36
    :cond_23
    new-instance p0, Ljava/io/IOException;

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string p2, "Inputstream has to continue for another "

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    const-string p2, " bytes."

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0

    .line 64
    :cond_3f
    return-void
.end method

.method public static flush(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    .line 1
    const/16 v0, 0x2000

    .line 3
    new-array v0, v0, [B

    .line 5
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v1, v2, :cond_10

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 16
    goto :goto_4

    .line 17
    :cond_10
    return-void
.end method

.method public static getBytes(JI)[B
    .registers 9

    .line 1
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_13

    mul-int/lit8 v2, v1, 0x8

    ushr-long v2, p0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 2
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_13
    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .registers 2

    .line 3
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public static getDateOf(Ljava/math/BigInteger;)Ljava/util/GregorianCalendar;
    .registers 7

    .line 1
    new-instance v0, Ljava/util/GregorianCalendar;

    .line 3
    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 6
    new-instance v1, Ljava/math/BigInteger;

    .line 8
    const-string v2, "10"

    .line 10
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 16
    move-result-object p0

    .line 17
    new-instance v1, Ljava/util/Date;

    .line 19
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    .line 22
    move-result-wide v2

    .line 23
    const-wide v4, 0xa97307f7980L

    .line 28
    sub-long/2addr v2, v4

    .line 29
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 35
    return-object v0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .registers 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    move-result v3

    .line 11
    if-ge v2, v3, :cond_1a

    .line 13
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 16
    move-result v3

    .line 17
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_17

    .line 23
    return v1

    .line 24
    :cond_17
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_6

    .line 27
    :cond_1a
    return v0
.end method

.method public static isStringLengthValidNullSafe(Ljava/lang/String;)Z
    .registers 2

    .line 1
    if-eqz p0, :cond_c

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result p0

    .line 7
    const/16 v0, 0x7ffe

    .line 9
    if-le p0, v0, :cond_c

    .line 11
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_c
    const/4 p0, 0x1

    .line 14
    return p0
.end method

.method public static readBig64(Ljava/io/InputStream;)Ljava/math/BigInteger;
    .registers 6

    .line 1
    const/16 v0, 0x8

    .line 3
    new-array v1, v0, [B

    .line 5
    new-array v2, v0, [B

    .line 7
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 10
    move-result p0

    .line 11
    if-ne p0, v0, :cond_1e

    .line 13
    const/4 p0, 0x0

    .line 14
    :goto_d
    if-ge p0, v0, :cond_18

    .line 16
    rsub-int/lit8 v3, p0, 0x7

    .line 18
    aget-byte v4, v1, p0

    .line 20
    aput-byte v4, v2, v3

    .line 22
    add-int/lit8 p0, p0, 0x1

    .line 24
    goto :goto_d

    .line 25
    :cond_18
    new-instance p0, Ljava/math/BigInteger;

    .line 27
    invoke-direct {p0, v2}, Ljava/math/BigInteger;-><init>([B)V

    .line 30
    return-object p0

    .line 31
    :cond_1e
    new-instance p0, Ljava/io/EOFException;

    .line 33
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    .line 36
    throw p0
.end method

.method public static readBinary(Ljava/io/InputStream;J)[B
    .registers 3

    .line 1
    long-to-int p1, p1

    .line 2
    new-array p1, p1, [B

    .line 4
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 7
    return-object p1
.end method

.method public static readCharacterSizedString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 17
    move-result v3

    .line 18
    shl-int/lit8 v3, v3, 0x8

    .line 20
    or-int/2addr v2, v3

    .line 21
    :cond_14
    if-eqz v2, :cond_25

    .line 23
    int-to-char v2, v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 30
    move-result v2

    .line 31
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 34
    move-result v3

    .line 35
    shl-int/lit8 v3, v3, 0x8

    .line 37
    or-int/2addr v2, v3

    .line 38
    :cond_25
    if-nez v2, :cond_14

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 43
    move-result v3

    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 46
    if-gt v3, v1, :cond_14

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 51
    move-result p0

    .line 52
    add-int/lit8 p0, p0, 0x1

    .line 54
    if-ne v1, p0, :cond_3c

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 63
    const-string v0, "Invalid Data for current interpretation"

    .line 65
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p0
.end method

.method public static readFixedSizeUTF16Str(Ljava/io/InputStream;I)Ljava/lang/String;
    .registers 4

    .line 1
    new-array v0, p1, [B

    .line 3
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 6
    move-result p0

    .line 7
    if-ne p0, p1, :cond_25

    .line 9
    const/4 p0, 0x2

    .line 10
    if-lt p1, p0, :cond_1d

    .line 12
    add-int/lit8 v1, p1, -0x1

    .line 14
    aget-byte v1, v0, v1

    .line 16
    if-nez v1, :cond_1d

    .line 18
    sub-int/2addr p1, p0

    .line 19
    aget-byte p0, v0, p1

    .line 21
    if-nez p0, :cond_1d

    .line 23
    new-array p0, p1, [B

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {v0, v1, p0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    move-object v0, p0

    .line 30
    :cond_1d
    new-instance p0, Ljava/lang/String;

    .line 32
    const-string p1, "UTF-16LE"

    .line 34
    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 37
    return-object p0

    .line 38
    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 40
    const-string p1, "Couldn\'t read the necessary amount of bytes."

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0
.end method

.method public static readGUID(Ljava/io/InputStream;)Lorg/jaudiotagger/audio/asf/data/GUID;
    .registers 5

    .line 1
    if-eqz p0, :cond_18

    .line 3
    const/16 v0, 0x10

    .line 5
    new-array v1, v0, [I

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_7
    if-ge v2, v0, :cond_12

    .line 10
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 13
    move-result v3

    .line 14
    aput v3, v1, v2

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_7

    .line 19
    :cond_12
    new-instance p0, Lorg/jaudiotagger/audio/asf/data/GUID;

    .line 21
    invoke-direct {p0, v1}, Lorg/jaudiotagger/audio/asf/data/GUID;-><init>([I)V

    .line 24
    return-object p0

    .line 25
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    const-string v0, "Argument must not be null"

    .line 29
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
.end method

.method public static readUINT16(Ljava/io/InputStream;)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 8
    move-result p0

    .line 9
    shl-int/lit8 p0, p0, 0x8

    .line 11
    or-int/2addr p0, v0

    .line 12
    return p0
.end method

.method public static readUINT32(Ljava/io/InputStream;)J
    .registers 6

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_3
    const/16 v3, 0x18

    .line 6
    if-gt v2, v3, :cond_11

    .line 8
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 11
    move-result v3

    .line 12
    int-to-long v3, v3

    .line 13
    shl-long/2addr v3, v2

    .line 14
    or-long/2addr v0, v3

    .line 15
    add-int/lit8 v2, v2, 0x8

    .line 17
    goto :goto_3

    .line 18
    :cond_11
    return-wide v0
.end method

.method public static readUINT64(Ljava/io/InputStream;)J
    .registers 6

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_3
    const/16 v3, 0x38

    .line 6
    if-gt v2, v3, :cond_11

    .line 8
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 11
    move-result v3

    .line 12
    int-to-long v3, v3

    .line 13
    shl-long/2addr v3, v2

    .line 14
    or-long/2addr v0, v3

    .line 15
    add-int/lit8 v2, v2, 0x8

    .line 17
    goto :goto_3

    .line 18
    :cond_11
    return-wide v0
.end method

.method public static readUTF16LEStr(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {p0}, Lorg/jaudiotagger/audio/asf/util/Utils;->readUINT16(Ljava/io/InputStream;)I

    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [B

    .line 7
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 10
    move-result p0

    .line 11
    if-eq p0, v0, :cond_1a

    .line 13
    if-nez v0, :cond_12

    .line 15
    const/4 v2, -0x1

    .line 16
    if-ne p0, v2, :cond_12

    .line 18
    goto :goto_1a

    .line 19
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 21
    const-string v0, "Invalid Data for current interpretation"

    .line 23
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0

    .line 27
    :cond_1a
    :goto_1a
    const/4 p0, 0x2

    .line 28
    if-lt v0, p0, :cond_2f

    .line 30
    add-int/lit8 v2, v0, -0x1

    .line 32
    aget-byte v2, v1, v2

    .line 34
    if-nez v2, :cond_2f

    .line 36
    sub-int/2addr v0, p0

    .line 37
    aget-byte p0, v1, v0

    .line 39
    if-nez p0, :cond_2f

    .line 41
    new-array p0, v0, [B

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-static {v1, v2, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    move-object v1, p0

    .line 48
    :cond_2f
    new-instance p0, Ljava/lang/String;

    .line 50
    sget-object v0, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->ASF_CHARSET:Ljava/nio/charset/Charset;

    .line 52
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 59
    return-object p0
.end method

.method public static writeUINT16(ILjava/io/OutputStream;)V
    .registers 6

    .line 1
    if-ltz p0, :cond_1a

    .line 3
    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [B

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    const/16 v2, 0x8

    .line 9
    if-gt v1, v2, :cond_16

    .line 11
    div-int/lit8 v2, v1, 0x8

    .line 13
    shr-int v3, p0, v1

    .line 15
    and-int/lit16 v3, v3, 0xff

    .line 17
    int-to-byte v3, v3

    .line 18
    aput-byte v3, v0, v2

    .line 20
    add-int/lit8 v1, v1, 0x8

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 26
    return-void

    .line 27
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 29
    const-string p1, "positive value expected."

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0
.end method

.method public static writeUINT32(JLjava/io/OutputStream;)V
    .registers 10

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p0, v0

    .line 5
    if-ltz v0, :cond_20

    .line 7
    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [B

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    const/16 v2, 0x18

    .line 13
    if-gt v1, v2, :cond_1c

    .line 15
    div-int/lit8 v2, v1, 0x8

    .line 17
    shr-long v3, p0, v1

    .line 19
    const-wide/16 v5, 0xff

    .line 21
    and-long/2addr v3, v5

    .line 22
    long-to-int v3, v3

    .line 23
    int-to-byte v3, v3

    .line 24
    aput-byte v3, v0, v2

    .line 26
    add-int/lit8 v1, v1, 0x8

    .line 28
    goto :goto_a

    .line 29
    :cond_1c
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 32
    return-void

    .line 33
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 35
    const-string p1, "positive value expected."

    .line 37
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0
.end method

.method public static writeUINT64(JLjava/io/OutputStream;)V
    .registers 10

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p0, v0

    .line 5
    if-ltz v0, :cond_21

    .line 7
    const/16 v0, 0x8

    .line 9
    new-array v0, v0, [B

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_b
    const/16 v2, 0x38

    .line 14
    if-gt v1, v2, :cond_1d

    .line 16
    div-int/lit8 v2, v1, 0x8

    .line 18
    shr-long v3, p0, v1

    .line 20
    const-wide/16 v5, 0xff

    .line 22
    and-long/2addr v3, v5

    .line 23
    long-to-int v3, v3

    .line 24
    int-to-byte v3, v3

    .line 25
    aput-byte v3, v0, v2

    .line 27
    add-int/lit8 v1, v1, 0x8

    .line 29
    goto :goto_b

    .line 30
    :cond_1d
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 33
    return-void

    .line 34
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    const-string p1, "positive value expected."

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p0
.end method
