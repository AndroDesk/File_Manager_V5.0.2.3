.class public final Li4/a;
.super Ljava/lang/Object;
.source "AESEngine.java"


# static fields
.field public static final g:[B

.field public static final h:[I

.field public static final i:[I


# instance fields
.field public a:I

.field public b:[[I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const/16 v0, 0x100

    .line 3
    new-array v1, v0, [B

    .line 5
    fill-array-data v1, :array_1a

    .line 8
    sput-object v1, Li4/a;->g:[B

    .line 10
    const/16 v1, 0x1e

    .line 12
    new-array v1, v1, [I

    .line 14
    fill-array-data v1, :array_9e

    .line 17
    sput-object v1, Li4/a;->h:[I

    .line 19
    new-array v0, v0, [I

    .line 21
    fill-array-data v0, :array_de

    .line 24
    sput-object v0, Li4/a;->i:[I

    .line 26
    return-void

    .line 27
    :array_1a
    .array-data 1
        0x63t
        0x7ct
        0x77t
        0x7bt
        -0xet
        0x6bt
        0x6ft
        -0x3bt
        0x30t
        0x1t
        0x67t
        0x2bt
        -0x2t
        -0x29t
        -0x55t
        0x76t
        -0x36t
        -0x7et
        -0x37t
        0x7dt
        -0x6t
        0x59t
        0x47t
        -0x10t
        -0x53t
        -0x2ct
        -0x5et
        -0x51t
        -0x64t
        -0x5ct
        0x72t
        -0x40t
        -0x49t
        -0x3t
        -0x6dt
        0x26t
        0x36t
        0x3ft
        -0x9t
        -0x34t
        0x34t
        -0x5bt
        -0x1bt
        -0xft
        0x71t
        -0x28t
        0x31t
        0x15t
        0x4t
        -0x39t
        0x23t
        -0x3dt
        0x18t
        -0x6at
        0x5t
        -0x66t
        0x7t
        0x12t
        -0x80t
        -0x1et
        -0x15t
        0x27t
        -0x4et
        0x75t
        0x9t
        -0x7dt
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        -0x60t
        0x52t
        0x3bt
        -0x2at
        -0x4dt
        0x29t
        -0x1dt
        0x2ft
        -0x7ct
        0x53t
        -0x2ft
        0x0t
        -0x13t
        0x20t
        -0x4t
        -0x4ft
        0x5bt
        0x6at
        -0x35t
        -0x42t
        0x39t
        0x4at
        0x4ct
        0x58t
        -0x31t
        -0x30t
        -0x11t
        -0x56t
        -0x5t
        0x43t
        0x4dt
        0x33t
        -0x7bt
        0x45t
        -0x7t
        0x2t
        0x7ft
        0x50t
        0x3ct
        -0x61t
        -0x58t
        0x51t
        -0x5dt
        0x40t
        -0x71t
        -0x6et
        -0x63t
        0x38t
        -0xbt
        -0x44t
        -0x4at
        -0x26t
        0x21t
        0x10t
        -0x1t
        -0xdt
        -0x2et
        -0x33t
        0xct
        0x13t
        -0x14t
        0x5ft
        -0x69t
        0x44t
        0x17t
        -0x3ct
        -0x59t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
        0x60t
        -0x7ft
        0x4ft
        -0x24t
        0x22t
        0x2at
        -0x70t
        -0x78t
        0x46t
        -0x12t
        -0x48t
        0x14t
        -0x22t
        0x5et
        0xbt
        -0x25t
        -0x20t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        -0x3et
        -0x2dt
        -0x54t
        0x62t
        -0x6ft
        -0x6bt
        -0x1ct
        0x79t
        -0x19t
        -0x38t
        0x37t
        0x6dt
        -0x73t
        -0x2bt
        0x4et
        -0x57t
        0x6ct
        0x56t
        -0xct
        -0x16t
        0x65t
        0x7at
        -0x52t
        0x8t
        -0x46t
        0x78t
        0x25t
        0x2et
        0x1ct
        -0x5at
        -0x4ct
        -0x3at
        -0x18t
        -0x23t
        0x74t
        0x1ft
        0x4bt
        -0x43t
        -0x75t
        -0x76t
        0x70t
        0x3et
        -0x4bt
        0x66t
        0x48t
        0x3t
        -0xat
        0xet
        0x61t
        0x35t
        0x57t
        -0x47t
        -0x7at
        -0x3ft
        0x1dt
        -0x62t
        -0x1ft
        -0x8t
        -0x68t
        0x11t
        0x69t
        -0x27t
        -0x72t
        -0x6ct
        -0x65t
        0x1et
        -0x79t
        -0x17t
        -0x32t
        0x55t
        0x28t
        -0x21t
        -0x74t
        -0x5ft
        -0x77t
        0xdt
        -0x41t
        -0x1at
        0x42t
        0x68t
        0x41t
        -0x67t
        0x2dt
        0xft
        -0x50t
        0x54t
        -0x45t
        0x16t
    .end array-data

    :array_9e
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
        0xb3
        0x7d
        0xfa
        0xef
        0xc5
        0x91
    .end array-data

    :array_de
    .array-data 4
        -0x5a9c9c3a
        -0x7b838308
        -0x66888812
        -0x7284840a
        0xdf2f2ff
        -0x4294942a
        -0x4e909022
        0x54c5c591
        0x50303060
        0x3010102
        -0x56989832
        0x7d2b2b56
        0x19fefee7
        0x62d7d7b5
        -0x195454b3
        -0x65898914
        0x45caca8f
        -0x627d7de1
        0x40c9c989
        -0x78828206
        0x15fafaef
        -0x14a6a64e
        -0x36b8b872
        0xbf0f0fb
        -0x135252bf
        0x67d4d4b3
        -0x25d5da1
        -0x155050bb
        -0x406363dd
        -0x85b5bad
        -0x698d8d1c
        0x5bc0c09b
        -0x3d48488b
        0x1cfdfde1
        -0x516c6cc3
        0x6a26264c
        0x5a36366c
        0x413f3f7e
        0x2f7f7f5
        0x4fcccc83
        0x5c343468
        -0xb5a5aaf
        0x34e5e5d1
        0x8f1f1f9
        -0x6c8e8e1e
        0x73d8d8ab
        0x53313162
        0x3f15152a
        0xc040408
        0x52c7c795
        0x65232346
        0x5ec3c39d
        0x28181830
        -0x5e6969c9
        0xf05050a
        -0x4a6565d1
        0x907070e
        0x36121224
        -0x647f7fe5
        0x3de2e2df
        0x26ebebcd
        0x6927274e
        -0x324d4d81
        -0x608a8a16
        0x1b090912
        -0x617c7ce3
        0x742c2c58
        0x2e1a1a34
        0x2d1b1b36
        -0x4d919124
        -0x11a5a54c
        -0x45f5fa5
        -0x9adad5c
        0x4d3b3b76  # 1.96327264E8f
        0x61d6d6b7
        -0x314c4c83
        0x7b292952
        0x3ee3e3dd
        0x712f2f5e
        -0x687b7bed
        -0xaacac5a
        0x68d1d1b9
        0x0
        0x2cededc1
        0x60202040
        0x1ffcfce3
        -0x374e4e87
        -0x12a4a44a
        -0x4195952c
        0x46cbcb8d
        -0x26414199
        0x4b393972  # 1.2138866E7f
        -0x21b5b56c
        -0x2bb3b368
        -0x17a7a750
        0x4acfcf85  # 6809538.5f
        0x6bd0d0bb
        0x2aefefc5
        -0x1a5555b1
        0x16fbfbed
        -0x3abcbc7a
        -0x28b2b266
        0x55333366
        -0x6b7a7aef
        -0x30baba76
        0x10f9f9e9
        0x6020204
        -0x7e808002
        -0xfafaf60
        0x443c3c78
        -0x456060db
        -0x1c5757b5
        -0xcaeae5e
        -0x15c5ca3
        -0x3fbfbf80
        -0x757070fb
        -0x526d6dc1
        -0x436262df
        0x48383870  # 188641.75f
        0x4f5f5f1
        -0x2043439d
        -0x3e494989
        0x75dadaaf
        0x63212142
        0x30101020
        0x1affffe5
        0xef3f3fd
        0x6dd2d2bf
        0x4ccdcd81  # 1.07899912E8f
        0x140c0c18
        0x35131326
        0x2fececc3
        -0x1ea0a042
        -0x5d6868cb
        -0x33bbbb78  # -5.14504E7f
        0x3917172e
        0x57c4c493
        -0xd5858ab
        -0x7d818104
        0x473d3d7a
        -0x539b9b38
        -0x18a2a246
        0x2b191932
        -0x6a8c8c1a
        -0x5f9f9f40
        -0x677e7ee7
        -0x2eb0b062
        0x7fdcdca3
        0x66222244
        0x7e2a2a54
        -0x546f6fc5
        -0x7c7777f5
        -0x35b9b974  # -3248547.0f
        0x29eeeec7
        -0x2c474795
        0x3c141428
        0x79dedea7
        -0x1da1a144
        0x1d0b0b16
        0x76dbdbad
        0x3be0e0db
        0x56323264
        0x4e3a3a74
        0x1e0a0a14
        -0x24b6b66e
        0xa06060c
        0x6c242448
        -0x1ba3a348
        0x5dc2c29f
        0x6ed3d3bd
        -0x105353bd
        -0x599d9d3c
        -0x576e6ec7
        -0x5b6a6acf
        0x37e4e4d3
        -0x7486860e
        0x32e7e7d5
        0x43c8c88b
        0x5937376e
        -0x48929226
        -0x737272ff
        0x64d5d5b1
        -0x2db1b164
        -0x1f5656b7
        -0x4b939328
        -0x5a9a954
        0x7f4f4f3
        0x25eaeacf
        -0x509a9a36
        -0x7185850c
        -0x165151b9
        0x18080810
        -0x2a454591
        -0x77878710
        0x6f25254a
        0x722e2e5c
        0x241c1c38
        -0xe5959a9
        -0x384b4b8d
        0x51c6c697
        0x23e8e8cb
        0x7cdddda1
        -0x638b8b18
        0x211f1f3e
        -0x22b4b46a
        -0x2342429f
        -0x797474f3
        -0x7a7575f1
        -0x6f8f8f20
        0x423e3e7c
        -0x3b4a4a8f
        -0x55999934
        -0x27b7b770
        0x5030306
        0x1f6f6f7
        0x120e0e1c
        -0x5c9e9e3e
        0x5f35356a
        -0x6a8a852
        -0x2f464697
        -0x6e7979e9
        0x58c1c199
        0x271d1d3a
        -0x466161d9
        0x38e1e1d9
        0x13f8f8eb
        -0x4c6767d5
        0x33111122
        -0x4496962e
        0x70d9d9a9
        -0x767171f9
        -0x586b6bcd
        -0x496464d3
        0x221e1e3c
        -0x6d7878eb
        0x20e9e9c9
        0x49cece87
        -0xaaaa56
        0x78282850
        0x7adfdfa5
        -0x707373fd
        -0x75e5ea7
        -0x7f7676f7
        0x170d0d1a
        -0x2540409b
        0x31e6e6d7
        -0x39bdbd7c
        -0x47979730
        -0x3cbebe7e
        -0x4f6666d7
        0x772d2d5a
        0x110f0f1e
        -0x344f4f85  # -2.315903E7f
        -0x3abab58
        -0x29444493
        0x3a16162c
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 15

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Li4/a;->b:[[I

    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x4

    .line 9
    div-int/2addr v0, v1

    .line 10
    const/4 v2, 0x6

    .line 11
    const/16 v3, 0x8

    .line 13
    if-eq v0, v1, :cond_12

    .line 15
    if-eq v0, v2, :cond_12

    .line 17
    if-ne v0, v3, :cond_a1

    .line 19
    :cond_12
    mul-int/lit8 v4, v0, 0x4

    .line 21
    array-length v5, p1

    .line 22
    if-ne v4, v5, :cond_a1

    .line 24
    add-int/lit8 v4, v0, 0x6

    .line 26
    iput v4, p0, Li4/a;->a:I

    .line 28
    const/4 v5, 0x1

    .line 29
    add-int/2addr v4, v5

    .line 30
    const/4 v6, 0x2

    .line 31
    new-array v7, v6, [I

    .line 33
    aput v1, v7, v5

    .line 35
    const/4 v8, 0x0

    .line 36
    aput v4, v7, v8

    .line 38
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 40
    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    check-cast v4, [[I

    .line 46
    move v7, v8

    .line 47
    :goto_2e
    array-length v9, p1

    .line 48
    if-ge v8, v9, :cond_59

    .line 50
    shr-int/lit8 v9, v7, 0x2

    .line 52
    aget-object v9, v4, v9

    .line 54
    and-int/lit8 v10, v7, 0x3

    .line 56
    aget-byte v11, p1, v8

    .line 58
    and-int/lit16 v11, v11, 0xff

    .line 60
    add-int/lit8 v12, v8, 0x1

    .line 62
    aget-byte v12, p1, v12

    .line 64
    and-int/lit16 v12, v12, 0xff

    .line 66
    shl-int/2addr v12, v3

    .line 67
    or-int/2addr v11, v12

    .line 68
    add-int/lit8 v12, v8, 0x2

    .line 70
    aget-byte v12, p1, v12

    .line 72
    and-int/lit16 v12, v12, 0xff

    .line 74
    shl-int/lit8 v12, v12, 0x10

    .line 76
    or-int/2addr v11, v12

    .line 77
    add-int/lit8 v12, v8, 0x3

    .line 79
    aget-byte v12, p1, v12

    .line 81
    shl-int/lit8 v12, v12, 0x18

    .line 83
    or-int/2addr v11, v12

    .line 84
    aput v11, v9, v10

    .line 86
    add-int/lit8 v8, v8, 0x4

    .line 88
    add-int/2addr v7, v5

    .line 89
    goto :goto_2e

    .line 90
    :cond_59
    iget p1, p0, Li4/a;->a:I

    .line 92
    add-int/2addr p1, v5

    .line 93
    shl-int/2addr p1, v6

    .line 94
    move v3, v0

    .line 95
    :goto_5e
    if-ge v3, p1, :cond_9e

    .line 97
    add-int/lit8 v6, v3, -0x1

    .line 99
    shr-int/lit8 v7, v6, 0x2

    .line 101
    aget-object v7, v4, v7

    .line 103
    and-int/lit8 v6, v6, 0x3

    .line 105
    aget v6, v7, v6

    .line 107
    rem-int v7, v3, v0

    .line 109
    if-nez v7, :cond_80

    .line 111
    ushr-int/lit8 v7, v6, 0x8

    .line 113
    shl-int/lit8 v6, v6, -0x8

    .line 115
    or-int/2addr v6, v7

    .line 116
    invoke-static {v6}, Li4/a;->b(I)I

    .line 119
    move-result v6

    .line 120
    sget-object v7, Li4/a;->h:[I

    .line 122
    div-int v8, v3, v0

    .line 124
    sub-int/2addr v8, v5

    .line 125
    aget v7, v7, v8

    .line 127
    xor-int/2addr v6, v7

    .line 128
    goto :goto_88

    .line 129
    :cond_80
    if-le v0, v2, :cond_88

    .line 131
    if-ne v7, v1, :cond_88

    .line 133
    invoke-static {v6}, Li4/a;->b(I)I

    .line 136
    move-result v6

    .line 137
    :cond_88
    :goto_88
    shr-int/lit8 v7, v3, 0x2

    .line 139
    aget-object v7, v4, v7

    .line 141
    and-int/lit8 v8, v3, 0x3

    .line 143
    sub-int v9, v3, v0

    .line 145
    shr-int/lit8 v10, v9, 0x2

    .line 147
    aget-object v10, v4, v10

    .line 149
    and-int/lit8 v9, v9, 0x3

    .line 151
    aget v9, v10, v9

    .line 153
    xor-int/2addr v6, v9

    .line 154
    aput v6, v7, v8

    .line 156
    add-int/lit8 v3, v3, 0x1

    .line 158
    goto :goto_5e

    .line 159
    :cond_9e
    iput-object v4, p0, Li4/a;->b:[[I

    .line 161
    return-void

    .line 162
    :cond_a1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    .line 164
    const-string v0, "invalid key length (not 128/192/256)"

    .line 166
    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 169
    throw p1
.end method

.method public static b(I)I
    .registers 4

    .line 1
    sget-object v0, Li4/a;->g:[B

    .line 3
    and-int/lit16 v1, p0, 0xff

    .line 5
    aget-byte v1, v0, v1

    .line 7
    and-int/lit16 v1, v1, 0xff

    .line 9
    shr-int/lit8 v2, p0, 0x8

    .line 11
    and-int/lit16 v2, v2, 0xff

    .line 13
    aget-byte v2, v0, v2

    .line 15
    and-int/lit16 v2, v2, 0xff

    .line 17
    shl-int/lit8 v2, v2, 0x8

    .line 19
    or-int/2addr v1, v2

    .line 20
    shr-int/lit8 v2, p0, 0x10

    .line 22
    and-int/lit16 v2, v2, 0xff

    .line 24
    aget-byte v2, v0, v2

    .line 26
    and-int/lit16 v2, v2, 0xff

    .line 28
    shl-int/lit8 v2, v2, 0x10

    .line 30
    or-int/2addr v1, v2

    .line 31
    shr-int/lit8 p0, p0, 0x18

    .line 33
    and-int/lit16 p0, p0, 0xff

    .line 35
    aget-byte p0, v0, p0

    .line 37
    shl-int/lit8 p0, p0, 0x18

    .line 39
    or-int/2addr p0, v1

    .line 40
    return p0
.end method


# virtual methods
.method public final a([B[B)V
    .registers 31

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    iget-object v3, v0, Li4/a;->b:[[I

    .line 9
    if-eqz v3, :cond_3fc

    .line 11
    array-length v4, v1

    .line 12
    const/16 v5, 0x10

    .line 14
    if-gt v5, v4, :cond_3f4

    .line 16
    array-length v4, v2

    .line 17
    if-gt v5, v4, :cond_3ec

    .line 19
    const/4 v4, 0x0

    .line 20
    aget-byte v6, v1, v4

    .line 22
    and-int/lit16 v6, v6, 0xff

    .line 24
    const/4 v7, 0x1

    .line 25
    aget-byte v8, v1, v7

    .line 27
    and-int/lit16 v8, v8, 0xff

    .line 29
    const/16 v9, 0x8

    .line 31
    shl-int/2addr v8, v9

    .line 32
    or-int/2addr v6, v8

    .line 33
    const/4 v8, 0x2

    .line 34
    aget-byte v10, v1, v8

    .line 36
    and-int/lit16 v10, v10, 0xff

    .line 38
    shl-int/2addr v10, v5

    .line 39
    or-int/2addr v6, v10

    .line 40
    const/4 v10, 0x3

    .line 41
    aget-byte v11, v1, v10

    .line 43
    shl-int/lit8 v11, v11, 0x18

    .line 45
    or-int/2addr v6, v11

    .line 46
    const/4 v11, 0x4

    .line 47
    aget-byte v12, v1, v11

    .line 49
    and-int/lit16 v12, v12, 0xff

    .line 51
    const/4 v13, 0x5

    .line 52
    aget-byte v14, v1, v13

    .line 54
    and-int/lit16 v14, v14, 0xff

    .line 56
    shl-int/2addr v14, v9

    .line 57
    or-int/2addr v12, v14

    .line 58
    const/4 v14, 0x6

    .line 59
    aget-byte v15, v1, v14

    .line 61
    and-int/lit16 v15, v15, 0xff

    .line 63
    shl-int/2addr v15, v5

    .line 64
    or-int/2addr v12, v15

    .line 65
    const/4 v15, 0x7

    .line 66
    aget-byte v16, v1, v15

    .line 68
    shl-int/lit8 v16, v16, 0x18

    .line 70
    or-int v12, v12, v16

    .line 72
    aget-byte v15, v1, v9

    .line 74
    and-int/lit16 v15, v15, 0xff

    .line 76
    const/16 v17, 0xa

    .line 78
    const/16 v18, 0x9

    .line 80
    aget-byte v14, v1, v18

    .line 82
    and-int/lit16 v14, v14, 0xff

    .line 84
    shl-int/2addr v14, v9

    .line 85
    or-int/2addr v14, v15

    .line 86
    aget-byte v15, v1, v17

    .line 88
    and-int/lit16 v15, v15, 0xff

    .line 90
    shl-int/2addr v15, v5

    .line 91
    or-int/2addr v14, v15

    .line 92
    const/16 v15, 0xb

    .line 94
    aget-byte v19, v1, v15

    .line 96
    shl-int/lit8 v19, v19, 0x18

    .line 98
    or-int v14, v14, v19

    .line 100
    const/16 v19, 0xd

    .line 102
    const/16 v20, 0xc

    .line 104
    aget-byte v15, v1, v20

    .line 106
    and-int/lit16 v15, v15, 0xff

    .line 108
    const/16 v21, 0xe

    .line 110
    aget-byte v13, v1, v19

    .line 112
    and-int/lit16 v13, v13, 0xff

    .line 114
    shl-int/2addr v13, v9

    .line 115
    or-int/2addr v13, v15

    .line 116
    aget-byte v15, v1, v21

    .line 118
    and-int/lit16 v15, v15, 0xff

    .line 120
    shl-int/2addr v15, v5

    .line 121
    or-int/2addr v13, v15

    .line 122
    const/16 v15, 0xf

    .line 124
    aget-byte v1, v1, v15

    .line 126
    shl-int/lit8 v1, v1, 0x18

    .line 128
    or-int/2addr v1, v13

    .line 129
    aget-object v13, v3, v4

    .line 131
    aget v22, v13, v4

    .line 133
    xor-int v6, v6, v22

    .line 135
    iput v6, v0, Li4/a;->c:I

    .line 137
    aget v6, v13, v7

    .line 139
    xor-int/2addr v6, v12

    .line 140
    iput v6, v0, Li4/a;->d:I

    .line 142
    aget v6, v13, v8

    .line 144
    xor-int/2addr v6, v14

    .line 145
    iput v6, v0, Li4/a;->e:I

    .line 147
    aget v6, v13, v10

    .line 149
    xor-int/2addr v1, v6

    .line 150
    iput v1, v0, Li4/a;->f:I

    .line 152
    move v1, v7

    .line 153
    :goto_98
    iget v6, v0, Li4/a;->a:I

    .line 155
    sub-int/2addr v6, v7

    .line 156
    if-ge v1, v6, :cond_228

    .line 158
    sget-object v6, Li4/a;->i:[I

    .line 160
    iget v12, v0, Li4/a;->c:I

    .line 162
    and-int/lit16 v13, v12, 0xff

    .line 164
    aget v13, v6, v13

    .line 166
    iget v14, v0, Li4/a;->d:I

    .line 168
    shr-int/lit8 v15, v14, 0x8

    .line 170
    and-int/lit16 v15, v15, 0xff

    .line 172
    aget v15, v6, v15

    .line 174
    ushr-int/lit8 v23, v15, 0x18

    .line 176
    shl-int/lit8 v15, v15, -0x18

    .line 178
    or-int v15, v15, v23

    .line 180
    xor-int/2addr v13, v15

    .line 181
    iget v15, v0, Li4/a;->e:I

    .line 183
    shr-int/lit8 v11, v15, 0x10

    .line 185
    and-int/lit16 v11, v11, 0xff

    .line 187
    aget v11, v6, v11

    .line 189
    ushr-int/lit8 v24, v11, 0x10

    .line 191
    shl-int/lit8 v11, v11, -0x10

    .line 193
    or-int v11, v11, v24

    .line 195
    xor-int/2addr v11, v13

    .line 196
    iget v13, v0, Li4/a;->f:I

    .line 198
    shr-int/lit8 v10, v13, 0x18

    .line 200
    and-int/lit16 v10, v10, 0xff

    .line 202
    aget v10, v6, v10

    .line 204
    ushr-int/lit8 v25, v10, 0x8

    .line 206
    shl-int/lit8 v10, v10, -0x8

    .line 208
    or-int v10, v10, v25

    .line 210
    xor-int/2addr v10, v11

    .line 211
    aget-object v11, v3, v1

    .line 213
    aget v25, v11, v4

    .line 215
    xor-int v10, v10, v25

    .line 217
    and-int/lit16 v4, v14, 0xff

    .line 219
    aget v4, v6, v4

    .line 221
    shr-int/lit8 v5, v15, 0x8

    .line 223
    and-int/lit16 v5, v5, 0xff

    .line 225
    aget v5, v6, v5

    .line 227
    ushr-int/lit8 v26, v5, 0x18

    .line 229
    shl-int/lit8 v5, v5, -0x18

    .line 231
    or-int v5, v5, v26

    .line 233
    xor-int/2addr v4, v5

    .line 234
    shr-int/lit8 v5, v13, 0x10

    .line 236
    and-int/lit16 v5, v5, 0xff

    .line 238
    aget v5, v6, v5

    .line 240
    ushr-int/lit8 v26, v5, 0x10

    .line 242
    shl-int/lit8 v5, v5, -0x10

    .line 244
    or-int v5, v5, v26

    .line 246
    xor-int/2addr v4, v5

    .line 247
    shr-int/lit8 v5, v12, 0x18

    .line 249
    and-int/lit16 v5, v5, 0xff

    .line 251
    aget v5, v6, v5

    .line 253
    ushr-int/lit8 v26, v5, 0x8

    .line 255
    shl-int/lit8 v5, v5, -0x8

    .line 257
    or-int v5, v5, v26

    .line 259
    xor-int/2addr v4, v5

    .line 260
    aget v5, v11, v7

    .line 262
    xor-int/2addr v4, v5

    .line 263
    and-int/lit16 v5, v15, 0xff

    .line 265
    aget v5, v6, v5

    .line 267
    shr-int/lit8 v7, v13, 0x8

    .line 269
    and-int/lit16 v7, v7, 0xff

    .line 271
    aget v7, v6, v7

    .line 273
    ushr-int/lit8 v27, v7, 0x18

    .line 275
    shl-int/lit8 v7, v7, -0x18

    .line 277
    or-int v7, v7, v27

    .line 279
    xor-int/2addr v5, v7

    .line 280
    shr-int/lit8 v7, v12, 0x10

    .line 282
    and-int/lit16 v7, v7, 0xff

    .line 284
    aget v7, v6, v7

    .line 286
    ushr-int/lit8 v27, v7, 0x10

    .line 288
    shl-int/lit8 v7, v7, -0x10

    .line 290
    or-int v7, v7, v27

    .line 292
    xor-int/2addr v5, v7

    .line 293
    shr-int/lit8 v7, v14, 0x18

    .line 295
    and-int/lit16 v7, v7, 0xff

    .line 297
    aget v7, v6, v7

    .line 299
    ushr-int/lit8 v27, v7, 0x8

    .line 301
    shl-int/lit8 v7, v7, -0x8

    .line 303
    or-int v7, v7, v27

    .line 305
    xor-int/2addr v5, v7

    .line 306
    aget v7, v11, v8

    .line 308
    xor-int/2addr v5, v7

    .line 309
    and-int/lit16 v7, v13, 0xff

    .line 311
    aget v7, v6, v7

    .line 313
    shr-int/2addr v12, v9

    .line 314
    and-int/lit16 v12, v12, 0xff

    .line 316
    aget v12, v6, v12

    .line 318
    ushr-int/lit8 v13, v12, 0x18

    .line 320
    shl-int/lit8 v12, v12, -0x18

    .line 322
    or-int/2addr v12, v13

    .line 323
    xor-int/2addr v7, v12

    .line 324
    const/16 v12, 0x10

    .line 326
    shr-int/lit8 v13, v14, 0x10

    .line 328
    and-int/lit16 v12, v13, 0xff

    .line 330
    aget v12, v6, v12

    .line 332
    ushr-int/lit8 v13, v12, 0x10

    .line 334
    shl-int/lit8 v12, v12, -0x10

    .line 336
    or-int/2addr v12, v13

    .line 337
    xor-int/2addr v7, v12

    .line 338
    shr-int/lit8 v12, v15, 0x18

    .line 340
    and-int/lit16 v12, v12, 0xff

    .line 342
    aget v12, v6, v12

    .line 344
    ushr-int/lit8 v13, v12, 0x8

    .line 346
    shl-int/lit8 v12, v12, -0x8

    .line 348
    or-int/2addr v12, v13

    .line 349
    xor-int/2addr v7, v12

    .line 350
    add-int/lit8 v1, v1, 0x1

    .line 352
    const/4 v12, 0x3

    .line 353
    aget v11, v11, v12

    .line 355
    xor-int/2addr v7, v11

    .line 356
    and-int/lit16 v11, v10, 0xff

    .line 358
    aget v11, v6, v11

    .line 360
    shr-int/lit8 v12, v4, 0x8

    .line 362
    and-int/lit16 v12, v12, 0xff

    .line 364
    aget v12, v6, v12

    .line 366
    ushr-int/lit8 v13, v12, 0x18

    .line 368
    shl-int/lit8 v12, v12, -0x18

    .line 370
    or-int/2addr v12, v13

    .line 371
    xor-int/2addr v11, v12

    .line 372
    shr-int/lit8 v12, v5, 0x10

    .line 374
    and-int/lit16 v12, v12, 0xff

    .line 376
    aget v12, v6, v12

    .line 378
    ushr-int/lit8 v13, v12, 0x10

    .line 380
    shl-int/lit8 v12, v12, -0x10

    .line 382
    or-int/2addr v12, v13

    .line 383
    xor-int/2addr v11, v12

    .line 384
    shr-int/lit8 v12, v7, 0x18

    .line 386
    and-int/lit16 v12, v12, 0xff

    .line 388
    aget v12, v6, v12

    .line 390
    ushr-int/lit8 v13, v12, 0x8

    .line 392
    shl-int/lit8 v12, v12, -0x8

    .line 394
    or-int/2addr v12, v13

    .line 395
    xor-int/2addr v11, v12

    .line 396
    aget-object v12, v3, v1

    .line 398
    const/4 v13, 0x0

    .line 399
    aget v14, v12, v13

    .line 401
    xor-int/2addr v11, v14

    .line 402
    iput v11, v0, Li4/a;->c:I

    .line 404
    and-int/lit16 v11, v4, 0xff

    .line 406
    aget v11, v6, v11

    .line 408
    shr-int/lit8 v13, v5, 0x8

    .line 410
    and-int/lit16 v13, v13, 0xff

    .line 412
    aget v13, v6, v13

    .line 414
    ushr-int/lit8 v14, v13, 0x18

    .line 416
    shl-int/lit8 v13, v13, -0x18

    .line 418
    or-int/2addr v13, v14

    .line 419
    xor-int/2addr v11, v13

    .line 420
    shr-int/lit8 v13, v7, 0x10

    .line 422
    and-int/lit16 v13, v13, 0xff

    .line 424
    aget v13, v6, v13

    .line 426
    ushr-int/lit8 v14, v13, 0x10

    .line 428
    shl-int/lit8 v13, v13, -0x10

    .line 430
    or-int/2addr v13, v14

    .line 431
    xor-int/2addr v11, v13

    .line 432
    shr-int/lit8 v13, v10, 0x18

    .line 434
    and-int/lit16 v13, v13, 0xff

    .line 436
    aget v13, v6, v13

    .line 438
    ushr-int/lit8 v14, v13, 0x8

    .line 440
    shl-int/lit8 v13, v13, -0x8

    .line 442
    or-int/2addr v13, v14

    .line 443
    xor-int/2addr v11, v13

    .line 444
    const/4 v13, 0x1

    .line 445
    aget v14, v12, v13

    .line 447
    xor-int/2addr v11, v14

    .line 448
    iput v11, v0, Li4/a;->d:I

    .line 450
    and-int/lit16 v11, v5, 0xff

    .line 452
    aget v11, v6, v11

    .line 454
    shr-int/lit8 v13, v7, 0x8

    .line 456
    and-int/lit16 v13, v13, 0xff

    .line 458
    aget v13, v6, v13

    .line 460
    ushr-int/lit8 v14, v13, 0x18

    .line 462
    shl-int/lit8 v13, v13, -0x18

    .line 464
    or-int/2addr v13, v14

    .line 465
    xor-int/2addr v11, v13

    .line 466
    shr-int/lit8 v13, v10, 0x10

    .line 468
    and-int/lit16 v13, v13, 0xff

    .line 470
    aget v13, v6, v13

    .line 472
    ushr-int/lit8 v14, v13, 0x10

    .line 474
    shl-int/lit8 v13, v13, -0x10

    .line 476
    or-int/2addr v13, v14

    .line 477
    xor-int/2addr v11, v13

    .line 478
    shr-int/lit8 v13, v4, 0x18

    .line 480
    and-int/lit16 v13, v13, 0xff

    .line 482
    aget v13, v6, v13

    .line 484
    ushr-int/lit8 v14, v13, 0x8

    .line 486
    shl-int/lit8 v13, v13, -0x8

    .line 488
    or-int/2addr v13, v14

    .line 489
    xor-int/2addr v11, v13

    .line 490
    aget v13, v12, v8

    .line 492
    xor-int/2addr v11, v13

    .line 493
    iput v11, v0, Li4/a;->e:I

    .line 495
    and-int/lit16 v7, v7, 0xff

    .line 497
    aget v7, v6, v7

    .line 499
    shr-int/2addr v10, v9

    .line 500
    and-int/lit16 v10, v10, 0xff

    .line 502
    aget v10, v6, v10

    .line 504
    ushr-int/lit8 v11, v10, 0x18

    .line 506
    shl-int/lit8 v10, v10, -0x18

    .line 508
    or-int/2addr v10, v11

    .line 509
    xor-int/2addr v7, v10

    .line 510
    const/16 v10, 0x10

    .line 512
    shr-int/2addr v4, v10

    .line 513
    and-int/lit16 v4, v4, 0xff

    .line 515
    aget v4, v6, v4

    .line 517
    ushr-int/lit8 v10, v4, 0x10

    .line 519
    shl-int/lit8 v4, v4, -0x10

    .line 521
    or-int/2addr v4, v10

    .line 522
    xor-int/2addr v4, v7

    .line 523
    shr-int/lit8 v5, v5, 0x18

    .line 525
    and-int/lit16 v5, v5, 0xff

    .line 527
    aget v5, v6, v5

    .line 529
    ushr-int/lit8 v6, v5, 0x8

    .line 531
    shl-int/lit8 v5, v5, -0x8

    .line 533
    or-int/2addr v5, v6

    .line 534
    xor-int/2addr v4, v5

    .line 535
    const/4 v5, 0x1

    .line 536
    add-int/2addr v1, v5

    .line 537
    const/4 v5, 0x3

    .line 538
    aget v6, v12, v5

    .line 540
    xor-int/2addr v4, v6

    .line 541
    iput v4, v0, Li4/a;->f:I

    .line 543
    const/4 v4, 0x0

    .line 544
    const/16 v5, 0x10

    .line 546
    const/4 v7, 0x1

    .line 547
    const/4 v10, 0x3

    .line 548
    const/4 v11, 0x4

    .line 549
    const/16 v15, 0xf

    .line 551
    goto/16 :goto_98

    .line 553
    :cond_228
    sget-object v4, Li4/a;->i:[I

    .line 555
    iget v5, v0, Li4/a;->c:I

    .line 557
    and-int/lit16 v6, v5, 0xff

    .line 559
    aget v6, v4, v6

    .line 561
    iget v7, v0, Li4/a;->d:I

    .line 563
    shr-int/lit8 v10, v7, 0x8

    .line 565
    and-int/lit16 v10, v10, 0xff

    .line 567
    aget v10, v4, v10

    .line 569
    ushr-int/lit8 v11, v10, 0x18

    .line 571
    shl-int/lit8 v10, v10, -0x18

    .line 573
    or-int/2addr v10, v11

    .line 574
    xor-int/2addr v6, v10

    .line 575
    iget v10, v0, Li4/a;->e:I

    .line 577
    shr-int/lit8 v11, v10, 0x10

    .line 579
    and-int/lit16 v11, v11, 0xff

    .line 581
    aget v11, v4, v11

    .line 583
    ushr-int/lit8 v12, v11, 0x10

    .line 585
    shl-int/lit8 v11, v11, -0x10

    .line 587
    or-int/2addr v11, v12

    .line 588
    xor-int/2addr v6, v11

    .line 589
    iget v11, v0, Li4/a;->f:I

    .line 591
    shr-int/lit8 v12, v11, 0x18

    .line 593
    and-int/lit16 v12, v12, 0xff

    .line 595
    aget v12, v4, v12

    .line 597
    ushr-int/lit8 v13, v12, 0x8

    .line 599
    shl-int/lit8 v12, v12, -0x8

    .line 601
    or-int/2addr v12, v13

    .line 602
    xor-int/2addr v6, v12

    .line 603
    aget-object v12, v3, v1

    .line 605
    const/4 v13, 0x0

    .line 606
    aget v14, v12, v13

    .line 608
    xor-int/2addr v6, v14

    .line 609
    and-int/lit16 v13, v7, 0xff

    .line 611
    aget v13, v4, v13

    .line 613
    shr-int/lit8 v14, v10, 0x8

    .line 615
    and-int/lit16 v14, v14, 0xff

    .line 617
    aget v14, v4, v14

    .line 619
    ushr-int/lit8 v15, v14, 0x18

    .line 621
    shl-int/lit8 v14, v14, -0x18

    .line 623
    or-int/2addr v14, v15

    .line 624
    xor-int/2addr v13, v14

    .line 625
    shr-int/lit8 v14, v11, 0x10

    .line 627
    and-int/lit16 v14, v14, 0xff

    .line 629
    aget v14, v4, v14

    .line 631
    ushr-int/lit8 v15, v14, 0x10

    .line 633
    shl-int/lit8 v14, v14, -0x10

    .line 635
    or-int/2addr v14, v15

    .line 636
    xor-int/2addr v13, v14

    .line 637
    shr-int/lit8 v14, v5, 0x18

    .line 639
    and-int/lit16 v14, v14, 0xff

    .line 641
    aget v14, v4, v14

    .line 643
    ushr-int/lit8 v15, v14, 0x8

    .line 645
    shl-int/lit8 v14, v14, -0x8

    .line 647
    or-int/2addr v14, v15

    .line 648
    xor-int/2addr v13, v14

    .line 649
    const/4 v14, 0x1

    .line 650
    aget v15, v12, v14

    .line 652
    xor-int/2addr v13, v15

    .line 653
    and-int/lit16 v14, v10, 0xff

    .line 655
    aget v14, v4, v14

    .line 657
    shr-int/lit8 v15, v11, 0x8

    .line 659
    and-int/lit16 v15, v15, 0xff

    .line 661
    aget v15, v4, v15

    .line 663
    ushr-int/lit8 v27, v15, 0x18

    .line 665
    shl-int/lit8 v15, v15, -0x18

    .line 667
    or-int v15, v15, v27

    .line 669
    xor-int/2addr v14, v15

    .line 670
    shr-int/lit8 v15, v5, 0x10

    .line 672
    and-int/lit16 v15, v15, 0xff

    .line 674
    aget v15, v4, v15

    .line 676
    ushr-int/lit8 v27, v15, 0x10

    .line 678
    shl-int/lit8 v15, v15, -0x10

    .line 680
    or-int v15, v15, v27

    .line 682
    xor-int/2addr v14, v15

    .line 683
    shr-int/lit8 v15, v7, 0x18

    .line 685
    and-int/lit16 v15, v15, 0xff

    .line 687
    aget v15, v4, v15

    .line 689
    ushr-int/lit8 v27, v15, 0x8

    .line 691
    shl-int/lit8 v15, v15, -0x8

    .line 693
    or-int v15, v15, v27

    .line 695
    xor-int/2addr v14, v15

    .line 696
    aget v15, v12, v8

    .line 698
    xor-int/2addr v14, v15

    .line 699
    and-int/lit16 v11, v11, 0xff

    .line 701
    aget v11, v4, v11

    .line 703
    shr-int/2addr v5, v9

    .line 704
    and-int/lit16 v5, v5, 0xff

    .line 706
    aget v5, v4, v5

    .line 708
    ushr-int/lit8 v15, v5, 0x18

    .line 710
    shl-int/lit8 v5, v5, -0x18

    .line 712
    or-int/2addr v5, v15

    .line 713
    xor-int/2addr v5, v11

    .line 714
    const/16 v11, 0x10

    .line 716
    shr-int/2addr v7, v11

    .line 717
    and-int/lit16 v7, v7, 0xff

    .line 719
    aget v7, v4, v7

    .line 721
    ushr-int/lit8 v11, v7, 0x10

    .line 723
    shl-int/lit8 v7, v7, -0x10

    .line 725
    or-int/2addr v7, v11

    .line 726
    xor-int/2addr v5, v7

    .line 727
    shr-int/lit8 v7, v10, 0x18

    .line 729
    and-int/lit16 v7, v7, 0xff

    .line 731
    aget v4, v4, v7

    .line 733
    ushr-int/lit8 v7, v4, 0x8

    .line 735
    shl-int/lit8 v4, v4, -0x8

    .line 737
    or-int/2addr v4, v7

    .line 738
    xor-int/2addr v4, v5

    .line 739
    const/4 v5, 0x1

    .line 740
    add-int/2addr v1, v5

    .line 741
    const/4 v5, 0x3

    .line 742
    aget v7, v12, v5

    .line 744
    xor-int/2addr v4, v7

    .line 745
    sget-object v5, Li4/a;->g:[B

    .line 747
    and-int/lit16 v7, v6, 0xff

    .line 749
    aget-byte v7, v5, v7

    .line 751
    and-int/lit16 v7, v7, 0xff

    .line 753
    shr-int/lit8 v10, v13, 0x8

    .line 755
    and-int/lit16 v10, v10, 0xff

    .line 757
    aget-byte v10, v5, v10

    .line 759
    and-int/lit16 v10, v10, 0xff

    .line 761
    shl-int/2addr v10, v9

    .line 762
    xor-int/2addr v7, v10

    .line 763
    shr-int/lit8 v10, v14, 0x10

    .line 765
    and-int/lit16 v10, v10, 0xff

    .line 767
    aget-byte v10, v5, v10

    .line 769
    and-int/lit16 v10, v10, 0xff

    .line 771
    const/16 v11, 0x10

    .line 773
    shl-int/2addr v10, v11

    .line 774
    xor-int/2addr v7, v10

    .line 775
    shr-int/lit8 v10, v4, 0x18

    .line 777
    and-int/lit16 v10, v10, 0xff

    .line 779
    aget-byte v10, v5, v10

    .line 781
    shl-int/lit8 v10, v10, 0x18

    .line 783
    xor-int/2addr v7, v10

    .line 784
    aget-object v1, v3, v1

    .line 786
    const/4 v3, 0x0

    .line 787
    aget v10, v1, v3

    .line 789
    xor-int v3, v10, v7

    .line 791
    iput v3, v0, Li4/a;->c:I

    .line 793
    and-int/lit16 v7, v13, 0xff

    .line 795
    aget-byte v7, v5, v7

    .line 797
    and-int/lit16 v7, v7, 0xff

    .line 799
    shr-int/lit8 v10, v14, 0x8

    .line 801
    and-int/lit16 v10, v10, 0xff

    .line 803
    aget-byte v10, v5, v10

    .line 805
    and-int/lit16 v10, v10, 0xff

    .line 807
    shl-int/2addr v10, v9

    .line 808
    xor-int/2addr v7, v10

    .line 809
    shr-int/lit8 v10, v4, 0x10

    .line 811
    and-int/lit16 v10, v10, 0xff

    .line 813
    aget-byte v10, v5, v10

    .line 815
    and-int/lit16 v10, v10, 0xff

    .line 817
    const/16 v11, 0x10

    .line 819
    shl-int/2addr v10, v11

    .line 820
    xor-int/2addr v7, v10

    .line 821
    shr-int/lit8 v10, v6, 0x18

    .line 823
    and-int/lit16 v10, v10, 0xff

    .line 825
    aget-byte v10, v5, v10

    .line 827
    shl-int/lit8 v10, v10, 0x18

    .line 829
    xor-int/2addr v7, v10

    .line 830
    const/4 v10, 0x1

    .line 831
    aget v11, v1, v10

    .line 833
    xor-int/2addr v7, v11

    .line 834
    iput v7, v0, Li4/a;->d:I

    .line 836
    and-int/lit16 v10, v14, 0xff

    .line 838
    aget-byte v10, v5, v10

    .line 840
    and-int/lit16 v10, v10, 0xff

    .line 842
    shr-int/lit8 v11, v4, 0x8

    .line 844
    and-int/lit16 v11, v11, 0xff

    .line 846
    aget-byte v11, v5, v11

    .line 848
    and-int/lit16 v11, v11, 0xff

    .line 850
    shl-int/2addr v11, v9

    .line 851
    xor-int/2addr v10, v11

    .line 852
    shr-int/lit8 v11, v6, 0x10

    .line 854
    and-int/lit16 v11, v11, 0xff

    .line 856
    aget-byte v11, v5, v11

    .line 858
    and-int/lit16 v11, v11, 0xff

    .line 860
    const/16 v12, 0x10

    .line 862
    shl-int/2addr v11, v12

    .line 863
    xor-int/2addr v10, v11

    .line 864
    shr-int/lit8 v11, v13, 0x18

    .line 866
    and-int/lit16 v11, v11, 0xff

    .line 868
    aget-byte v11, v5, v11

    .line 870
    shl-int/lit8 v11, v11, 0x18

    .line 872
    xor-int/2addr v10, v11

    .line 873
    aget v11, v1, v8

    .line 875
    xor-int/2addr v10, v11

    .line 876
    iput v10, v0, Li4/a;->e:I

    .line 878
    and-int/lit16 v4, v4, 0xff

    .line 880
    aget-byte v4, v5, v4

    .line 882
    and-int/lit16 v4, v4, 0xff

    .line 884
    shr-int/2addr v6, v9

    .line 885
    and-int/lit16 v6, v6, 0xff

    .line 887
    aget-byte v6, v5, v6

    .line 889
    and-int/lit16 v6, v6, 0xff

    .line 891
    shl-int/2addr v6, v9

    .line 892
    xor-int/2addr v4, v6

    .line 893
    const/16 v6, 0x10

    .line 895
    shr-int/lit8 v11, v13, 0x10

    .line 897
    and-int/lit16 v11, v11, 0xff

    .line 899
    aget-byte v11, v5, v11

    .line 901
    and-int/lit16 v11, v11, 0xff

    .line 903
    shl-int/lit8 v6, v11, 0x10

    .line 905
    xor-int/2addr v4, v6

    .line 906
    shr-int/lit8 v6, v14, 0x18

    .line 908
    and-int/lit16 v6, v6, 0xff

    .line 910
    aget-byte v5, v5, v6

    .line 912
    shl-int/lit8 v5, v5, 0x18

    .line 914
    xor-int/2addr v4, v5

    .line 915
    const/4 v5, 0x3

    .line 916
    aget v1, v1, v5

    .line 918
    xor-int/2addr v1, v4

    .line 919
    iput v1, v0, Li4/a;->f:I

    .line 921
    int-to-byte v4, v3

    .line 922
    const/4 v5, 0x0

    .line 923
    aput-byte v4, v2, v5

    .line 925
    shr-int/lit8 v4, v3, 0x8

    .line 927
    int-to-byte v4, v4

    .line 928
    const/4 v5, 0x1

    .line 929
    aput-byte v4, v2, v5

    .line 931
    shr-int/lit8 v4, v3, 0x10

    .line 933
    int-to-byte v4, v4

    .line 934
    aput-byte v4, v2, v8

    .line 936
    shr-int/lit8 v3, v3, 0x18

    .line 938
    int-to-byte v3, v3

    .line 939
    const/4 v4, 0x3

    .line 940
    aput-byte v3, v2, v4

    .line 942
    int-to-byte v3, v7

    .line 943
    const/4 v4, 0x4

    .line 944
    aput-byte v3, v2, v4

    .line 946
    shr-int/lit8 v3, v7, 0x8

    .line 948
    int-to-byte v3, v3

    .line 949
    const/4 v4, 0x5

    .line 950
    aput-byte v3, v2, v4

    .line 952
    shr-int/lit8 v3, v7, 0x10

    .line 954
    int-to-byte v3, v3

    .line 955
    const/4 v4, 0x6

    .line 956
    aput-byte v3, v2, v4

    .line 958
    shr-int/lit8 v3, v7, 0x18

    .line 960
    int-to-byte v3, v3

    .line 961
    const/4 v4, 0x7

    .line 962
    aput-byte v3, v2, v4

    .line 964
    int-to-byte v3, v10

    .line 965
    aput-byte v3, v2, v9

    .line 967
    shr-int/lit8 v3, v10, 0x8

    .line 969
    int-to-byte v3, v3

    .line 970
    aput-byte v3, v2, v18

    .line 972
    shr-int/lit8 v3, v10, 0x10

    .line 974
    int-to-byte v3, v3

    .line 975
    aput-byte v3, v2, v17

    .line 977
    shr-int/lit8 v3, v10, 0x18

    .line 979
    int-to-byte v3, v3

    .line 980
    const/16 v4, 0xb

    .line 982
    aput-byte v3, v2, v4

    .line 984
    int-to-byte v3, v1

    .line 985
    aput-byte v3, v2, v20

    .line 987
    shr-int/lit8 v3, v1, 0x8

    .line 989
    int-to-byte v3, v3

    .line 990
    aput-byte v3, v2, v19

    .line 992
    shr-int/lit8 v3, v1, 0x10

    .line 994
    int-to-byte v3, v3

    .line 995
    aput-byte v3, v2, v21

    .line 997
    shr-int/lit8 v1, v1, 0x18

    .line 999
    int-to-byte v1, v1

    .line 1000
    const/16 v3, 0xf

    .line 1002
    aput-byte v1, v2, v3

    .line 1004
    return-void

    .line 1005
    :cond_3ec
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 1007
    const-string v2, "output buffer too short"

    .line 1009
    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 1012
    throw v1

    .line 1013
    :cond_3f4
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 1015
    const-string v2, "input buffer too short"

    .line 1017
    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 1020
    throw v1

    .line 1021
    :cond_3fc
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    .line 1023
    const-string v2, "AES engine not initialised"

    .line 1025
    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    .line 1028
    throw v1
.end method
