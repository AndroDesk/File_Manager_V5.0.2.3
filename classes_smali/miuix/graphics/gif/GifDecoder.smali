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
.field public static final MAX_DECODE_SIZE:I

.field public static final MAX_STACK_SIZE:I

.field public static final STATUS_DECODE_CANCEL:I

.field public static final STATUS_FORMAT_ERROR:I

.field public static final STATUS_OK:I

.field public static final STATUS_OPEN_ERROR:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x192d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/graphics/gif/GifDecoder;->MAX_DECODE_SIZE:I

    const v0, 0x93d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/graphics/gif/GifDecoder;->MAX_STACK_SIZE:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/graphics/gif/GifDecoder;->STATUS_DECODE_CANCEL:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/graphics/gif/GifDecoder;->STATUS_FORMAT_ERROR:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/graphics/gif/GifDecoder;->STATUS_OK:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/graphics/gif/GifDecoder;->STATUS_OPEN_ERROR:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lmiuix/graphics/gif/GifDecoder;->mMaxDecodeSize:J

    const/4 v0, 0x1

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->loopCount:I

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->block:[B

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->dispose:I

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastDispose:I

    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->transparency:Z

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->calledOnce:Z

    return-void
.end method

.method public static isGifStream(Ljava/io/InputStream;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_25

    const-string v1, ""

    :goto_5
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1f

    invoke-static {p0}, Lmiuix/graphics/gif/GifDecoder;->readOneByte(Ljava/io/InputStream;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_10

    goto :goto_1f

    :cond_10
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1f
    :goto_1f
    const-string p0, "GIF"

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :cond_25
    return v0
.end method

.method public static readOneByte(Ljava/io/InputStream;)I
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, -0x1

    return p0
.end method

.method private requestCancel()V
    .registers 1

    return-void
.end method


# virtual methods
.method public decodeBitmapData()V
    .registers 25

    move-object/from16 v0, p0

    iget v1, v0, Lmiuix/graphics/gif/GifDecoder;->iw:I

    iget v2, v0, Lmiuix/graphics/gif/GifDecoder;->ih:I

    mul-int/2addr v1, v2

    iget-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->pixels:[B

    if-eqz v2, :cond_e

    array-length v2, v2

    if-ge v2, v1, :cond_12

    :cond_e
    new-array v2, v1, [B

    iput-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->pixels:[B

    :cond_12
    iget-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->prefix:[S

    const/16 v3, 0x1000

    if-nez v2, :cond_1c

    new-array v2, v3, [S

    iput-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->prefix:[S

    :cond_1c
    iget-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->suffix:[B

    if-nez v2, :cond_24

    new-array v2, v3, [B

    iput-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->suffix:[B

    :cond_24
    iget-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    if-nez v2, :cond_2e

    const/16 v2, 0x1001

    new-array v2, v2, [B

    iput-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v2

    const/4 v4, 0x1

    shl-int v5, v4, v2

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v5, 0x2

    add-int/2addr v2, v4

    shl-int v8, v4, v2

    sub-int/2addr v8, v4

    const/4 v9, 0x0

    move v10, v9

    :goto_3f
    if-ge v10, v5, :cond_4d

    iget-object v11, v0, Lmiuix/graphics/gif/GifDecoder;->prefix:[S

    aput-short v9, v11, v10

    iget-object v11, v0, Lmiuix/graphics/gif/GifDecoder;->suffix:[B

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3f

    :cond_4d
    move v14, v2

    move/from16 v16, v8

    move v11, v9

    move v12, v11

    move v13, v12

    move v15, v13

    move/from16 v17, v15

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    const/4 v3, -0x1

    move v9, v7

    :goto_5e
    if-ge v11, v1, :cond_12a

    if-nez v12, :cond_104

    if-ge v13, v14, :cond_80

    if-nez v17, :cond_70

    invoke-virtual/range {p0 .. p0}, Lmiuix/graphics/gif/GifDecoder;->readBlock()I

    move-result v17

    if-gtz v17, :cond_6e

    goto/16 :goto_12a

    :cond_6e
    const/16 v18, 0x0

    :cond_70
    iget-object v10, v0, Lmiuix/graphics/gif/GifDecoder;->block:[B

    aget-byte v10, v10, v18

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v13

    add-int/2addr v15, v10

    add-int/lit8 v13, v13, 0x8

    add-int/lit8 v18, v18, 0x1

    const/4 v10, -0x1

    add-int/lit8 v17, v17, -0x1

    goto :goto_5e

    :cond_80
    const/4 v10, -0x1

    and-int v4, v15, v16

    shr-int/2addr v15, v14

    sub-int/2addr v13, v14

    if-gt v4, v9, :cond_12a

    if-ne v4, v6, :cond_8b

    goto/16 :goto_12a

    :cond_8b
    if-ne v4, v5, :cond_94

    move v14, v2

    move v9, v7

    move/from16 v16, v8

    move v3, v10

    :goto_92
    const/4 v4, 0x1

    goto :goto_5e

    :cond_94
    if-ne v3, v10, :cond_a9

    iget-object v3, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v21, v2

    iget-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->suffix:[B

    aget-byte v2, v2, v4

    aput-byte v2, v3, v12

    move v3, v4

    move/from16 v19, v3

    move v12, v10

    move/from16 v2, v21

    goto :goto_92

    :cond_a9
    move/from16 v21, v2

    if-ne v4, v9, :cond_bb

    iget-object v2, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v22, v4

    move/from16 v4, v19

    int-to-byte v4, v4

    aput-byte v4, v2, v12

    move v2, v3

    move v12, v10

    goto :goto_bf

    :cond_bb
    move/from16 v22, v4

    move/from16 v2, v22

    :goto_bf
    if-le v2, v5, :cond_d5

    iget-object v4, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v19, v5

    iget-object v5, v0, Lmiuix/graphics/gif/GifDecoder;->suffix:[B

    aget-byte v5, v5, v2

    aput-byte v5, v4, v12

    iget-object v4, v0, Lmiuix/graphics/gif/GifDecoder;->prefix:[S

    aget-short v2, v4, v2

    move v12, v10

    move/from16 v5, v19

    goto :goto_bf

    :cond_d5
    move/from16 v19, v5

    iget-object v4, v0, Lmiuix/graphics/gif/GifDecoder;->suffix:[B

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0x1000

    if-lt v9, v5, :cond_e2

    goto :goto_12a

    :cond_e2
    iget-object v5, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    add-int/lit8 v10, v12, 0x1

    move/from16 v23, v6

    int-to-byte v6, v2

    aput-byte v6, v5, v12

    iget-object v5, v0, Lmiuix/graphics/gif/GifDecoder;->prefix:[S

    int-to-short v3, v3

    aput-short v3, v5, v9

    aput-byte v6, v4, v9

    add-int/lit8 v9, v9, 0x1

    and-int v3, v9, v16

    const/16 v5, 0x1000

    if-nez v3, :cond_100

    if-ge v9, v5, :cond_100

    add-int/lit8 v14, v14, 0x1

    add-int v16, v16, v9

    :cond_100
    move v12, v10

    move/from16 v3, v22

    goto :goto_10f

    :cond_104
    move/from16 v21, v2

    move/from16 v23, v6

    move/from16 v4, v19

    move/from16 v19, v5

    const/16 v5, 0x1000

    move v2, v4

    :goto_10f
    const/4 v4, -0x1

    add-int/2addr v12, v4

    iget-object v6, v0, Lmiuix/graphics/gif/GifDecoder;->pixels:[B

    add-int/lit8 v10, v20, 0x1

    iget-object v4, v0, Lmiuix/graphics/gif/GifDecoder;->pixelStack:[B

    aget-byte v4, v4, v12

    aput-byte v4, v6, v20

    add-int/lit8 v11, v11, 0x1

    move/from16 v20, v10

    move/from16 v5, v19

    move/from16 v6, v23

    const/4 v4, 0x1

    move/from16 v19, v2

    move/from16 v2, v21

    goto/16 :goto_5e

    :cond_12a
    :goto_12a
    move/from16 v2, v20

    :goto_12c
    if-ge v2, v1, :cond_136

    iget-object v3, v0, Lmiuix/graphics/gif/GifDecoder;->pixels:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12c

    :cond_136
    return-void
.end method

.method public err()Z
    .registers 2

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDelay(I)I
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v0

    if-ltz p1, :cond_17

    if-ge p1, v0, :cond_17

    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/graphics/gif/GifDecoder$GifFrame;

    iget p1, p1, Lmiuix/graphics/gif/GifDecoder$GifFrame;->delay:I

    iput p1, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    :cond_17
    iget p1, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    return p1
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .registers 3

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v0

    if-gtz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    rem-int/2addr p1, v0

    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/graphics/gif/GifDecoder$GifFrame;

    iget-object p1, p1, Lmiuix/graphics/gif/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getFrameCount()I
    .registers 2

    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    return v0
.end method

.method public getLoopCount()I
    .registers 2

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->loopCount:I

    return v0
.end method

.method public getRealFrameCount()I
    .registers 2

    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodedFrames:I

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    return v0
.end method

.method public init()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->gct:[I

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lct:[I

    return-void
.end method

.method public isDecodeToTheEnd()Z
    .registers 2

    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    return v0
.end method

.method public read()I
    .registers 2

    :try_start_0
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    const/4 v0, 0x1

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public read(Ljava/io/InputStream;)I
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->calledOnce:Z

    if-nez v0, :cond_45

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->calledOnce:Z

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->init()V

    const/4 v1, 0x2

    if-eqz p1, :cond_36

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lmiuix/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    :try_start_17
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readHeader()V

    iget-boolean p1, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    if-nez p1, :cond_38

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    move-result p1

    if-nez p1, :cond_38

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readContents()V

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    move-result p1

    if-gez p1, :cond_38

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I
    :try_end_2f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_2f} :catch_30

    goto :goto_38

    :catch_30
    iput v1, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->recycle()V

    goto :goto_38

    :cond_36
    iput v1, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    :cond_38
    :goto_38
    iget-boolean p1, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->recycle()V

    const/4 p1, 0x3

    iput p1, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    :cond_42
    iget p1, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    return p1

    :cond_45
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "decoder cannot be called more than once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readBitmap()V
    .registers 7

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->ix:I

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->iy:I

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->iw:I

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->ih:I

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_24

    move v1, v2

    goto :goto_25

    :cond_24
    move v1, v3

    :goto_25
    iput-boolean v1, p0, Lmiuix/graphics/gif/GifDecoder;->lctFlag:Z

    const/4 v4, 0x2

    and-int/lit8 v5, v0, 0x7

    shl-int/2addr v4, v5

    iput v4, p0, Lmiuix/graphics/gif/GifDecoder;->lctSize:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_33

    move v0, v2

    goto :goto_34

    :cond_33
    move v0, v3

    :goto_34
    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->interlace:Z

    if-eqz v1, :cond_41

    invoke-virtual {p0, v4}, Lmiuix/graphics/gif/GifDecoder;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lct:[I

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->act:[I

    goto :goto_4d

    :cond_41
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->gct:[I

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->act:[I

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->bgIndex:I

    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->transIndex:I

    if-ne v0, v1, :cond_4d

    iput v3, p0, Lmiuix/graphics/gif/GifDecoder;->bgColor:I

    :cond_4d
    :goto_4d
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->transparency:Z

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->act:[I

    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->transIndex:I

    aget v4, v0, v1

    aput v3, v0, v1

    move v3, v4

    :cond_5a
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->act:[I

    if-nez v0, :cond_60

    iput v2, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    :cond_60
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_67

    return-void

    :cond_67
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->decodeBitmapData()V

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->skip()V

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_74

    return-void

    :cond_74
    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz v0, :cond_79

    return-void

    :cond_79
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->setPixels()V

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodedFrames:I

    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->mStartFrame:I

    if-lt v0, v1, :cond_90

    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    new-instance v1, Lmiuix/graphics/gif/GifDecoder$GifFrame;

    iget-object v4, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v5, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    invoke-direct {v1, v4, v5}, Lmiuix/graphics/gif/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_90
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodedFrames:I

    add-int/2addr v0, v2

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodedFrames:I

    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->transparency:Z

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->act:[I

    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->transIndex:I

    aput v3, v0, v1

    :cond_9f
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->resetFrame()V

    return-void
.end method

.method public readBlock()I
    .registers 5

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_27

    :goto_9
    :try_start_9
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    if-ge v1, v0, :cond_20

    iget-object v2, p0, Lmiuix/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lmiuix/graphics/gif/GifDecoder;->block:[B

    sub-int/2addr v0, v1

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_1c

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1a

    goto :goto_20

    :cond_1a
    add-int/2addr v1, v0

    goto :goto_9

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_20
    :goto_20
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    if-ge v1, v0, :cond_27

    const/4 v0, 0x1

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    :cond_27
    return v1
.end method

.method public readColorTable(I)[I
    .registers 11

    mul-int/lit8 v0, p1, 0x3

    new-array v1, v0, [B

    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lmiuix/graphics/gif/GifDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v3, v1, v2, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_c

    goto :goto_11

    :catch_c
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v2

    :goto_11
    if-ge v3, v0, :cond_18

    const/4 p1, 0x1

    iput p1, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    const/4 p1, 0x0

    goto :goto_42

    :cond_18
    const/16 v0, 0x100

    new-array v0, v0, [I

    move v3, v2

    :goto_1d
    if-ge v2, p1, :cond_41

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    aput v3, v0, v2

    move v3, v6

    move v2, v7

    goto :goto_1d

    :cond_41
    move-object p1, v0

    :goto_42
    return-object p1
.end method

.method public readContents()V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodedFrames:I

    move v1, v0

    :cond_4
    :goto_4
    if-nez v1, :cond_ab

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_ab

    iget-boolean v2, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz v2, :cond_12

    goto/16 :goto_ab

    :cond_12
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v2, v3, :cond_57

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_29

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_26

    iput v4, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    goto :goto_4

    :cond_26
    iput-boolean v4, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeToTheEnd:Z

    goto :goto_55

    :cond_29
    iget-object v2, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readBitmap()V

    iget-object v3, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v2, :cond_4d

    iget-wide v2, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeBmSize:J

    iget-object v5, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v5

    iget-object v6, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v6, v5

    int-to-long v5, v6

    add-long/2addr v2, v5

    iput-wide v2, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeBmSize:J

    :cond_4d
    iget-wide v2, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodeBmSize:J

    iget-wide v5, p0, Lmiuix/graphics/gif/GifDecoder;->mMaxDecodeSize:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_4

    :goto_55
    move v1, v4

    goto :goto_4

    :cond_57
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v2

    if-eq v2, v4, :cond_a6

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_a1

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_9c

    const/16 v3, 0xff

    if-eq v2, v3, :cond_6d

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->skip()V

    goto :goto_4

    :cond_6d
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readBlock()I

    const-string v2, ""

    move v3, v0

    :goto_73
    const/16 v4, 0xb

    if-ge v3, v4, :cond_8a

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lmiuix/graphics/gif/GifDecoder;->block:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    :cond_8a
    const-string v3, "NETSCAPE2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readNetscapeExt()V

    goto/16 :goto_4

    :cond_97
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->skip()V

    goto/16 :goto_4

    :cond_9c
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->skip()V

    goto/16 :goto_4

    :cond_a1
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readGraphicControlExt()V

    goto/16 :goto_4

    :cond_a6
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->skip()V

    goto/16 :goto_4

    :cond_ab
    :goto_ab
    return-void
.end method

.method public readGraphicControlExt()V
    .registers 4

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v0

    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Lmiuix/graphics/gif/GifDecoder;->dispose:I

    const/4 v2, 0x1

    if-nez v1, :cond_12

    iput v2, p0, Lmiuix/graphics/gif/GifDecoder;->dispose:I

    :cond_12
    and-int/2addr v0, v2

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    iput-boolean v2, p0, Lmiuix/graphics/gif/GifDecoder;->transparency:Z

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    if-gtz v0, :cond_27

    const/16 v0, 0x64

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    :cond_27
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->transIndex:I

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    return-void
.end method

.method public readHeader()V
    .registers 4

    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    const-string v1, ""

    :goto_8
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1e

    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1e
    const-string v0, "GIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->status:I

    return-void

    :cond_2a
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readLSD()V

    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->gctFlag:Z

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    move-result v0

    if-nez v0, :cond_45

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->gctSize:I

    invoke-virtual {p0, v0}, Lmiuix/graphics/gif/GifDecoder;->readColorTable(I)[I

    move-result-object v0

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->gct:[I

    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->bgIndex:I

    aget v0, v0, v1

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->bgColor:I

    :cond_45
    return-void
.end method

.method public readLSD()V
    .registers 3

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readShort()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iput-boolean v1, p0, Lmiuix/graphics/gif/GifDecoder;->gctFlag:Z

    const/4 v1, 0x2

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v1, v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->gctSize:I

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->bgIndex:I

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->pixelAspect:I

    return-void
.end method

.method public readNetscapeExt()V
    .registers 4

    :cond_0
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readBlock()I

    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->block:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->loopCount:I

    :cond_19
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    if-lez v0, :cond_23

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_23
    return-void
.end method

.method public readShort()I
    .registers 3

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v0

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public recycle()V
    .registers 4

    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Lmiuix/graphics/gif/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/graphics/gif/GifDecoder$GifFrame;

    invoke-virtual {v2}, Lmiuix/graphics/gif/GifDecoder$GifFrame;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public requestCancelDecode()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->mCancel:Z

    invoke-direct {p0}, Lmiuix/graphics/gif/GifDecoder;->requestCancel()V

    return-void
.end method

.method public resetFrame()V
    .registers 2

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->dispose:I

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastDispose:I

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->ix:I

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lrx:I

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->iy:I

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lry:I

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->iw:I

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lrw:I

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->ih:I

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lrh:I

    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->bgColor:I

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastBgColor:I

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->dispose:I

    iput-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->transparency:Z

    iput v0, p0, Lmiuix/graphics/gif/GifDecoder;->delay:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lct:[I

    return-void
.end method

.method public setMaxDecodeSize(J)V
    .registers 3

    iput-wide p1, p0, Lmiuix/graphics/gif/GifDecoder;->mMaxDecodeSize:J

    return-void
.end method

.method public setPixels()V
    .registers 14

    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    if-nez v0, :cond_d

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    :cond_d
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastDispose:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lez v0, :cond_77

    if-ne v0, v1, :cond_47

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-lez v0, :cond_3b

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lmiuix/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    iput-object v5, p0, Lmiuix/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    const/4 v7, 0x0

    iget v11, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v12, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    move v8, v11

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto :goto_47

    :cond_3b
    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    iget v5, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    mul-int/2addr v0, v5

    new-array v0, v0, [I

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    :cond_47
    :goto_47
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_77

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastDispose:I

    if-ne v0, v3, :cond_77

    iget-boolean v0, p0, Lmiuix/graphics/gif/GifDecoder;->transparency:Z

    if-nez v0, :cond_56

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->lastBgColor:I

    goto :goto_57

    :cond_56
    move v0, v2

    :goto_57
    iget v5, p0, Lmiuix/graphics/gif/GifDecoder;->lry:I

    iget v6, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    mul-int/2addr v5, v6

    iget v6, p0, Lmiuix/graphics/gif/GifDecoder;->lrx:I

    add-int/2addr v5, v6

    move v6, v2

    :goto_60
    iget v7, p0, Lmiuix/graphics/gif/GifDecoder;->lrh:I

    if-ge v6, v7, :cond_77

    iget v7, p0, Lmiuix/graphics/gif/GifDecoder;->lrw:I

    add-int/2addr v7, v5

    move v8, v5

    :goto_68
    if-ge v8, v7, :cond_71

    iget-object v9, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    aput v0, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_68

    :cond_71
    iget v7, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_60

    :cond_77
    const/16 v0, 0x8

    move v5, v2

    move v6, v4

    :goto_7b
    iget v7, p0, Lmiuix/graphics/gif/GifDecoder;->ih:I

    if-ge v2, v7, :cond_cf

    iget-boolean v8, p0, Lmiuix/graphics/gif/GifDecoder;->interlace:Z

    if-eqz v8, :cond_99

    const/4 v8, 0x4

    if-lt v5, v7, :cond_96

    add-int/lit8 v6, v6, 0x1

    if-eq v6, v3, :cond_95

    if-eq v6, v1, :cond_92

    if-eq v6, v8, :cond_8f

    goto :goto_96

    :cond_8f
    move v0, v3

    move v5, v4

    goto :goto_96

    :cond_92
    move v5, v3

    move v0, v8

    goto :goto_96

    :cond_95
    move v5, v8

    :cond_96
    :goto_96
    add-int v7, v5, v0

    goto :goto_9b

    :cond_99
    move v7, v5

    move v5, v2

    :goto_9b
    iget v8, p0, Lmiuix/graphics/gif/GifDecoder;->iy:I

    add-int/2addr v5, v8

    iget v8, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    if-ge v5, v8, :cond_cb

    iget v8, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    mul-int/2addr v5, v8

    iget v9, p0, Lmiuix/graphics/gif/GifDecoder;->ix:I

    add-int/2addr v9, v5

    iget v10, p0, Lmiuix/graphics/gif/GifDecoder;->iw:I

    add-int v11, v9, v10

    add-int v12, v5, v8

    if-ge v12, v11, :cond_b2

    add-int v11, v5, v8

    :cond_b2
    mul-int/2addr v10, v2

    :goto_b3
    if-ge v9, v11, :cond_cb

    iget-object v5, p0, Lmiuix/graphics/gif/GifDecoder;->pixels:[B

    add-int/lit8 v8, v10, 0x1

    aget-byte v5, v5, v10

    and-int/lit16 v5, v5, 0xff

    iget-object v10, p0, Lmiuix/graphics/gif/GifDecoder;->act:[I

    aget v5, v10, v5

    if-eqz v5, :cond_c7

    iget-object v10, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    aput v5, v10, v9

    :cond_c7
    add-int/lit8 v9, v9, 0x1

    move v10, v8

    goto :goto_b3

    :cond_cb
    add-int/lit8 v2, v2, 0x1

    move v5, v7

    goto :goto_7b

    :cond_cf
    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->mDecodedFrames:I

    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->mStartFrame:I

    if-gt v0, v1, :cond_e4

    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_e4

    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e4
    iget-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->dest:[I

    iget v1, p0, Lmiuix/graphics/gif/GifDecoder;->width:I

    iget v2, p0, Lmiuix/graphics/gif/GifDecoder;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiuix/graphics/gif/GifDecoder;->image:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setStartFrame(I)V
    .registers 2

    iput p1, p0, Lmiuix/graphics/gif/GifDecoder;->mStartFrame:I

    return-void
.end method

.method public skip()V
    .registers 2

    :cond_0
    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->readBlock()I

    iget v0, p0, Lmiuix/graphics/gif/GifDecoder;->blockSize:I

    if-lez v0, :cond_d

    invoke-virtual {p0}, Lmiuix/graphics/gif/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_d
    return-void
.end method
