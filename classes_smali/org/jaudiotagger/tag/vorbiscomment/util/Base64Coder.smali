.class public Lorg/jaudiotagger/tag/vorbiscomment/util/Base64Coder;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# static fields
.field private static final map1:[C

.field private static final map2:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x40

    new-array v1, v0, [C

    sput-object v1, Lorg/jaudiotagger/tag/vorbiscomment/util/Base64Coder;->map1:[C

    const/4 v1, 0x0

    const/16 v2, 0x41

    move v3, v1

    :goto_a
    const/16 v4, 0x5a

    if-gt v2, v4, :cond_19

    sget-object v4, Lorg/jaudiotagger/tag/vorbiscomment/util/Base64Coder;->map1:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_a

    :cond_19
    const/16 v2, 0x61

    :goto_1b
    const/16 v4, 0x7a

    if-gt v2, v4, :cond_2a

    sget-object v4, Lorg/jaudiotagger/tag/vorbiscomment/util/Base64Coder;->map1:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_1b

    :cond_2a
    const/16 v2, 0x30

    :goto_2c
    const/16 v4, 0x39

    if-gt v2, v4, :cond_3b

    sget-object v4, Lorg/jaudiotagger/tag/vorbiscomment/util/Base64Coder;->map1:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v2, v4, v3

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    move v3, v5

    goto :goto_2c

    :cond_3b
    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/util/Base64Coder;->map1:[C

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2b

    aput-char v5, v2, v3

    const/16 v3, 0x2f

    aput-char v3, v2, v4

    const/16 v2, 0x80

    new-array v2, v2, [B

    sput-object v2, Lorg/jaudiotagger/tag/vorbiscomment/util/Base64Coder;->map2:[B

    move v2, v1

    :goto_4e
    sget-object v3, Lorg/jaudiotagger/tag/vorbiscomment/util/Base64Coder;->map2:[B

    array-length v4, v3

    if-ge v2, v4, :cond_59

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_59
    :goto_59
    if-ge v1, v0, :cond_67

    sget-object v2, Lorg/jaudiotagger/tag/vorbiscomment/util/Base64Coder;->map2:[B

    sget-object v3, Lorg/jaudiotagger/tag/vorbiscomment/util/Base64Coder;->map1:[C

    aget-char v3, v3, v1

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    :cond_67
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lorg/jaudiotagger/tag/vorbiscomment/util/Base64Coder;->decode([C)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([C)[B
    .registers 13

    array-length v0, p0

    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_8e

    :goto_5
    if-lez v0, :cond_12

    add-int/lit8 v1, v0, -0x1

    aget-char v1, p0, v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_12

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_12
    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v3, v0, :cond_8d

    add-int/lit8 v5, v3, 0x1

    aget-char v3, p0, v3

    add-int/lit8 v6, v5, 0x1

    aget-char v5, p0, v5

    const/16 v7, 0x41

    if-ge v6, v0, :cond_2d

    add-int/lit8 v8, v6, 0x1

    aget-char v6, p0, v6

    goto :goto_2f

    :cond_2d
    move v8, v6

    move v6, v7

    :goto_2f
    if-ge v8, v0, :cond_36

    add-int/lit8 v7, v8, 0x1

    aget-char v8, p0, v8

    goto :goto_39

    :cond_36
    move v11, v8

    move v8, v7

    move v7, v11

    :goto_39
    const-string v9, "Illegal character in Base64 encoded data."

    const/16 v10, 0x7f

    if-gt v3, v10, :cond_87

    if-gt v5, v10, :cond_87

    if-gt v6, v10, :cond_87

    if-gt v8, v10, :cond_87

    sget-object v10, Lorg/jaudiotagger/tag/vorbiscomment/util/Base64Coder;->map2:[B

    aget-byte v3, v10, v3

    aget-byte v5, v10, v5

    aget-byte v6, v10, v6

    aget-byte v8, v10, v8

    if-ltz v3, :cond_81

    if-ltz v5, :cond_81

    if-ltz v6, :cond_81

    if-ltz v8, :cond_81

    shl-int/lit8 v3, v3, 0x2

    ushr-int/lit8 v9, v5, 0x4

    or-int/2addr v3, v9

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    ushr-int/lit8 v9, v6, 0x2

    or-int/2addr v5, v9

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v8

    add-int/lit8 v8, v4, 0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    if-ge v8, v1, :cond_75

    add-int/lit8 v3, v8, 0x1

    int-to-byte v4, v5

    aput-byte v4, v2, v8

    move v8, v3

    :cond_75
    if-ge v8, v1, :cond_7e

    add-int/lit8 v3, v8, 0x1

    int-to-byte v4, v6

    aput-byte v4, v2, v8

    move v4, v3

    goto :goto_7f

    :cond_7e
    move v4, v8

    :goto_7f
    move v3, v7

    goto :goto_1a

    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8d
    return-object v2

    :cond_8e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-static {p0, v1}, Lorg/jaudiotagger/audio/generic/Utils;->getDefaultBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/jaudiotagger/tag/vorbiscomment/util/Base64Coder;->encode([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static encode([B)[C
    .registers 14

    array-length v0, p0

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v0, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [C

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_12
    if-ge v4, v0, :cond_68

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    if-ge v6, v0, :cond_23

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    goto :goto_25

    :cond_23
    move v7, v6

    move v6, v3

    :goto_25
    if-ge v7, v0, :cond_31

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    move v12, v8

    move v8, v7

    move v7, v12

    goto :goto_32

    :cond_31
    move v8, v3

    :goto_32
    ushr-int/lit8 v9, v4, 0x2

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    ushr-int/lit8 v10, v6, 0x4

    or-int/2addr v4, v10

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x2

    ushr-int/lit8 v10, v8, 0x6

    or-int/2addr v6, v10

    and-int/lit8 v8, v8, 0x3f

    add-int/lit8 v10, v5, 0x1

    sget-object v11, Lorg/jaudiotagger/tag/vorbiscomment/util/Base64Coder;->map1:[C

    aget-char v9, v11, v9

    aput-char v9, v2, v5

    add-int/lit8 v5, v10, 0x1

    aget-char v4, v11, v4

    aput-char v4, v2, v10

    const/16 v4, 0x3d

    if-ge v5, v1, :cond_59

    aget-char v6, v11, v6

    goto :goto_5a

    :cond_59
    move v6, v4

    :goto_5a
    aput-char v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_62

    aget-char v4, v11, v8

    :cond_62
    aput-char v4, v2, v5

    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_12

    :cond_68
    return-object v2
.end method
