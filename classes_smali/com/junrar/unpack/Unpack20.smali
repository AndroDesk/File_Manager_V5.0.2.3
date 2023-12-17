.class abstract Lcom/junrar/unpack/Unpack20;
.super Lcom/junrar/unpack/Unpack15;
.source "Unpack20.java"


# static fields
.field private static final DBits:[I

.field private static final DDecode:[I

.field public static final LBits:[B

.field public static final LDecode:[I

.field public static final SDBits:[I

.field public static final SDDecode:[I


# instance fields
.field private AudV:[Lcom/junrar/unpack/decode/AudioVariables;

.field public BD:Lcom/junrar/unpack/decode/BitDecode;

.field public DD:Lcom/junrar/unpack/decode/DistDecode;

.field public LD:Lcom/junrar/unpack/decode/LitDecode;

.field public LDD:Lcom/junrar/unpack/decode/LowDistDecode;

.field private MD:[Lcom/junrar/unpack/decode/MultDecode;

.field public RD:Lcom/junrar/unpack/decode/RepDecode;

.field private UnpAudioBlock:I

.field private UnpChannelDelta:I

.field private UnpChannels:I

.field private UnpCurChannel:I

.field private UnpOldTable20:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const/16 v0, 0x1c

    .line 3
    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_32

    .line 8
    sput-object v1, Lcom/junrar/unpack/Unpack20;->LDecode:[I

    .line 10
    new-array v0, v0, [B

    .line 12
    fill-array-data v0, :array_6e

    .line 15
    sput-object v0, Lcom/junrar/unpack/Unpack20;->LBits:[B

    .line 17
    const/16 v0, 0x30

    .line 19
    new-array v1, v0, [I

    .line 21
    fill-array-data v1, :array_80

    .line 24
    sput-object v1, Lcom/junrar/unpack/Unpack20;->DDecode:[I

    .line 26
    new-array v0, v0, [I

    .line 28
    fill-array-data v0, :array_e4

    .line 31
    sput-object v0, Lcom/junrar/unpack/Unpack20;->DBits:[I

    .line 33
    const/16 v0, 0x8

    .line 35
    new-array v1, v0, [I

    .line 37
    fill-array-data v1, :array_148

    .line 40
    sput-object v1, Lcom/junrar/unpack/Unpack20;->SDDecode:[I

    .line 42
    new-array v0, v0, [I

    .line 44
    fill-array-data v0, :array_15c

    .line 47
    sput-object v0, Lcom/junrar/unpack/Unpack20;->SDBits:[I

    .line 49
    return-void

    .line 50
    nop

    .line 51
    :array_32
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xc
        0xe
        0x10
        0x14
        0x18
        0x1c
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
    .end array-data

    .line 111
    :array_6e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
    .end array-data

    .line 129
    :array_80
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x6
        0x8
        0xc
        0x10
        0x18
        0x20
        0x30
        0x40
        0x60
        0x80
        0xc0
        0x100
        0x180
        0x200
        0x300
        0x400
        0x600
        0x800
        0xc00
        0x1000
        0x1800
        0x2000
        0x3000
        0x4000
        0x6000
        0x8000
        0xc000
        0x10000
        0x18000
        0x20000
        0x30000
        0x40000
        0x50000
        0x60000
        0x70000
        0x80000
        0x90000
        0xa0000
        0xb0000
        0xc0000
        0xd0000
        0xe0000
        0xf0000
    .end array-data

    :array_e4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
        0xe
        0xe
        0xf
        0xf
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
    .end array-data

    :array_148
    .array-data 4
        0x0
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0xc0
    .end array-data

    :array_15c
    .array-data 4
        0x2
        0x2
        0x3
        0x4
        0x5
        0x6
        0x6
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack15;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [Lcom/junrar/unpack/decode/MultDecode;

    .line 7
    iput-object v1, p0, Lcom/junrar/unpack/Unpack20;->MD:[Lcom/junrar/unpack/decode/MultDecode;

    .line 9
    const/16 v1, 0x404

    .line 11
    new-array v1, v1, [B

    .line 13
    iput-object v1, p0, Lcom/junrar/unpack/Unpack20;->UnpOldTable20:[B

    .line 15
    new-array v0, v0, [Lcom/junrar/unpack/decode/AudioVariables;

    .line 17
    iput-object v0, p0, Lcom/junrar/unpack/Unpack20;->AudV:[Lcom/junrar/unpack/decode/AudioVariables;

    .line 19
    new-instance v0, Lcom/junrar/unpack/decode/LitDecode;

    .line 21
    invoke-direct {v0}, Lcom/junrar/unpack/decode/LitDecode;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/junrar/unpack/Unpack20;->LD:Lcom/junrar/unpack/decode/LitDecode;

    .line 26
    new-instance v0, Lcom/junrar/unpack/decode/DistDecode;

    .line 28
    invoke-direct {v0}, Lcom/junrar/unpack/decode/DistDecode;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/junrar/unpack/Unpack20;->DD:Lcom/junrar/unpack/decode/DistDecode;

    .line 33
    new-instance v0, Lcom/junrar/unpack/decode/LowDistDecode;

    .line 35
    invoke-direct {v0}, Lcom/junrar/unpack/decode/LowDistDecode;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/junrar/unpack/Unpack20;->LDD:Lcom/junrar/unpack/decode/LowDistDecode;

    .line 40
    new-instance v0, Lcom/junrar/unpack/decode/RepDecode;

    .line 42
    invoke-direct {v0}, Lcom/junrar/unpack/decode/RepDecode;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/junrar/unpack/Unpack20;->RD:Lcom/junrar/unpack/decode/RepDecode;

    .line 47
    new-instance v0, Lcom/junrar/unpack/decode/BitDecode;

    .line 49
    invoke-direct {v0}, Lcom/junrar/unpack/decode/BitDecode;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/junrar/unpack/Unpack20;->BD:Lcom/junrar/unpack/decode/BitDecode;

    .line 54
    return-void
.end method

.method private CopyString20(II)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    .line 3
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 7
    iput v2, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    .line 9
    and-int/lit8 v1, v1, 0x3

    .line 11
    aput p2, v0, v1

    .line 13
    iput p2, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    .line 15
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    .line 17
    iget-wide v0, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 19
    int-to-long v2, p1

    .line 20
    sub-long/2addr v0, v2

    .line 21
    iput-wide v0, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 23
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 25
    sub-int p2, v0, p2

    .line 27
    const v1, 0x3ffed4

    .line 30
    if-ge p2, v1, :cond_4a

    .line 32
    if-ge v0, v1, :cond_4a

    .line 34
    iget-object v1, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 36
    add-int/lit8 v2, v0, 0x1

    .line 38
    add-int/lit8 v3, p2, 0x1

    .line 40
    aget-byte p2, v1, p2

    .line 42
    aput-byte p2, v1, v0

    .line 44
    add-int/lit8 p2, v2, 0x1

    .line 46
    iput p2, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 48
    add-int/lit8 p2, v3, 0x1

    .line 50
    aget-byte v0, v1, v3

    .line 52
    aput-byte v0, v1, v2

    .line 54
    :goto_35
    const/4 v0, 0x2

    .line 55
    if-le p1, v0, :cond_65

    .line 57
    add-int/lit8 p1, p1, -0x1

    .line 59
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 61
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 63
    add-int/lit8 v2, v1, 0x1

    .line 65
    iput v2, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 67
    add-int/lit8 v2, p2, 0x1

    .line 69
    aget-byte p2, v0, p2

    .line 71
    aput-byte p2, v0, v1

    .line 73
    move p2, v2

    .line 74
    goto :goto_35

    .line 75
    :cond_4a
    :goto_4a
    add-int/lit8 v0, p1, -0x1

    .line 77
    if-eqz p1, :cond_65

    .line 79
    iget-object p1, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 81
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 83
    add-int/lit8 v2, p2, 0x1

    .line 85
    const v3, 0x3fffff

    .line 88
    and-int/2addr p2, v3

    .line 89
    aget-byte p2, p1, p2

    .line 91
    aput-byte p2, p1, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 95
    and-int p1, v1, v3

    .line 97
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 99
    move p1, v0

    .line 100
    move p2, v2

    .line 101
    goto :goto_4a

    .line 102
    :cond_65
    return-void
.end method

.method private DecodeAudio(I)B
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->AudV:[Lcom/junrar/unpack/decode/AudioVariables;

    .line 3
    iget v1, p0, Lcom/junrar/unpack/Unpack20;->UnpCurChannel:I

    .line 5
    aget-object v0, v0, v1

    .line 7
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getByteCount()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    add-int/2addr v1, v2

    .line 13
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/decode/AudioVariables;->setByteCount(I)V

    .line 16
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD3()I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/decode/AudioVariables;->setD4(I)V

    .line 23
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD2()I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/decode/AudioVariables;->setD3(I)V

    .line 30
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getLastDelta()I

    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD1()I

    .line 37
    move-result v3

    .line 38
    sub-int/2addr v1, v3

    .line 39
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/decode/AudioVariables;->setD2(I)V

    .line 42
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getLastDelta()I

    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/decode/AudioVariables;->setD1(I)V

    .line 49
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getLastChar()I

    .line 52
    move-result v1

    .line 53
    const/16 v3, 0x8

    .line 55
    mul-int/2addr v1, v3

    .line 56
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK1()I

    .line 59
    move-result v4

    .line 60
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD1()I

    .line 63
    move-result v5

    .line 64
    mul-int/2addr v5, v4

    .line 65
    add-int/2addr v5, v1

    .line 66
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK2()I

    .line 69
    move-result v1

    .line 70
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD2()I

    .line 73
    move-result v4

    .line 74
    mul-int/2addr v4, v1

    .line 75
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK3()I

    .line 78
    move-result v1

    .line 79
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD3()I

    .line 82
    move-result v6

    .line 83
    mul-int/2addr v6, v1

    .line 84
    add-int/2addr v6, v4

    .line 85
    add-int/2addr v6, v5

    .line 86
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK4()I

    .line 89
    move-result v1

    .line 90
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD4()I

    .line 93
    move-result v4

    .line 94
    mul-int/2addr v4, v1

    .line 95
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK5()I

    .line 98
    move-result v1

    .line 99
    iget v5, p0, Lcom/junrar/unpack/Unpack20;->UnpChannelDelta:I

    .line 101
    mul-int/2addr v1, v5

    .line 102
    add-int/2addr v1, v4

    .line 103
    add-int/2addr v1, v6

    .line 104
    const/4 v4, 0x3

    .line 105
    ushr-int/2addr v1, v4

    .line 106
    and-int/lit16 v1, v1, 0xff

    .line 108
    sub-int/2addr v1, p1

    .line 109
    int-to-byte p1, p1

    .line 110
    shl-int/2addr p1, v4

    .line 111
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    .line 114
    move-result-object v5

    .line 115
    const/4 v6, 0x0

    .line 116
    aget v7, v5, v6

    .line 118
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 121
    move-result v8

    .line 122
    add-int/2addr v8, v7

    .line 123
    aput v8, v5, v6

    .line 125
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    .line 128
    move-result-object v5

    .line 129
    aget v7, v5, v2

    .line 131
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD1()I

    .line 134
    move-result v8

    .line 135
    sub-int v8, p1, v8

    .line 137
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 140
    move-result v8

    .line 141
    add-int/2addr v8, v7

    .line 142
    aput v8, v5, v2

    .line 144
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    .line 147
    move-result-object v5

    .line 148
    const/4 v7, 0x2

    .line 149
    aget v8, v5, v7

    .line 151
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD1()I

    .line 154
    move-result v9

    .line 155
    add-int/2addr v9, p1

    .line 156
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 159
    move-result v9

    .line 160
    add-int/2addr v9, v8

    .line 161
    aput v9, v5, v7

    .line 163
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    .line 166
    move-result-object v5

    .line 167
    aget v7, v5, v4

    .line 169
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD2()I

    .line 172
    move-result v8

    .line 173
    sub-int v8, p1, v8

    .line 175
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 178
    move-result v8

    .line 179
    add-int/2addr v8, v7

    .line 180
    aput v8, v5, v4

    .line 182
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    .line 185
    move-result-object v4

    .line 186
    const/4 v5, 0x4

    .line 187
    aget v7, v4, v5

    .line 189
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD2()I

    .line 192
    move-result v8

    .line 193
    add-int/2addr v8, p1

    .line 194
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 197
    move-result v8

    .line 198
    add-int/2addr v8, v7

    .line 199
    aput v8, v4, v5

    .line 201
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    .line 204
    move-result-object v4

    .line 205
    const/4 v5, 0x5

    .line 206
    aget v7, v4, v5

    .line 208
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD3()I

    .line 211
    move-result v8

    .line 212
    sub-int v8, p1, v8

    .line 214
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 217
    move-result v8

    .line 218
    add-int/2addr v8, v7

    .line 219
    aput v8, v4, v5

    .line 221
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    .line 224
    move-result-object v4

    .line 225
    const/4 v5, 0x6

    .line 226
    aget v7, v4, v5

    .line 228
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD3()I

    .line 231
    move-result v8

    .line 232
    add-int/2addr v8, p1

    .line 233
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 236
    move-result v8

    .line 237
    add-int/2addr v8, v7

    .line 238
    aput v8, v4, v5

    .line 240
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    .line 243
    move-result-object v4

    .line 244
    const/4 v5, 0x7

    .line 245
    aget v7, v4, v5

    .line 247
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD4()I

    .line 250
    move-result v8

    .line 251
    sub-int v8, p1, v8

    .line 253
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    .line 256
    move-result v8

    .line 257
    add-int/2addr v8, v7

    .line 258
    aput v8, v4, v5

    .line 260
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    .line 263
    move-result-object v4

    .line 264
    aget v5, v4, v3

    .line 266
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getD4()I

    .line 269
    move-result v7

    .line 270
    add-int/2addr v7, p1

    .line 271
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 274
    move-result v7

    .line 275
    add-int/2addr v7, v5

    .line 276
    aput v7, v4, v3

    .line 278
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    .line 281
    move-result-object v3

    .line 282
    const/16 v4, 0x9

    .line 284
    aget v5, v3, v4

    .line 286
    iget v7, p0, Lcom/junrar/unpack/Unpack20;->UnpChannelDelta:I

    .line 288
    sub-int v7, p1, v7

    .line 290
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 293
    move-result v7

    .line 294
    add-int/2addr v7, v5

    .line 295
    aput v7, v3, v4

    .line 297
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    .line 300
    move-result-object v3

    .line 301
    const/16 v4, 0xa

    .line 303
    aget v5, v3, v4

    .line 305
    iget v7, p0, Lcom/junrar/unpack/Unpack20;->UnpChannelDelta:I

    .line 307
    add-int/2addr p1, v7

    .line 308
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 311
    move-result p1

    .line 312
    add-int/2addr p1, v5

    .line 313
    aput p1, v3, v4

    .line 315
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getLastChar()I

    .line 318
    move-result p1

    .line 319
    sub-int p1, v1, p1

    .line 321
    int-to-byte p1, p1

    .line 322
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setLastDelta(I)V

    .line 325
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getLastDelta()I

    .line 328
    move-result p1

    .line 329
    iput p1, p0, Lcom/junrar/unpack/Unpack20;->UnpChannelDelta:I

    .line 331
    invoke-virtual {v0, v1}, Lcom/junrar/unpack/decode/AudioVariables;->setLastChar(I)V

    .line 334
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getByteCount()I

    .line 337
    move-result p1

    .line 338
    and-int/lit8 p1, p1, 0x1f

    .line 340
    if-nez p1, :cond_222

    .line 342
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    .line 345
    move-result-object p1

    .line 346
    aget p1, p1, v6

    .line 348
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    .line 351
    move-result-object v3

    .line 352
    aput v6, v3, v6

    .line 354
    move v3, v2

    .line 355
    move v4, v6

    .line 356
    :goto_163
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    .line 359
    move-result-object v5

    .line 360
    array-length v5, v5

    .line 361
    if-ge v3, v5, :cond_182

    .line 363
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    .line 366
    move-result-object v5

    .line 367
    aget v5, v5, v3

    .line 369
    if-ge v5, p1, :cond_179

    .line 371
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    .line 374
    move-result-object p1

    .line 375
    aget p1, p1, v3

    .line 377
    move v4, v3

    .line 378
    :cond_179
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getDif()[I

    .line 381
    move-result-object v5

    .line 382
    aput v6, v5, v3

    .line 384
    add-int/lit8 v3, v3, 0x1

    .line 386
    goto :goto_163

    .line 387
    :cond_182
    const/16 p1, 0x10

    .line 389
    const/16 v3, -0x10

    .line 391
    packed-switch v4, :pswitch_data_224

    .line 394
    goto/16 :goto_222

    .line 396
    :pswitch_18b  #0xa
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK5()I

    .line 399
    move-result v3

    .line 400
    if-ge v3, p1, :cond_222

    .line 402
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK5()I

    .line 405
    move-result p1

    .line 406
    add-int/2addr p1, v2

    .line 407
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK5(I)V

    .line 410
    goto/16 :goto_222

    .line 412
    :pswitch_19b  #0x9
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK5()I

    .line 415
    move-result p1

    .line 416
    if-lt p1, v3, :cond_222

    .line 418
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK5()I

    .line 421
    move-result p1

    .line 422
    sub-int/2addr p1, v2

    .line 423
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK5(I)V

    .line 426
    goto/16 :goto_222

    .line 428
    :pswitch_1ab  #0x8
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK4()I

    .line 431
    move-result v3

    .line 432
    if-ge v3, p1, :cond_222

    .line 434
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK4()I

    .line 437
    move-result p1

    .line 438
    add-int/2addr p1, v2

    .line 439
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK4(I)V

    .line 442
    goto :goto_222

    .line 443
    :pswitch_1ba  #0x7
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK4()I

    .line 446
    move-result p1

    .line 447
    if-lt p1, v3, :cond_222

    .line 449
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK4()I

    .line 452
    move-result p1

    .line 453
    sub-int/2addr p1, v2

    .line 454
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK4(I)V

    .line 457
    goto :goto_222

    .line 458
    :pswitch_1c9  #0x6
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK3()I

    .line 461
    move-result v3

    .line 462
    if-ge v3, p1, :cond_222

    .line 464
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK3()I

    .line 467
    move-result p1

    .line 468
    add-int/2addr p1, v2

    .line 469
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK3(I)V

    .line 472
    goto :goto_222

    .line 473
    :pswitch_1d8  #0x5
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK3()I

    .line 476
    move-result p1

    .line 477
    if-lt p1, v3, :cond_222

    .line 479
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK3()I

    .line 482
    move-result p1

    .line 483
    sub-int/2addr p1, v2

    .line 484
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK3(I)V

    .line 487
    goto :goto_222

    .line 488
    :pswitch_1e7  #0x4
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK2()I

    .line 491
    move-result v3

    .line 492
    if-ge v3, p1, :cond_222

    .line 494
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK2()I

    .line 497
    move-result p1

    .line 498
    add-int/2addr p1, v2

    .line 499
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK2(I)V

    .line 502
    goto :goto_222

    .line 503
    :pswitch_1f6  #0x3
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK2()I

    .line 506
    move-result p1

    .line 507
    if-lt p1, v3, :cond_222

    .line 509
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK2()I

    .line 512
    move-result p1

    .line 513
    sub-int/2addr p1, v2

    .line 514
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK2(I)V

    .line 517
    goto :goto_222

    .line 518
    :pswitch_205  #0x2
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK1()I

    .line 521
    move-result v3

    .line 522
    if-ge v3, p1, :cond_222

    .line 524
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK1()I

    .line 527
    move-result p1

    .line 528
    add-int/2addr p1, v2

    .line 529
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK1(I)V

    .line 532
    goto :goto_222

    .line 533
    :pswitch_214  #0x1
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK1()I

    .line 536
    move-result p1

    .line 537
    if-lt p1, v3, :cond_222

    .line 539
    invoke-virtual {v0}, Lcom/junrar/unpack/decode/AudioVariables;->getK1()I

    .line 542
    move-result p1

    .line 543
    sub-int/2addr p1, v2

    .line 544
    invoke-virtual {v0, p1}, Lcom/junrar/unpack/decode/AudioVariables;->setK1(I)V

    .line 547
    :cond_222
    :goto_222
    int-to-byte p1, v1

    .line 548
    return p1

    .line 549
    :pswitch_data_224
    .packed-switch 0x1
        :pswitch_214  #00000001
        :pswitch_205  #00000002
        :pswitch_1f6  #00000003
        :pswitch_1e7  #00000004
        :pswitch_1d8  #00000005
        :pswitch_1c9  #00000006
        :pswitch_1ba  #00000007
        :pswitch_1ab  #00000008
        :pswitch_19b  #00000009
        :pswitch_18b  #0000000a
    .end packed-switch
.end method

.method private ReadLastTables()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    .line 3
    iget v1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 5
    add-int/lit8 v1, v1, 0x5

    .line 7
    if-lt v0, v1, :cond_2b

    .line 9
    iget v0, p0, Lcom/junrar/unpack/Unpack20;->UnpAudioBlock:I

    .line 11
    if-eqz v0, :cond_1e

    .line 13
    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->MD:[Lcom/junrar/unpack/decode/MultDecode;

    .line 15
    iget v1, p0, Lcom/junrar/unpack/Unpack20;->UnpCurChannel:I

    .line 17
    aget-object v0, v0, v1

    .line 19
    invoke-virtual {p0, v0}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    .line 22
    move-result v0

    .line 23
    const/16 v1, 0x100

    .line 25
    if-ne v0, v1, :cond_2b

    .line 27
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack20;->ReadTables20()Z

    .line 30
    goto :goto_2b

    .line 31
    :cond_1e
    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->LD:Lcom/junrar/unpack/decode/LitDecode;

    .line 33
    invoke-virtual {p0, v0}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    .line 36
    move-result v0

    .line 37
    const/16 v1, 0x10d

    .line 39
    if-ne v0, v1, :cond_2b

    .line 41
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack20;->ReadTables20()Z

    .line 44
    :cond_2b
    :goto_2b
    return-void
.end method

.method private ReadTables20()Z
    .registers 12

    .line 1
    const/16 v0, 0x13

    .line 3
    new-array v1, v0, [B

    .line 5
    const/16 v2, 0x404

    .line 7
    new-array v2, v2, [B

    .line 9
    iget v3, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 11
    iget v4, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    .line 13
    add-int/lit8 v4, v4, -0x19

    .line 15
    const/4 v5, 0x0

    .line 16
    if-le v3, v4, :cond_18

    .line 18
    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_18

    .line 24
    return v5

    .line 25
    :cond_18
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 28
    move-result v3

    .line 29
    const v4, 0x8000

    .line 32
    and-int/2addr v4, v3

    .line 33
    iput v4, p0, Lcom/junrar/unpack/Unpack20;->UnpAudioBlock:I

    .line 35
    and-int/lit16 v4, v3, 0x4000

    .line 37
    if-nez v4, :cond_2b

    .line 39
    iget-object v4, p0, Lcom/junrar/unpack/Unpack20;->UnpOldTable20:[B

    .line 41
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 44
    :cond_2b
    const/4 v4, 0x2

    .line 45
    invoke-virtual {p0, v4}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 48
    iget v6, p0, Lcom/junrar/unpack/Unpack20;->UnpAudioBlock:I

    .line 50
    const/16 v7, 0x101

    .line 52
    const/4 v8, 0x3

    .line 53
    const/4 v9, 0x1

    .line 54
    if-eqz v6, :cond_4a

    .line 56
    ushr-int/lit8 v3, v3, 0xc

    .line 58
    and-int/2addr v3, v8

    .line 59
    add-int/2addr v3, v9

    .line 60
    iput v3, p0, Lcom/junrar/unpack/Unpack20;->UnpChannels:I

    .line 62
    iget v6, p0, Lcom/junrar/unpack/Unpack20;->UnpCurChannel:I

    .line 64
    if-lt v6, v3, :cond_43

    .line 66
    iput v5, p0, Lcom/junrar/unpack/Unpack20;->UnpCurChannel:I

    .line 68
    :cond_43
    invoke-virtual {p0, v4}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 71
    iget v3, p0, Lcom/junrar/unpack/Unpack20;->UnpChannels:I

    .line 73
    mul-int/2addr v3, v7

    .line 74
    goto :goto_4c

    .line 75
    :cond_4a
    const/16 v3, 0x176

    .line 77
    :goto_4c
    move v6, v5

    .line 78
    :goto_4d
    if-ge v6, v0, :cond_5f

    .line 80
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 83
    move-result v10

    .line 84
    ushr-int/lit8 v10, v10, 0xc

    .line 86
    int-to-byte v10, v10

    .line 87
    aput-byte v10, v1, v6

    .line 89
    const/4 v10, 0x4

    .line 90
    invoke-virtual {p0, v10}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 93
    add-int/lit8 v6, v6, 0x1

    .line 95
    goto :goto_4d

    .line 96
    :cond_5f
    iget-object v6, p0, Lcom/junrar/unpack/Unpack20;->BD:Lcom/junrar/unpack/decode/BitDecode;

    .line 98
    invoke-virtual {p0, v1, v5, v6, v0}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    .line 101
    move v0, v5

    .line 102
    :cond_65
    :goto_65
    if-ge v0, v3, :cond_d1

    .line 104
    iget v1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 106
    iget v6, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    .line 108
    add-int/lit8 v6, v6, -0x5

    .line 110
    if-le v1, v6, :cond_76

    .line 112
    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_76

    .line 118
    return v5

    .line 119
    :cond_76
    iget-object v1, p0, Lcom/junrar/unpack/Unpack20;->BD:Lcom/junrar/unpack/decode/BitDecode;

    .line 121
    invoke-virtual {p0, v1}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    .line 124
    move-result v1

    .line 125
    const/16 v6, 0x10

    .line 127
    if-ge v1, v6, :cond_8d

    .line 129
    iget-object v6, p0, Lcom/junrar/unpack/Unpack20;->UnpOldTable20:[B

    .line 131
    aget-byte v6, v6, v0

    .line 133
    add-int/2addr v1, v6

    .line 134
    and-int/lit8 v1, v1, 0xf

    .line 136
    int-to-byte v1, v1

    .line 137
    aput-byte v1, v2, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    .line 141
    goto :goto_65

    .line 142
    :cond_8d
    if-ne v1, v6, :cond_a9

    .line 144
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 147
    move-result v1

    .line 148
    ushr-int/lit8 v1, v1, 0xe

    .line 150
    add-int/2addr v1, v8

    .line 151
    invoke-virtual {p0, v4}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 154
    :goto_99
    add-int/lit8 v6, v1, -0x1

    .line 156
    if-lez v1, :cond_65

    .line 158
    if-ge v0, v3, :cond_65

    .line 160
    add-int/lit8 v1, v0, -0x1

    .line 162
    aget-byte v1, v2, v1

    .line 164
    aput-byte v1, v2, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    .line 168
    move v1, v6

    .line 169
    goto :goto_99

    .line 170
    :cond_a9
    const/16 v6, 0x11

    .line 172
    if-ne v1, v6, :cond_b8

    .line 174
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 177
    move-result v1

    .line 178
    ushr-int/lit8 v1, v1, 0xd

    .line 180
    add-int/2addr v1, v8

    .line 181
    invoke-virtual {p0, v8}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 184
    goto :goto_c4

    .line 185
    :cond_b8
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 188
    move-result v1

    .line 189
    ushr-int/lit8 v1, v1, 0x9

    .line 191
    add-int/lit8 v1, v1, 0xb

    .line 193
    const/4 v6, 0x7

    .line 194
    invoke-virtual {p0, v6}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 197
    :goto_c4
    add-int/lit8 v6, v1, -0x1

    .line 199
    if-lez v1, :cond_65

    .line 201
    if-ge v0, v3, :cond_65

    .line 203
    add-int/lit8 v1, v0, 0x1

    .line 205
    aput-byte v5, v2, v0

    .line 207
    move v0, v1

    .line 208
    move v1, v6

    .line 209
    goto :goto_c4

    .line 210
    :cond_d1
    iget v0, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 212
    iget v1, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    .line 214
    if-le v0, v1, :cond_d8

    .line 216
    return v9

    .line 217
    :cond_d8
    iget v0, p0, Lcom/junrar/unpack/Unpack20;->UnpAudioBlock:I

    .line 219
    if-eqz v0, :cond_ed

    .line 221
    move v0, v5

    .line 222
    :goto_dd
    iget v1, p0, Lcom/junrar/unpack/Unpack20;->UnpChannels:I

    .line 224
    if-ge v0, v1, :cond_104

    .line 226
    mul-int/lit16 v1, v0, 0x101

    .line 228
    iget-object v3, p0, Lcom/junrar/unpack/Unpack20;->MD:[Lcom/junrar/unpack/decode/MultDecode;

    .line 230
    aget-object v3, v3, v0

    .line 232
    invoke-virtual {p0, v2, v1, v3, v7}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    .line 237
    goto :goto_dd

    .line 238
    :cond_ed
    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->LD:Lcom/junrar/unpack/decode/LitDecode;

    .line 240
    const/16 v1, 0x12a

    .line 242
    invoke-virtual {p0, v2, v5, v0, v1}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    .line 245
    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->DD:Lcom/junrar/unpack/decode/DistDecode;

    .line 247
    const/16 v3, 0x30

    .line 249
    invoke-virtual {p0, v2, v1, v0, v3}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    .line 252
    const/16 v0, 0x15a

    .line 254
    iget-object v1, p0, Lcom/junrar/unpack/Unpack20;->RD:Lcom/junrar/unpack/decode/RepDecode;

    .line 256
    const/16 v3, 0x1c

    .line 258
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/junrar/unpack/Unpack20;->makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V

    .line 261
    :cond_104
    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->UnpOldTable20:[B

    .line 263
    array-length v1, v0

    .line 264
    invoke-static {v2, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    return v9
.end method


# virtual methods
.method public decodeNumber(Lcom/junrar/unpack/decode/Decode;)I
    .registers 11

    .line 1
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 4
    move-result v0

    .line 5
    const v1, 0xfffe

    .line 8
    and-int/2addr v0, v1

    .line 9
    int-to-long v0, v0

    .line 10
    invoke-virtual {p1}, Lcom/junrar/unpack/decode/Decode;->getDecodeLen()[I

    .line 13
    move-result-object v2

    .line 14
    const/16 v3, 0x8

    .line 16
    aget v4, v2, v3

    .line 18
    int-to-long v4, v4

    .line 19
    cmp-long v4, v0, v4

    .line 21
    const/16 v5, 0xb

    .line 23
    const/16 v6, 0xc

    .line 25
    if-gez v4, :cond_59

    .line 27
    const/4 v4, 0x4

    .line 28
    aget v5, v2, v4

    .line 30
    int-to-long v5, v5

    .line 31
    cmp-long v5, v0, v5

    .line 33
    if-gez v5, :cond_3d

    .line 35
    const/4 v3, 0x2

    .line 36
    aget v5, v2, v3

    .line 38
    int-to-long v5, v5

    .line 39
    cmp-long v5, v0, v5

    .line 41
    if-gez v5, :cond_34

    .line 43
    const/4 v4, 0x1

    .line 44
    aget v5, v2, v4

    .line 46
    int-to-long v5, v5

    .line 47
    cmp-long v5, v0, v5

    .line 49
    if-gez v5, :cond_57

    .line 51
    :cond_32
    :goto_32
    move v5, v4

    .line 52
    goto :goto_92

    .line 53
    :cond_34
    const/4 v3, 0x3

    .line 54
    aget v5, v2, v3

    .line 56
    int-to-long v5, v5

    .line 57
    cmp-long v5, v0, v5

    .line 59
    if-gez v5, :cond_32

    .line 61
    goto :goto_57

    .line 62
    :cond_3d
    const/4 v4, 0x6

    .line 63
    aget v5, v2, v4

    .line 65
    int-to-long v5, v5

    .line 66
    cmp-long v5, v0, v5

    .line 68
    if-gez v5, :cond_4e

    .line 70
    const/4 v3, 0x5

    .line 71
    aget v5, v2, v3

    .line 73
    int-to-long v5, v5

    .line 74
    cmp-long v5, v0, v5

    .line 76
    if-gez v5, :cond_32

    .line 78
    goto :goto_57

    .line 79
    :cond_4e
    const/4 v4, 0x7

    .line 80
    aget v5, v2, v4

    .line 82
    int-to-long v5, v5

    .line 83
    cmp-long v5, v0, v5

    .line 85
    if-gez v5, :cond_57

    .line 87
    move v3, v4

    .line 88
    :cond_57
    :goto_57
    move v5, v3

    .line 89
    goto :goto_92

    .line 90
    :cond_59
    aget v3, v2, v6

    .line 92
    int-to-long v3, v3

    .line 93
    cmp-long v3, v0, v3

    .line 95
    if-gez v3, :cond_7d

    .line 97
    const/16 v3, 0xa

    .line 99
    aget v4, v2, v3

    .line 101
    int-to-long v7, v4

    .line 102
    cmp-long v4, v0, v7

    .line 104
    if-gez v4, :cond_73

    .line 106
    const/16 v4, 0x9

    .line 108
    aget v5, v2, v4

    .line 110
    int-to-long v5, v5

    .line 111
    cmp-long v5, v0, v5

    .line 113
    if-gez v5, :cond_57

    .line 115
    goto :goto_32

    .line 116
    :cond_73
    aget v3, v2, v5

    .line 118
    int-to-long v3, v3

    .line 119
    cmp-long v3, v0, v3

    .line 121
    if-gez v3, :cond_7b

    .line 123
    goto :goto_92

    .line 124
    :cond_7b
    move v5, v6

    .line 125
    goto :goto_92

    .line 126
    :cond_7d
    const/16 v3, 0xe

    .line 128
    aget v4, v2, v3

    .line 130
    int-to-long v4, v4

    .line 131
    cmp-long v4, v0, v4

    .line 133
    if-gez v4, :cond_90

    .line 135
    const/16 v4, 0xd

    .line 137
    aget v5, v2, v4

    .line 139
    int-to-long v5, v5

    .line 140
    cmp-long v5, v0, v5

    .line 142
    if-gez v5, :cond_57

    .line 144
    goto :goto_32

    .line 145
    :cond_90
    const/16 v5, 0xf

    .line 147
    :goto_92
    invoke-virtual {p0, v5}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 150
    invoke-virtual {p1}, Lcom/junrar/unpack/decode/Decode;->getDecodePos()[I

    .line 153
    move-result-object v3

    .line 154
    aget v3, v3, v5

    .line 156
    long-to-int v0, v0

    .line 157
    add-int/lit8 v1, v5, -0x1

    .line 159
    aget v1, v2, v1

    .line 161
    sub-int/2addr v0, v1

    .line 162
    rsub-int/lit8 v1, v5, 0x10

    .line 164
    ushr-int/2addr v0, v1

    .line 165
    add-int/2addr v3, v0

    .line 166
    invoke-virtual {p1}, Lcom/junrar/unpack/decode/Decode;->getMaxNum()I

    .line 169
    move-result v0

    .line 170
    if-lt v3, v0, :cond_ac

    .line 172
    const/4 v3, 0x0

    .line 173
    :cond_ac
    invoke-virtual {p1}, Lcom/junrar/unpack/decode/Decode;->getDecodeNum()[I

    .line 176
    move-result-object p1

    .line 177
    aget p1, p1, v3

    .line 179
    return p1
.end method

.method public makeDecodeTables([BILcom/junrar/unpack/decode/Decode;I)V
    .registers 18

    .line 1
    move/from16 v0, p4

    .line 3
    const/16 v1, 0x10

    .line 5
    new-array v2, v1, [I

    .line 7
    new-array v3, v1, [I

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 13
    invoke-virtual/range {p3 .. p3}, Lcom/junrar/unpack/decode/Decode;->getDecodeNum()[I

    .line 16
    move-result-object v5

    .line 17
    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([II)V

    .line 20
    move v5, v4

    .line 21
    :goto_14
    const/4 v6, 0x1

    .line 22
    if-ge v5, v0, :cond_25

    .line 24
    add-int v7, p2, v5

    .line 26
    aget-byte v7, p1, v7

    .line 28
    and-int/lit8 v7, v7, 0xf

    .line 30
    aget v8, v2, v7

    .line 32
    add-int/2addr v8, v6

    .line 33
    aput v8, v2, v7

    .line 35
    add-int/lit8 v5, v5, 0x1

    .line 37
    goto :goto_14

    .line 38
    :cond_25
    aput v4, v2, v4

    .line 40
    aput v4, v3, v4

    .line 42
    invoke-virtual/range {p3 .. p3}, Lcom/junrar/unpack/decode/Decode;->getDecodePos()[I

    .line 45
    move-result-object v5

    .line 46
    aput v4, v5, v4

    .line 48
    invoke-virtual/range {p3 .. p3}, Lcom/junrar/unpack/decode/Decode;->getDecodeLen()[I

    .line 51
    move-result-object v5

    .line 52
    aput v4, v5, v4

    .line 54
    const-wide/16 v7, 0x0

    .line 56
    :goto_37
    if-ge v6, v1, :cond_69

    .line 58
    const-wide/16 v9, 0x2

    .line 60
    aget v5, v2, v6

    .line 62
    int-to-long v11, v5

    .line 63
    add-long/2addr v7, v11

    .line 64
    mul-long/2addr v7, v9

    .line 65
    rsub-int/lit8 v5, v6, 0xf

    .line 67
    shl-long v9, v7, v5

    .line 69
    const-wide/32 v11, 0xffff

    .line 72
    cmp-long v5, v9, v11

    .line 74
    if-lez v5, :cond_4c

    .line 76
    move-wide v9, v11

    .line 77
    :cond_4c
    invoke-virtual/range {p3 .. p3}, Lcom/junrar/unpack/decode/Decode;->getDecodeLen()[I

    .line 80
    move-result-object v5

    .line 81
    long-to-int v9, v9

    .line 82
    aput v9, v5, v6

    .line 84
    invoke-virtual/range {p3 .. p3}, Lcom/junrar/unpack/decode/Decode;->getDecodePos()[I

    .line 87
    move-result-object v5

    .line 88
    invoke-virtual/range {p3 .. p3}, Lcom/junrar/unpack/decode/Decode;->getDecodePos()[I

    .line 91
    move-result-object v9

    .line 92
    add-int/lit8 v10, v6, -0x1

    .line 94
    aget v9, v9, v10

    .line 96
    aget v10, v2, v10

    .line 98
    add-int/2addr v9, v10

    .line 99
    aput v9, v5, v6

    .line 101
    aput v9, v3, v6

    .line 103
    add-int/lit8 v6, v6, 0x1

    .line 105
    goto :goto_37

    .line 106
    :cond_69
    :goto_69
    if-ge v4, v0, :cond_84

    .line 108
    add-int v1, p2, v4

    .line 110
    aget-byte v2, p1, v1

    .line 112
    if-eqz v2, :cond_81

    .line 114
    invoke-virtual/range {p3 .. p3}, Lcom/junrar/unpack/decode/Decode;->getDecodeNum()[I

    .line 117
    move-result-object v2

    .line 118
    aget-byte v1, p1, v1

    .line 120
    and-int/lit8 v1, v1, 0xf

    .line 122
    aget v5, v3, v1

    .line 124
    add-int/lit8 v6, v5, 0x1

    .line 126
    aput v6, v3, v1

    .line 128
    aput v4, v2, v5

    .line 130
    :cond_81
    add-int/lit8 v4, v4, 0x1

    .line 132
    goto :goto_69

    .line 133
    :cond_84
    invoke-virtual/range {p3 .. p4}, Lcom/junrar/unpack/decode/Decode;->setMaxNum(I)V

    .line 136
    return-void
.end method

.method public unpInitData20(Z)V
    .registers 4

    .line 1
    if-nez p1, :cond_19

    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/junrar/unpack/Unpack20;->UnpCurChannel:I

    .line 6
    iput p1, p0, Lcom/junrar/unpack/Unpack20;->UnpChannelDelta:I

    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/junrar/unpack/Unpack20;->UnpChannels:I

    .line 11
    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->AudV:[Lcom/junrar/unpack/decode/AudioVariables;

    .line 13
    new-instance v1, Lcom/junrar/unpack/decode/AudioVariables;

    .line 15
    invoke-direct {v1}, Lcom/junrar/unpack/decode/AudioVariables;-><init>()V

    .line 18
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->UnpOldTable20:[B

    .line 23
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([BB)V

    .line 26
    :cond_19
    return-void
.end method

.method public unpack20(Z)V
    .registers 11

    .line 1
    iget-boolean v0, p0, Lcom/junrar/unpack/Unpack15;->suspended:Z

    .line 3
    const-wide/16 v1, 0x1

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    .line 9
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 11
    goto :goto_23

    .line 12
    :cond_b
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack15;->unpInitData(Z)V

    .line 15
    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_15

    .line 21
    return-void

    .line 22
    :cond_15
    if-nez p1, :cond_1e

    .line 24
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack20;->ReadTables20()Z

    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1e

    .line 30
    return-void

    .line 31
    :cond_1e
    iget-wide v3, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 33
    sub-long/2addr v3, v1

    .line 34
    iput-wide v3, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 36
    :cond_23
    :goto_23
    iget-wide v3, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 38
    const-wide/16 v5, 0x0

    .line 40
    cmp-long p1, v3, v5

    .line 42
    if-ltz p1, :cond_171

    .line 44
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 46
    const v0, 0x3fffff

    .line 49
    and-int/2addr p1, v0

    .line 50
    iput p1, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 52
    iget p1, p0, Lcom/junrar/unpack/vm/BitInput;->inAddr:I

    .line 54
    iget v3, p0, Lcom/junrar/unpack/Unpack15;->readTop:I

    .line 56
    add-int/lit8 v3, v3, -0x1e

    .line 58
    if-le p1, v3, :cond_43

    .line 60
    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->unpReadBuf()Z

    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_43

    .line 66
    goto/16 :goto_171

    .line 68
    :cond_43
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->wrPtr:I

    .line 70
    iget v3, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 72
    sub-int v4, p1, v3

    .line 74
    and-int/2addr v0, v4

    .line 75
    const/16 v4, 0x10e

    .line 77
    if-ge v0, v4, :cond_58

    .line 79
    if-eq p1, v3, :cond_58

    .line 81
    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->oldUnpWriteBuf()V

    .line 84
    iget-boolean p1, p0, Lcom/junrar/unpack/Unpack15;->suspended:Z

    .line 86
    if-eqz p1, :cond_58

    .line 88
    return-void

    .line 89
    :cond_58
    iget p1, p0, Lcom/junrar/unpack/Unpack20;->UnpAudioBlock:I

    .line 91
    const/16 v0, 0x100

    .line 93
    if-eqz p1, :cond_93

    .line 95
    iget-object p1, p0, Lcom/junrar/unpack/Unpack20;->MD:[Lcom/junrar/unpack/decode/MultDecode;

    .line 97
    iget v3, p0, Lcom/junrar/unpack/Unpack20;->UnpCurChannel:I

    .line 99
    aget-object p1, p1, v3

    .line 101
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    .line 104
    move-result p1

    .line 105
    if-ne p1, v0, :cond_72

    .line 107
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack20;->ReadTables20()Z

    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_23

    .line 113
    goto/16 :goto_171

    .line 115
    :cond_72
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 117
    iget v3, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 119
    add-int/lit8 v4, v3, 0x1

    .line 121
    iput v4, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 123
    invoke-direct {p0, p1}, Lcom/junrar/unpack/Unpack20;->DecodeAudio(I)B

    .line 126
    move-result p1

    .line 127
    aput-byte p1, v0, v3

    .line 129
    iget p1, p0, Lcom/junrar/unpack/Unpack20;->UnpCurChannel:I

    .line 131
    add-int/lit8 p1, p1, 0x1

    .line 133
    iput p1, p0, Lcom/junrar/unpack/Unpack20;->UnpCurChannel:I

    .line 135
    iget v0, p0, Lcom/junrar/unpack/Unpack20;->UnpChannels:I

    .line 137
    if-ne p1, v0, :cond_8d

    .line 139
    const/4 p1, 0x0

    .line 140
    iput p1, p0, Lcom/junrar/unpack/Unpack20;->UnpCurChannel:I

    .line 142
    :cond_8d
    iget-wide v3, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 144
    sub-long/2addr v3, v1

    .line 145
    iput-wide v3, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 147
    goto :goto_23

    .line 148
    :cond_93
    iget-object p1, p0, Lcom/junrar/unpack/Unpack20;->LD:Lcom/junrar/unpack/decode/LitDecode;

    .line 150
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    .line 153
    move-result p1

    .line 154
    if-ge p1, v0, :cond_ad

    .line 156
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->window:[B

    .line 158
    iget v3, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 160
    add-int/lit8 v4, v3, 0x1

    .line 162
    iput v4, p0, Lcom/junrar/unpack/Unpack15;->unpPtr:I

    .line 164
    int-to-byte p1, p1

    .line 165
    aput-byte p1, v0, v3

    .line 167
    iget-wide v3, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 169
    sub-long/2addr v3, v1

    .line 170
    iput-wide v3, p0, Lcom/junrar/unpack/Unpack15;->destUnpSize:J

    .line 172
    goto/16 :goto_23

    .line 174
    :cond_ad
    const/16 v3, 0x2000

    .line 176
    const/16 v5, 0x10d

    .line 178
    if-le p1, v5, :cond_fc

    .line 180
    sget-object v0, Lcom/junrar/unpack/Unpack20;->LDecode:[I

    .line 182
    add-int/lit16 p1, p1, -0x10e

    .line 184
    aget v0, v0, p1

    .line 186
    add-int/lit8 v0, v0, 0x3

    .line 188
    sget-object v4, Lcom/junrar/unpack/Unpack20;->LBits:[B

    .line 190
    aget-byte p1, v4, p1

    .line 192
    if-lez p1, :cond_cc

    .line 194
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 197
    move-result v4

    .line 198
    rsub-int/lit8 v5, p1, 0x10

    .line 200
    ushr-int/2addr v4, v5

    .line 201
    add-int/2addr v0, v4

    .line 202
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 205
    :cond_cc
    iget-object p1, p0, Lcom/junrar/unpack/Unpack20;->DD:Lcom/junrar/unpack/decode/DistDecode;

    .line 207
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    .line 210
    move-result p1

    .line 211
    sget-object v4, Lcom/junrar/unpack/Unpack20;->DDecode:[I

    .line 213
    aget v4, v4, p1

    .line 215
    add-int/lit8 v4, v4, 0x1

    .line 217
    sget-object v5, Lcom/junrar/unpack/Unpack20;->DBits:[I

    .line 219
    aget p1, v5, p1

    .line 221
    if-lez p1, :cond_e9

    .line 223
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 226
    move-result v5

    .line 227
    rsub-int/lit8 v6, p1, 0x10

    .line 229
    ushr-int/2addr v5, v6

    .line 230
    add-int/2addr v4, v5

    .line 231
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 234
    :cond_e9
    if-lt v4, v3, :cond_f7

    .line 236
    add-int/lit8 v0, v0, 0x1

    .line 238
    int-to-long v5, v4

    .line 239
    const-wide/32 v7, 0x40000

    .line 242
    cmp-long p1, v5, v7

    .line 244
    if-ltz p1, :cond_f7

    .line 246
    add-int/lit8 v0, v0, 0x1

    .line 248
    :cond_f7
    invoke-direct {p0, v0, v4}, Lcom/junrar/unpack/Unpack20;->CopyString20(II)V

    .line 251
    goto/16 :goto_23

    .line 253
    :cond_fc
    if-ne p1, v5, :cond_105

    .line 255
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack20;->ReadTables20()Z

    .line 258
    move-result p1

    .line 259
    if-nez p1, :cond_23

    .line 261
    goto :goto_171

    .line 262
    :cond_105
    if-ne p1, v0, :cond_110

    .line 264
    iget p1, p0, Lcom/junrar/unpack/Unpack15;->lastLength:I

    .line 266
    iget v0, p0, Lcom/junrar/unpack/Unpack15;->lastDist:I

    .line 268
    invoke-direct {p0, p1, v0}, Lcom/junrar/unpack/Unpack20;->CopyString20(II)V

    .line 271
    goto/16 :goto_23

    .line 273
    :cond_110
    const/16 v0, 0x105

    .line 275
    const/4 v5, 0x2

    .line 276
    if-ge p1, v0, :cond_151

    .line 278
    iget-object v0, p0, Lcom/junrar/unpack/Unpack15;->oldDist:[I

    .line 280
    iget v4, p0, Lcom/junrar/unpack/Unpack15;->oldDistPtr:I

    .line 282
    add-int/lit16 p1, p1, -0x100

    .line 284
    sub-int/2addr v4, p1

    .line 285
    and-int/lit8 p1, v4, 0x3

    .line 287
    aget p1, v0, p1

    .line 289
    iget-object v0, p0, Lcom/junrar/unpack/Unpack20;->RD:Lcom/junrar/unpack/decode/RepDecode;

    .line 291
    invoke-virtual {p0, v0}, Lcom/junrar/unpack/Unpack20;->decodeNumber(Lcom/junrar/unpack/decode/Decode;)I

    .line 294
    move-result v0

    .line 295
    sget-object v4, Lcom/junrar/unpack/Unpack20;->LDecode:[I

    .line 297
    aget v4, v4, v0

    .line 299
    add-int/2addr v4, v5

    .line 300
    sget-object v5, Lcom/junrar/unpack/Unpack20;->LBits:[B

    .line 302
    aget-byte v0, v5, v0

    .line 304
    if-lez v0, :cond_13c

    .line 306
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 309
    move-result v5

    .line 310
    rsub-int/lit8 v6, v0, 0x10

    .line 312
    ushr-int/2addr v5, v6

    .line 313
    add-int/2addr v4, v5

    .line 314
    invoke-virtual {p0, v0}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 317
    :cond_13c
    const/16 v0, 0x101

    .line 319
    if-lt p1, v0, :cond_14c

    .line 321
    add-int/lit8 v4, v4, 0x1

    .line 323
    if-lt p1, v3, :cond_14c

    .line 325
    add-int/lit8 v4, v4, 0x1

    .line 327
    const/high16 v0, 0x40000

    .line 329
    if-lt p1, v0, :cond_14c

    .line 331
    add-int/lit8 v4, v4, 0x1

    .line 333
    :cond_14c
    invoke-direct {p0, v4, p1}, Lcom/junrar/unpack/Unpack20;->CopyString20(II)V

    .line 336
    goto/16 :goto_23

    .line 338
    :cond_151
    if-ge p1, v4, :cond_23

    .line 340
    sget-object v0, Lcom/junrar/unpack/Unpack20;->SDDecode:[I

    .line 342
    add-int/lit16 p1, p1, -0x105

    .line 344
    aget v0, v0, p1

    .line 346
    add-int/lit8 v0, v0, 0x1

    .line 348
    sget-object v3, Lcom/junrar/unpack/Unpack20;->SDBits:[I

    .line 350
    aget p1, v3, p1

    .line 352
    if-lez p1, :cond_16c

    .line 354
    invoke-virtual {p0}, Lcom/junrar/unpack/vm/BitInput;->getbits()I

    .line 357
    move-result v3

    .line 358
    rsub-int/lit8 v4, p1, 0x10

    .line 360
    ushr-int/2addr v3, v4

    .line 361
    add-int/2addr v0, v3

    .line 362
    invoke-virtual {p0, p1}, Lcom/junrar/unpack/vm/BitInput;->addbits(I)V

    .line 365
    :cond_16c
    invoke-direct {p0, v5, v0}, Lcom/junrar/unpack/Unpack20;->CopyString20(II)V

    .line 368
    goto/16 :goto_23

    .line 370
    :cond_171
    :goto_171
    invoke-direct {p0}, Lcom/junrar/unpack/Unpack20;->ReadLastTables()V

    .line 373
    invoke-virtual {p0}, Lcom/junrar/unpack/Unpack15;->oldUnpWriteBuf()V

    .line 376
    return-void
.end method
