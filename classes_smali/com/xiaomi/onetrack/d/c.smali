.class public Lcom/xiaomi/onetrack/d/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "Base64Util"

.field private static b:[C

.field private static c:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const/16 v0, 0x40

    .line 3
    new-array v0, v0, [C

    .line 5
    fill-array-data v0, :array_14

    .line 8
    sput-object v0, Lcom/xiaomi/onetrack/d/c;->b:[C

    .line 10
    const/16 v0, 0x80

    .line 12
    new-array v0, v0, [B

    .line 14
    fill-array-data v0, :array_58

    .line 17
    sput-object v0, Lcom/xiaomi/onetrack/d/c;->c:[B

    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_14
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
        0x2bs
        0x2fs
    .end array-data

    :array_58
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_98

    add-int/lit8 v3, v2, 0x1

    .line 3
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v3, v1, :cond_2b

    .line 4
    sget-object p0, Lcom/xiaomi/onetrack/d/c;->b:[C

    ushr-int/lit8 v1, v2, 0x2

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5
    sget-object p0, Lcom/xiaomi/onetrack/d/c;->b:[C

    and-int/lit8 v1, v2, 0x3

    shl-int/lit8 v1, v1, 0x4

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p0, "=="

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_98

    :cond_2b
    add-int/lit8 v4, v3, 0x1

    .line 7
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-ne v4, v1, :cond_5d

    .line 8
    sget-object p0, Lcom/xiaomi/onetrack/d/c;->b:[C

    ushr-int/lit8 v1, v2, 0x2

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 9
    sget-object p0, Lcom/xiaomi/onetrack/d/c;->b:[C

    and-int/lit8 v1, v2, 0x3

    shl-int/lit8 v1, v1, 0x4

    and-int/lit16 v2, v3, 0xf0

    ushr-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 10
    sget-object p0, Lcom/xiaomi/onetrack/d/c;->b:[C

    and-int/lit8 v1, v3, 0xf

    shl-int/lit8 v1, v1, 0x2

    aget-char p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string p0, "="

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_98

    :cond_5d
    add-int/lit8 v5, v4, 0x1

    .line 12
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 13
    sget-object v6, Lcom/xiaomi/onetrack/d/c;->b:[C

    ushr-int/lit8 v7, v2, 0x2

    aget-char v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 14
    sget-object v6, Lcom/xiaomi/onetrack/d/c;->b:[C

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v7, v3, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    or-int/2addr v2, v7

    aget-char v2, v6, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 15
    sget-object v2, Lcom/xiaomi/onetrack/d/c;->b:[C

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    and-int/lit16 v6, v4, 0xc0

    ushr-int/lit8 v6, v6, 0x6

    or-int/2addr v3, v6

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 16
    sget-object v2, Lcom/xiaomi/onetrack/d/c;->b:[C

    and-int/lit8 v3, v4, 0x3f

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v5

    goto/16 :goto_7

    .line 17
    :cond_98
    :goto_98
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()[B
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 20
    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 1
        0x54t
        0x7bt
        0x64t
        0x65t
        0x76t
        0x21t
        0x50t
        0x64t
        0x65t
        0x74t
        0x74t
        0x25t
        0x5et
        0x34t
        0x4dt
        0x49t
    .end array-data
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 3

    .line 18
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/c;->b(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    const-string v0, "Base64Util"

    .line 19
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "decode e"

    invoke-static {v0, v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method private static b(Ljava/lang/String;)[B
    .registers 10

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    const-string v1, "US-ASCII"

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 11
    move-result-object p0

    .line 12
    array-length v1, p0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_d
    const-string v3, "iso8859-1"

    .line 16
    if-ge v2, v1, :cond_97

    .line 18
    :goto_11
    sget-object v4, Lcom/xiaomi/onetrack/d/c;->c:[B

    .line 20
    add-int/lit8 v5, v2, 0x1

    .line 22
    aget-byte v2, p0, v2

    .line 24
    aget-byte v2, v4, v2

    .line 26
    const/4 v4, -0x1

    .line 27
    if-ge v5, v1, :cond_21

    .line 29
    if-eq v2, v4, :cond_1f

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    move v2, v5

    .line 33
    goto :goto_11

    .line 34
    :cond_21
    :goto_21
    if-ne v2, v4, :cond_25

    .line 36
    goto/16 :goto_97

    .line 38
    :cond_25
    :goto_25
    sget-object v6, Lcom/xiaomi/onetrack/d/c;->c:[B

    .line 40
    add-int/lit8 v7, v5, 0x1

    .line 42
    aget-byte v5, p0, v5

    .line 44
    aget-byte v5, v6, v5

    .line 46
    if-ge v7, v1, :cond_34

    .line 48
    if-eq v5, v4, :cond_32

    .line 50
    goto :goto_34

    .line 51
    :cond_32
    move v5, v7

    .line 52
    goto :goto_25

    .line 53
    :cond_34
    :goto_34
    if-ne v5, v4, :cond_37

    .line 55
    goto :goto_97

    .line 56
    :cond_37
    shl-int/lit8 v2, v2, 0x2

    .line 58
    and-int/lit8 v6, v5, 0x30

    .line 60
    ushr-int/lit8 v6, v6, 0x4

    .line 62
    or-int/2addr v2, v6

    .line 63
    int-to-char v2, v2

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    :goto_42
    add-int/lit8 v2, v7, 0x1

    .line 69
    aget-byte v6, p0, v7

    .line 71
    const/16 v7, 0x3d

    .line 73
    if-ne v6, v7, :cond_53

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :cond_53
    sget-object v8, Lcom/xiaomi/onetrack/d/c;->c:[B

    .line 86
    aget-byte v6, v8, v6

    .line 88
    if-ge v2, v1, :cond_5e

    .line 90
    if-eq v6, v4, :cond_5c

    .line 92
    goto :goto_5e

    .line 93
    :cond_5c
    move v7, v2

    .line 94
    goto :goto_42

    .line 95
    :cond_5e
    :goto_5e
    if-ne v6, v4, :cond_61

    .line 97
    goto :goto_97

    .line 98
    :cond_61
    and-int/lit8 v5, v5, 0xf

    .line 100
    shl-int/lit8 v5, v5, 0x4

    .line 102
    and-int/lit8 v8, v6, 0x3c

    .line 104
    ushr-int/lit8 v8, v8, 0x2

    .line 106
    or-int/2addr v5, v8

    .line 107
    int-to-char v5, v5

    .line 108
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    :goto_6e
    add-int/lit8 v5, v2, 0x1

    .line 113
    aget-byte v2, p0, v2

    .line 115
    if-ne v2, v7, :cond_7d

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 124
    move-result-object p0

    .line 125
    return-object p0

    .line 126
    :cond_7d
    sget-object v8, Lcom/xiaomi/onetrack/d/c;->c:[B

    .line 128
    aget-byte v2, v8, v2

    .line 130
    if-ge v5, v1, :cond_88

    .line 132
    if-eq v2, v4, :cond_86

    .line 134
    goto :goto_88

    .line 135
    :cond_86
    move v2, v5

    .line 136
    goto :goto_6e

    .line 137
    :cond_88
    :goto_88
    if-ne v2, v4, :cond_8b

    .line 139
    goto :goto_97

    .line 140
    :cond_8b
    and-int/lit8 v3, v6, 0x3

    .line 142
    shl-int/lit8 v3, v3, 0x6

    .line 144
    or-int/2addr v2, v3

    .line 145
    int-to-char v2, v2

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 149
    move v2, v5

    .line 150
    goto/16 :goto_d

    .line 152
    :cond_97
    :goto_97
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 159
    move-result-object p0

    .line 160
    return-object p0
.end method
