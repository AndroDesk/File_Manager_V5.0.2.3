.class public Lmiuix/graphics/gif/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/graphics/gif/GifDecoder$GifFrame;
    }
.end annotation


# static fields
.field public static final MAX_DECODE_SIZE:I = 0x100000

.field public static final MAX_STACK_SIZE:I = 0x1000

.field public static final STATUS_DECODE_CANCEL:I = 0x3

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2


# instance fields
.field public act:[I

.field public bgColor:I

.field public bgIndex:I

.field public block:[B

.field public blockSize:I

.field private calledOnce:Z

.field public delay:I

.field private dest:[I

.field public dispose:I

.field public frames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lmiuix/graphics/gif/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field public gct:[I

.field public gctFlag:Z

.field public gctSize:I

.field private height:I

.field public ih:I

.field public image:Landroid/graphics/Bitmap;

.field public in:Ljava/io/BufferedInputStream;

.field public interlace:Z

.field public iw:I

.field public ix:I

.field public iy:I

.field public lastBgColor:I

.field public lastBitmap:Landroid/graphics/Bitmap;

.field public lastDispose:I

.field public lct:[I

.field public lctFlag:Z

.field public lctSize:I

.field public loopCount:I

.field public lrh:I

.field public lrw:I

.field public lrx:I

.field public lry:I

.field private mCancel:Z

.field private mDecodeBmSize:J

.field private mDecodeToTheEnd:Z

.field private mDecodedFrames:I

.field private mMaxDecodeSize:J

.field private mStartFrame:I

.field public pixelAspect:I

.field public pixelStack:[B

.field public pixels:[B

.field public prefix:[S

.field public status:I

.field public suffix:[B

.field public transIndex:I

.field public transparency:Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/32 v0, 0x100000

    .line 7
    iput-wide v0, p0, Lmiuix/graphics/gif/GifDecoder;->mMaxDecodeSize:J

    .line 9
    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->loopCount:I

    .line 12
    const/16 v0, 0x100

    .line 14
    new-array v0, v0, [B

    .line 16
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->block:[B

    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    .line 21
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->dispose:I

    .line 23
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastDispose:I

    .line 25
    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->transparency:Z

    .line 27
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    .line 29
    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    .line 31
    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->calledOnce:Z

    .line 33
    return-void
.end method

.method public static isGifStream(Ljava/io/InputStream;)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_25

    .line 4
    const-string v1, ""

    .line 6
    :goto_5
    const/4 v2, 0x6

    .line 7
    if-ge v0, v2, :cond_1f

    .line 9
    invoke-static {p0}, Lmiuix/graphics/gif/GifDecoder;->readOneByte(Ljava/io/InputStream;)I

    .line 12
    move-result v2

    .line 13
    const/4 v3, -0x1

    .line 14
    if-ne v2, v3, :cond_10

    .line 16
    goto :goto_1f

    .line 17
    :cond_10
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v1

    .line 21
    int-to-char v2, v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 31
    goto :goto_5

    .line 32
    :cond_1f
    :goto_1f
    const-string p0, "GIF"

    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    move-result v0

    .line 38
    :cond_25
    return v0
.end method

.method public static readOneByte(Ljava/io/InputStream;)I
    .registers 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 4
    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return p0

    .line 6
    :catch_5
    const/4 p0, -0x1

    .line 7
    return p0
.end method

.method private requestCancel()V
    .registers 1

    return-void
.end method


# virtual methods
.method public decodeBitmapData()V
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lmiuix/graphics/gif/GifDecoder;->iw:I

    .line 5
    iget v2, v0, Lmiuix/graphics/gif/GifDecoder;->ih:I

    .line 7
    mul-int/2addr v1, v2

    .line 8
    iget-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->pixels:[B

    .line 10
    if-eqz v2, :cond_e

    .line 12
    array-length v2, v2

    .line 13
    if-ge v2, v1, :cond_12

    .line 15
    :cond_e
    new-array v2, v1, [B

    .line 17
    iput-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->pixels:[B

    .line 19
    :cond_12
    iget-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->prefix:[S

    .line 21
    const/16 v3, 0x1000

    .line 23
    if-nez v2, :cond_1c

    .line 25
    new-array v2, v3, [S

    .line 27
    iput-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->prefix:[S

    .line 29
    :cond_1c
    iget-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->suffix:[B

    .line 31
    if-nez v2, :cond_24

    .line 33
    new-array v2, v3, [B

    .line 35
    iput-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->suffix:[B

    .line 37
    :cond_24
    iget-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    .line 39
    if-nez v2, :cond_2e

    .line 41
    const/16 v2, 0x1001

    .line 43
    new-array v2, v2, [B

    .line 45
    iput-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    .line 47
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    .line 50
    move-result v2

    .line 51
    const/4 v4, 0x1

    .line 52
    shl-int v5, v4, v2

    .line 54
    add-int/lit8 v6, v5, 0x1

    .line 56
    add-int/lit8 v7, v5, 0x2

    .line 58
    add-int/2addr v2, v4

    .line 59
    shl-int v8, v4, v2

    .line 61
    sub-int/2addr v8, v4

    .line 62
    const/4 v9, 0x0

    .line 63
    move v10, v9

    .line 64
    :goto_3f
    if-ge v10, v5, :cond_4d

    .line 66
    iget-object v11, v0, Lmiuix/graphics/gif/GifDecoder;->prefix:[S

    .line 68
    aput-short v9, v11, v10

    .line 70
    iget-object v11, v0, Lmiuix/graphics/gif/GifDecoder;->suffix:[B

    .line 72
    int-to-byte v12, v10

    .line 73
    aput-byte v12, v11, v10

    .line 75
    add-int/lit8 v10, v10, 0x1

    .line 77
    goto :goto_3f

    .line 78
    :cond_4d
    move v14, v2

    .line 79
    move/from16 v16, v8

    .line 81
    move v11, v9

    .line 82
    move v12, v11

    .line 83
    move v13, v12

    .line 84
    move v15, v13

    .line 85
    move/from16 v17, v15

    .line 87
    move/from16 v18, v17

    .line 89
    move/from16 v19, v18

    .line 91
    move/from16 v20, v19

    .line 93
    const/4 v3, -0x1

    .line 94
    move v9, v7

    .line 95
    :goto_5e
    if-ge v11, v1, :cond_12a

    .line 97
    if-nez v12, :cond_104

    .line 99
    if-ge v13, v14, :cond_80

    .line 101
    if-nez v17, :cond_70

    .line 103
    invoke-virtual/range {p0 .. p0}, Lmiuix/graphics/gif/GifDecoder;->readBlock()I

    .line 106
    move-result v17

    .line 107
    if-gtz v17, :cond_6e

    .line 109
    goto/16 :goto_12a

    .line 111
    :cond_6e
    const/16 v18, 0x0

    .line 113
    :cond_70
    iget-object v10, v0, Lmiuix/graphics/gif/GifDecoder;->block:[B

    .line 115
    aget-byte v10, v10, v18

    .line 117
    and-int/lit16 v10, v10, 0xff

    .line 119
    shl-int/2addr v10, v13

    .line 120
    add-int/2addr v15, v10

    .line 121
    add-int/lit8 v13, v13, 0x8

    .line 123
    add-int/lit8 v18, v18, 0x1

    .line 125
    const/4 v10, -0x1

    .line 126
    add-int/lit8 v17, v17, -0x1

    .line 128
    goto :goto_5e

    .line 129
    :cond_80
    const/4 v10, -0x1

    .line 130
    and-int v4, v15, v16

    .line 132
    shr-int/2addr v15, v14

    .line 133
    sub-int/2addr v13, v14

    .line 134
    if-gt v4, v9, :cond_12a

    .line 136
    if-ne v4, v6, :cond_8b

    .line 138
    goto/16 :goto_12a

    .line 140
    :cond_8b
    if-ne v4, v5, :cond_94

    .line 142
    move v14, v2

    .line 143
    move v9, v7

    .line 144
    move/from16 v16, v8

    .line 146
    move v3, v10

    .line 147
    :goto_92
    const/4 v4, 0x1

    .line 148
    goto :goto_5e

    .line 149
    :cond_94
    if-ne v3, v10, :cond_a9

    .line 151
    iget-object v3, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    .line 153
    add-int/lit8 v10, v12, 0x1

    .line 155
    move/from16 v21, v2

    .line 157
    iget-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->suffix:[B

    .line 159
    aget-byte v2, v2, v4

    .line 161
    aput-byte v2, v3, v12

    .line 163
    move v3, v4

    .line 164
    move/from16 v19, v3

    .line 166
    move v12, v10

    .line 167
    move/from16 v2, v21

    .line 169
    goto :goto_92

    .line 170
    :cond_a9
    move/from16 v21, v2

    .line 172
    if-ne v4, v9, :cond_bb

    .line 174
    iget-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    .line 176
    add-int/lit8 v10, v12, 0x1

    .line 178
    move/from16 v22, v4

    .line 180
    move/from16 v4, v19

    .line 182
    int-to-byte v4, v4

    .line 183
    aput-byte v4, v2, v12

    .line 185
    move v2, v3

    .line 186
    move v12, v10

    .line 187
    goto :goto_bf

    .line 188
    :cond_bb
    move/from16 v22, v4

    .line 190
    move/from16 v2, v22

    .line 192
    :goto_bf
    if-le v2, v5, :cond_d5

    .line 194
    iget-object v4, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    .line 196
    add-int/lit8 v10, v12, 0x1

    .line 198
    move/from16 v19, v5

    .line 200
    iget-object v5, v0, Lmiuix/graphics/gif/GifDecoder;->suffix:[B

    .line 202
    aget-byte v5, v5, v2

    .line 204
    aput-byte v5, v4, v12

    .line 206
    iget-object v4, v0, Lmiuix/graphics/gif/GifDecoder;->prefix:[S

    .line 208
    aget-short v2, v4, v2

    .line 210
    move v12, v10

    .line 211
    move/from16 v5, v19

    .line 213
    goto :goto_bf

    .line 214
    :cond_d5
    move/from16 v19, v5

    .line 216
    iget-object v4, v0, Lmiuix/graphics/gif/GifDecoder;->suffix:[B

    .line 218
    aget-byte v2, v4, v2

    .line 220
    and-int/lit16 v2, v2, 0xff

    .line 222
    const/16 v5, 0x1000

    .line 224
    if-lt v9, v5, :cond_e2

    .line 226
    goto :goto_12a

    .line 227
    :cond_e2
    iget-object v5, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    .line 229
    add-int/lit8 v10, v12, 0x1

    .line 231
    move/from16 v23, v6

    .line 233
    int-to-byte v6, v2

    .line 234
    aput-byte v6, v5, v12

    .line 236
    iget-object v5, v0, Lmiuix/graphics/gif/GifDecoder;->prefix:[S

    .line 238
    int-to-short v3, v3

    .line 239
    aput-short v3, v5, v9

    .line 241
    aput-byte v6, v4, v9

    .line 243
    add-int/lit8 v9, v9, 0x1

    .line 245
    and-int v3, v9, v16

    .line 247
    const/16 v5, 0x1000

    .line 249
    if-nez v3, :cond_100

    .line 251
    if-ge v9, v5, :cond_100

    .line 253
    add-int/lit8 v14, v14, 0x1

    .line 255
    add-int v16, v16, v9

    .line 257
    :cond_100
    move v12, v10

    .line 258
    move/from16 v3, v22

    .line 260
    goto :goto_10f

    .line 261
    :cond_104
    move/from16 v21, v2

    .line 263
    move/from16 v23, v6

    .line 265
    move/from16 v4, v19

    .line 267
    move/from16 v19, v5

    .line 269
    const/16 v5, 0x1000

    .line 271
    move v2, v4

    .line 272
    :goto_10f
    const/4 v4, -0x1

    .line 273
    add-int/2addr v12, v4

    .line 274
    iget-object v6, v0, Lmiuix/graphics/gif/GifDecoder;->pixels:[B

    .line 276
    add-int/lit8 v10, v20, 0x1

    .line 278
    iget-object v4, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    .line 280
    aget-byte v4, v4, v12

    .line 282
    aput-byte v4, v6, v20

    .line 284
    add-int/lit8 v11, v11, 0x1

    .line 286
    move/from16 v20, v10

    .line 288
    move/from16 v5, v19

    .line 290
    move/from16 v6, v23

    .line 292
    const/4 v4, 0x1

    .line 293
    move/from16 v19, v2

    .line 295
    move/from16 v2, v21

    .line 297
    goto/16 :goto_5e

    .line 299
    :cond_12a
    :goto_12a
    move/from16 v2, v20

    .line 301
    :goto_12c
    if-ge v2, v1, :cond_136

    .line 303
    iget-object v3, v0, Lmiuix/graphics/gif/GifDecoder;->pixels:[B

    .line 305
    const/4 v4, 0x0

    .line 306
    aput-byte v4, v3, v2

    .line 308
    add-int/lit8 v2, v2, 0x1

    .line 310
    goto :goto_12c

    .line 311
    :cond_136
    return-void
.end method

.method public err()Z
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lmiuix/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public getDelay(I)I
    .registers 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    .line 4
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    .line 7
    move-result v0

    .line 8
    if-ltz p1, :cond_17

    .line 10
    if-ge p1, v0, :cond_17

    .line 12
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lmiuix/graphics/gif/GifDecoder$GifFrame;

    .line 20
    iget p1, p1, Lmiuix/graphics/gif/GifDecoder$GifFrame;->delay:I

    .line 22
    iput p1, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    .line 24
    :cond_17
    iget p1, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    .line 26
    return p1
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_8
    rem-int/2addr p1, v0

    .line 10
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lmiuix/graphics/gif/GifDecoder$GifFrame;

    .line 18
    iget-object p1, p1, Lmiuix/graphics/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 20
    return-object p1
.end method

.method public getFrameCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 10
    move-result v0

    .line 11
    :goto_a
    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    .line 3
    return v0
.end method

.method public getLoopCount()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->loopCount:I

    .line 3
    return v0
.end method

.method public getRealFrameCount()I
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodedFrames:I

    .line 7
    return v0

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    .line 3
    return v0
.end method

.method public init()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    .line 4
    new-instance v0, Ljava/util/Vector;

    .line 6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->gct:[I

    .line 14
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lct:[I

    .line 16
    return-void
.end method

.method public isDecodeToTheEnd()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    .line 3
    return v0
.end method

.method public read()I
    .registers 2

    .line 19
    :try_start_0
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public read(Ljava/io/InputStream;)I
    .registers 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    .line 2
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->calledOnce:Z

    if-nez v0, :cond_45

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->calledOnce:Z

    .line 4
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->init()V

    const/4 v1, 0x2

    if-eqz p1, :cond_36

    .line 5
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lmiuix/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    .line 6
    :try_start_17
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readHeader()V

    .line 7
    iget-boolean p1, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    if-nez p1, :cond_38

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    move-result p1

    if-nez p1, :cond_38

    .line 8
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readContents()V

    .line 9
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    move-result p1

    if-gez p1, :cond_38

    .line 10
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I
    :try_end_2f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_2f} :catch_30

    goto :goto_38

    .line 11
    :catch_30
    iput v1, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    .line 12
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->recycle()V

    goto :goto_38

    .line 13
    :cond_36
    iput v1, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    .line 14
    :cond_38
    :goto_38
    iget-boolean p1, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz p1, :cond_42

    .line 15
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->recycle()V

    const/4 p1, 0x3

    .line 16
    iput p1, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    .line 17
    :cond_42
    iget p1, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    return p1

    .line 18
    :cond_45
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "decoder cannot be called more than once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readBitmap()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->ix:I

    .line 7
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->iy:I

    .line 13
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->iw:I

    .line 19
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->ih:I

    .line 25
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    .line 28
    move-result v0

    .line 29
    and-int/lit16 v1, v0, 0x80

    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eqz v1, :cond_24

    .line 35
    move v1, v2

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v1, v3

    .line 38
    :goto_25
    iput-boolean v1, p0, Lmiuix/graphics/gif/GifDecoder;->lctFlag:Z

    .line 40
    const/4 v4, 0x2

    .line 41
    and-int/lit8 v5, v0, 0x7

    .line 43
    shl-int/2addr v4, v5

    .line 44
    iput v4, p0, Lmiuix/graphics/gif/GifDecoder;->lctSize:I

    .line 46
    and-int/lit8 v0, v0, 0x40

    .line 48
    if-eqz v0, :cond_33

    .line 50
    move v0, v2

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    move v0, v3

    .line 53
    :goto_34
    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->interlace:Z

    .line 55
    if-eqz v1, :cond_41

    .line 57
    invoke-virtual {p0, v4}, Lmiuix/graphics/gif/GifDecoder;->readColorTable(I)[I

    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lct:[I

    .line 63
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->act:[I

    .line 65
    goto :goto_4d

    .line 66
    :cond_41
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->gct:[I

    .line 68
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->act:[I

    .line 70
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->bgIndex:I

    .line 72
    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->transIndex:I

    .line 74
    if-ne v0, v1, :cond_4d

    .line 76
    iput v3, p0, Lmiuix/graphics/gif/GifDecoder;->bgColor:I

    .line 78
    :cond_4d
    :goto_4d
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->transparency:Z

    .line 80
    if-eqz v0, :cond_5a

    .line 82
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->act:[I

    .line 84
    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->transIndex:I

    .line 86
    aget v4, v0, v1

    .line 88
    aput v3, v0, v1

    .line 90
    move v3, v4

    .line 91
    :cond_5a
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->act:[I

    .line 93
    if-nez v0, :cond_60

    .line 95
    iput v2, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    .line 97
    :cond_60
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_67

    .line 103
    return-void

    .line 104
    :cond_67
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->decodeBitmapData()V

    .line 107
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->skip()V

    .line 110
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_74

    .line 116
    return-void

    .line 117
    :cond_74
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    .line 119
    if-eqz v0, :cond_79

    .line 121
    return-void

    .line 122
    :cond_79
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->setPixels()V

    .line 125
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodedFrames:I

    .line 127
    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->mStartFrame:I

    .line 129
    if-lt v0, v1, :cond_90

    .line 131
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    .line 133
    new-instance v1, Lmiuix/graphics/gif/GifDecoder$GifFrame;

    .line 135
    iget-object v4, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 137
    iget v5, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    .line 139
    invoke-direct {v1, v4, v5}, Lmiuix/graphics/gif/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    .line 142
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 145
    :cond_90
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodedFrames:I

    .line 147
    add-int/2addr v0, v2

    .line 148
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodedFrames:I

    .line 150
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->transparency:Z

    .line 152
    if-eqz v0, :cond_9f

    .line 154
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->act:[I

    .line 156
    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->transIndex:I

    .line 158
    aput v3, v0, v1

    .line 160
    :cond_9f
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->resetFrame()V

    .line 163
    return-void
.end method

.method public readBlock()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_27

    .line 10
    :goto_9
    :try_start_9
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    .line 12
    if-ge v1, v0, :cond_20

    .line 14
    iget-object v2, p0, Lmiuix/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    .line 16
    iget-object v3, p0, Lmiuix/graphics/gif/GifDecoder;->block:[B

    .line 18
    sub-int/2addr v0, v1

    .line 19
    invoke-virtual {v2, v3, v1, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 22
    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_1c

    .line 23
    const/4 v2, -0x1

    .line 24
    if-ne v0, v2, :cond_1a

    .line 26
    goto :goto_20

    .line 27
    :cond_1a
    add-int/2addr v1, v0

    .line 28
    goto :goto_9

    .line 29
    :catch_1c
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    :cond_20
    :goto_20
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    .line 35
    if-ge v1, v0, :cond_27

    .line 37
    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    .line 40
    :cond_27
    return v1
.end method

.method public readColorTable(I)[I
    .registers 11

    .line 1
    mul-int/lit8 v0, p1, 0x3

    .line 3
    new-array v1, v0, [B

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_5
    iget-object v3, p0, Lmiuix/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    .line 8
    invoke-virtual {v3, v1, v2, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 11
    move-result v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_c

    .line 12
    goto :goto_11

    .line 13
    :catch_c
    move-exception v3

    .line 14
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    move v3, v2

    .line 18
    :goto_11
    if-ge v3, v0, :cond_18

    .line 20
    const/4 p1, 0x1

    .line 21
    iput p1, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    .line 23
    const/4 p1, 0x0

    .line 24
    goto :goto_42

    .line 25
    :cond_18
    const/16 v0, 0x100

    .line 27
    new-array v0, v0, [I

    .line 29
    move v3, v2

    .line 30
    :goto_1d
    if-ge v2, p1, :cond_41

    .line 32
    add-int/lit8 v4, v3, 0x1

    .line 34
    aget-byte v3, v1, v3

    .line 36
    and-int/lit16 v3, v3, 0xff

    .line 38
    add-int/lit8 v5, v4, 0x1

    .line 40
    aget-byte v4, v1, v4

    .line 42
    and-int/lit16 v4, v4, 0xff

    .line 44
    add-int/lit8 v6, v5, 0x1

    .line 46
    aget-byte v5, v1, v5

    .line 48
    and-int/lit16 v5, v5, 0xff

    .line 50
    add-int/lit8 v7, v2, 0x1

    .line 52
    const/high16 v8, -0x1000000

    .line 54
    shl-int/lit8 v3, v3, 0x10

    .line 56
    or-int/2addr v3, v8

    .line 57
    shl-int/lit8 v4, v4, 0x8

    .line 59
    or-int/2addr v3, v4

    .line 60
    or-int/2addr v3, v5

    .line 61
    aput v3, v0, v2

    .line 63
    move v3, v6

    .line 64
    move v2, v7

    .line 65
    goto :goto_1d

    .line 66
    :cond_41
    move-object p1, v0

    .line 67
    :goto_42
    return-object p1
.end method

.method public readContents()V
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodedFrames:I

    .line 4
    move v1, v0

    .line 5
    :cond_4
    :goto_4
    if-nez v1, :cond_ab

    .line 7
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_ab

    .line 13
    iget-boolean v2, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    .line 15
    if-eqz v2, :cond_12

    .line 17
    goto/16 :goto_ab

    .line 19
    :cond_12
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    .line 22
    move-result v2

    .line 23
    const/16 v3, 0x21

    .line 25
    const/4 v4, 0x1

    .line 26
    if-eq v2, v3, :cond_57

    .line 28
    const/16 v3, 0x2c

    .line 30
    if-eq v2, v3, :cond_29

    .line 32
    const/16 v3, 0x3b

    .line 34
    if-eq v2, v3, :cond_26

    .line 36
    iput v4, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    .line 38
    goto :goto_4

    .line 39
    :cond_26
    iput-boolean v4, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    .line 41
    goto :goto_55

    .line 42
    :cond_29
    iget-object v2, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    .line 44
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 47
    move-result v2

    .line 48
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readBitmap()V

    .line 51
    iget-object v3, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    .line 53
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 56
    move-result v3

    .line 57
    if-le v3, v2, :cond_4d

    .line 59
    iget-wide v2, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeBmSize:J

    .line 61
    iget-object v5, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getRowBytes()I

    .line 66
    move-result v5

    .line 67
    iget-object v6, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 69
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 72
    move-result v6

    .line 73
    mul-int/2addr v6, v5

    .line 74
    int-to-long v5, v6

    .line 75
    add-long/2addr v2, v5

    .line 76
    iput-wide v2, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeBmSize:J

    .line 78
    :cond_4d
    iget-wide v2, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeBmSize:J

    .line 80
    iget-wide v5, p0, Lmiuix/graphics/gif/GifDecoder;->mMaxDecodeSize:J

    .line 82
    cmp-long v2, v2, v5

    .line 84
    if-lez v2, :cond_4

    .line 86
    :goto_55
    move v1, v4

    .line 87
    goto :goto_4

    .line 88
    :cond_57
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    .line 91
    move-result v2

    .line 92
    if-eq v2, v4, :cond_a6

    .line 94
    const/16 v3, 0xf9

    .line 96
    if-eq v2, v3, :cond_a1

    .line 98
    const/16 v3, 0xfe

    .line 100
    if-eq v2, v3, :cond_9c

    .line 102
    const/16 v3, 0xff

    .line 104
    if-eq v2, v3, :cond_6d

    .line 106
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->skip()V

    .line 109
    goto :goto_4

    .line 110
    :cond_6d
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readBlock()I

    .line 113
    const-string v2, ""

    .line 115
    move v3, v0

    .line 116
    :goto_73
    const/16 v4, 0xb

    .line 118
    if-ge v3, v4, :cond_8a

    .line 120
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    move-result-object v2

    .line 124
    iget-object v4, p0, Lmiuix/graphics/gif/GifDecoder;->block:[B

    .line 126
    aget-byte v4, v4, v3

    .line 128
    int-to-char v4, v4

    .line 129
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v2

    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 138
    goto :goto_73

    .line 139
    :cond_8a
    const-string v3, "NETSCAPE2.0"

    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_97

    .line 147
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readNetscapeExt()V

    .line 150
    goto/16 :goto_4

    .line 152
    :cond_97
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->skip()V

    .line 155
    goto/16 :goto_4

    .line 157
    :cond_9c
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->skip()V

    .line 160
    goto/16 :goto_4

    .line 162
    :cond_a1
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readGraphicControlExt()V

    .line 165
    goto/16 :goto_4

    .line 167
    :cond_a6
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->skip()V

    .line 170
    goto/16 :goto_4

    .line 172
    :cond_ab
    :goto_ab
    return-void
.end method

.method public readGraphicControlExt()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    .line 4
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    .line 7
    move-result v0

    .line 8
    and-int/lit8 v1, v0, 0x1c

    .line 10
    shr-int/lit8 v1, v1, 0x2

    .line 12
    iput v1, p0, Lmiuix/graphics/gif/GifDecoder;->dispose:I

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v1, :cond_12

    .line 17
    iput v2, p0, Lmiuix/graphics/gif/GifDecoder;->dispose:I

    .line 19
    :cond_12
    and-int/2addr v0, v2

    .line 20
    if-eqz v0, :cond_16

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v2, 0x0

    .line 24
    :goto_17
    iput-boolean v2, p0, Lmiuix/graphics/gif/GifDecoder;->transparency:Z

    .line 26
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    .line 29
    move-result v0

    .line 30
    mul-int/lit8 v0, v0, 0xa

    .line 32
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    .line 34
    if-gtz v0, :cond_27

    .line 36
    const/16 v0, 0x64

    .line 38
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    .line 40
    :cond_27
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->transIndex:I

    .line 46
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    .line 49
    return-void
.end method

.method public readHeader()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const/4 v0, 0x0

    .line 7
    const-string v1, ""

    .line 9
    :goto_8
    const/4 v2, 0x6

    .line 10
    if-ge v0, v2, :cond_1e

    .line 12
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    .line 19
    move-result v2

    .line 20
    int-to-char v2, v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_8

    .line 31
    :cond_1e
    const-string v0, "GIF"

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2a

    .line 39
    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    .line 42
    return-void

    .line 43
    :cond_2a
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readLSD()V

    .line 46
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->gctFlag:Z

    .line 48
    if-eqz v0, :cond_45

    .line 50
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_45

    .line 56
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->gctSize:I

    .line 58
    invoke-virtual {p0, v0}, Lmiuix/graphics/gif/GifDecoder;->readColorTable(I)[I

    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->gct:[I

    .line 64
    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->bgIndex:I

    .line 66
    aget v0, v0, v1

    .line 68
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->bgColor:I

    .line 70
    :cond_45
    return-void
.end method

.method public readLSD()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    .line 7
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    .line 13
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    .line 16
    move-result v0

    .line 17
    and-int/lit16 v1, v0, 0x80

    .line 19
    if-eqz v1, :cond_16

    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v1, 0x0

    .line 24
    :goto_17
    iput-boolean v1, p0, Lmiuix/graphics/gif/GifDecoder;->gctFlag:Z

    .line 26
    const/4 v1, 0x2

    .line 27
    and-int/lit8 v0, v0, 0x7

    .line 29
    shl-int v0, v1, v0

    .line 31
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->gctSize:I

    .line 33
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->bgIndex:I

    .line 39
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->pixelAspect:I

    .line 45
    return-void
.end method

.method public readNetscapeExt()V
    .registers 4

    .line 1
    :cond_0
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readBlock()I

    .line 4
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->block:[B

    .line 6
    const/4 v1, 0x0

    .line 7
    aget-byte v1, v0, v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_19

    .line 12
    aget-byte v1, v0, v2

    .line 14
    and-int/lit16 v1, v1, 0xff

    .line 16
    const/4 v2, 0x2

    .line 17
    aget-byte v0, v0, v2

    .line 19
    and-int/lit16 v0, v0, 0xff

    .line 21
    shl-int/lit8 v0, v0, 0x8

    .line 23
    or-int/2addr v0, v1

    .line 24
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->loopCount:I

    .line 26
    :cond_19
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    .line 28
    if-lez v0, :cond_23

    .line 30
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 36
    :cond_23
    return-void
.end method

.method public readShort()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    .line 8
    move-result v1

    .line 9
    shl-int/lit8 v1, v1, 0x8

    .line 11
    or-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public recycle()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_9
    if-ge v1, v0, :cond_19

    .line 12
    iget-object v2, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lmiuix/graphics/gif/GifDecoder$GifFrame;

    .line 20
    invoke-virtual {v2}, Lmiuix/graphics/gif/GifDecoder$GifFrame;->recycle()V

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method public requestCancelDecode()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    .line 4
    invoke-direct {p0}, Lmiuix/graphics/gif/GifDecoder;->requestCancel()V

    .line 7
    return-void
.end method

.method public resetFrame()V
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->dispose:I

    .line 3
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastDispose:I

    .line 5
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->ix:I

    .line 7
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lrx:I

    .line 9
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->iy:I

    .line 11
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lry:I

    .line 13
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->iw:I

    .line 15
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lrw:I

    .line 17
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->ih:I

    .line 19
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lrh:I

    .line 21
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 23
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 25
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->bgColor:I

    .line 27
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastBgColor:I

    .line 29
    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->dispose:I

    .line 32
    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->transparency:Z

    .line 34
    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    .line 36
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lct:[I

    .line 39
    return-void
.end method

.method public setMaxDecodeSize(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lmiuix/graphics/gif/GifDecoder;->mMaxDecodeSize:J

    .line 3
    return-void
.end method

.method public setPixels()V
    .registers 14

    .line 1
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    .line 3
    if-nez v0, :cond_d

    .line 5
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    .line 7
    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    .line 9
    mul-int/2addr v0, v1

    .line 10
    new-array v0, v0, [I

    .line 12
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    .line 14
    :cond_d
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastDispose:I

    .line 16
    const/4 v1, 0x3

    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x2

    .line 19
    const/4 v4, 0x1

    .line 20
    if-lez v0, :cond_77

    .line 22
    if-ne v0, v1, :cond_47

    .line 24
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    .line 27
    move-result v0

    .line 28
    sub-int/2addr v0, v3

    .line 29
    if-lez v0, :cond_3b

    .line 31
    sub-int/2addr v0, v4

    .line 32
    invoke-virtual {p0, v0}, Lmiuix/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    .line 35
    move-result-object v5

    .line 36
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 38
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_47

    .line 44
    iput-object v5, p0, Lmiuix/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 46
    iget-object v6, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    .line 48
    const/4 v7, 0x0

    .line 49
    iget v11, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v10, 0x0

    .line 53
    iget v12, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    .line 55
    move v8, v11

    .line 56
    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 59
    goto :goto_47

    .line 60
    :cond_3b
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 63
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    .line 65
    iget v5, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    .line 67
    mul-int/2addr v0, v5

    .line 68
    new-array v0, v0, [I

    .line 70
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    .line 72
    :cond_47
    :goto_47
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    .line 74
    if-eqz v0, :cond_77

    .line 76
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastDispose:I

    .line 78
    if-ne v0, v3, :cond_77

    .line 80
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->transparency:Z

    .line 82
    if-nez v0, :cond_56

    .line 84
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastBgColor:I

    .line 86
    goto :goto_57

    .line 87
    :cond_56
    move v0, v2

    .line 88
    :goto_57
    iget v5, p0, Lmiuix/graphics/gif/GifDecoder;->lry:I

    .line 90
    iget v6, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    .line 92
    mul-int/2addr v5, v6

    .line 93
    iget v6, p0, Lmiuix/graphics/gif/GifDecoder;->lrx:I

    .line 95
    add-int/2addr v5, v6

    .line 96
    move v6, v2

    .line 97
    :goto_60
    iget v7, p0, Lmiuix/graphics/gif/GifDecoder;->lrh:I

    .line 99
    if-ge v6, v7, :cond_77

    .line 101
    iget v7, p0, Lmiuix/graphics/gif/GifDecoder;->lrw:I

    .line 103
    add-int/2addr v7, v5

    .line 104
    move v8, v5

    .line 105
    :goto_68
    if-ge v8, v7, :cond_71

    .line 107
    iget-object v9, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    .line 109
    aput v0, v9, v8

    .line 111
    add-int/lit8 v8, v8, 0x1

    .line 113
    goto :goto_68

    .line 114
    :cond_71
    iget v7, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    .line 116
    add-int/2addr v5, v7

    .line 117
    add-int/lit8 v6, v6, 0x1

    .line 119
    goto :goto_60

    .line 120
    :cond_77
    const/16 v0, 0x8

    .line 122
    move v5, v2

    .line 123
    move v6, v4

    .line 124
    :goto_7b
    iget v7, p0, Lmiuix/graphics/gif/GifDecoder;->ih:I

    .line 126
    if-ge v2, v7, :cond_cf

    .line 128
    iget-boolean v8, p0, Lmiuix/graphics/gif/GifDecoder;->interlace:Z

    .line 130
    if-eqz v8, :cond_99

    .line 132
    const/4 v8, 0x4

    .line 133
    if-lt v5, v7, :cond_96

    .line 135
    add-int/lit8 v6, v6, 0x1

    .line 137
    if-eq v6, v3, :cond_95

    .line 139
    if-eq v6, v1, :cond_92

    .line 141
    if-eq v6, v8, :cond_8f

    .line 143
    goto :goto_96

    .line 144
    :cond_8f
    move v0, v3

    .line 145
    move v5, v4

    .line 146
    goto :goto_96

    .line 147
    :cond_92
    move v5, v3

    .line 148
    move v0, v8

    .line 149
    goto :goto_96

    .line 150
    :cond_95
    move v5, v8

    .line 151
    :cond_96
    :goto_96
    add-int v7, v5, v0

    .line 153
    goto :goto_9b

    .line 154
    :cond_99
    move v7, v5

    .line 155
    move v5, v2

    .line 156
    :goto_9b
    iget v8, p0, Lmiuix/graphics/gif/GifDecoder;->iy:I

    .line 158
    add-int/2addr v5, v8

    .line 159
    iget v8, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    .line 161
    if-ge v5, v8, :cond_cb

    .line 163
    iget v8, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    .line 165
    mul-int/2addr v5, v8

    .line 166
    iget v9, p0, Lmiuix/graphics/gif/GifDecoder;->ix:I

    .line 168
    add-int/2addr v9, v5

    .line 169
    iget v10, p0, Lmiuix/graphics/gif/GifDecoder;->iw:I

    .line 171
    add-int v11, v9, v10

    .line 173
    add-int v12, v5, v8

    .line 175
    if-ge v12, v11, :cond_b2

    .line 177
    add-int v11, v5, v8

    .line 179
    :cond_b2
    mul-int/2addr v10, v2

    .line 180
    :goto_b3
    if-ge v9, v11, :cond_cb

    .line 182
    iget-object v5, p0, Lmiuix/graphics/gif/GifDecoder;->pixels:[B

    .line 184
    add-int/lit8 v8, v10, 0x1

    .line 186
    aget-byte v5, v5, v10

    .line 188
    and-int/lit16 v5, v5, 0xff

    .line 190
    iget-object v10, p0, Lmiuix/graphics/gif/GifDecoder;->act:[I

    .line 192
    aget v5, v10, v5

    .line 194
    if-eqz v5, :cond_c7

    .line 196
    iget-object v10, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    .line 198
    aput v5, v10, v9

    .line 200
    :cond_c7
    add-int/lit8 v9, v9, 0x1

    .line 202
    move v10, v8

    .line 203
    goto :goto_b3

    .line 204
    :cond_cb
    add-int/lit8 v2, v2, 0x1

    .line 206
    move v5, v7

    .line 207
    goto :goto_7b

    .line 208
    :cond_cf
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodedFrames:I

    .line 210
    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->mStartFrame:I

    .line 212
    if-gt v0, v1, :cond_e4

    .line 214
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 216
    if-eqz v0, :cond_e4

    .line 218
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 221
    move-result v0

    .line 222
    if-nez v0, :cond_e4

    .line 224
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 226
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 229
    :cond_e4
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    .line 231
    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    .line 233
    iget v2, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    .line 235
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 237
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 240
    move-result-object v0

    .line 241
    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 243
    return-void
.end method

.method public setStartFrame(I)V
    .registers 2

    .line 1
    iput p1, p0, Lmiuix/graphics/gif/GifDecoder;->mStartFrame:I

    .line 3
    return-void
.end method

.method public skip()V
    .registers 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readBlock()I

    .line 4
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    .line 6
    if-lez v0, :cond_d

    .line 8
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    :cond_d
    return-void
.end method
