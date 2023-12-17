.class Lcom/android/fileexplorer/view/gif/GifHeaderParser;
.super Ljava/lang/Object;
.source "GifHeaderParser.java"


# static fields
.field private static final DEFAULT_FRAME_DELAY:I

.field private static final MAX_BLOCK_SIZE:I

.field private static final MIN_FRAME_DELAY:I

.field private static final TAG:Ljava/lang/String; = "GifHeaderParser"


# instance fields
.field private final block:[B

.field private blockSize:I

.field private header:Lcom/android/fileexplorer/view/gif/GifHeader;

.field private rawData:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->DEFAULT_FRAME_DELAY:I

    const v0, 0x92c96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->MAX_BLOCK_SIZE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->MIN_FRAME_DELAY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->block:[B

    return-void
.end method

.method private err()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->status:I

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private read()I
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_9

    and-int/lit16 v0, v0, 0xff

    goto :goto_f

    :catch_9
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->status:I

    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private readBitmap()V
    .registers 9

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget-object v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifFrame;->ix:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget-object v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifFrame;->iy:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget-object v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifFrame;->iw:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget-object v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifFrame;->ih:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_34

    move v1, v3

    goto :goto_35

    :cond_34
    move v1, v2

    :goto_35
    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    and-int/lit8 v6, v0, 0x7

    add-int/2addr v6, v3

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget-object v5, v5, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_49

    move v2, v3

    :cond_49
    iput-boolean v2, v5, Lcom/android/fileexplorer/view/gif/GifFrame;->interlace:Z

    if-eqz v1, :cond_52

    invoke-direct {p0, v4}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readColorTable(I)[I

    move-result-object v0

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :goto_53
    iput-object v0, v5, Lcom/android/fileexplorer/view/gif/GifFrame;->lct:[I

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget-object v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifFrame;->bufferFrameStart:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->skipImageData()V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_6b

    return-void

    :cond_6b
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frames:Ljava/util/List;

    iget-object v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readBlock()I
    .registers 7

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    move-result v0

    iput v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->blockSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_36

    move v0, v1

    :goto_a
    :try_start_a
    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->blockSize:I

    if-ge v1, v0, :cond_36

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->block:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_18

    add-int/2addr v1, v0

    goto :goto_a

    :catch_18
    move-exception v2

    const-string v3, "Error Reading Block n: "

    const-string v4, " count: "

    const-string v5, " blockSize: "

    invoke-static {v3, v1, v4, v0, v5}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->blockSize:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GifHeaderParser"

    invoke-static {v3, v0, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    const/4 v2, 0x1

    iput v2, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->status:I

    :cond_36
    return v1
.end method

.method private readColorTable(I)[I
    .registers 11

    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v2, p1, :cond_41

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    aput v3, v1, v2
    :try_end_31
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_31} :catch_34

    move v3, v6

    move v2, v7

    goto :goto_10

    :catch_34
    move-exception p1

    const-string v0, "GifHeaderParser"

    const-string v2, "Format Error Reading Color Table"

    invoke-static {v0, v2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    const/4 v0, 0x1

    iput v0, p1, Lcom/android/fileexplorer/view/gif/GifHeader;->status:I

    :cond_41
    return-object v1
.end method

.method private readContents()V
    .registers 2

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readContents(I)V

    return-void
.end method

.method private readContents(I)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-nez v1, :cond_93

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->err()Z

    move-result v2

    if-nez v2, :cond_93

    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v2, v2, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    if-gt v2, p1, :cond_93

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v2, v3, :cond_39

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_28

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_26

    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iput v4, v2, Lcom/android/fileexplorer/view/gif/GifHeader;->status:I

    goto :goto_2

    :cond_26
    move v1, v4

    goto :goto_2

    :cond_28
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget-object v3, v2, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    if-nez v3, :cond_35

    new-instance v3, Lcom/android/fileexplorer/view/gif/GifFrame;

    invoke-direct {v3}, Lcom/android/fileexplorer/view/gif/GifFrame;-><init>()V

    iput-object v3, v2, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    :cond_35
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readBitmap()V

    goto :goto_2

    :cond_39
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    move-result v2

    if-eq v2, v4, :cond_8e

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_80

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_7c

    const/16 v3, 0xff

    if-eq v2, v3, :cond_4f

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->skip()V

    goto :goto_2

    :cond_4f
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readBlock()I

    const-string v2, ""

    move v3, v0

    :goto_55
    const/16 v4, 0xb

    if-ge v3, v4, :cond_6c

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->block:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    :cond_6c
    const-string v3, "NETSCAPE2.0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readNetscapeExt()V

    goto :goto_2

    :cond_78
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->skip()V

    goto :goto_2

    :cond_7c
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->skip()V

    goto :goto_2

    :cond_80
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    new-instance v3, Lcom/android/fileexplorer/view/gif/GifFrame;

    invoke-direct {v3}, Lcom/android/fileexplorer/view/gif/GifFrame;-><init>()V

    iput-object v3, v2, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readGraphicControlExt()V

    goto/16 :goto_2

    :cond_8e
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->skip()V

    goto/16 :goto_2

    :cond_93
    return-void
.end method

.method private readGraphicControlExt()V
    .registers 6

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget-object v1, v1, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    and-int/lit8 v2, v0, 0x1c

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    iput v2, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->dispose:I

    const/4 v4, 0x1

    if-nez v2, :cond_16

    iput v4, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->dispose:I

    :cond_16
    and-int/2addr v0, v4

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v4, 0x0

    :goto_1b
    iput-boolean v4, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->transparency:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readShort()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v3, :cond_26

    move v0, v1

    :cond_26
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget-object v2, v2, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    mul-int/2addr v0, v1

    iput v0, v2, Lcom/android/fileexplorer/view/gif/GifFrame;->delay:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    move-result v0

    iput v0, v2, Lcom/android/fileexplorer/view/gif/GifFrame;->transIndex:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    return-void
.end method

.method private readHeader()V
    .registers 4

    const-string v0, ""

    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x6

    if-ge v1, v2, :cond_19

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_19
    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->status:I

    return-void

    :cond_27
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readLSD()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget-boolean v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->gctFlag:Z

    if-eqz v0, :cond_4a

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->gctSize:I

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readColorTable(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->gct:[I

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->gct:[I

    iget v2, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->bgIndex:I

    aget v1, v1, v2

    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->bgColor:I

    :cond_4a
    return-void
.end method

.method private readLSD()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->width:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readShort()I

    move-result v1

    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->height:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    iput-boolean v2, v1, Lcom/android/fileexplorer/view/gif/GifHeader;->gctFlag:Z

    const/4 v2, 0x2

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v2, v0

    iput v0, v1, Lcom/android/fileexplorer/view/gif/GifHeader;->gctSize:I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    move-result v0

    iput v0, v1, Lcom/android/fileexplorer/view/gif/GifHeader;->bgIndex:I

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    move-result v1

    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->pixelAspect:I

    return-void
.end method

.method private readNetscapeExt()V
    .registers 4

    :cond_0
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readBlock()I

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->block:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lcom/android/fileexplorer/view/gif/GifHeader;->loopCount:I

    :cond_1b
    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->blockSize:I

    if-lez v0, :cond_25

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_25
    return-void
.end method

.method private readShort()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private reset()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->block:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Lcom/android/fileexplorer/view/gif/GifHeader;

    invoke-direct {v0}, Lcom/android/fileexplorer/view/gif/GifHeader;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iput v1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->blockSize:I

    return-void
.end method

.method private setData(Ljava/nio/ByteBuffer;)Lcom/android/fileexplorer/view/gif/GifHeaderParser;
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->reset()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private skip()V
    .registers 4

    :cond_0
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    return-void
.end method

.method private skipImageData()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->skip()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    return-void
.end method

.method public isAnimated()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readHeader()V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readContents(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method public parseHeader()Lcom/android/fileexplorer/view/gif/GifHeader;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_25

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->err()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    return-object v0

    :cond_d
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readHeader()V

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->err()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readContents()V

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    if-gez v1, :cond_22

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->status:I

    :cond_22
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    return-object v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData([B)Lcom/android/fileexplorer/view/gif/GifHeaderParser;
    .registers 3

    if-eqz p1, :cond_a

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->setData(Ljava/nio/ByteBuffer;)Lcom/android/fileexplorer/view/gif/GifHeaderParser;

    goto :goto_12

    :cond_a
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    const/4 v0, 0x2

    iput v0, p1, Lcom/android/fileexplorer/view/gif/GifHeader;->status:I

    :goto_12
    return-object p0
.end method
