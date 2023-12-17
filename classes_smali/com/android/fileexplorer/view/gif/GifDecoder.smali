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
.field private static final BYTES_PER_INTEGER:I

.field private static final DISPOSAL_BACKGROUND:I

.field private static final DISPOSAL_NONE:I

.field private static final DISPOSAL_PREVIOUS:I

.field private static final DISPOSAL_UNSPECIFIED:I

.field private static final INITIAL_FRAME_POINTER:I

.field private static final MAX_STACK_SIZE:I

.field private static final NULL_CODE:I

.field public static final STATUS_FORMAT_ERROR:I

.field public static final STATUS_OK:I

.field public static final STATUS_OPEN_ERROR:I

.field private static final STATUS_PARTIAL_DECODE:I

.field private static final TAG:Ljava/lang/String; = "GifDecoder"

.field private static final WORK_BUFFER_SIZE:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->BYTES_PER_INTEGER:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->DISPOSAL_BACKGROUND:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->DISPOSAL_NONE:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->DISPOSAL_PREVIOUS:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->DISPOSAL_UNSPECIFIED:I

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->INITIAL_FRAME_POINTER:I

    const v0, 0x93d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->MAX_STACK_SIZE:I

    const v0, -0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->NULL_CODE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->STATUS_FORMAT_ERROR:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->STATUS_OK:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->STATUS_OPEN_ERROR:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->STATUS_PARTIAL_DECODE:I

    const v0, 0x96d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->WORK_BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    new-instance v0, Lcom/android/fileexplorer/view/gif/SimpleBitmapProvider;

    invoke-direct {v0}, Lcom/android/fileexplorer/view/gif/SimpleBitmapProvider;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/gif/GifDecoder;-><init>(Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    new-instance p1, Lcom/android/fileexplorer/view/gif/GifHeader;

    invoke-direct {p1}, Lcom/android/fileexplorer/view/gif/GifHeader;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;Lcom/android/fileexplorer/view/gif/GifHeader;Ljava/nio/ByteBuffer;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/fileexplorer/view/gif/GifDecoder;-><init>(Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;Lcom/android/fileexplorer/view/gif/GifHeader;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;Lcom/android/fileexplorer/view/gif/GifHeader;Ljava/nio/ByteBuffer;I)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/gif/GifDecoder;-><init>(Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/android/fileexplorer/view/gif/GifDecoder;->setData(Lcom/android/fileexplorer/view/gif/GifHeader;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private averageColorsNear(III)I
    .registers 13

    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_7
    iget v7, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->sampleSize:I

    add-int/2addr v7, p1

    if-ge v1, v7, :cond_34

    iget-object v7, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainPixels:[B

    array-length v8, v7

    if-ge v1, v8, :cond_34

    if-ge v1, p2, :cond_34

    aget-byte v7, v7, v1

    and-int/lit16 v7, v7, 0xff

    iget-object v8, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->act:[I

    aget v7, v8, v7

    if-eqz v7, :cond_31

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v2, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v3, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_34
    add-int/2addr p1, p3

    move p3, p1

    :goto_36
    iget v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->sampleSize:I

    add-int/2addr v1, p1

    if-ge p3, v1, :cond_63

    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainPixels:[B

    array-length v7, v1

    if-ge p3, v7, :cond_63

    if-ge p3, p2, :cond_63

    aget-byte v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    iget-object v7, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->act:[I

    aget v1, v7, v1

    if-eqz v1, :cond_60

    shr-int/lit8 v7, v1, 0x18

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v2, v7

    shr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v5, v1

    add-int/lit8 v6, v6, 0x1

    :cond_60
    add-int/lit8 p3, p3, 0x1

    goto :goto_36

    :cond_63
    if-nez v6, :cond_66

    goto :goto_74

    :cond_66
    div-int/2addr v2, v6

    shl-int/lit8 p1, v2, 0x18

    div-int/2addr v3, v6

    shl-int/lit8 p2, v3, 0x10

    or-int/2addr p1, p2

    div-int/2addr v4, v6

    shl-int/lit8 p2, v4, 0x8

    or-int/2addr p1, p2

    div-int/2addr v5, v6

    or-int v0, p1, v5

    :goto_74
    return v0
.end method

.method private decodeBitmapData(Lcom/android/fileexplorer/view/gif/GifFrame;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferSize:I

    iput v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    if-eqz v1, :cond_12

    iget-object v3, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget v4, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->bufferFrameStart:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_12
    if-nez v1, :cond_1b

    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v3, v1, Lcom/android/fileexplorer/view/gif/GifHeader;->width:I

    iget v1, v1, Lcom/android/fileexplorer/view/gif/GifHeader;->height:I

    goto :goto_1f

    :cond_1b
    iget v3, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->iw:I

    iget v1, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->ih:I

    :goto_1f
    mul-int/2addr v3, v1

    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainPixels:[B

    if-eqz v1, :cond_27

    array-length v1, v1

    if-ge v1, v3, :cond_2f

    :cond_27
    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    invoke-interface {v1, v3}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainPixels:[B

    :cond_2f
    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->prefix:[S

    const/16 v4, 0x1000

    if-nez v1, :cond_39

    new-array v1, v4, [S

    iput-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->prefix:[S

    :cond_39
    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->suffix:[B

    if-nez v1, :cond_41

    new-array v1, v4, [B

    iput-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->suffix:[B

    :cond_41
    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->pixelStack:[B

    if-nez v1, :cond_4b

    const/16 v1, 0x1001

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->pixelStack:[B

    :cond_4b
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->readByte()I

    move-result v1

    const/4 v5, 0x1

    shl-int v6, v5, v1

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v6, 0x2

    add-int/2addr v1, v5

    shl-int v9, v5, v1

    sub-int/2addr v9, v5

    move v10, v2

    :goto_5b
    if-ge v10, v6, :cond_69

    iget-object v11, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->prefix:[S

    aput-short v2, v11, v10

    iget-object v11, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->suffix:[B

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5b

    :cond_69
    const/4 v10, -0x1

    move/from16 v19, v1

    move v11, v2

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v21, v16

    move/from16 v22, v21

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v20, v10

    :goto_7d
    if-ge v11, v3, :cond_177

    const/4 v2, 0x3

    if-nez v12, :cond_8d

    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->readBlock()I

    move-result v12

    if-gtz v12, :cond_8c

    iput v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    goto/16 :goto_177

    :cond_8c
    const/4 v13, 0x0

    :cond_8d
    iget-object v4, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->block:[B

    aget-byte v4, v4, v13

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v14

    add-int/2addr v15, v4

    add-int/lit8 v14, v14, 0x8

    add-int/2addr v13, v5

    add-int/2addr v12, v10

    move/from16 v4, v17

    move/from16 v5, v19

    move/from16 v23, v20

    move/from16 v24, v21

    :goto_a1
    if-lt v14, v5, :cond_161

    and-int v10, v15, v18

    shr-int/2addr v15, v5

    sub-int/2addr v14, v5

    if-ne v10, v6, :cond_b1

    move v5, v1

    move v4, v8

    move/from16 v18, v9

    const/4 v10, -0x1

    const/16 v23, -0x1

    goto :goto_a1

    :cond_b1
    if-le v10, v4, :cond_b6

    iput v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    goto :goto_b8

    :cond_b6
    if-ne v10, v7, :cond_c6

    :goto_b8
    move/from16 v17, v4

    move/from16 v19, v5

    move/from16 v20, v23

    move/from16 v21, v24

    const/4 v2, 0x0

    const/16 v4, 0x1000

    const/4 v5, 0x1

    const/4 v10, -0x1

    goto :goto_7d

    :cond_c6
    move/from16 v19, v1

    move/from16 v2, v23

    const/4 v1, -0x1

    if-ne v2, v1, :cond_e2

    iget-object v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v21, v22, 0x1

    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->suffix:[B

    aget-byte v1, v1, v10

    aput-byte v1, v2, v22

    move/from16 v23, v10

    move/from16 v24, v23

    move/from16 v1, v19

    move/from16 v22, v21

    const/4 v2, 0x3

    const/4 v10, -0x1

    goto :goto_a1

    :cond_e2
    if-lt v10, v4, :cond_f3

    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v21, v22, 0x1

    move/from16 v25, v7

    move/from16 v7, v24

    int-to-byte v7, v7

    aput-byte v7, v1, v22

    move v1, v2

    move/from16 v22, v21

    goto :goto_f6

    :cond_f3
    move/from16 v25, v7

    move v1, v10

    :goto_f6
    if-lt v1, v6, :cond_10d

    iget-object v7, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v21, v22, 0x1

    move/from16 v24, v6

    iget-object v6, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->suffix:[B

    aget-byte v6, v6, v1

    aput-byte v6, v7, v22

    iget-object v6, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->prefix:[S

    aget-short v1, v6, v1

    move/from16 v22, v21

    move/from16 v6, v24

    goto :goto_f6

    :cond_10d
    move/from16 v24, v6

    iget-object v6, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->suffix:[B

    aget-byte v1, v6, v1

    and-int/lit16 v1, v1, 0xff

    iget-object v7, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v21, v22, 0x1

    move/from16 v26, v8

    int-to-byte v8, v1

    aput-byte v8, v7, v22

    const/16 v7, 0x1000

    if-ge v4, v7, :cond_13b

    iget-object v7, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->prefix:[S

    int-to-short v2, v2

    aput-short v2, v7, v4

    aput-byte v8, v6, v4

    add-int/lit8 v4, v4, 0x1

    and-int v2, v4, v18

    if-nez v2, :cond_138

    const/16 v2, 0x1000

    if-ge v4, v2, :cond_13c

    add-int/lit8 v5, v5, 0x1

    add-int v18, v18, v4

    goto :goto_13c

    :cond_138
    const/16 v2, 0x1000

    goto :goto_13c

    :cond_13b
    move v2, v7

    :cond_13c
    :goto_13c
    move/from16 v22, v21

    :goto_13e
    if-lez v22, :cond_151

    iget-object v6, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainPixels:[B

    add-int/lit8 v7, v16, 0x1

    iget-object v8, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v22, v22, -0x1

    aget-byte v8, v8, v22

    aput-byte v8, v6, v16

    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v7

    goto :goto_13e

    :cond_151
    move/from16 v23, v10

    move/from16 v6, v24

    move/from16 v7, v25

    move/from16 v8, v26

    const/4 v2, 0x3

    const/4 v10, -0x1

    move/from16 v24, v1

    move/from16 v1, v19

    goto/16 :goto_a1

    :cond_161
    move/from16 v25, v7

    move/from16 v2, v23

    move/from16 v7, v24

    move/from16 v20, v2

    move/from16 v17, v4

    move/from16 v19, v5

    move/from16 v21, v7

    move/from16 v7, v25

    const/4 v2, 0x0

    const/16 v4, 0x1000

    const/4 v5, 0x1

    goto/16 :goto_7d

    :cond_177
    :goto_177
    move/from16 v1, v16

    :goto_179
    if-ge v1, v3, :cond_183

    iget-object v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainPixels:[B

    const/4 v4, 0x0

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_179

    :cond_183
    return-void
.end method

.method private getDelay(I)I
    .registers 4

    if-ltz p1, :cond_13

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    if-ge p1, v1, :cond_13

    iget-object v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/view/gif/GifFrame;

    iget p1, p1, Lcom/android/fileexplorer/view/gif/GifFrame;->delay:I

    goto :goto_14

    :cond_13
    const/4 p1, -0x1

    :goto_14
    return p1
.end method

.method private getHeaderParser()Lcom/android/fileexplorer/view/gif/GifHeaderParser;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->parser:Lcom/android/fileexplorer/view/gif/GifHeaderParser;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;

    invoke-direct {v0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->parser:Lcom/android/fileexplorer/view/gif/GifHeaderParser;

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->parser:Lcom/android/fileexplorer/view/gif/GifHeaderParser;

    return-object v0
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
    .registers 5

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->isFirstFrameTransparent:Z

    if-eqz v0, :cond_7

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_9

    :cond_7
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_9
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    iget v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledWidth:I

    iget v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledHeight:I

    invoke-interface {v1, v2, v3, v0}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->setAlpha(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private readBlock()I
    .registers 8

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->readByte()I

    move-result v0

    if-lez v0, :cond_5f

    const/4 v1, 0x1

    :try_start_7
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->block:[B

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    const/16 v3, 0xff

    invoke-interface {v2, v3}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->block:[B

    :cond_15
    iget v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferSize:I

    iget v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-lt v2, v0, :cond_2a

    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBuffer:[B

    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->block:[B

    invoke-static {v2, v3, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    goto :goto_5f

    :cond_2a
    iget-object v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    add-int/2addr v3, v2

    if-lt v3, v0, :cond_52

    iget-object v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBuffer:[B

    iget v5, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    iget-object v6, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->block:[B

    invoke-static {v3, v5, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferSize:I

    iput v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->readChunkIfNeeded()V

    sub-int v3, v0, v2

    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBuffer:[B

    iget-object v6, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->block:[B

    invoke-static {v5, v4, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    goto :goto_5f

    :cond_52
    iput v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_54} :catch_55

    goto :goto_5f

    :catch_55
    move-exception v2

    sget-object v3, Lcom/android/fileexplorer/view/gif/GifDecoder;->TAG:Ljava/lang/String;

    const-string v4, "Error Reading Block"

    invoke-static {v3, v4, v2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    :cond_5f
    :goto_5f
    return v0
.end method

.method private readByte()I
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->readChunkIfNeeded()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBuffer:[B

    iget v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    aget-byte v0, v0, v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_10

    and-int/lit16 v0, v0, 0xff

    return v0

    :catch_10
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    const/4 v0, 0x0

    return v0
.end method

.method private readChunkIfNeeded()V
    .registers 5

    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferSize:I

    iget v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    if-le v0, v1, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBuffer:[B

    const/16 v1, 0x4000

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    invoke-interface {v0, v1}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBuffer:[B

    :cond_15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferPosition:I

    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBufferSize:I

    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBuffer:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static setAlpha(Landroid/graphics/Bitmap;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-void
.end method

.method private declared-synchronized setData(Lcom/android/fileexplorer/view/gif/GifHeader;Ljava/nio/ByteBuffer;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->setData(Lcom/android/fileexplorer/view/gif/GifHeader;Ljava/nio/ByteBuffer;I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

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

    :try_start_3
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->isFirstFrameTransparent:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->savePrevious:Z

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

    iget v0, v0, Lcom/android/fileexplorer/view/gif/GifFrame;->dispose:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_29

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->savePrevious:Z

    :cond_3d
    iput p3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->sampleSize:I

    iget-object p2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    iget v0, p1, Lcom/android/fileexplorer/view/gif/GifHeader;->width:I

    iget v1, p1, Lcom/android/fileexplorer/view/gif/GifHeader;->height:I

    mul-int/2addr v0, v1

    invoke-interface {p2, v0}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->obtainByteArray(I)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainPixels:[B

    iget-object p2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    iget v0, p1, Lcom/android/fileexplorer/view/gif/GifHeader;->width:I

    div-int/2addr v0, p3

    iget v1, p1, Lcom/android/fileexplorer/view/gif/GifHeader;->height:I

    div-int/2addr v1, p3

    mul-int/2addr v0, v1

    invoke-interface {p2, v0}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->obtainIntArray(I)[I

    move-result-object p2

    iput-object p2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainScratch:[I

    iget p2, p1, Lcom/android/fileexplorer/view/gif/GifHeader;->width:I

    div-int/2addr p2, p3

    iput p2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledWidth:I

    iget p1, p1, Lcom/android/fileexplorer/view/gif/GifHeader;->height:I

    div-int/2addr p1, p3

    iput p1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledHeight:I
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_67

    monitor-exit p0

    return-void

    :catchall_67
    move-exception p1

    goto :goto_80

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

    :try_start_1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/fileexplorer/view/gif/GifDecoder;->setData(Lcom/android/fileexplorer/view/gif/GifHeader;Ljava/nio/ByteBuffer;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setPixels(Lcom/android/fileexplorer/view/gif/GifFrame;Lcom/android/fileexplorer/view/gif/GifFrame;)Landroid/graphics/Bitmap;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v10, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainScratch:[I

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v2, :cond_3a

    iget v2, v2, Lcom/android/fileexplorer/view/gif/GifFrame;->dispose:I

    if-lez v2, :cond_3a

    if-ne v2, v12, :cond_28

    iget-boolean v2, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->transparency:Z

    if-nez v2, :cond_1d

    iget-object v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v2, v2, Lcom/android/fileexplorer/view/gif/GifHeader;->bgColor:I

    goto :goto_24

    :cond_1d
    iget v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    if-nez v2, :cond_23

    iput-boolean v14, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->isFirstFrameTransparent:Z

    :cond_23
    move v2, v13

    :goto_24
    invoke-static {v10, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_3a

    :cond_28
    if-ne v2, v11, :cond_3a

    iget-object v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3a

    const/4 v4, 0x0

    iget v8, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledWidth:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v9, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledHeight:I

    move-object v3, v10

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_3a
    :goto_3a
    invoke-direct/range {p0 .. p1}, Lcom/android/fileexplorer/view/gif/GifDecoder;->decodeBitmapData(Lcom/android/fileexplorer/view/gif/GifFrame;)V

    iget v2, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->ih:I

    iget v3, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->sampleSize:I

    div-int/2addr v2, v3

    iget v4, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->iy:I

    div-int/2addr v4, v3

    iget v5, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->iw:I

    div-int/2addr v5, v3

    iget v6, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->ix:I

    div-int/2addr v6, v3

    const/16 v3, 0x8

    iget v7, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    if-nez v7, :cond_53

    move v7, v14

    goto :goto_54

    :cond_53
    move v7, v13

    :goto_54
    move v8, v13

    move v9, v14

    :goto_56
    if-ge v13, v2, :cond_be

    iget-boolean v15, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->interlace:Z

    if-eqz v15, :cond_72

    const/4 v15, 0x4

    if-lt v8, v2, :cond_6f

    add-int/lit8 v9, v9, 0x1

    if-eq v9, v12, :cond_6e

    if-eq v9, v11, :cond_6b

    if-eq v9, v15, :cond_68

    goto :goto_6f

    :cond_68
    move v3, v12

    move v8, v14

    goto :goto_6f

    :cond_6b
    move v8, v12

    move v3, v15

    goto :goto_6f

    :cond_6e
    move v8, v15

    :cond_6f
    :goto_6f
    add-int v15, v8, v3

    goto :goto_74

    :cond_72
    move v15, v8

    move v8, v13

    :goto_74
    add-int/2addr v8, v4

    iget v11, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledHeight:I

    if-ge v8, v11, :cond_b3

    iget v11, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledWidth:I

    mul-int/2addr v8, v11

    add-int v16, v8, v6

    add-int v12, v16, v5

    add-int v14, v8, v11

    if-ge v14, v12, :cond_86

    add-int v12, v8, v11

    :cond_86
    iget v8, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->sampleSize:I

    mul-int v11, v13, v8

    iget v14, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->iw:I

    mul-int/2addr v11, v14

    sub-int v14, v12, v16

    mul-int/2addr v14, v8

    add-int/2addr v14, v11

    move/from16 v8, v16

    :goto_93
    if-ge v8, v12, :cond_b3

    move/from16 p2, v2

    iget v2, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->iw:I

    invoke-direct {v0, v11, v14, v2}, Lcom/android/fileexplorer/view/gif/GifDecoder;->averageColorsNear(III)I

    move-result v2

    if-eqz v2, :cond_a2

    aput v2, v10, v8

    goto :goto_ab

    :cond_a2
    iget-boolean v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->isFirstFrameTransparent:Z

    if-nez v2, :cond_ab

    if-eqz v7, :cond_ab

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->isFirstFrameTransparent:Z

    :cond_ab
    :goto_ab
    iget v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->sampleSize:I

    add-int/2addr v11, v2

    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p2

    goto :goto_93

    :cond_b3
    move/from16 p2, v2

    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p2

    move v8, v15

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v14, 0x1

    goto :goto_56

    :cond_be
    iget-boolean v2, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->savePrevious:Z

    if-eqz v2, :cond_e1

    iget v1, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->dispose:I

    if-eqz v1, :cond_c9

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e1

    :cond_c9
    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_d3

    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    :cond_d3
    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v7, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledWidth:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledHeight:I

    move-object v2, v10

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_e1
    invoke-direct/range {p0 .. p0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v3, 0x0

    iget v7, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledWidth:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->downsampledHeight:I

    move-object v1, v9

    move-object v2, v10

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v9
.end method


# virtual methods
.method public advance()V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v1, v1, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    return-void
.end method

.method public clear()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainPixels:[B

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    invoke-interface {v2, v1}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->release([B)V

    :cond_c
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainScratch:[I

    if-eqz v1, :cond_15

    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    invoke-interface {v2, v1}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->release([I)V

    :cond_15
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1e

    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    invoke-interface {v2, v1}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    :cond_1e
    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->isFirstFrameTransparent:Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->block:[B

    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    invoke-interface {v1, v0}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->release([B)V

    :cond_2e
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->workBuffer:[B

    if-eqz v0, :cond_37

    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->bitmapProvider:Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;

    invoke-interface {v1, v0}, Lcom/android/fileexplorer/view/gif/GifDecoder$BitmapProvider;->release([B)V

    :cond_37
    return-void
.end method

.method public getByteSize()I
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainPixels:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->mainScratch:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v0

    return v1
.end method

.method public getCurrentFrameIndex()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getFrameCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->height:I

    return v0
.end method

.method public getLoopCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->loopCount:I

    return v0
.end method

.method public getNextDelay()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    if-lez v0, :cond_10

    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    if-gez v0, :cond_b

    goto :goto_10

    :cond_b
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getDelay(I)I

    move-result v0

    return v0

    :cond_10
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_c

    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    if-gez v0, :cond_32

    :cond_c
    sget-object v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to decode frame, frameCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v3, v3, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " framePointer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    :cond_32
    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_b0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3c

    goto/16 :goto_b0

    :cond_3c
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    iget-object v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget-object v3, v3, Lcom/android/fileexplorer/view/gif/GifHeader;->frames:Ljava/util/List;

    iget v4, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/view/gif/GifFrame;

    iget v4, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    sub-int/2addr v4, v1

    if-ltz v4, :cond_5b

    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget-object v5, v5, Lcom/android/fileexplorer/view/gif/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    :goto_58
    check-cast v4, Lcom/android/fileexplorer/view/gif/GifFrame;

    goto :goto_69

    :cond_5b
    iget-object v4, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget-object v4, v4, Lcom/android/fileexplorer/view/gif/GifHeader;->frames:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getFrameCount()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_58

    :goto_69
    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v6, v5, Lcom/android/fileexplorer/view/gif/GifHeader;->bgColor:I

    iget-object v7, v3, Lcom/android/fileexplorer/view/gif/GifFrame;->lct:[I

    if-nez v7, :cond_76

    iget-object v5, v5, Lcom/android/fileexplorer/view/gif/GifHeader;->gct:[I

    iput-object v5, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->act:[I

    goto :goto_80

    :cond_76
    iput-object v7, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->act:[I

    iget v7, v5, Lcom/android/fileexplorer/view/gif/GifHeader;->bgIndex:I

    iget v8, v3, Lcom/android/fileexplorer/view/gif/GifFrame;->transIndex:I

    if-ne v7, v8, :cond_80

    iput v0, v5, Lcom/android/fileexplorer/view/gif/GifHeader;->bgColor:I

    :cond_80
    :goto_80
    iget-boolean v5, v3, Lcom/android/fileexplorer/view/gif/GifFrame;->transparency:Z

    if-eqz v5, :cond_8d

    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->act:[I

    iget v7, v3, Lcom/android/fileexplorer/view/gif/GifFrame;->transIndex:I

    aget v8, v5, v7

    aput v0, v5, v7

    move v0, v8

    :cond_8d
    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->act:[I

    if-nez v5, :cond_9c

    sget-object v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->TAG:Ljava/lang/String;

    const-string v3, "No Valid Color Table"

    invoke-static {v0, v3}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I
    :try_end_9a
    .catchall {:try_start_1 .. :try_end_9a} :catchall_ca

    monitor-exit p0

    return-object v2

    :cond_9c
    :try_start_9c
    invoke-direct {p0, v3, v4}, Lcom/android/fileexplorer/view/gif/GifDecoder;->setPixels(Lcom/android/fileexplorer/view/gif/GifFrame;Lcom/android/fileexplorer/view/gif/GifFrame;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-boolean v2, v3, Lcom/android/fileexplorer/view/gif/GifFrame;->transparency:Z

    if-eqz v2, :cond_aa

    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->act:[I

    iget v3, v3, Lcom/android/fileexplorer/view/gif/GifFrame;->transIndex:I

    aput v0, v2, v3

    :cond_aa
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iput v6, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->bgColor:I
    :try_end_ae
    .catchall {:try_start_9c .. :try_end_ae} :catchall_ca

    monitor-exit p0

    return-object v1

    :cond_b0
    :goto_b0
    :try_start_b0
    sget-object v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to decode frame, status="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_b0 .. :try_end_c8} :catchall_ca

    monitor-exit p0

    return-object v2

    :catchall_ca
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->width:I

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

    :goto_a
    :try_start_a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array p2, v0, [B

    :goto_11
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1d

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_11

    :cond_1d
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/fileexplorer/view/gif/GifDecoder;->read([B)I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_27} :catch_28

    goto :goto_34

    :catch_28
    move-exception p2

    sget-object v0, Lcom/android/fileexplorer/view/gif/GifDecoder;->TAG:Ljava/lang/String;

    const-string v1, "Error reading data from stream"

    invoke-static {v0, v1, p2}, Lcom/android/fileexplorer/model/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_34

    :cond_31
    const/4 p2, 0x2

    iput p2, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    :goto_34
    invoke-static {p1}, Lcom/android/fileexplorer/util/AutoClose;->closeQuietly(Ljava/io/Closeable;)V

    iget p1, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->status:I

    return p1
.end method

.method public declared-synchronized read([B)I
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getHeaderParser()Lcom/android/fileexplorer/view/gif/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->setData([B)Lcom/android/fileexplorer/view/gif/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->parseHeader()Lcom/android/fileexplorer/view/gif/GifHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    if-eqz p1, :cond_14

    invoke-direct {p0, v0, p1}, Lcom/android/fileexplorer/view/gif/GifDecoder;->setData(Lcom/android/fileexplorer/view/gif/GifHeader;[B)V

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

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/fileexplorer/view/gif/GifDecoder;->framePointer:I

    return-void
.end method
