.class public Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;
.super Ljava/lang/Object;
.source "StandardGifDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/gifdecoder/GifDecoder;


# static fields
.field private static final BYTES_PER_INTEGER:I = 0x4

.field private static final COLOR_TRANSPARENT_BLACK:I = 0x0

.field private static final INITIAL_FRAME_POINTER:I = -0x1

.field private static final MASK_INT_LOWEST_BYTE:I = 0xff

.field private static final MAX_STACK_SIZE:I = 0x1000

.field private static final NULL_CODE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "StandardGifDecoder"


# instance fields
.field private act:[I

.field private bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field private block:[B

.field private downsampledHeight:I

.field private downsampledWidth:I

.field private framePointer:I

.field private header:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field private isFirstFrameTransparent:Ljava/lang/Boolean;

.field private mainPixels:[B

.field private mainScratch:[I

.field private parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

.field private final pct:[I

.field private pixelStack:[B

.field private prefix:[S

.field private previousImage:Landroid/graphics/Bitmap;

.field private rawData:Ljava/nio/ByteBuffer;

.field private sampleSize:I

.field private savePrevious:Z

.field private status:I

.field private suffix:[B


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 5
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pct:[I

    .line 6
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 7
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 8
    new-instance p1, Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p1}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;)V
    .registers 5

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V
    .registers 5

    .line 2
    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V

    .line 3
    invoke-virtual {p0, p2, p3, p4}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V

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
    iget v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    .line 10
    add-int/2addr v7, p1

    .line 11
    if-ge v1, v7, :cond_34

    .line 13
    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

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
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

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
    iget v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    .line 57
    add-int/2addr v1, p1

    .line 58
    if-ge p3, v1, :cond_63

    .line 60
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

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
    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

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
    return v0

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
    or-int/2addr p1, v5

    .line 116
    return p1
.end method

.method private copyCopyIntoScratchRobust(Lcom/bumptech/glide/gifdecoder/GifFrame;)V
    .registers 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainScratch:[I

    .line 7
    iget v3, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    .line 9
    iget v4, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    .line 11
    div-int/2addr v3, v4

    .line 12
    iget v5, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    .line 14
    div-int/2addr v5, v4

    .line 15
    iget v6, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    .line 17
    div-int/2addr v6, v4

    .line 18
    iget v7, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    .line 20
    div-int/2addr v7, v4

    .line 21
    iget v8, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 23
    if-nez v8, :cond_1a

    .line 25
    const/4 v8, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v8, 0x0

    .line 28
    :goto_1b
    iget v11, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    .line 30
    iget v12, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    .line 32
    iget-object v13, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    .line 34
    iget-object v14, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    .line 36
    iget-object v15, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    .line 38
    const/16 v16, 0x8

    .line 40
    const/4 v9, 0x0

    .line 41
    const/4 v10, 0x0

    .line 42
    const/16 v18, 0x1

    .line 44
    :goto_2b
    if-ge v9, v3, :cond_d5

    .line 46
    move-object/from16 v19, v15

    .line 48
    iget-boolean v15, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    .line 50
    if-eqz v15, :cond_5c

    .line 52
    const/4 v15, 0x2

    .line 53
    if-lt v10, v3, :cond_57

    .line 55
    move/from16 v21, v3

    .line 57
    add-int/lit8 v3, v18, 0x1

    .line 59
    if-eq v3, v15, :cond_52

    .line 61
    const/4 v15, 0x3

    .line 62
    if-eq v3, v15, :cond_4b

    .line 64
    const/4 v15, 0x4

    .line 65
    if-eq v3, v15, :cond_45

    .line 67
    move/from16 v18, v3

    .line 69
    goto :goto_59

    .line 70
    :cond_45
    move/from16 v18, v3

    .line 72
    const/4 v10, 0x1

    .line 73
    const/16 v16, 0x2

    .line 75
    goto :goto_59

    .line 76
    :cond_4b
    const/4 v15, 0x4

    .line 77
    move/from16 v18, v3

    .line 79
    move/from16 v16, v15

    .line 81
    const/4 v10, 0x2

    .line 82
    goto :goto_59

    .line 83
    :cond_52
    const/4 v15, 0x4

    .line 84
    move/from16 v18, v3

    .line 86
    move v10, v15

    .line 87
    goto :goto_59

    .line 88
    :cond_57
    move/from16 v21, v3

    .line 90
    :goto_59
    add-int v3, v10, v16

    .line 92
    goto :goto_60

    .line 93
    :cond_5c
    move/from16 v21, v3

    .line 95
    move v3, v10

    .line 96
    move v10, v9

    .line 97
    :goto_60
    add-int/2addr v10, v5

    .line 98
    const/4 v15, 0x1

    .line 99
    if-ne v4, v15, :cond_67

    .line 101
    move/from16 v17, v15

    .line 103
    goto :goto_69

    .line 104
    :cond_67
    const/16 v17, 0x0

    .line 106
    :goto_69
    if-ge v10, v12, :cond_c1

    .line 108
    mul-int/2addr v10, v11

    .line 109
    add-int v20, v10, v7

    .line 111
    add-int v15, v20, v6

    .line 113
    add-int/2addr v10, v11

    .line 114
    if-ge v10, v15, :cond_74

    .line 116
    move v15, v10

    .line 117
    :cond_74
    mul-int v10, v9, v4

    .line 119
    move/from16 v22, v3

    .line 121
    iget v3, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    .line 123
    mul-int/2addr v10, v3

    .line 124
    if-eqz v17, :cond_9c

    .line 126
    move/from16 v3, v20

    .line 128
    :goto_7f
    if-ge v3, v15, :cond_c3

    .line 130
    move/from16 v17, v5

    .line 132
    aget-byte v5, v13, v10

    .line 134
    and-int/lit16 v5, v5, 0xff

    .line 136
    aget v5, v14, v5

    .line 138
    if-eqz v5, :cond_8e

    .line 140
    aput v5, v2, v3

    .line 142
    goto :goto_96

    .line 143
    :cond_8e
    if-eqz v8, :cond_96

    .line 145
    if-nez v19, :cond_96

    .line 147
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 149
    move-object/from16 v19, v5

    .line 151
    :cond_96
    :goto_96
    add-int/2addr v10, v4

    .line 152
    add-int/lit8 v3, v3, 0x1

    .line 154
    move/from16 v5, v17

    .line 156
    goto :goto_7f

    .line 157
    :cond_9c
    move/from16 v17, v5

    .line 159
    sub-int v3, v15, v20

    .line 161
    mul-int/2addr v3, v4

    .line 162
    add-int/2addr v3, v10

    .line 163
    move/from16 v5, v20

    .line 165
    :goto_a4
    move/from16 v20, v6

    .line 167
    if-ge v5, v15, :cond_c7

    .line 169
    iget v6, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    .line 171
    invoke-direct {v0, v10, v3, v6}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->averageColorsNear(III)I

    .line 174
    move-result v6

    .line 175
    if-eqz v6, :cond_b3

    .line 177
    aput v6, v2, v5

    .line 179
    goto :goto_bb

    .line 180
    :cond_b3
    if-eqz v8, :cond_bb

    .line 182
    if-nez v19, :cond_bb

    .line 184
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 186
    move-object/from16 v19, v6

    .line 188
    :cond_bb
    :goto_bb
    add-int/2addr v10, v4

    .line 189
    add-int/lit8 v5, v5, 0x1

    .line 191
    move/from16 v6, v20

    .line 193
    goto :goto_a4

    .line 194
    :cond_c1
    move/from16 v22, v3

    .line 196
    :cond_c3
    move/from16 v17, v5

    .line 198
    move/from16 v20, v6

    .line 200
    :cond_c7
    move-object/from16 v15, v19

    .line 202
    add-int/lit8 v9, v9, 0x1

    .line 204
    move/from16 v5, v17

    .line 206
    move/from16 v6, v20

    .line 208
    move/from16 v3, v21

    .line 210
    move/from16 v10, v22

    .line 212
    goto/16 :goto_2b

    .line 214
    :cond_d5
    move-object/from16 v19, v15

    .line 216
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    .line 218
    if-nez v1, :cond_e9

    .line 220
    if-nez v19, :cond_df

    .line 222
    const/4 v9, 0x0

    .line 223
    goto :goto_e3

    .line 224
    :cond_df
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    .line 227
    move-result v9

    .line 228
    :goto_e3
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 231
    move-result-object v1

    .line 232
    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    .line 234
    :cond_e9
    return-void
.end method

.method private copyIntoScratchFast(Lcom/bumptech/glide/gifdecoder/GifFrame;)V
    .registers 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainScratch:[I

    .line 7
    iget v3, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    .line 9
    iget v4, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    .line 11
    iget v5, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    .line 13
    iget v6, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    .line 15
    iget v7, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 17
    if-nez v7, :cond_14

    .line 19
    const/4 v7, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v7, 0x0

    .line 22
    :goto_15
    iget v10, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    .line 24
    iget-object v11, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    .line 26
    iget-object v12, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    .line 28
    const/4 v14, 0x0

    .line 29
    const/4 v15, -0x1

    .line 30
    :goto_1d
    if-ge v14, v3, :cond_53

    .line 32
    add-int v16, v14, v4

    .line 34
    mul-int v16, v16, v10

    .line 36
    add-int v17, v16, v6

    .line 38
    add-int v8, v17, v5

    .line 40
    add-int v9, v16, v10

    .line 42
    if-ge v9, v8, :cond_2c

    .line 44
    move v8, v9

    .line 45
    :cond_2c
    iget v9, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    .line 47
    mul-int/2addr v9, v14

    .line 48
    move/from16 v13, v17

    .line 50
    :goto_31
    if-ge v13, v8, :cond_4c

    .line 52
    aget-byte v1, v11, v9

    .line 54
    move/from16 v17, v3

    .line 56
    and-int/lit16 v3, v1, 0xff

    .line 58
    if-eq v3, v15, :cond_43

    .line 60
    aget v3, v12, v3

    .line 62
    if-eqz v3, :cond_42

    .line 64
    aput v3, v2, v13

    .line 66
    goto :goto_43

    .line 67
    :cond_42
    move v15, v1

    .line 68
    :cond_43
    :goto_43
    add-int/lit8 v9, v9, 0x1

    .line 70
    add-int/lit8 v13, v13, 0x1

    .line 72
    move-object/from16 v1, p1

    .line 74
    move/from16 v3, v17

    .line 76
    goto :goto_31

    .line 77
    :cond_4c
    move/from16 v17, v3

    .line 79
    add-int/lit8 v14, v14, 0x1

    .line 81
    move-object/from16 v1, p1

    .line 83
    goto :goto_1d

    .line 84
    :cond_53
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    .line 86
    if-eqz v1, :cond_5d

    .line 88
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_66

    .line 94
    :cond_5d
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    .line 96
    if-nez v1, :cond_68

    .line 98
    if-eqz v7, :cond_68

    .line 100
    const/4 v1, -0x1

    .line 101
    if-eq v15, v1, :cond_68

    .line 103
    :cond_66
    const/4 v8, 0x1

    .line 104
    goto :goto_69

    .line 105
    :cond_68
    const/4 v8, 0x0

    .line 106
    :goto_69
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 109
    move-result-object v1

    .line 110
    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    .line 112
    return-void
.end method

.method private decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V
    .registers 30

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    if-eqz v1, :cond_d

    .line 7
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 9
    iget v3, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->bufferFrameStart:I

    .line 11
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 14
    :cond_d
    if-nez v1, :cond_16

    .line 16
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 18
    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    .line 20
    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    .line 22
    goto :goto_1a

    .line 23
    :cond_16
    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    .line 25
    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    .line 27
    :goto_1a
    mul-int/2addr v2, v1

    .line 28
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    .line 30
    if-eqz v1, :cond_22

    .line 32
    array-length v1, v1

    .line 33
    if-ge v1, v2, :cond_2a

    .line 35
    :cond_22
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 37
    invoke-interface {v1, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    .line 40
    move-result-object v1

    .line 41
    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    .line 43
    :cond_2a
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    .line 45
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->prefix:[S

    .line 47
    const/16 v4, 0x1000

    .line 49
    if-nez v3, :cond_36

    .line 51
    new-array v3, v4, [S

    .line 53
    iput-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->prefix:[S

    .line 55
    :cond_36
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->prefix:[S

    .line 57
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->suffix:[B

    .line 59
    if-nez v5, :cond_40

    .line 61
    new-array v5, v4, [B

    .line 63
    iput-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->suffix:[B

    .line 65
    :cond_40
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->suffix:[B

    .line 67
    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pixelStack:[B

    .line 69
    if-nez v6, :cond_4c

    .line 71
    const/16 v6, 0x1001

    .line 73
    new-array v6, v6, [B

    .line 75
    iput-object v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pixelStack:[B

    .line 77
    :cond_4c
    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pixelStack:[B

    .line 79
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->readByte()I

    .line 82
    move-result v7

    .line 83
    const/4 v8, 0x1

    .line 84
    shl-int v9, v8, v7

    .line 86
    add-int/lit8 v10, v9, 0x1

    .line 88
    add-int/lit8 v11, v9, 0x2

    .line 90
    add-int/2addr v7, v8

    .line 91
    shl-int v12, v8, v7

    .line 93
    sub-int/2addr v12, v8

    .line 94
    const/4 v13, 0x0

    .line 95
    move v14, v13

    .line 96
    :goto_5f
    if-ge v14, v9, :cond_69

    .line 98
    aput-short v13, v3, v14

    .line 100
    int-to-byte v15, v14

    .line 101
    aput-byte v15, v5, v14

    .line 103
    add-int/lit8 v14, v14, 0x1

    .line 105
    goto :goto_5f

    .line 106
    :cond_69
    iget-object v14, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    .line 108
    const/4 v15, -0x1

    .line 109
    move/from16 v23, v7

    .line 111
    move/from16 v21, v11

    .line 113
    move/from16 v22, v12

    .line 115
    move/from16 v16, v13

    .line 117
    move/from16 v17, v16

    .line 119
    move/from16 v18, v17

    .line 121
    move/from16 v19, v18

    .line 123
    move/from16 v20, v19

    .line 125
    move/from16 v25, v20

    .line 127
    move/from16 v26, v25

    .line 129
    move/from16 v24, v15

    .line 131
    :goto_82
    if-ge v13, v2, :cond_14b

    .line 133
    if-nez v16, :cond_93

    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->readBlock()I

    .line 138
    move-result v16

    .line 139
    if-gtz v16, :cond_91

    .line 141
    const/4 v3, 0x3

    .line 142
    iput v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    .line 144
    goto/16 :goto_14b

    .line 146
    :cond_91
    const/16 v17, 0x0

    .line 148
    :cond_93
    aget-byte v4, v14, v17

    .line 150
    and-int/lit16 v4, v4, 0xff

    .line 152
    shl-int v4, v4, v18

    .line 154
    add-int v19, v19, v4

    .line 156
    add-int/lit8 v18, v18, 0x8

    .line 158
    add-int/lit8 v17, v17, 0x1

    .line 160
    add-int/lit8 v16, v16, -0x1

    .line 162
    move/from16 v4, v18

    .line 164
    move/from16 v8, v21

    .line 166
    move/from16 v15, v23

    .line 168
    move/from16 v0, v24

    .line 170
    move/from16 v23, v7

    .line 172
    move/from16 v7, v25

    .line 174
    :goto_ad
    if-lt v4, v15, :cond_135

    .line 176
    move/from16 v24, v11

    .line 178
    and-int v11, v19, v22

    .line 180
    shr-int v19, v19, v15

    .line 182
    sub-int/2addr v4, v15

    .line 183
    if-ne v11, v9, :cond_c1

    .line 185
    move/from16 v22, v12

    .line 187
    move/from16 v15, v23

    .line 189
    move/from16 v8, v24

    .line 191
    move v11, v8

    .line 192
    const/4 v0, -0x1

    .line 193
    goto :goto_ad

    .line 194
    :cond_c1
    if-ne v11, v10, :cond_d8

    .line 196
    move/from16 v18, v4

    .line 198
    move/from16 v25, v7

    .line 200
    move/from16 v21, v8

    .line 202
    move/from16 v7, v23

    .line 204
    move/from16 v11, v24

    .line 206
    const/16 v4, 0x1000

    .line 208
    const/4 v8, 0x1

    .line 209
    move/from16 v24, v0

    .line 211
    move/from16 v23, v15

    .line 213
    const/4 v15, -0x1

    .line 214
    move-object/from16 v0, p0

    .line 216
    goto :goto_82

    .line 217
    :cond_d8
    move/from16 v25, v4

    .line 219
    const/4 v4, -0x1

    .line 220
    if-ne v0, v4, :cond_ec

    .line 222
    aget-byte v0, v5, v11

    .line 224
    aput-byte v0, v1, v20

    .line 226
    add-int/lit8 v20, v20, 0x1

    .line 228
    add-int/lit8 v13, v13, 0x1

    .line 230
    move v0, v11

    .line 231
    move v7, v0

    .line 232
    move/from16 v11, v24

    .line 234
    move/from16 v4, v25

    .line 236
    goto :goto_ad

    .line 237
    :cond_ec
    if-lt v11, v8, :cond_f5

    .line 239
    int-to-byte v7, v7

    .line 240
    aput-byte v7, v6, v26

    .line 242
    add-int/lit8 v26, v26, 0x1

    .line 244
    move v7, v0

    .line 245
    goto :goto_f6

    .line 246
    :cond_f5
    move v7, v11

    .line 247
    :goto_f6
    if-lt v7, v9, :cond_101

    .line 249
    aget-byte v21, v5, v7

    .line 251
    aput-byte v21, v6, v26

    .line 253
    add-int/lit8 v26, v26, 0x1

    .line 255
    aget-short v7, v3, v7

    .line 257
    goto :goto_f6

    .line 258
    :cond_101
    aget-byte v7, v5, v7

    .line 260
    and-int/lit16 v7, v7, 0xff

    .line 262
    int-to-byte v4, v7

    .line 263
    aput-byte v4, v1, v20

    .line 265
    :goto_108
    add-int/lit8 v20, v20, 0x1

    .line 267
    add-int/lit8 v13, v13, 0x1

    .line 269
    if-lez v26, :cond_115

    .line 271
    add-int/lit8 v26, v26, -0x1

    .line 273
    aget-byte v27, v6, v26

    .line 275
    aput-byte v27, v1, v20

    .line 277
    goto :goto_108

    .line 278
    :cond_115
    move-object/from16 v27, v6

    .line 280
    const/16 v6, 0x1000

    .line 282
    if-ge v8, v6, :cond_12c

    .line 284
    int-to-short v0, v0

    .line 285
    aput-short v0, v3, v8

    .line 287
    aput-byte v4, v5, v8

    .line 289
    add-int/lit8 v8, v8, 0x1

    .line 291
    and-int v0, v8, v22

    .line 293
    if-nez v0, :cond_12c

    .line 295
    if-ge v8, v6, :cond_12c

    .line 297
    add-int/lit8 v15, v15, 0x1

    .line 299
    add-int v22, v22, v8

    .line 301
    :cond_12c
    move v0, v11

    .line 302
    move/from16 v11, v24

    .line 304
    move/from16 v4, v25

    .line 306
    move-object/from16 v6, v27

    .line 308
    goto/16 :goto_ad

    .line 310
    :cond_135
    move/from16 v25, v4

    .line 312
    move/from16 v24, v0

    .line 314
    move/from16 v21, v8

    .line 316
    move/from16 v18, v25

    .line 318
    const/16 v4, 0x1000

    .line 320
    const/4 v8, 0x1

    .line 321
    move-object/from16 v0, p0

    .line 323
    move/from16 v25, v7

    .line 325
    move/from16 v7, v23

    .line 327
    move/from16 v23, v15

    .line 329
    const/4 v15, -0x1

    .line 330
    goto/16 :goto_82

    .line 332
    :cond_14b
    :goto_14b
    move/from16 v13, v20

    .line 334
    const/4 v0, 0x0

    .line 335
    invoke-static {v1, v13, v2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    .line 338
    return-void
.end method

.method private getHeaderParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    .line 7
    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    .line 14
    return-object v0
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_e

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    :goto_e
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 17
    :goto_10
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 19
    iget v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    .line 21
    iget v3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    .line 23
    invoke-interface {v1, v2, v3, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 31
    return-object v0
.end method

.method private readBlock()I
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->readByte()I

    .line 4
    move-result v0

    .line 5
    if-gtz v0, :cond_7

    .line 7
    return v0

    .line 8
    :cond_7
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 10
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 16
    move-result v4

    .line 17
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    .line 20
    move-result v4

    .line 21
    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 24
    return v0
.end method

.method private readByte()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 6
    move-result v0

    .line 7
    and-int/lit16 v0, v0, 0xff

    .line 9
    return v0
.end method

.method private setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    .registers 12

    .line 1
    iget-object v8, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainScratch:[I

    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p2, :cond_14

    .line 6
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 8
    if-eqz v1, :cond_e

    .line 10
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 12
    invoke-interface {v2, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 15
    :cond_e
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 18
    invoke-static {v8, v0}, Ljava/util/Arrays;->fill([II)V

    .line 21
    :cond_14
    const/4 v1, 0x3

    .line 22
    if-eqz p2, :cond_22

    .line 24
    iget v2, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    .line 26
    if-ne v2, v1, :cond_22

    .line 28
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 30
    if-nez v2, :cond_22

    .line 32
    invoke-static {v8, v0}, Ljava/util/Arrays;->fill([II)V

    .line 35
    :cond_22
    if-eqz p2, :cond_75

    .line 37
    iget v2, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    .line 39
    if-lez v2, :cond_75

    .line 41
    const/4 v3, 0x2

    .line 42
    if-ne v2, v3, :cond_63

    .line 44
    iget-boolean v1, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    .line 46
    if-nez v1, :cond_3f

    .line 48
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 50
    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    .line 52
    iget-object v3, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    .line 54
    if-eqz v3, :cond_3e

    .line 56
    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    .line 58
    iget v3, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    .line 60
    if-ne v1, v3, :cond_3e

    .line 62
    goto :goto_3f

    .line 63
    :cond_3e
    move v0, v2

    .line 64
    :cond_3f
    :goto_3f
    iget v1, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    .line 66
    iget v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    .line 68
    div-int/2addr v1, v2

    .line 69
    iget v3, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    .line 71
    div-int/2addr v3, v2

    .line 72
    iget v4, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    .line 74
    div-int/2addr v4, v2

    .line 75
    iget p2, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    .line 77
    div-int/2addr p2, v2

    .line 78
    iget v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    .line 80
    mul-int/2addr v3, v2

    .line 81
    add-int/2addr v3, p2

    .line 82
    mul-int/2addr v1, v2

    .line 83
    add-int/2addr v1, v3

    .line 84
    :goto_53
    if-ge v3, v1, :cond_75

    .line 86
    add-int p2, v3, v4

    .line 88
    move v2, v3

    .line 89
    :goto_58
    if-ge v2, p2, :cond_5f

    .line 91
    aput v0, v8, v2

    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 95
    goto :goto_58

    .line 96
    :cond_5f
    iget p2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    .line 98
    add-int/2addr v3, p2

    .line 99
    goto :goto_53

    .line 100
    :cond_63
    if-ne v2, v1, :cond_75

    .line 102
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 104
    if-eqz v0, :cond_75

    .line 106
    const/4 v2, 0x0

    .line 107
    iget v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    .line 109
    const/4 v4, 0x0

    .line 110
    const/4 v5, 0x0

    .line 111
    iget v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    .line 113
    move-object v1, v8

    .line 114
    move v3, v6

    .line 115
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 118
    :cond_75
    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V

    .line 121
    iget-boolean p2, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    .line 123
    const/4 v0, 0x1

    .line 124
    if-nez p2, :cond_86

    .line 126
    iget p2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    .line 128
    if-eq p2, v0, :cond_82

    .line 130
    goto :goto_86

    .line 131
    :cond_82
    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->copyIntoScratchFast(Lcom/bumptech/glide/gifdecoder/GifFrame;)V

    .line 134
    goto :goto_89

    .line 135
    :cond_86
    :goto_86
    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->copyCopyIntoScratchRobust(Lcom/bumptech/glide/gifdecoder/GifFrame;)V

    .line 138
    :goto_89
    iget-boolean p2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->savePrevious:Z

    .line 140
    if-eqz p2, :cond_ab

    .line 142
    iget p1, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    .line 144
    if-eqz p1, :cond_93

    .line 146
    if-ne p1, v0, :cond_ab

    .line 148
    :cond_93
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 150
    if-nez p1, :cond_9d

    .line 152
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    .line 155
    move-result-object p1

    .line 156
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 158
    :cond_9d
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 160
    const/4 v2, 0x0

    .line 161
    iget v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    .line 163
    const/4 v4, 0x0

    .line 164
    const/4 v5, 0x0

    .line 165
    iget v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    .line 167
    move-object v1, v8

    .line 168
    move v3, v6

    .line 169
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 172
    :cond_ab
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    .line 175
    move-result-object p1

    .line 176
    const/4 v2, 0x0

    .line 177
    iget v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    .line 179
    const/4 v4, 0x0

    .line 180
    const/4 v5, 0x0

    .line 181
    iget v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    .line 183
    move-object v0, p1

    .line 184
    move-object v1, v8

    .line 185
    move v3, v6

    .line 186
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 189
    return-object p1
.end method


# virtual methods
.method public advance()V
    .registers 3

    .line 1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 7
    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 9
    rem-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 12
    return-void
.end method

.method public clear()V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    .line 6
    if-eqz v1, :cond_c

    .line 8
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 10
    invoke-interface {v2, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release([B)V

    .line 13
    :cond_c
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainScratch:[I

    .line 15
    if-eqz v1, :cond_15

    .line 17
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 19
    invoke-interface {v2, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release([I)V

    .line 22
    :cond_15
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 24
    if-eqz v1, :cond_1e

    .line 26
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 28
    invoke-interface {v2, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 31
    :cond_1e
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 33
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 35
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    .line 39
    if-eqz v0, :cond_2d

    .line 41
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 43
    invoke-interface {v1, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release([B)V

    .line 46
    :cond_2d
    return-void
.end method

.method public getByteSize()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    .line 9
    array-length v1, v1

    .line 10
    add-int/2addr v0, v1

    .line 11
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainScratch:[I

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
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 3
    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 3
    return-object v0
.end method

.method public getDelay(I)I
    .registers 4

    .line 1
    if-ltz p1, :cond_13

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 5
    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 7
    if-ge p1, v1, :cond_13

    .line 9
    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 17
    iget p1, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->delay:I

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 p1, -0x1

    .line 21
    :goto_14
    return p1
.end method

.method public getFrameCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 3
    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 5
    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 3
    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    .line 5
    return v0
.end method

.method public getLoopCount()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 3
    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_8

    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_8
    return v0
.end method

.method public getNetscapeLoopCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 3
    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    .line 5
    return v0
.end method

.method public getNextDelay()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 3
    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 5
    if-lez v0, :cond_10

    .line 7
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 9
    if-gez v0, :cond_b

    .line 11
    goto :goto_10

    .line 12
    :cond_b
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->getDelay(I)I

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
    .registers 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 4
    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 6
    const/4 v1, 0x3

    .line 7
    const/4 v2, 0x1

    .line 8
    if-lez v0, :cond_d

    .line 10
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 12
    if-gez v0, :cond_39

    .line 14
    :cond_d
    sget-object v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_37

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string v4, "Unable to decode frame, frameCount="

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 34
    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string v4, ", framePointer="

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_37
    iput v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    .line 58
    :cond_39
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    .line 60
    const/4 v3, 0x0

    .line 61
    if-eq v0, v2, :cond_c4

    .line 63
    const/4 v4, 0x2

    .line 64
    if-ne v0, v4, :cond_43

    .line 66
    goto/16 :goto_c4

    .line 68
    :cond_43
    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    .line 71
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    .line 73
    if-nez v5, :cond_54

    .line 75
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 77
    const/16 v6, 0xff

    .line 79
    invoke-interface {v5, v6}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    .line 82
    move-result-object v5

    .line 83
    iput-object v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->block:[B

    .line 85
    :cond_54
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 87
    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    .line 89
    iget v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 91
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 97
    iget v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 99
    sub-int/2addr v6, v2

    .line 100
    if-ltz v6, :cond_70

    .line 102
    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 104
    iget-object v7, v7, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    .line 106
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v6

    .line 110
    check-cast v6, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 112
    goto :goto_71

    .line 113
    :cond_70
    move-object v6, v3

    .line 114
    :goto_71
    iget-object v7, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    .line 116
    if-eqz v7, :cond_76

    .line 118
    goto :goto_7a

    .line 119
    :cond_76
    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 121
    iget-object v7, v7, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    .line 123
    :goto_7a
    iput-object v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    .line 125
    if-nez v7, :cond_a0

    .line 127
    sget-object v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_9c

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    const-string v4, "No valid color table found for frame #"

    .line 142
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget v4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 147
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v1

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_9c
    iput v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I
    :try_end_9e
    .catchall {:try_start_1 .. :try_end_9e} :catchall_e4

    .line 159
    monitor-exit p0

    .line 160
    return-object v3

    .line 161
    :cond_a0
    :try_start_a0
    iget-boolean v1, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    .line 163
    if-eqz v1, :cond_be

    .line 165
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pct:[I

    .line 167
    array-length v2, v7

    .line 168
    invoke-static {v7, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->pct:[I

    .line 173
    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->act:[I

    .line 175
    iget v2, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    .line 177
    aput v0, v1, v2

    .line 179
    iget v0, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    .line 181
    if-ne v0, v4, :cond_be

    .line 183
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 185
    if-nez v0, :cond_be

    .line 187
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 189
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->isFirstFrameTransparent:Ljava/lang/Boolean;

    .line 191
    :cond_be
    invoke-direct {p0, v5, v6}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;

    .line 194
    move-result-object v0
    :try_end_c2
    .catchall {:try_start_a0 .. :try_end_c2} :catchall_e4

    .line 195
    monitor-exit p0

    .line 196
    return-object v0

    .line 197
    :cond_c4
    :goto_c4
    :try_start_c4
    sget-object v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 202
    move-result v1

    .line 203
    if-eqz v1, :cond_e2

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    .line 207
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    const-string v2, "Unable to decode frame, status="

    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v1

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catchall {:try_start_c4 .. :try_end_e2} :catchall_e4

    .line 227
    :cond_e2
    monitor-exit p0

    .line 228
    return-object v3

    .line 229
    :catchall_e4
    move-exception v0

    .line 230
    monitor-exit p0

    .line 231
    throw v0
.end method

.method public getStatus()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    .line 3
    return v0
.end method

.method public getTotalIterationCount()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 3
    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, -0x1

    .line 7
    if-ne v0, v2, :cond_9

    .line 9
    return v1

    .line 10
    :cond_9
    if-nez v0, :cond_d

    .line 12
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_d
    add-int/2addr v0, v1

    .line 15
    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 3
    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

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

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->read([B)I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_27} :catch_28

    goto :goto_34

    :catch_28
    move-exception p2

    .line 6
    sget-object v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    const-string v1, "Error reading data from stream"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    :cond_31
    const/4 p2, 0x2

    .line 7
    iput p2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    :goto_34
    if-eqz p1, :cond_42

    .line 8
    :try_start_36
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_42

    :catch_3a
    move-exception p1

    .line 9
    sget-object p2, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->TAG:Ljava/lang/String;

    const-string v0, "Error closing stream"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    :cond_42
    :goto_42
    iget p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    return p1
.end method

.method public declared-synchronized read([B)I
    .registers 3

    monitor-enter p0

    .line 11
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->getHeaderParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    if-eqz p1, :cond_14

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V

    .line 13
    :cond_14
    iget p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I
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
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 4
    return-void
.end method

.method public declared-synchronized setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 3
    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V
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

.method public declared-synchronized setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V
    .registers 6

    monitor-enter p0

    if-lez p3, :cond_63

    .line 5
    :try_start_3
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->status:I

    .line 7
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->framePointer:I

    .line 9
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    iget-object p2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->savePrevious:Z

    .line 13
    iget-object p2, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_27
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 14
    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->savePrevious:Z

    .line 16
    :cond_3b
    iput p3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->sampleSize:I

    .line 17
    iget p2, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    div-int v0, p2, p3

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    .line 18
    iget p1, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    div-int p3, p1, p3

    iput p3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    .line 19
    iget-object p3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    mul-int/2addr p2, p1

    invoke-interface {p3, p2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainPixels:[B

    .line 20
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget p2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledWidth:I

    iget p3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->downsampledHeight:I

    mul-int/2addr p2, p3

    invoke-interface {p1, p2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtainIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->mainScratch:[I
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_61

    .line 21
    monitor-exit p0

    return-void

    :catchall_61
    move-exception p1

    goto :goto_7a

    .line 22
    :cond_63
    :try_start_63
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
    :try_end_7a
    .catchall {:try_start_63 .. :try_end_7a} :catchall_61

    :goto_7a
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;)V
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

.method public setDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .registers 5

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 3
    if-eq p1, v0, :cond_34

    .line 5
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 7
    if-ne p1, v0, :cond_9

    .line 9
    goto :goto_34

    .line 10
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v2, "Unsupported format: "

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, ", must be one of "

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    const-string p1, " or "

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0

    .line 53
    :cond_34
    :goto_34
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 55
    return-void
.end method
