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

    const/16 v0, 0x100

    new-array v1, v0, [B

    fill-array-data v1, :array_1a

    sput-object v1, Li4/a;->g:[B

    const/16 v1, 0x1e

    new-array v1, v1, [I

    fill-array-data v1, :array_9e

    sput-object v1, Li4/a;->h:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_de

    sput-object v0, Li4/a;->i:[I

    return-void

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Li4/a;->b:[[I

    array-length v0, p1

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x6

    const/16 v3, 0x8

    if-eq v0, v1, :cond_12

    if-eq v0, v2, :cond_12

    if-ne v0, v3, :cond_a1

    :cond_12
    mul-int/lit8 v4, v0, 0x4

    array-length v5, p1

    if-ne v4, v5, :cond_a1

    add-int/lit8 v4, v0, 0x6

    iput v4, p0, Li4/a;->a:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v6, 0x2

    new-array v7, v6, [I

    aput v1, v7, v5

    const/4 v8, 0x0

    aput v4, v7, v8

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    move v7, v8

    :goto_2e
    array-length v9, p1

    if-ge v8, v9, :cond_59

    shr-int/lit8 v9, v7, 0x2

    aget-object v9, v4, v9

    and-int/lit8 v10, v7, 0x3

    aget-byte v11, p1, v8

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v8, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v3

    or-int/2addr v11, v12

    add-int/lit8 v12, v8, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v12, v8, 0x3

    aget-byte v12, p1, v12

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v11, v12

    aput v11, v9, v10

    add-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v5

    goto :goto_2e

    :cond_59
    iget p1, p0, Li4/a;->a:I

    add-int/2addr p1, v5

    shl-int/2addr p1, v6

    move v3, v0

    :goto_5e
    if-ge v3, p1, :cond_9e

    add-int/lit8 v6, v3, -0x1

    shr-int/lit8 v7, v6, 0x2

    aget-object v7, v4, v7

    and-int/lit8 v6, v6, 0x3

    aget v6, v7, v6

    rem-int v7, v3, v0

    if-nez v7, :cond_80

    ushr-int/lit8 v7, v6, 0x8

    shl-int/lit8 v6, v6, -0x8

    or-int/2addr v6, v7

    invoke-static {v6}, Li4/a;->b(I)I

    move-result v6

    sget-object v7, Li4/a;->h:[I

    div-int v8, v3, v0

    sub-int/2addr v8, v5

    aget v7, v7, v8

    xor-int/2addr v6, v7

    goto :goto_88

    :cond_80
    if-le v0, v2, :cond_88

    if-ne v7, v1, :cond_88

    invoke-static {v6}, Li4/a;->b(I)I

    move-result v6

    :cond_88
    :goto_88
    shr-int/lit8 v7, v3, 0x2

    aget-object v7, v4, v7

    and-int/lit8 v8, v3, 0x3

    sub-int v9, v3, v0

    shr-int/lit8 v10, v9, 0x2

    aget-object v10, v4, v10

    and-int/lit8 v9, v9, 0x3

    aget v9, v10, v9

    xor-int/2addr v6, v9

    aput v6, v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    :cond_9e
    iput-object v4, p0, Li4/a;->b:[[I

    return-void

    :cond_a1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid key length (not 128/192/256)"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(I)I
    .registers 4

    sget-object v0, Li4/a;->g:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    aget-byte p0, v0, p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v1

    return p0
.end method


# virtual methods
.method public final a([B[B)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Li4/a;->b:[[I

    if-eqz v3, :cond_3fc

    array-length v4, v1

    const/16 v5, 0x10

    if-gt v5, v4, :cond_3f4

    array-length v4, v2

    if-gt v5, v4, :cond_3ec

    const/4 v4, 0x0

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    const/4 v7, 0x1

    aget-byte v8, v1, v7

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0x8

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    const/4 v8, 0x2

    aget-byte v10, v1, v8

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v5

    or-int/2addr v6, v10

    const/4 v10, 0x3

    aget-byte v11, v1, v10

    shl-int/lit8 v11, v11, 0x18

    or-int/2addr v6, v11

    const/4 v11, 0x4

    aget-byte v12, v1, v11

    and-int/lit16 v12, v12, 0xff

    const/4 v13, 0x5

    aget-byte v14, v1, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v9

    or-int/2addr v12, v14

    const/4 v14, 0x6

    aget-byte v15, v1, v14

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v5

    or-int/2addr v12, v15

    const/4 v15, 0x7

    aget-byte v16, v1, v15

    shl-int/lit8 v16, v16, 0x18

    or-int v12, v12, v16

    aget-byte v15, v1, v9

    and-int/lit16 v15, v15, 0xff

    const/16 v17, 0xa

    const/16 v18, 0x9

    aget-byte v14, v1, v18

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v9

    or-int/2addr v14, v15

    aget-byte v15, v1, v17

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v5

    or-int/2addr v14, v15

    const/16 v15, 0xb

    aget-byte v19, v1, v15

    shl-int/lit8 v19, v19, 0x18

    or-int v14, v14, v19

    const/16 v19, 0xd

    const/16 v20, 0xc

    aget-byte v15, v1, v20

    and-int/lit16 v15, v15, 0xff

    const/16 v21, 0xe

    aget-byte v13, v1, v19

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v9

    or-int/2addr v13, v15

    aget-byte v15, v1, v21

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v5

    or-int/2addr v13, v15

    const/16 v15, 0xf

    aget-byte v1, v1, v15

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v13

    aget-object v13, v3, v4

    aget v22, v13, v4

    xor-int v6, v6, v22

    iput v6, v0, Li4/a;->c:I

    aget v6, v13, v7

    xor-int/2addr v6, v12

    iput v6, v0, Li4/a;->d:I

    aget v6, v13, v8

    xor-int/2addr v6, v14

    iput v6, v0, Li4/a;->e:I

    aget v6, v13, v10

    xor-int/2addr v1, v6

    iput v1, v0, Li4/a;->f:I

    move v1, v7

    :goto_98
    iget v6, v0, Li4/a;->a:I

    sub-int/2addr v6, v7

    if-ge v1, v6, :cond_228

    sget-object v6, Li4/a;->i:[I

    iget v12, v0, Li4/a;->c:I

    and-int/lit16 v13, v12, 0xff

    aget v13, v6, v13

    iget v14, v0, Li4/a;->d:I

    shr-int/lit8 v15, v14, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v6, v15

    ushr-int/lit8 v23, v15, 0x18

    shl-int/lit8 v15, v15, -0x18

    or-int v15, v15, v23

    xor-int/2addr v13, v15

    iget v15, v0, Li4/a;->e:I

    shr-int/lit8 v11, v15, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v6, v11

    ushr-int/lit8 v24, v11, 0x10

    shl-int/lit8 v11, v11, -0x10

    or-int v11, v11, v24

    xor-int/2addr v11, v13

    iget v13, v0, Li4/a;->f:I

    shr-int/lit8 v10, v13, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v10, v6, v10

    ushr-int/lit8 v25, v10, 0x8

    shl-int/lit8 v10, v10, -0x8

    or-int v10, v10, v25

    xor-int/2addr v10, v11

    aget-object v11, v3, v1

    aget v25, v11, v4

    xor-int v10, v10, v25

    and-int/lit16 v4, v14, 0xff

    aget v4, v6, v4

    shr-int/lit8 v5, v15, 0x8

    and-int/lit16 v5, v5, 0xff

    aget v5, v6, v5

    ushr-int/lit8 v26, v5, 0x18

    shl-int/lit8 v5, v5, -0x18

    or-int v5, v5, v26

    xor-int/2addr v4, v5

    shr-int/lit8 v5, v13, 0x10

    and-int/lit16 v5, v5, 0xff

    aget v5, v6, v5

    ushr-int/lit8 v26, v5, 0x10

    shl-int/lit8 v5, v5, -0x10

    or-int v5, v5, v26

    xor-int/2addr v4, v5

    shr-int/lit8 v5, v12, 0x18

    and-int/lit16 v5, v5, 0xff

    aget v5, v6, v5

    ushr-int/lit8 v26, v5, 0x8

    shl-int/lit8 v5, v5, -0x8

    or-int v5, v5, v26

    xor-int/2addr v4, v5

    aget v5, v11, v7

    xor-int/2addr v4, v5

    and-int/lit16 v5, v15, 0xff

    aget v5, v6, v5

    shr-int/lit8 v7, v13, 0x8

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    ushr-int/lit8 v27, v7, 0x18

    shl-int/lit8 v7, v7, -0x18

    or-int v7, v7, v27

    xor-int/2addr v5, v7

    shr-int/lit8 v7, v12, 0x10

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    ushr-int/lit8 v27, v7, 0x10

    shl-int/lit8 v7, v7, -0x10

    or-int v7, v7, v27

    xor-int/2addr v5, v7

    shr-int/lit8 v7, v14, 0x18

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    ushr-int/lit8 v27, v7, 0x8

    shl-int/lit8 v7, v7, -0x8

    or-int v7, v7, v27

    xor-int/2addr v5, v7

    aget v7, v11, v8

    xor-int/2addr v5, v7

    and-int/lit16 v7, v13, 0xff

    aget v7, v6, v7

    shr-int/2addr v12, v9

    and-int/lit16 v12, v12, 0xff

    aget v12, v6, v12

    ushr-int/lit8 v13, v12, 0x18

    shl-int/lit8 v12, v12, -0x18

    or-int/2addr v12, v13

    xor-int/2addr v7, v12

    const/16 v12, 0x10

    shr-int/lit8 v13, v14, 0x10

    and-int/lit16 v12, v13, 0xff

    aget v12, v6, v12

    ushr-int/lit8 v13, v12, 0x10

    shl-int/lit8 v12, v12, -0x10

    or-int/2addr v12, v13

    xor-int/2addr v7, v12

    shr-int/lit8 v12, v15, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v12, v6, v12

    ushr-int/lit8 v13, v12, 0x8

    shl-int/lit8 v12, v12, -0x8

    or-int/2addr v12, v13

    xor-int/2addr v7, v12

    add-int/lit8 v1, v1, 0x1

    const/4 v12, 0x3

    aget v11, v11, v12

    xor-int/2addr v7, v11

    and-int/lit16 v11, v10, 0xff

    aget v11, v6, v11

    shr-int/lit8 v12, v4, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v12, v6, v12

    ushr-int/lit8 v13, v12, 0x18

    shl-int/lit8 v12, v12, -0x18

    or-int/2addr v12, v13

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v5, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, v6, v12

    ushr-int/lit8 v13, v12, 0x10

    shl-int/lit8 v12, v12, -0x10

    or-int/2addr v12, v13

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v7, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v12, v6, v12

    ushr-int/lit8 v13, v12, 0x8

    shl-int/lit8 v12, v12, -0x8

    or-int/2addr v12, v13

    xor-int/2addr v11, v12

    aget-object v12, v3, v1

    const/4 v13, 0x0

    aget v14, v12, v13

    xor-int/2addr v11, v14

    iput v11, v0, Li4/a;->c:I

    and-int/lit16 v11, v4, 0xff

    aget v11, v6, v11

    shr-int/lit8 v13, v5, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v6, v13

    ushr-int/lit8 v14, v13, 0x18

    shl-int/lit8 v13, v13, -0x18

    or-int/2addr v13, v14

    xor-int/2addr v11, v13

    shr-int/lit8 v13, v7, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v6, v13

    ushr-int/lit8 v14, v13, 0x10

    shl-int/lit8 v13, v13, -0x10

    or-int/2addr v13, v14

    xor-int/2addr v11, v13

    shr-int/lit8 v13, v10, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v13, v6, v13

    ushr-int/lit8 v14, v13, 0x8

    shl-int/lit8 v13, v13, -0x8

    or-int/2addr v13, v14

    xor-int/2addr v11, v13

    const/4 v13, 0x1

    aget v14, v12, v13

    xor-int/2addr v11, v14

    iput v11, v0, Li4/a;->d:I

    and-int/lit16 v11, v5, 0xff

    aget v11, v6, v11

    shr-int/lit8 v13, v7, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v6, v13

    ushr-int/lit8 v14, v13, 0x18

    shl-int/lit8 v13, v13, -0x18

    or-int/2addr v13, v14

    xor-int/2addr v11, v13

    shr-int/lit8 v13, v10, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v6, v13

    ushr-int/lit8 v14, v13, 0x10

    shl-int/lit8 v13, v13, -0x10

    or-int/2addr v13, v14

    xor-int/2addr v11, v13

    shr-int/lit8 v13, v4, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v13, v6, v13

    ushr-int/lit8 v14, v13, 0x8

    shl-int/lit8 v13, v13, -0x8

    or-int/2addr v13, v14

    xor-int/2addr v11, v13

    aget v13, v12, v8

    xor-int/2addr v11, v13

    iput v11, v0, Li4/a;->e:I

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    shr-int/2addr v10, v9

    and-int/lit16 v10, v10, 0xff

    aget v10, v6, v10

    ushr-int/lit8 v11, v10, 0x18

    shl-int/lit8 v10, v10, -0x18

    or-int/2addr v10, v11

    xor-int/2addr v7, v10

    const/16 v10, 0x10

    shr-int/2addr v4, v10

    and-int/lit16 v4, v4, 0xff

    aget v4, v6, v4

    ushr-int/lit8 v10, v4, 0x10

    shl-int/lit8 v4, v4, -0x10

    or-int/2addr v4, v10

    xor-int/2addr v4, v7

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    aget v5, v6, v5

    ushr-int/lit8 v6, v5, 0x8

    shl-int/lit8 v5, v5, -0x8

    or-int/2addr v5, v6

    xor-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/2addr v1, v5

    const/4 v5, 0x3

    aget v6, v12, v5

    xor-int/2addr v4, v6

    iput v4, v0, Li4/a;->f:I

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v7, 0x1

    const/4 v10, 0x3

    const/4 v11, 0x4

    const/16 v15, 0xf

    goto/16 :goto_98

    :cond_228
    sget-object v4, Li4/a;->i:[I

    iget v5, v0, Li4/a;->c:I

    and-int/lit16 v6, v5, 0xff

    aget v6, v4, v6

    iget v7, v0, Li4/a;->d:I

    shr-int/lit8 v10, v7, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v4, v10

    ushr-int/lit8 v11, v10, 0x18

    shl-int/lit8 v10, v10, -0x18

    or-int/2addr v10, v11

    xor-int/2addr v6, v10

    iget v10, v0, Li4/a;->e:I

    shr-int/lit8 v11, v10, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v4, v11

    ushr-int/lit8 v12, v11, 0x10

    shl-int/lit8 v11, v11, -0x10

    or-int/2addr v11, v12

    xor-int/2addr v6, v11

    iget v11, v0, Li4/a;->f:I

    shr-int/lit8 v12, v11, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v12, v4, v12

    ushr-int/lit8 v13, v12, 0x8

    shl-int/lit8 v12, v12, -0x8

    or-int/2addr v12, v13

    xor-int/2addr v6, v12

    aget-object v12, v3, v1

    const/4 v13, 0x0

    aget v14, v12, v13

    xor-int/2addr v6, v14

    and-int/lit16 v13, v7, 0xff

    aget v13, v4, v13

    shr-int/lit8 v14, v10, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v14, v4, v14

    ushr-int/lit8 v15, v14, 0x18

    shl-int/lit8 v14, v14, -0x18

    or-int/2addr v14, v15

    xor-int/2addr v13, v14

    shr-int/lit8 v14, v11, 0x10

    and-int/lit16 v14, v14, 0xff

    aget v14, v4, v14

    ushr-int/lit8 v15, v14, 0x10

    shl-int/lit8 v14, v14, -0x10

    or-int/2addr v14, v15

    xor-int/2addr v13, v14

    shr-int/lit8 v14, v5, 0x18

    and-int/lit16 v14, v14, 0xff

    aget v14, v4, v14

    ushr-int/lit8 v15, v14, 0x8

    shl-int/lit8 v14, v14, -0x8

    or-int/2addr v14, v15

    xor-int/2addr v13, v14

    const/4 v14, 0x1

    aget v15, v12, v14

    xor-int/2addr v13, v15

    and-int/lit16 v14, v10, 0xff

    aget v14, v4, v14

    shr-int/lit8 v15, v11, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v4, v15

    ushr-int/lit8 v27, v15, 0x18

    shl-int/lit8 v15, v15, -0x18

    or-int v15, v15, v27

    xor-int/2addr v14, v15

    shr-int/lit8 v15, v5, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v4, v15

    ushr-int/lit8 v27, v15, 0x10

    shl-int/lit8 v15, v15, -0x10

    or-int v15, v15, v27

    xor-int/2addr v14, v15

    shr-int/lit8 v15, v7, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v15, v4, v15

    ushr-int/lit8 v27, v15, 0x8

    shl-int/lit8 v15, v15, -0x8

    or-int v15, v15, v27

    xor-int/2addr v14, v15

    aget v15, v12, v8

    xor-int/2addr v14, v15

    and-int/lit16 v11, v11, 0xff

    aget v11, v4, v11

    shr-int/2addr v5, v9

    and-int/lit16 v5, v5, 0xff

    aget v5, v4, v5

    ushr-int/lit8 v15, v5, 0x18

    shl-int/lit8 v5, v5, -0x18

    or-int/2addr v5, v15

    xor-int/2addr v5, v11

    const/16 v11, 0x10

    shr-int/2addr v7, v11

    and-int/lit16 v7, v7, 0xff

    aget v7, v4, v7

    ushr-int/lit8 v11, v7, 0x10

    shl-int/lit8 v7, v7, -0x10

    or-int/2addr v7, v11

    xor-int/2addr v5, v7

    shr-int/lit8 v7, v10, 0x18

    and-int/lit16 v7, v7, 0xff

    aget v4, v4, v7

    ushr-int/lit8 v7, v4, 0x8

    shl-int/lit8 v4, v4, -0x8

    or-int/2addr v4, v7

    xor-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/2addr v1, v5

    const/4 v5, 0x3

    aget v7, v12, v5

    xor-int/2addr v4, v7

    sget-object v5, Li4/a;->g:[B

    and-int/lit16 v7, v6, 0xff

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v10, v13, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v9

    xor-int/2addr v7, v10

    shr-int/lit8 v10, v14, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0x10

    shl-int/2addr v10, v11

    xor-int/2addr v7, v10

    shr-int/lit8 v10, v4, 0x18

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v7, v10

    aget-object v1, v3, v1

    const/4 v3, 0x0

    aget v10, v1, v3

    xor-int v3, v10, v7

    iput v3, v0, Li4/a;->c:I

    and-int/lit16 v7, v13, 0xff

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v10, v14, 0x8

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v9

    xor-int/2addr v7, v10

    shr-int/lit8 v10, v4, 0x10

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0x10

    shl-int/2addr v10, v11

    xor-int/2addr v7, v10

    shr-int/lit8 v10, v6, 0x18

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v5, v10

    shl-int/lit8 v10, v10, 0x18

    xor-int/2addr v7, v10

    const/4 v10, 0x1

    aget v11, v1, v10

    xor-int/2addr v7, v11

    iput v7, v0, Li4/a;->d:I

    and-int/lit16 v10, v14, 0xff

    aget-byte v10, v5, v10

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v11, v4, 0x8

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v5, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v9

    xor-int/2addr v10, v11

    shr-int/lit8 v11, v6, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v5, v11

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0x10

    shl-int/2addr v11, v12

    xor-int/2addr v10, v11

    shr-int/lit8 v11, v13, 0x18

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v5, v11

    shl-int/lit8 v11, v11, 0x18

    xor-int/2addr v10, v11

    aget v11, v1, v8

    xor-int/2addr v10, v11

    iput v10, v0, Li4/a;->e:I

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    shr-int/2addr v6, v9

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v9

    xor-int/2addr v4, v6

    const/16 v6, 0x10

    shr-int/lit8 v11, v13, 0x10

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v5, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v6, v11, 0x10

    xor-int/2addr v4, v6

    shr-int/lit8 v6, v14, 0x18

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v4, v5

    const/4 v5, 0x3

    aget v1, v1, v5

    xor-int/2addr v1, v4

    iput v1, v0, Li4/a;->f:I

    int-to-byte v4, v3

    const/4 v5, 0x0

    aput-byte v4, v2, v5

    shr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    shr-int/lit8 v4, v3, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v8

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput-byte v3, v2, v4

    int-to-byte v3, v7

    const/4 v4, 0x4

    aput-byte v3, v2, v4

    shr-int/lit8 v3, v7, 0x8

    int-to-byte v3, v3

    const/4 v4, 0x5

    aput-byte v3, v2, v4

    shr-int/lit8 v3, v7, 0x10

    int-to-byte v3, v3

    const/4 v4, 0x6

    aput-byte v3, v2, v4

    shr-int/lit8 v3, v7, 0x18

    int-to-byte v3, v3

    const/4 v4, 0x7

    aput-byte v3, v2, v4

    int-to-byte v3, v10

    aput-byte v3, v2, v9

    shr-int/lit8 v3, v10, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v18

    shr-int/lit8 v3, v10, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v17

    shr-int/lit8 v3, v10, 0x18

    int-to-byte v3, v3

    const/16 v4, 0xb

    aput-byte v3, v2, v4

    int-to-byte v3, v1

    aput-byte v3, v2, v20

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v19

    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v2, v21

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    const/16 v3, 0xf

    aput-byte v1, v2, v3

    return-void

    :cond_3ec
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3f4
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3fc
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v2, "AES engine not initialised"

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
