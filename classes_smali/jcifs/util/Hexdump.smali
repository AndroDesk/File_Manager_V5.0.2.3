.class public Ljcifs/util/Hexdump;
.super Ljava/lang/Object;
.source "Hexdump.java"


# static fields
.field public static final HEX_DIGITS:[C

.field private static final NL:Ljava/lang/String;

.field private static final NL_LENGTH:I

.field private static final SPACE_CHARS:[C


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
    sput-object v0, Ljcifs/util/Hexdump;->NL:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    move-result v0

    .line 13
    sput v0, Ljcifs/util/Hexdump;->NL_LENGTH:I

    .line 15
    const/16 v0, 0x30

    .line 17
    new-array v0, v0, [C

    .line 19
    fill-array-data v0, :array_22

    .line 22
    sput-object v0, Ljcifs/util/Hexdump;->SPACE_CHARS:[C

    .line 24
    const/16 v0, 0x10

    .line 26
    new-array v0, v0, [C

    .line 28
    fill-array-data v0, :array_56

    .line 31
    sput-object v0, Ljcifs/util/Hexdump;->HEX_DIGITS:[C

    .line 33
    return-void

    .line 34
    nop

    .line 35
    :array_22
    .array-data 2
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
    .end array-data

    :array_56
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hexdump(Ljava/io/PrintStream;[BII)V
    .registers 15

    .line 1
    if-nez p3, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    rem-int/lit8 v0, p3, 0x10

    .line 6
    div-int/lit8 v1, p3, 0x10

    .line 8
    if-nez v0, :cond_a

    .line 10
    goto :goto_c

    .line 11
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 13
    :goto_c
    sget v2, Ljcifs/util/Hexdump;->NL_LENGTH:I

    .line 15
    add-int/lit8 v2, v2, 0x4a

    .line 17
    mul-int/2addr v2, v1

    .line 18
    new-array v1, v2, [C

    .line 20
    const/16 v2, 0x10

    .line 22
    new-array v3, v2, [C

    .line 24
    const/4 v4, 0x0

    .line 25
    move v5, v4

    .line 26
    move v6, v5

    .line 27
    :cond_1a
    const/4 v7, 0x5

    .line 28
    invoke-static {v5, v1, v6, v7}, Ljcifs/util/Hexdump;->toHexChars(I[CII)V

    .line 31
    add-int/2addr v6, v7

    .line 32
    add-int/lit8 v7, v6, 0x1

    .line 34
    const/16 v8, 0x3a

    .line 36
    aput-char v8, v1, v6

    .line 38
    :goto_25
    const/16 v6, 0x20

    .line 40
    if-ne v5, p3, :cond_37

    .line 42
    rsub-int/lit8 v8, v0, 0x10

    .line 44
    sget-object v9, Ljcifs/util/Hexdump;->SPACE_CHARS:[C

    .line 46
    mul-int/lit8 v10, v8, 0x3

    .line 48
    invoke-static {v9, v4, v1, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    add-int/2addr v10, v7

    .line 52
    invoke-static {v9, v4, v3, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    goto :goto_62

    .line 56
    :cond_37
    add-int/lit8 v8, v7, 0x1

    .line 58
    aput-char v6, v1, v7

    .line 60
    add-int v7, p2, v5

    .line 62
    aget-byte v7, p1, v7

    .line 64
    and-int/lit16 v7, v7, 0xff

    .line 66
    const/4 v9, 0x2

    .line 67
    invoke-static {v7, v1, v8, v9}, Ljcifs/util/Hexdump;->toHexChars(I[CII)V

    .line 70
    add-int/2addr v8, v9

    .line 71
    if-ltz v7, :cond_55

    .line 73
    int-to-char v7, v7

    .line 74
    invoke-static {v7}, Ljava/lang/Character;->isISOControl(C)Z

    .line 77
    move-result v9

    .line 78
    if-eqz v9, :cond_50

    .line 80
    goto :goto_55

    .line 81
    :cond_50
    rem-int/lit8 v9, v5, 0x10

    .line 83
    aput-char v7, v3, v9

    .line 85
    goto :goto_5b

    .line 86
    :cond_55
    :goto_55
    rem-int/lit8 v7, v5, 0x10

    .line 88
    const/16 v9, 0x2e

    .line 90
    aput-char v9, v3, v7

    .line 92
    :goto_5b
    add-int/lit8 v5, v5, 0x1

    .line 94
    rem-int/lit8 v7, v5, 0x10

    .line 96
    if-nez v7, :cond_87

    .line 98
    move v10, v8

    .line 99
    :goto_62
    add-int/lit8 v7, v10, 0x1

    .line 101
    aput-char v6, v1, v10

    .line 103
    add-int/lit8 v8, v7, 0x1

    .line 105
    aput-char v6, v1, v7

    .line 107
    add-int/lit8 v6, v8, 0x1

    .line 109
    const/16 v7, 0x7c

    .line 111
    aput-char v7, v1, v8

    .line 113
    invoke-static {v3, v4, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    add-int/2addr v6, v2

    .line 117
    add-int/lit8 v8, v6, 0x1

    .line 119
    aput-char v7, v1, v6

    .line 121
    sget-object v6, Ljcifs/util/Hexdump;->NL:Ljava/lang/String;

    .line 123
    sget v7, Ljcifs/util/Hexdump;->NL_LENGTH:I

    .line 125
    invoke-virtual {v6, v4, v7, v1, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 128
    add-int v6, v8, v7

    .line 130
    if-lt v5, p3, :cond_1a

    .line 132
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println([C)V

    .line 135
    return-void

    .line 136
    :cond_87
    move v7, v8

    .line 137
    goto :goto_25
.end method

.method public static toHexChars(I[CII)V
    .registers 7

    :goto_0
    if-gtz p3, :cond_3

    return-void

    :cond_3
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    .line 1
    array-length v1, p1

    if-ge v0, v1, :cond_12

    .line 2
    sget-object v1, Ljcifs/util/Hexdump;->HEX_DIGITS:[C

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    aput-char v1, p1, v0

    :cond_12
    if-eqz p0, :cond_16

    ushr-int/lit8 p0, p0, 0x4

    :cond_16
    add-int/lit8 p3, p3, -0x1

    goto :goto_0
.end method

.method public static toHexChars(J[CII)V
    .registers 9

    :goto_0
    if-gtz p4, :cond_3

    return-void

    :cond_3
    add-int v0, p3, p4

    add-int/lit8 v0, v0, -0x1

    .line 3
    sget-object v1, Ljcifs/util/Hexdump;->HEX_DIGITS:[C

    const-wide/16 v2, 0xf

    and-long/2addr v2, p0

    long-to-int v2, v2

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_19

    const/4 v0, 0x4

    ushr-long/2addr p0, v0

    :cond_19
    add-int/lit8 p4, p4, -0x1

    goto :goto_0
.end method

.method public static toHexString(II)Ljava/lang/String;
    .registers 4

    .line 1
    new-array v0, p1, [C

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1, p1}, Ljcifs/util/Hexdump;->toHexChars(I[CII)V

    .line 3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static toHexString(JI)Ljava/lang/String;
    .registers 5

    .line 4
    new-array v0, p2, [C

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, p1, v0, v1, p2}, Ljcifs/util/Hexdump;->toHexChars(J[CII)V

    .line 6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .registers 10

    .line 7
    new-array p1, p2, [C

    .line 8
    rem-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_9

    div-int/lit8 v0, p2, 0x2

    goto :goto_d

    :cond_9
    div-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_d
    const/4 v1, 0x0

    move v2, v1

    :goto_f
    if-lt v1, v0, :cond_12

    goto :goto_22

    :cond_12
    add-int/lit8 v3, v2, 0x1

    .line 9
    sget-object v4, Ljcifs/util/Hexdump;->HEX_DIGITS:[C

    aget-byte v5, p0, v1

    shr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v4, v6

    aput-char v6, p1, v2

    if-ne v3, p2, :cond_28

    .line 10
    :goto_22
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_28
    add-int/lit8 v2, v3, 0x1

    and-int/lit8 v5, v5, 0xf

    .line 11
    aget-char v4, v4, v5

    aput-char v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method
