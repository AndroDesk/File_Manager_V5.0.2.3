.class Lcom/android/fileexplorer/view/gif/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;
    }
.end annotation


# static fields
.field private static final BYTES_PER_INTEGER:I = 0x4

.field private static final DISPOSAL_BACKGROUND:I = 0x2

.field private static final DISPOSAL_NONE:I = 0x1

.field private static final DISPOSAL_PREVIOUS:I = 0x3

.field private static final DISPOSAL_UNSPECIFIED:I = 0x0

.field private static final INITIAL_FRAME_POINTER:I = -0x1

.field private static final MAX_STACK_SIZE:I = 0x1000

.field private static final NULL_CODE:I = -0x1

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field private static final STATUS_PARTIAL_DECODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GifDecoder"

.field private static final WORK_BUFFER_SIZE:I = 0x4000


# instance fields
.field private act:[I

.field private bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

.field private block:[B

.field private downsampledHeight:I

.field private downsampledWidth:I

.field private framePointer:I

.field private header:Lcom/android/fileexplorer/view/gif/GifHeader;

.field private isFirstFrameTransparent:Z

.field private mainPixels:[B

.field private mainScratch:[I

.field private parser:Lcom/android/fileexplorer/view/gif/GifHeaderParser;

.field private pixelStack:[B

.field private prefix:[S

.field private previousImage:Landroid/graphics/Bitmap;

.field private rawData:Ljava/nio/ByteBuffer;

.field private sampleSize:I

.field private savePrevious:Z

.field private status:I

.field private suffix:[B

.field private workBuffer:[B

.field private workBufferPosition:I

.field private workBufferSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    new-instance v0, Lcom/android/fileexplorer/view/gif/SimpleBitmapProvider;

    invoke-direct {v0}, Lcom/android/fileexplorer/view/gif/SimpleBitmapProvider;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/gif/GifDecoder;-><init>(Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;)V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    .line 6
    new-instance p1, Lcom/android/fileexplorer/view/gif/GifHeader;

    invoke-direct {p1}, Lcom/android/fileexplorer/view/gif/GifHeader;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;Lcom/android/fileexplorer/view/gif/GifHeader;Ljava/nio/ByteBuffer;)V
    .registers 5

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/view/gif/GifDecoder;-><init>(Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;Lcom/android/fileexplorer/view/gif/GifHeader;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;Lcom/android/fileexplorer/view/gif/GifHeader;Ljava/nio/ByteBuffer;I)V
    .registers 5

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/gif/GifDecoder;-><init>(Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;)V

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/android/fileexplorer/view/gif/GifDecoder;->setData(Lcom/android/fileexplorer/view/gif/GifHeader;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private averageColorsNear(III)I
    .registers 13

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, p1

    .line 3
    move v2, v0

    .line 4
    move v3, v2

    .line 5
    move v4, v3

    .line 6
    move v5, v4

    .line 7
    move v6, v5

    .line 8
    :goto_7
    iget v7, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->sampleSize:I

    .line 10
    add-int/2addr v7, p1

    .line 11
    if-ge v1, v7, :cond_34

    .line 13
    iget-object v7, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainPixels:[B

    .line 15
    array-length v8, v7

    .line 16
    if-ge v1, v8, :cond_34

    .line 18
    if-ge v1, p2, :cond_34

    .line 20
    aget-byte v7, v7, v1

    .line 22
    and-int/lit16 v7, v7, 0xff

    .line 24
    iget-object v8, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->act:[I

    .line 26
    aget v7, v8, v7

    .line 28
    if-eqz v7, :cond_31

    .line 30
    shr-int/lit8 v8, v7, 0x18

    .line 32
    and-int/lit16 v8, v8, 0xff

    .line 34
    add-int/2addr v2, v8

    .line 35
    shr-int/lit8 v8, v7, 0x10

    .line 37
    and-int/lit16 v8, v8, 0xff

    .line 39
    add-int/2addr v3, v8

    .line 40
    shr-int/lit8 v8, v7, 0x8

    .line 42
    and-int/lit16 v8, v8, 0xff

    .line 44
    add-int/2addr v4, v8

    .line 45
    and-int/lit16 v7, v7, 0xff

    .line 47
    add-int/2addr v5, v7

    .line 48
    add-int/lit8 v6, v6, 0x1

    .line 50
    :cond_31
    add-int/lit8 v1, v1, 0x1

    .line 52
    goto :goto_7

    .line 53
    :cond_34
    add-int/2addr p1, p3

    .line 54
    move p3, p1

    .line 55
    :goto_36
    iget v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->sampleSize:I

    .line 57
    add-int/2addr v1, p1

    .line 58
    if-ge p3, v1, :cond_63

    .line 60
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainPixels:[B

    .line 62
    array-length v7, v1

    .line 63
    if-ge p3, v7, :cond_63

    .line 65
    if-ge p3, p2, :cond_63

    .line 67
    aget-byte v1, v1, p3

    .line 69
    and-int/lit16 v1, v1, 0xff

    .line 71
    iget-object v7, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->act:[I

    .line 73
    aget v1, v7, v1

    .line 75
    if-eqz v1, :cond_60

    .line 77
    shr-int/lit8 v7, v1, 0x18

    .line 79
    and-int/lit16 v7, v7, 0xff

    .line 81
    add-int/2addr v2, v7

    .line 82
    shr-int/lit8 v7, v1, 0x10

    .line 84
    and-int/lit16 v7, v7, 0xff

    .line 86
    add-int/2addr v3, v7

    .line 87
    shr-int/lit8 v7, v1, 0x8

    .line 89
    and-int/lit16 v7, v7, 0xff

    .line 91
    add-int/2addr v4, v7

    .line 92
    and-int/lit16 v1, v1, 0xff

    .line 94
    add-int/2addr v5, v1

    .line 95
    add-int/lit8 v6, v6, 0x1

    .line 97
    :cond_60
    add-int/lit8 p3, p3, 0x1

    .line 99
    goto :goto_36

    .line 100
    :cond_63
    if-nez v6, :cond_66

    .line 102
    goto :goto_74

    .line 103
    :cond_66
    div-int/2addr v2, v6

    .line 104
    shl-int/lit8 p1, v2, 0x18

    .line 106
    div-int/2addr v3, v6

    .line 107
    shl-int/lit8 p2, v3, 0x10

    .line 109
    or-int/2addr p1, p2

    .line 110
    div-int/2addr v4, v6

    .line 111
    shl-int/lit8 p2, v4, 0x8

    .line 113
    or-int/2addr p1, p2

    .line 114
    div-int/2addr v5, v6

    .line 115
    or-int v0, p1, v5

    .line 117
    :goto_74
    return v0
.end method

.method private decodeBitmapData(Lcom/android/fileexplorer/view/gif/GifFrame;)V
    .registers 29

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferSize:I

    .line 8
    iput v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    .line 10
    if-eqz v1, :cond_12

    .line 12
    iget-object v3, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 14
    iget v4, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->bufferFrameStart:I

    .line 16
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 19
    :cond_12
    if-nez v1, :cond_1b

    .line 21
    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 23
    iget v3, v1, Lcom/android/fileexplorer/view/gif/GifHeader;->width:I

    .line 25
    iget v1, v1, Lcom/android/fileexplorer/view/gif/GifHeader;->height:I

    .line 27
    goto :goto_1f

    .line 28
    :cond_1b
    iget v3, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->iw:I

    .line 30
    iget v1, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->ih:I

    .line 32
    :goto_1f
    mul-int/2addr v3, v1

    .line 33
    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainPixels:[B

    .line 35
    if-eqz v1, :cond_27

    .line 37
    array-length v1, v1

    .line 38
    if-ge v1, v3, :cond_2f

    .line 40
    :cond_27
    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    .line 42
    invoke-interface {v1, v3}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    .line 45
    move-result-object v1

    .line 46
    iput-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainPixels:[B

    .line 48
    :cond_2f
    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->prefix:[S

    .line 50
    const/16 v4, 0x1000

    .line 52
    if-nez v1, :cond_39

    .line 54
    new-array v1, v4, [S

    .line 56
    iput-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->prefix:[S

    .line 58
    :cond_39
    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->suffix:[B

    .line 60
    if-nez v1, :cond_41

    .line 62
    new-array v1, v4, [B

    .line 64
    iput-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->suffix:[B

    .line 66
    :cond_41
    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->pixelStack:[B

    .line 68
    if-nez v1, :cond_4b

    .line 70
    const/16 v1, 0x1001

    .line 72
    new-array v1, v1, [B

    .line 74
    iput-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->pixelStack:[B

    .line 76
    :cond_4b
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->readByte()I

    .line 79
    move-result v1

    .line 80
    const/4 v5, 0x1

    .line 81
    shl-int v6, v5, v1

    .line 83
    add-int/lit8 v7, v6, 0x1

    .line 85
    add-int/lit8 v8, v6, 0x2

    .line 87
    add-int/2addr v1, v5

    .line 88
    shl-int v9, v5, v1

    .line 90
    sub-int/2addr v9, v5

    .line 91
    move v10, v2

    .line 92
    :goto_5b
    if-ge v10, v6, :cond_69

    .line 94
    iget-object v11, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->prefix:[S

    .line 96
    aput-short v2, v11, v10

    .line 98
    iget-object v11, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->suffix:[B

    .line 100
    int-to-byte v12, v10

    .line 101
    aput-byte v12, v11, v10

    .line 103
    add-int/lit8 v10, v10, 0x1

    .line 105
    goto :goto_5b

    .line 106
    :cond_69
    const/4 v10, -0x1

    .line 107
    move/from16 v19, v1

    .line 109
    move v11, v2

    .line 110
    move v12, v11

    .line 111
    move v13, v12

    .line 112
    move v14, v13

    .line 113
    move v15, v14

    .line 114
    move/from16 v16, v15

    .line 116
    move/from16 v21, v16

    .line 118
    move/from16 v22, v21

    .line 120
    move/from16 v17, v8

    .line 122
    move/from16 v18, v9

    .line 124
    move/from16 v20, v10

    .line 126
    :goto_7d
    if-ge v11, v3, :cond_177

    .line 128
    const/4 v2, 0x3

    .line 129
    if-nez v12, :cond_8d

    .line 131
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->readBlock()I

    .line 134
    move-result v12

    .line 135
    if-gtz v12, :cond_8c

    .line 137
    iput v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    .line 139
    goto/16 :goto_177

    .line 141
    :cond_8c
    const/4 v13, 0x0

    .line 142
    :cond_8d
    iget-object v4, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->block:[B

    .line 144
    aget-byte v4, v4, v13

    .line 146
    and-int/lit16 v4, v4, 0xff

    .line 148
    shl-int/2addr v4, v14

    .line 149
    add-int/2addr v15, v4

    .line 150
    add-int/lit8 v14, v14, 0x8

    .line 152
    add-int/2addr v13, v5

    .line 153
    add-int/2addr v12, v10

    .line 154
    move/from16 v4, v17

    .line 156
    move/from16 v5, v19

    .line 158
    move/from16 v23, v20

    .line 160
    move/from16 v24, v21

    .line 162
    :goto_a1
    if-lt v14, v5, :cond_161

    .line 164
    and-int v10, v15, v18

    .line 166
    shr-int/2addr v15, v5

    .line 167
    sub-int/2addr v14, v5

    .line 168
    if-ne v10, v6, :cond_b1

    .line 170
    move v5, v1

    .line 171
    move v4, v8

    .line 172
    move/from16 v18, v9

    .line 174
    const/4 v10, -0x1

    .line 175
    const/16 v23, -0x1

    .line 177
    goto :goto_a1

    .line 178
    :cond_b1
    if-le v10, v4, :cond_b6

    .line 180
    iput v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    .line 182
    goto :goto_b8

    .line 183
    :cond_b6
    if-ne v10, v7, :cond_c6

    .line 185
    :goto_b8
    move/from16 v17, v4

    .line 187
    move/from16 v19, v5

    .line 189
    move/from16 v20, v23

    .line 191
    move/from16 v21, v24

    .line 193
    const/4 v2, 0x0

    .line 194
    const/16 v4, 0x1000

    .line 196
    const/4 v5, 0x1

    .line 197
    const/4 v10, -0x1

    .line 198
    goto :goto_7d

    .line 199
    :cond_c6
    move/from16 v19, v1

    .line 201
    move/from16 v2, v23

    .line 203
    const/4 v1, -0x1

    .line 204
    if-ne v2, v1, :cond_e2

    .line 206
    iget-object v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->pixelStack:[B

    .line 208
    add-int/lit8 v21, v22, 0x1

    .line 210
    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->suffix:[B

    .line 212
    aget-byte v1, v1, v10

    .line 214
    aput-byte v1, v2, v22

    .line 216
    move/from16 v23, v10

    .line 218
    move/from16 v24, v23

    .line 220
    move/from16 v1, v19

    .line 222
    move/from16 v22, v21

    .line 224
    const/4 v2, 0x3

    .line 225
    const/4 v10, -0x1

    .line 226
    goto :goto_a1

    .line 227
    :cond_e2
    if-lt v10, v4, :cond_f3

    .line 229
    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->pixelStack:[B

    .line 231
    add-int/lit8 v21, v22, 0x1

    .line 233
    move/from16 v25, v7

    .line 235
    move/from16 v7, v24

    .line 237
    int-to-byte v7, v7

    .line 238
    aput-byte v7, v1, v22

    .line 240
    move v1, v2

    .line 241
    move/from16 v22, v21

    .line 243
    goto :goto_f6

    .line 244
    :cond_f3
    move/from16 v25, v7

    .line 246
    move v1, v10

    .line 247
    :goto_f6
    if-lt v1, v6, :cond_10d

    .line 249
    iget-object v7, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->pixelStack:[B

    .line 251
    add-int/lit8 v21, v22, 0x1

    .line 253
    move/from16 v24, v6

    .line 255
    iget-object v6, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->suffix:[B

    .line 257
    aget-byte v6, v6, v1

    .line 259
    aput-byte v6, v7, v22

    .line 261
    iget-object v6, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->prefix:[S

    .line 263
    aget-short v1, v6, v1

    .line 265
    move/from16 v22, v21

    .line 267
    move/from16 v6, v24

    .line 269
    goto :goto_f6

    .line 270
    :cond_10d
    move/from16 v24, v6

    .line 272
    iget-object v6, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->suffix:[B

    .line 274
    aget-byte v1, v6, v1

    .line 276
    and-int/lit16 v1, v1, 0xff

    .line 278
    iget-object v7, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->pixelStack:[B

    .line 280
    add-int/lit8 v21, v22, 0x1

    .line 282
    move/from16 v26, v8

    .line 284
    int-to-byte v8, v1

    .line 285
    aput-byte v8, v7, v22

    .line 287
    const/16 v7, 0x1000

    .line 289
    if-ge v4, v7, :cond_13b

    .line 291
    iget-object v7, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->prefix:[S

    .line 293
    int-to-short v2, v2

    .line 294
    aput-short v2, v7, v4

    .line 296
    aput-byte v8, v6, v4

    .line 298
    add-int/lit8 v4, v4, 0x1

    .line 300
    and-int v2, v4, v18

    .line 302
    if-nez v2, :cond_138

    .line 304
    const/16 v2, 0x1000

    .line 306
    if-ge v4, v2, :cond_13c

    .line 308
    add-int/lit8 v5, v5, 0x1

    .line 310
    add-int v18, v18, v4

    .line 312
    goto :goto_13c

    .line 313
    :cond_138
    const/16 v2, 0x1000

    .line 315
    goto :goto_13c

    .line 316
    :cond_13b
    move v2, v7

    .line 317
    :cond_13c
    :goto_13c
    move/from16 v22, v21

    .line 319
    :goto_13e
    if-lez v22, :cond_151

    .line 321
    iget-object v6, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainPixels:[B

    .line 323
    add-int/lit8 v7, v16, 0x1

    .line 325
    iget-object v8, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->pixelStack:[B

    .line 327
    add-int/lit8 v22, v22, -0x1

    .line 329
    aget-byte v8, v8, v22

    .line 331
    aput-byte v8, v6, v16

    .line 333
    add-int/lit8 v11, v11, 0x1

    .line 335
    move/from16 v16, v7

    .line 337
    goto :goto_13e

    .line 338
    :cond_151
    move/from16 v23, v10

    .line 340
    move/from16 v6, v24

    .line 342
    move/from16 v7, v25

    .line 344
    move/from16 v8, v26

    .line 346
    const/4 v2, 0x3

    .line 347
    const/4 v10, -0x1

    .line 348
    move/from16 v24, v1

    .line 350
    move/from16 v1, v19

    .line 352
    goto/16 :goto_a1

    .line 354
    :cond_161
    move/from16 v25, v7

    .line 356
    move/from16 v2, v23

    .line 358
    move/from16 v7, v24

    .line 360
    move/from16 v20, v2

    .line 362
    move/from16 v17, v4

    .line 364
    move/from16 v19, v5

    .line 366
    move/from16 v21, v7

    .line 368
    move/from16 v7, v25

    .line 370
    const/4 v2, 0x0

    .line 371
    const/16 v4, 0x1000

    .line 373
    const/4 v5, 0x1

    .line 374
    goto/16 :goto_7d

    .line 376
    :cond_177
    :goto_177
    move/from16 v1, v16

    .line 378
    :goto_179
    if-ge v1, v3, :cond_183

    .line 380
    iget-object v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainPixels:[B

    .line 382
    const/4 v4, 0x0

    .line 383
    aput-byte v4, v2, v1

    .line 385
    add-int/lit8 v1, v1, 0x1

    .line 387
    goto :goto_179

    .line 388
    :cond_183
    return-void
.end method

.method private getDelay(I)I
    .registers 4

    .line 1
    if-ltz p1, :cond_13

    .line 3
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 5
    iget v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    .line 7
    if-ge p1, v1, :cond_13

    .line 9
    iget-object v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frames:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/android/fileexplorer/view/gif/GifFrame;

    .line 17
    iget p1, p1, Lcom/android/fileexplorer/view/gif/GifFrame;->delay:I

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p1, -0x1

    .line 21
    :goto_14
    return p1
.end method

.method private getHeaderParser()Lcom/android/fileexplorer/view/gif/GifHeaderParser;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->parser:Lcom/android/fileexplorer/view/gif/GifHeaderParser;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;

    .line 7
    invoke-direct {v0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->parser:Lcom/android/fileexplorer/view/gif/GifHeaderParser;

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->parser:Lcom/android/fileexplorer/view/gif/GifHeaderParser;

    .line 14
    return-object v0
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->isFirstFrameTransparent:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 10
    :goto_9
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    .line 12
    iget v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledWidth:I

    .line 14
    iget v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledHeight:I

    .line 16
    invoke-interface {v1, v2, v3, v0}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->setAlpha(Landroid/graphics/Bitmap;)V

    .line 23
    return-object v0
.end method

.method private readBlock()I
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->readByte()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_5f

    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_7
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->block:[B

    .line 10
    if-nez v2, :cond_15

    .line 12
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    .line 14
    const/16 v3, 0xff

    .line 16
    invoke-interface {v2, v3}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    .line 19
    move-result-object v2

    .line 20
    iput-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->block:[B

    .line 22
    :cond_15
    iget v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferSize:I

    .line 24
    iget v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    .line 26
    sub-int/2addr v2, v3

    .line 27
    const/4 v4, 0x0

    .line 28
    if-lt v2, v0, :cond_2a

    .line 30
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBuffer:[B

    .line 32
    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->block:[B

    .line 34
    invoke-static {v2, v3, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iget v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    .line 39
    add-int/2addr v2, v0

    .line 40
    iput v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    .line 42
    goto :goto_5f

    .line 43
    :cond_2a
    iget-object v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 45
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    .line 48
    move-result v3

    .line 49
    add-int/2addr v3, v2

    .line 50
    if-lt v3, v0, :cond_52

    .line 52
    iget-object v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBuffer:[B

    .line 54
    iget v5, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    .line 56
    iget-object v6, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->block:[B

    .line 58
    invoke-static {v3, v5, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferSize:I

    .line 63
    iput v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    .line 65
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->readChunkIfNeeded()V

    .line 68
    sub-int v3, v0, v2

    .line 70
    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBuffer:[B

    .line 72
    iget-object v6, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->block:[B

    .line 74
    invoke-static {v5, v4, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    .line 79
    add-int/2addr v2, v3

    .line 80
    iput v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    .line 82
    goto :goto_5f

    .line 83
    :cond_52
    iput v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_54} :catch_55

    .line 85
    goto :goto_5f

    .line 86
    :catch_55
    move-exception v2

    .line 87
    sget-object v3, Lcom/android/fileexplorer/view/gif/GifDecoder;->TAG:Ljava/lang/String;

    .line 89
    const-string v4, "Error Reading Block"

    .line 91
    invoke-static {v3, v4, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    iput v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    .line 96
    :cond_5f
    :goto_5f
    return v0
.end method

.method private readByte()I
    .registers 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->readChunkIfNeeded()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBuffer:[B

    .line 6
    iget v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 10
    iput v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    .line 12
    aget-byte v0, v0, v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_10

    .line 14
    and-int/lit16 v0, v0, 0xff

    .line 16
    return v0

    .line 17
    :catch_10
    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    .line 20
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method private readChunkIfNeeded()V
    .registers 5

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferSize:I

    .line 3
    iget v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    .line 5
    if-le v0, v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBuffer:[B

    .line 10
    const/16 v1, 0x4000

    .line 12
    if-nez v0, :cond_15

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    .line 16
    invoke-interface {v0, v1}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBuffer:[B

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    .line 25
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 30
    move-result v2

    .line 31
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 34
    move-result v1

    .line 35
    iput v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferSize:I

    .line 37
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 39
    iget-object v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBuffer:[B

    .line 41
    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 44
    return-void
.end method

.method private static setAlpha(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 5
    return-void
.end method

.method private declared-synchronized setData(Lcom/android/fileexplorer/view/gif/GifHeader;Ljava/nio/ByteBuffer;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 3
    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->setData(Lcom/android/fileexplorer/view/gif/GifHeader;Ljava/nio/ByteBuffer;I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 4
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setData(Lcom/android/fileexplorer/view/gif/GifHeader;Ljava/nio/ByteBuffer;I)V
    .registers 6

    monitor-enter p0

    if-lez p3, :cond_69

    .line 5
    :try_start_3
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    .line 7
    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 8
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->isFirstFrameTransparent:Z

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    .line 10
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iget-object p2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 13
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->savePrevious:Z

    .line 14
    iget-object p2, p1, Lcom/android/fileexplorer/view/gif/GifHeader;->frames:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_29
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/gif/GifFrame;

    .line 15
    iget v0, v0, Lcom/android/fileexplorer/view/gif/GifFrame;->dispose:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_29

    const/4 p2, 0x1

    .line 16
    iput-boolean p2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->savePrevious:Z

    .line 17
    :cond_3d
    iput p3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->sampleSize:I

    .line 18
    iget-object p2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    iget v0, p1, Lcom/android/fileexplorer/view/gif/GifHeader;->width:I

    iget v1, p1, Lcom/android/fileexplorer/view/gif/GifHeader;->height:I

    mul-int/2addr v0, v1

    invoke-interface {p2, v0}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainPixels:[B

    .line 19
    iget-object p2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    iget v0, p1, Lcom/android/fileexplorer/view/gif/GifHeader;->width:I

    div-int/2addr v0, p3

    iget v1, p1, Lcom/android/fileexplorer/view/gif/GifHeader;->height:I

    div-int/2addr v1, p3

    mul-int/2addr v0, v1

    .line 20
    invoke-interface {p2, v0}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->obtainIntArray(I)[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainScratch:[I

    .line 21
    iget p2, p1, Lcom/android/fileexplorer/view/gif/GifHeader;->width:I

    div-int/2addr p2, p3

    iput p2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledWidth:I

    .line 22
    iget p1, p1, Lcom/android/fileexplorer/view/gif/GifHeader;->height:I

    div-int/2addr p1, p3

    iput p1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledHeight:I
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_67

    .line 23
    monitor-exit p0

    return-void

    :catchall_67
    move-exception p1

    goto :goto_80

    .line 24
    :cond_69
    :try_start_69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sample size must be >=0, not: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_80
    .catchall {:try_start_69 .. :try_end_80} :catchall_67

    :goto_80
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setData(Lcom/android/fileexplorer/view/gif/GifHeader;[B)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/gif/GifDecoder;->setData(Lcom/android/fileexplorer/view/gif/GifHeader;Ljava/nio/ByteBuffer;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 2
    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setPixels(Lcom/android/fileexplorer/view/gif/GifFrame;Lcom/android/fileexplorer/view/gif/GifFrame;)Landroid/graphics/Bitmap;
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    iget-object v10, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainScratch:[I

    .line 9
    const/4 v11, 0x3

    .line 10
    const/4 v12, 0x2

    .line 11
    const/4 v13, 0x0

    .line 12
    const/4 v14, 0x1

    .line 13
    if-eqz v2, :cond_3a

    .line 15
    iget v2, v2, Lcom/android/fileexplorer/view/gif/GifFrame;->dispose:I

    .line 17
    if-lez v2, :cond_3a

    .line 19
    if-ne v2, v12, :cond_28

    .line 21
    iget-boolean v2, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->transparency:Z

    .line 23
    if-nez v2, :cond_1d

    .line 25
    iget-object v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 27
    iget v2, v2, Lcom/android/fileexplorer/view/gif/GifHeader;->bgColor:I

    .line 29
    goto :goto_24

    .line 30
    :cond_1d
    iget v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    .line 32
    if-nez v2, :cond_23

    .line 34
    iput-boolean v14, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->isFirstFrameTransparent:Z

    .line 36
    :cond_23
    move v2, v13

    .line 37
    :goto_24
    invoke-static {v10, v2}, Ljava/util/Arrays;->fill([II)V

    .line 40
    goto :goto_3a

    .line 41
    :cond_28
    if-ne v2, v11, :cond_3a

    .line 43
    iget-object v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 45
    if-eqz v2, :cond_3a

    .line 47
    const/4 v4, 0x0

    .line 48
    iget v8, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledWidth:I

    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    iget v9, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledHeight:I

    .line 54
    move-object v3, v10

    .line 55
    move v5, v8

    .line 56
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 59
    :cond_3a
    :goto_3a
    invoke-direct/range {p0 .. p1}, Lcom/android/fileexplorer/view/gif/GifDecoder;->decodeBitmapData(Lcom/android/fileexplorer/view/gif/GifFrame;)V

    .line 62
    iget v2, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->ih:I

    .line 64
    iget v3, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->sampleSize:I

    .line 66
    div-int/2addr v2, v3

    .line 67
    iget v4, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->iy:I

    .line 69
    div-int/2addr v4, v3

    .line 70
    iget v5, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->iw:I

    .line 72
    div-int/2addr v5, v3

    .line 73
    iget v6, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->ix:I

    .line 75
    div-int/2addr v6, v3

    .line 76
    const/16 v3, 0x8

    .line 78
    iget v7, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    .line 80
    if-nez v7, :cond_53

    .line 82
    move v7, v14

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    move v7, v13

    .line 85
    :goto_54
    move v8, v13

    .line 86
    move v9, v14

    .line 87
    :goto_56
    if-ge v13, v2, :cond_be

    .line 89
    iget-boolean v15, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->interlace:Z

    .line 91
    if-eqz v15, :cond_72

    .line 93
    const/4 v15, 0x4

    .line 94
    if-lt v8, v2, :cond_6f

    .line 96
    add-int/lit8 v9, v9, 0x1

    .line 98
    if-eq v9, v12, :cond_6e

    .line 100
    if-eq v9, v11, :cond_6b

    .line 102
    if-eq v9, v15, :cond_68

    .line 104
    goto :goto_6f

    .line 105
    :cond_68
    move v3, v12

    .line 106
    move v8, v14

    .line 107
    goto :goto_6f

    .line 108
    :cond_6b
    move v8, v12

    .line 109
    move v3, v15

    .line 110
    goto :goto_6f

    .line 111
    :cond_6e
    move v8, v15

    .line 112
    :cond_6f
    :goto_6f
    add-int v15, v8, v3

    .line 114
    goto :goto_74

    .line 115
    :cond_72
    move v15, v8

    .line 116
    move v8, v13

    .line 117
    :goto_74
    add-int/2addr v8, v4

    .line 118
    iget v11, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledHeight:I

    .line 120
    if-ge v8, v11, :cond_b3

    .line 122
    iget v11, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledWidth:I

    .line 124
    mul-int/2addr v8, v11

    .line 125
    add-int v16, v8, v6

    .line 127
    add-int v12, v16, v5

    .line 129
    add-int v14, v8, v11

    .line 131
    if-ge v14, v12, :cond_86

    .line 133
    add-int v12, v8, v11

    .line 135
    :cond_86
    iget v8, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->sampleSize:I

    .line 137
    mul-int v11, v13, v8

    .line 139
    iget v14, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->iw:I

    .line 141
    mul-int/2addr v11, v14

    .line 142
    sub-int v14, v12, v16

    .line 144
    mul-int/2addr v14, v8

    .line 145
    add-int/2addr v14, v11

    .line 146
    move/from16 v8, v16

    .line 148
    :goto_93
    if-ge v8, v12, :cond_b3

    .line 150
    move/from16 p2, v2

    .line 152
    iget v2, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->iw:I

    .line 154
    invoke-direct {v0, v11, v14, v2}, Lcom/android/fileexplorer/view/gif/GifDecoder;->averageColorsNear(III)I

    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_a2

    .line 160
    aput v2, v10, v8

    .line 162
    goto :goto_ab

    .line 163
    :cond_a2
    iget-boolean v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->isFirstFrameTransparent:Z

    .line 165
    if-nez v2, :cond_ab

    .line 167
    if-eqz v7, :cond_ab

    .line 169
    const/4 v2, 0x1

    .line 170
    iput-boolean v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->isFirstFrameTransparent:Z

    .line 172
    :cond_ab
    :goto_ab
    iget v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->sampleSize:I

    .line 174
    add-int/2addr v11, v2

    .line 175
    add-int/lit8 v8, v8, 0x1

    .line 177
    move/from16 v2, p2

    .line 179
    goto :goto_93

    .line 180
    :cond_b3
    move/from16 p2, v2

    .line 182
    add-int/lit8 v13, v13, 0x1

    .line 184
    move/from16 v2, p2

    .line 186
    move v8, v15

    .line 187
    const/4 v11, 0x3

    .line 188
    const/4 v12, 0x2

    .line 189
    const/4 v14, 0x1

    .line 190
    goto :goto_56

    .line 191
    :cond_be
    iget-boolean v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->savePrevious:Z

    .line 193
    if-eqz v2, :cond_e1

    .line 195
    iget v1, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->dispose:I

    .line 197
    if-eqz v1, :cond_c9

    .line 199
    const/4 v2, 0x1

    .line 200
    if-ne v1, v2, :cond_e1

    .line 202
    :cond_c9
    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 204
    if-nez v1, :cond_d3

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    .line 209
    move-result-object v1

    .line 210
    iput-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 212
    :cond_d3
    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 214
    const/4 v3, 0x0

    .line 215
    iget v7, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledWidth:I

    .line 217
    const/4 v5, 0x0

    .line 218
    const/4 v6, 0x0

    .line 219
    iget v8, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledHeight:I

    .line 221
    move-object v2, v10

    .line 222
    move v4, v7

    .line 223
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 226
    :cond_e1
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    .line 229
    move-result-object v9

    .line 230
    const/4 v3, 0x0

    .line 231
    iget v7, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledWidth:I

    .line 233
    const/4 v5, 0x0

    .line 234
    const/4 v6, 0x0

    .line 235
    iget v8, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledHeight:I

    .line 237
    move-object v1, v9

    .line 238
    move-object v2, v10

    .line 239
    move v4, v7

    .line 240
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 243
    return-object v9
.end method


# virtual methods
.method public advance()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 7
    iget v1, v1, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    .line 9
    rem-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    .line 12
    return-void
.end method

.method public clear()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 4
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainPixels:[B

    .line 6
    if-eqz v1, :cond_c

    .line 8
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    .line 10
    invoke-interface {v2, v1}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->release([B)V

    .line 13
    :cond_c
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainScratch:[I

    .line 15
    if-eqz v1, :cond_15

    .line 17
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    .line 19
    invoke-interface {v2, v1}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->release([I)V

    .line 22
    :cond_15
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 24
    if-eqz v1, :cond_1e

    .line 26
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    .line 28
    invoke-interface {v2, v1}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 31
    :cond_1e
    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 33
    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->isFirstFrameTransparent:Z

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->block:[B

    .line 40
    if-eqz v0, :cond_2e

    .line 42
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    .line 44
    invoke-interface {v1, v0}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->release([B)V

    .line 47
    :cond_2e
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBuffer:[B

    .line 49
    if-eqz v0, :cond_37

    .line 51
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    .line 53
    invoke-interface {v1, v0}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->release([B)V

    .line 56
    :cond_37
    return-void
.end method

.method public getByteSize()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainPixels:[B

    .line 9
    array-length v1, v1

    .line 10
    add-int/2addr v0, v1

    .line 11
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainScratch:[I

    .line 13
    array-length v1, v1

    .line 14
    mul-int/lit8 v1, v1, 0x4

    .line 16
    add-int/2addr v1, v0

    .line 17
    return v1
.end method

.method public getCurrentFrameIndex()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    .line 3
    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 3
    return-object v0
.end method

.method public getFrameCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 3
    iget v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    .line 5
    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 3
    iget v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->height:I

    .line 5
    return v0
.end method

.method public getLoopCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 3
    iget v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->loopCount:I

    .line 5
    return v0
.end method

.method public getNextDelay()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 3
    iget v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    .line 5
    if-lez v0, :cond_10

    .line 7
    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    .line 9
    if-gez v0, :cond_b

    .line 11
    goto :goto_10

    .line 12
    :cond_b
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getDelay(I)I

    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_10
    :goto_10
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .registers 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 4
    iget v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    .line 6
    const/4 v1, 0x1

    .line 7
    if-lez v0, :cond_c

    .line 9
    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    .line 11
    if-gez v0, :cond_32

    .line 13
    :cond_c
    sget-object v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->TAG:Ljava/lang/String;

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v3, "unable to decode frame, frameCount="

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 27
    iget v3, v3, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string v3, " framePointer="

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    .line 51
    :cond_32
    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    .line 53
    const/4 v2, 0x0

    .line 54
    if-eq v0, v1, :cond_b0

    .line 56
    const/4 v3, 0x2

    .line 57
    if-ne v0, v3, :cond_3c

    .line 59
    goto/16 :goto_b0

    .line 61
    :cond_3c
    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    .line 64
    iget-object v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 66
    iget-object v3, v3, Lcom/android/fileexplorer/view/gif/GifHeader;->frames:Ljava/util/List;

    .line 68
    iget v4, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    .line 70
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lcom/android/fileexplorer/view/gif/GifFrame;

    .line 76
    iget v4, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    .line 78
    sub-int/2addr v4, v1

    .line 79
    if-ltz v4, :cond_5b

    .line 81
    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 83
    iget-object v5, v5, Lcom/android/fileexplorer/view/gif/GifHeader;->frames:Ljava/util/List;

    .line 85
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v4

    .line 89
    :goto_58
    check-cast v4, Lcom/android/fileexplorer/view/gif/GifFrame;

    .line 91
    goto :goto_69

    .line 92
    :cond_5b
    iget-object v4, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 94
    iget-object v4, v4, Lcom/android/fileexplorer/view/gif/GifHeader;->frames:Ljava/util/List;

    .line 96
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getFrameCount()I

    .line 99
    move-result v5

    .line 100
    sub-int/2addr v5, v1

    .line 101
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    move-result-object v4

    .line 105
    goto :goto_58

    .line 106
    :goto_69
    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 108
    iget v6, v5, Lcom/android/fileexplorer/view/gif/GifHeader;->bgColor:I

    .line 110
    iget-object v7, v3, Lcom/android/fileexplorer/view/gif/GifFrame;->lct:[I

    .line 112
    if-nez v7, :cond_76

    .line 114
    iget-object v5, v5, Lcom/android/fileexplorer/view/gif/GifHeader;->gct:[I

    .line 116
    iput-object v5, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->act:[I

    .line 118
    goto :goto_80

    .line 119
    :cond_76
    iput-object v7, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->act:[I

    .line 121
    iget v7, v5, Lcom/android/fileexplorer/view/gif/GifHeader;->bgIndex:I

    .line 123
    iget v8, v3, Lcom/android/fileexplorer/view/gif/GifFrame;->transIndex:I

    .line 125
    if-ne v7, v8, :cond_80

    .line 127
    iput v0, v5, Lcom/android/fileexplorer/view/gif/GifHeader;->bgColor:I

    .line 129
    :cond_80
    :goto_80
    iget-boolean v5, v3, Lcom/android/fileexplorer/view/gif/GifFrame;->transparency:Z

    .line 131
    if-eqz v5, :cond_8d

    .line 133
    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->act:[I

    .line 135
    iget v7, v3, Lcom/android/fileexplorer/view/gif/GifFrame;->transIndex:I

    .line 137
    aget v8, v5, v7

    .line 139
    aput v0, v5, v7

    .line 141
    move v0, v8

    .line 142
    :cond_8d
    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->act:[I

    .line 144
    if-nez v5, :cond_9c

    .line 146
    sget-object v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->TAG:Ljava/lang/String;

    .line 148
    const-string v3, "No Valid Color Table"

    .line 150
    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iput v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I
    :try_end_9a
    .catchall {:try_start_1 .. :try_end_9a} :catchall_ca

    .line 155
    monitor-exit p0

    .line 156
    return-object v2

    .line 157
    :cond_9c
    :try_start_9c
    invoke-direct {p0, v3, v4}, Lcom/android/fileexplorer/view/gif/GifDecoder;->setPixels(Lcom/android/fileexplorer/view/gif/GifFrame;Lcom/android/fileexplorer/view/gif/GifFrame;)Landroid/graphics/Bitmap;

    .line 160
    move-result-object v1

    .line 161
    iget-boolean v2, v3, Lcom/android/fileexplorer/view/gif/GifFrame;->transparency:Z

    .line 163
    if-eqz v2, :cond_aa

    .line 165
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->act:[I

    .line 167
    iget v3, v3, Lcom/android/fileexplorer/view/gif/GifFrame;->transIndex:I

    .line 169
    aput v0, v2, v3

    .line 171
    :cond_aa
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 173
    iput v6, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->bgColor:I
    :try_end_ae
    .catchall {:try_start_9c .. :try_end_ae} :catchall_ca

    .line 175
    monitor-exit p0

    .line 176
    return-object v1

    .line 177
    :cond_b0
    :goto_b0
    :try_start_b0
    sget-object v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->TAG:Ljava/lang/String;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    const-string v3, "Unable to decode frame, status="

    .line 186
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    .line 191
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v1

    .line 198
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_b0 .. :try_end_c8} :catchall_ca

    .line 201
    monitor-exit p0

    .line 202
    return-object v2

    .line 203
    :catchall_ca
    move-exception v0

    .line 204
    monitor-exit p0

    .line 205
    throw v0
.end method

.method public getStatus()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    .line 3
    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 3
    iget v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->width:I

    .line 5
    return v0
.end method

.method public read(Ljava/io/InputStream;I)I
    .registers 8

    if-eqz p1, :cond_31

    const/16 v0, 0x4000

    if-lez p2, :cond_9

    add-int/lit16 p2, p2, 0x1000

    goto :goto_a

    :cond_9
    move p2, v0

    .line 1
    :goto_a
    :try_start_a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array p2, v0, [B

    :goto_11
    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, p2, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1d

    .line 3
    invoke-virtual {v1, p2, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_11

    .line 4
    :cond_1d
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/gif/GifDecoder;->read([B)I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_27} :catch_28

    goto :goto_34

    :catch_28
    move-exception p2

    .line 6
    sget-object v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->TAG:Ljava/lang/String;

    const-string v1, "Error reading data from stream"

    invoke-static {v0, v1, p2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_34

    :cond_31
    const/4 p2, 0x2

    .line 7
    iput p2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    .line 8
    :goto_34
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    .line 9
    iget p1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    return p1
.end method

.method public declared-synchronized read([B)I
    .registers 3

    monitor-enter p0

    .line 10
    :try_start_1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getHeaderParser()Lcom/android/fileexplorer/view/gif/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->setData([B)Lcom/android/fileexplorer/view/gif/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->parseHeader()Lcom/android/fileexplorer/view/gif/GifHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    if-eqz p1, :cond_14

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/gif/GifDecoder;->setData(Lcom/android/fileexplorer/view/gif/GifHeader;[B)V

    .line 12
    :cond_14
    iget p1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return p1

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resetFrameIndex()V
    .registers 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    .line 4
    return-void
.end method
