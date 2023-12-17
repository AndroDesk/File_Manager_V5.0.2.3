.class public Lorg/jaudiotagger/audio/generic/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.audio.generic.utils"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/audio/generic/Utils;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy([B[BI)V
    .registers 5

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)Z
    .registers 8

    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 4
    :goto_f
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_1a

    .line 5
    invoke-virtual {v2, v3, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_f

    .line 6
    :cond_1a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 8
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-eqz p0, :cond_30

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2f} :catch_32

    return v0

    :cond_30
    const/4 p0, 0x1

    return p0

    :catch_32
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 4
    move-result-object p0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-object p0

    .line 6
    :catch_5
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/RuntimeException;

    .line 9
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 12
    throw p1
.end method

.method public static getExtension(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    const-string v0, "."

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-ne v0, v1, :cond_14

    .line 18
    const-string p0, ""

    .line 20
    return-object p0

    .line 21
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static getIntBE(Ljava/nio/ByteBuffer;II)I
    .registers 3

    .line 2
    invoke-static {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/Utils;->getLongBE(Ljava/nio/ByteBuffer;II)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static getIntBE([BII)I
    .registers 3

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/Utils;->getLongBE(Ljava/nio/ByteBuffer;II)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static getIntLE([B)I
    .registers 3

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lorg/jaudiotagger/audio/generic/Utils;->getLongLE(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public static getIntLE([BII)I
    .registers 3

    .line 2
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/Utils;->getLongLE(Ljava/nio/ByteBuffer;II)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static getLongBE(Ljava/nio/ByteBuffer;II)J
    .registers 9

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_3
    sub-int v3, p2, p1

    .line 6
    add-int/lit8 v3, v3, 0x1

    .line 8
    if-ge v2, v3, :cond_19

    .line 10
    sub-int v3, p2, v2

    .line 12
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 15
    move-result v3

    .line 16
    and-int/lit16 v3, v3, 0xff

    .line 18
    int-to-long v3, v3

    .line 19
    mul-int/lit8 v5, v2, 0x8

    .line 21
    shl-long/2addr v3, v5

    .line 22
    add-long/2addr v0, v3

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_3

    .line 26
    :cond_19
    return-wide v0
.end method

.method public static getLongLE(Ljava/nio/ByteBuffer;II)J
    .registers 8

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_3
    sub-int v3, p2, p1

    .line 6
    add-int/lit8 v3, v3, 0x1

    .line 8
    if-ge v2, v3, :cond_19

    .line 10
    add-int v3, p1, v2

    .line 12
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get(I)B

    .line 15
    move-result v3

    .line 16
    and-int/lit16 v3, v3, 0xff

    .line 18
    mul-int/lit8 v4, v2, 0x8

    .line 20
    shl-int/2addr v3, v4

    .line 21
    int-to-long v3, v3

    .line 22
    add-long/2addr v0, v3

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_3

    .line 26
    :cond_19
    return-wide v0
.end method

.method public static getMinBaseFilenameAllowedForTempFile(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0}, Lorg/jaudiotagger/audio/AudioFile;->getBaseFilename(Ljava/io/File;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x3

    .line 10
    if-lt v0, v1, :cond_c

    .line 12
    return-object p0

    .line 13
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_1a

    .line 20
    const-string v0, "000"

    .line 22
    invoke-static {p0, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 30
    move-result v0

    .line 31
    if-ne v0, v1, :cond_27

    .line 33
    const-string v0, "00"

    .line 35
    invoke-static {p0, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x2

    .line 45
    if-ne v0, v1, :cond_34

    .line 47
    const-string v0, "0"

    .line 49
    invoke-static {p0, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    :cond_34
    return-object p0
.end method

.method public static getShortBE(Ljava/nio/ByteBuffer;II)S
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/Utils;->getIntBE(Ljava/nio/ByteBuffer;II)I

    .line 4
    move-result p0

    .line 5
    int-to-short p0, p0

    .line 6
    return p0
.end method

.method public static getSizeBEInt16(S)[B
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static getSizeBEInt32(I)[B
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static getSizeLEInt32(I)[B
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x8

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x10

    int-to-long v1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    ushr-int/lit8 p0, p0, 0x18

    int-to-long v1, p0

    and-long/2addr v1, v3

    long-to-int p0, v1

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static getString(Ljava/nio/ByteBuffer;IILjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 3
    new-array v0, p2, [B

    .line 4
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 6
    :try_start_d
    new-instance p0, Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 7
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getString([BIILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getUTF8Bytes(Ljava/lang/String;)[B
    .registers 2

    .line 1
    const-string v0, "UTF-8"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static read(Ljava/nio/ByteBuffer;)I
    .registers 1

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 4
    move-result p0

    .line 5
    and-int/lit16 p0, p0, 0xff

    .line 7
    return p0
.end method

.method public static readString(Ljava/io/DataInput;I)Ljava/lang/String;
    .registers 2

    .line 1
    new-array p1, p1, [B

    .line 3
    invoke-interface {p0, p1}, Ljava/io/DataInput;->readFully([B)V

    .line 6
    new-instance p0, Ljava/lang/String;

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    .line 11
    return-object p0
.end method

.method public static readUBEInt16(Ljava/nio/ByteBuffer;)I
    .registers 2

    .line 1
    invoke-static {p0}, Lorg/jaudiotagger/audio/generic/Utils;->readUInt8(Ljava/nio/ByteBuffer;)I

    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x8

    .line 7
    add-int/lit8 v0, v0, 0x0

    .line 9
    invoke-static {p0}, Lorg/jaudiotagger/audio/generic/Utils;->readUInt8(Ljava/nio/ByteBuffer;)I

    .line 12
    move-result p0

    .line 13
    add-int/2addr p0, v0

    .line 14
    return p0
.end method

.method public static readUBEInt24(Ljava/nio/ByteBuffer;)I
    .registers 2

    .line 1
    invoke-static {p0}, Lorg/jaudiotagger/audio/generic/Utils;->readUBEInt16(Ljava/nio/ByteBuffer;)I

    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x10

    .line 7
    add-int/lit8 v0, v0, 0x0

    .line 9
    invoke-static {p0}, Lorg/jaudiotagger/audio/generic/Utils;->readUInt8(Ljava/nio/ByteBuffer;)I

    .line 12
    move-result p0

    .line 13
    add-int/2addr p0, v0

    .line 14
    return p0
.end method

.method public static readUBEInt32(Ljava/nio/ByteBuffer;)I
    .registers 2

    .line 1
    invoke-static {p0}, Lorg/jaudiotagger/audio/generic/Utils;->readUBEInt16(Ljava/nio/ByteBuffer;)I

    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x10

    .line 7
    add-int/lit8 v0, v0, 0x0

    .line 9
    invoke-static {p0}, Lorg/jaudiotagger/audio/generic/Utils;->readUBEInt16(Ljava/nio/ByteBuffer;)I

    .line 12
    move-result p0

    .line 13
    add-int/2addr p0, v0

    .line 14
    return p0
.end method

.method public static readUInt64(Ljava/nio/ByteBuffer;)J
    .registers 5

    .line 1
    invoke-static {p0}, Lorg/jaudiotagger/audio/generic/Utils;->readUBEInt32(Ljava/nio/ByteBuffer;)I

    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x20

    .line 7
    int-to-long v0, v0

    .line 8
    const-wide/16 v2, 0x0

    .line 10
    add-long/2addr v0, v2

    .line 11
    invoke-static {p0}, Lorg/jaudiotagger/audio/generic/Utils;->readUBEInt32(Ljava/nio/ByteBuffer;)I

    .line 14
    move-result p0

    .line 15
    int-to-long v2, p0

    .line 16
    add-long/2addr v0, v2

    .line 17
    return-wide v0
.end method

.method public static readUInt8(Ljava/nio/ByteBuffer;)I
    .registers 1

    .line 1
    invoke-static {p0}, Lorg/jaudiotagger/audio/generic/Utils;->read(Ljava/nio/ByteBuffer;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static readUint16(Ljava/io/DataInput;)I
    .registers 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_14

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-interface {p0, v0, v1, v1}, Ljava/io/DataInput;->readFully([BII)V

    .line 11
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    nop

    .line 21
    :array_14
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static readUint32(Ljava/io/DataInput;)J
    .registers 3

    .line 1
    const/16 v0, 0x8

    .line 3
    new-array v0, v0, [B

    .line 5
    fill-array-data v0, :array_14

    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-interface {p0, v0, v1, v1}, Ljava/io/DataInput;->readFully([BII)V

    .line 12
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    .line 19
    move-result-wide v0

    .line 20
    return-wide v0

    .line 21
    :array_14
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static readUint32AsInt(Ljava/io/DataInput;)I
    .registers 5

    .line 1
    invoke-static {p0}, Lorg/jaudiotagger/audio/generic/Utils;->readUint32(Ljava/io/DataInput;)J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x7fffffff

    .line 8
    cmp-long p0, v0, v2

    .line 10
    if-gtz p0, :cond_d

    .line 12
    long-to-int p0, v0

    .line 13
    return p0

    .line 14
    :cond_d
    new-instance p0, Ljava/io/IOException;

    .line 16
    const-string v0, "uint32 value read overflows int"

    .line 18
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method

.method public static rename(Ljava/io/File;Ljava/io/File;)Z
    .registers 6

    .line 1
    sget-object v0, Lorg/jaudiotagger/audio/generic/Utils;->logger:Ljava/util/logging/Logger;

    .line 3
    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    .line 5
    const-string v2, "Renaming From:"

    .line 7
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v3, " to "

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x0

    .line 42
    if-eqz v0, :cond_49

    .line 44
    sget-object p0, Lorg/jaudiotagger/audio/generic/Utils;->logger:Ljava/util/logging/Logger;

    .line 46
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v3, "Destination File:"

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    const-string p1, " already exists"

    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 73
    return v1

    .line 74
    :cond_49
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 77
    move-result v0

    .line 78
    const/4 v2, 0x1

    .line 79
    if-nez v0, :cond_77

    .line 81
    invoke-static {p0, p1}, Lorg/jaudiotagger/audio/generic/Utils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_76

    .line 87
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_75

    .line 93
    sget-object p1, Lorg/jaudiotagger/audio/generic/Utils;->logger:Ljava/util/logging/Logger;

    .line 95
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v3, "Unable to delete File:"

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p1, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 117
    return v1

    .line 118
    :cond_75
    return v2

    .line 119
    :cond_76
    return v1

    .line 120
    :cond_77
    return v2
.end method
