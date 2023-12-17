.class Lcom/android/fileexplorer/view/gif/GifHeaderParser;
.super Ljava/lang/Object;
.source "GifHeaderParser.java"


# static fields
.field private static final DEFAULT_FRAME_DELAY:I = 0xa

.field private static final MAX_BLOCK_SIZE:I = 0x100

.field private static final MIN_FRAME_DELAY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GifHeaderParser"


# instance fields
.field private final block:[B

.field private blockSize:I

.field private header:Lcom/android/fileexplorer/view/gif/GifHeader;

.field private rawData:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x100

    .line 6
    new-array v0, v0, [B

    .line 8
    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->block:[B

    .line 10
    return-void
.end method

.method private err()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 3
    iget v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->status:I

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method private read()I
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 6
    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_9

    .line 7
    and-int/lit16 v0, v0, 0xff

    .line 9
    goto :goto_f

    .line 10
    :catch_9
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 12
    const/4 v1, 0x1

    .line 13
    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->status:I

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method private readBitmap()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readShort()I

    .line 8
    move-result v1

    .line 9
    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifFrame;->ix:I

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 13
    iget-object v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    .line 15
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readShort()I

    .line 18
    move-result v1

    .line 19
    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifFrame;->iy:I

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 23
    iget-object v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    .line 25
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readShort()I

    .line 28
    move-result v1

    .line 29
    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifFrame;->iw:I

    .line 31
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 33
    iget-object v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    .line 35
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readShort()I

    .line 38
    move-result v1

    .line 39
    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifFrame;->ih:I

    .line 41
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    .line 44
    move-result v0

    .line 45
    and-int/lit16 v1, v0, 0x80

    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x1

    .line 49
    if-eqz v1, :cond_34

    .line 51
    move v1, v3

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v1, v2

    .line 54
    :goto_35
    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    .line 56
    and-int/lit8 v6, v0, 0x7

    .line 58
    add-int/2addr v6, v3

    .line 59
    int-to-double v6, v6

    .line 60
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 63
    move-result-wide v4

    .line 64
    double-to-int v4, v4

    .line 65
    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 67
    iget-object v5, v5, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    .line 69
    and-int/lit8 v0, v0, 0x40

    .line 71
    if-eqz v0, :cond_49

    .line 73
    move v2, v3

    .line 74
    :cond_49
    iput-boolean v2, v5, Lcom/android/fileexplorer/view/gif/GifFrame;->interlace:Z

    .line 76
    if-eqz v1, :cond_52

    .line 78
    invoke-direct {p0, v4}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readColorTable(I)[I

    .line 81
    move-result-object v0

    .line 82
    goto :goto_53

    .line 83
    :cond_52
    const/4 v0, 0x0

    .line 84
    :goto_53
    iput-object v0, v5, Lcom/android/fileexplorer/view/gif/GifFrame;->lct:[I

    .line 86
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 88
    iget-object v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    .line 90
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 95
    move-result v1

    .line 96
    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifFrame;->bufferFrameStart:I

    .line 98
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->skipImageData()V

    .line 101
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->err()Z

    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_6b

    .line 107
    return-void

    .line 108
    :cond_6b
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 110
    iget v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    .line 112
    add-int/2addr v1, v3

    .line 113
    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    .line 115
    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frames:Ljava/util/List;

    .line 117
    iget-object v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    .line 119
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method private readBlock()I
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->blockSize:I

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_36

    .line 10
    move v0, v1

    .line 11
    :goto_a
    :try_start_a
    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->blockSize:I

    .line 13
    if-ge v1, v0, :cond_36

    .line 15
    sub-int/2addr v0, v1

    .line 16
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 18
    iget-object v3, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->block:[B

    .line 20
    invoke-virtual {v2, v3, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_18

    .line 23
    add-int/2addr v1, v0

    .line 24
    goto :goto_a

    .line 25
    :catch_18
    move-exception v2

    .line 26
    const-string v3, "Error Reading Block n: "

    .line 28
    const-string v4, " count: "

    .line 30
    const-string v5, " blockSize: "

    .line 32
    invoke-static {v3, v1, v4, v0, v5}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v0

    .line 36
    iget v3, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->blockSize:I

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    const-string v3, "GifHeaderParser"

    .line 47
    invoke-static {v3, v0, v2}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 52
    const/4 v2, 0x1

    .line 53
    iput v2, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->status:I

    .line 55
    :cond_36
    return v1
.end method

.method private readColorTable(I)[I
    .registers 11

    .line 1
    mul-int/lit8 v0, p1, 0x3

    .line 3
    new-array v0, v0, [B

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_5
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 11
    const/16 v2, 0x100

    .line 13
    new-array v1, v2, [I

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_10
    if-ge v2, p1, :cond_41

    .line 19
    add-int/lit8 v4, v3, 0x1

    .line 21
    aget-byte v3, v0, v3

    .line 23
    and-int/lit16 v3, v3, 0xff

    .line 25
    add-int/lit8 v5, v4, 0x1

    .line 27
    aget-byte v4, v0, v4

    .line 29
    and-int/lit16 v4, v4, 0xff

    .line 31
    add-int/lit8 v6, v5, 0x1

    .line 33
    aget-byte v5, v0, v5

    .line 35
    and-int/lit16 v5, v5, 0xff

    .line 37
    add-int/lit8 v7, v2, 0x1

    .line 39
    const/high16 v8, -0x1000000

    .line 41
    shl-int/lit8 v3, v3, 0x10

    .line 43
    or-int/2addr v3, v8

    .line 44
    shl-int/lit8 v4, v4, 0x8

    .line 46
    or-int/2addr v3, v4

    .line 47
    or-int/2addr v3, v5

    .line 48
    aput v3, v1, v2
    :try_end_31
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_31} :catch_34

    .line 50
    move v3, v6

    .line 51
    move v2, v7

    .line 52
    goto :goto_10

    .line 53
    :catch_34
    move-exception p1

    .line 54
    const-string v0, "GifHeaderParser"

    .line 56
    const-string v2, "Format Error Reading Color Table"

    .line 58
    invoke-static {v0, v2, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    iget-object p1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 63
    const/4 v0, 0x1

    .line 64
    iput v0, p1, Lcom/android/fileexplorer/view/gif/GifHeader;->status:I

    .line 66
    :cond_41
    return-object v1
.end method

.method private readContents()V
    .registers 2

    const v0, 0x7fffffff

    .line 1
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readContents(I)V

    return-void
.end method

.method private readContents(I)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-nez v1, :cond_93

    .line 2
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->err()Z

    move-result v2

    if-nez v2, :cond_93

    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget v2, v2, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    if-gt v2, p1, :cond_93

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v2, v3, :cond_39

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_28

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_26

    .line 4
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iput v4, v2, Lcom/android/fileexplorer/view/gif/GifHeader;->status:I

    goto :goto_2

    :cond_26
    move v1, v4

    goto :goto_2

    .line 5
    :cond_28
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    iget-object v3, v2, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    if-nez v3, :cond_35

    .line 6
    new-instance v3, Lcom/android/fileexplorer/view/gif/GifFrame;

    invoke-direct {v3}, Lcom/android/fileexplorer/view/gif/GifFrame;-><init>()V

    iput-object v3, v2, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    .line 7
    :cond_35
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readBitmap()V

    goto :goto_2

    .line 8
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

    .line 9
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->skip()V

    goto :goto_2

    .line 10
    :cond_4f
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readBlock()I

    const-string v2, ""

    move v3, v0

    :goto_55
    const/16 v4, 0xb

    if-ge v3, v4, :cond_6c

    .line 11
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 12
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

    .line 13
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 14
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readNetscapeExt()V

    goto :goto_2

    .line 15
    :cond_78
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->skip()V

    goto :goto_2

    .line 16
    :cond_7c
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->skip()V

    goto :goto_2

    .line 17
    :cond_80
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    new-instance v3, Lcom/android/fileexplorer/view/gif/GifFrame;

    invoke-direct {v3}, Lcom/android/fileexplorer/view/gif/GifFrame;-><init>()V

    iput-object v3, v2, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    .line 18
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readGraphicControlExt()V

    goto/16 :goto_2

    .line 19
    :cond_8e
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->skip()V

    goto/16 :goto_2

    :cond_93
    return-void
.end method

.method private readGraphicControlExt()V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 10
    iget-object v1, v1, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    .line 12
    and-int/lit8 v2, v0, 0x1c

    .line 14
    const/4 v3, 0x2

    .line 15
    shr-int/2addr v2, v3

    .line 16
    iput v2, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->dispose:I

    .line 18
    const/4 v4, 0x1

    .line 19
    if-nez v2, :cond_16

    .line 21
    iput v4, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->dispose:I

    .line 23
    :cond_16
    and-int/2addr v0, v4

    .line 24
    if-eqz v0, :cond_1a

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v4, 0x0

    .line 28
    :goto_1b
    iput-boolean v4, v1, Lcom/android/fileexplorer/view/gif/GifFrame;->transparency:Z

    .line 30
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readShort()I

    .line 33
    move-result v0

    .line 34
    const/16 v1, 0xa

    .line 36
    if-ge v0, v3, :cond_26

    .line 38
    move v0, v1

    .line 39
    :cond_26
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 41
    iget-object v2, v2, Lcom/android/fileexplorer/view/gif/GifHeader;->currentFrame:Lcom/android/fileexplorer/view/gif/GifFrame;

    .line 43
    mul-int/2addr v0, v1

    .line 44
    iput v0, v2, Lcom/android/fileexplorer/view/gif/GifFrame;->delay:I

    .line 46
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    .line 49
    move-result v0

    .line 50
    iput v0, v2, Lcom/android/fileexplorer/view/gif/GifFrame;->transIndex:I

    .line 52
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    .line 55
    return-void
.end method

.method private readHeader()V
    .registers 4

    .line 1
    const-string v0, ""

    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_3
    const/4 v2, 0x6

    .line 5
    if-ge v1, v2, :cond_19

    .line 7
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    .line 14
    move-result v2

    .line 15
    int-to-char v2, v2

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_3

    .line 26
    :cond_19
    const-string v1, "GIF"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_27

    .line 34
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 36
    const/4 v1, 0x1

    .line 37
    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->status:I

    .line 39
    return-void

    .line 40
    :cond_27
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readLSD()V

    .line 43
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 45
    iget-boolean v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->gctFlag:Z

    .line 47
    if-eqz v0, :cond_4a

    .line 49
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->err()Z

    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_4a

    .line 55
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 57
    iget v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->gctSize:I

    .line 59
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readColorTable(I)[I

    .line 62
    move-result-object v1

    .line 63
    iput-object v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->gct:[I

    .line 65
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 67
    iget-object v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->gct:[I

    .line 69
    iget v2, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->bgIndex:I

    .line 71
    aget v1, v1, v2

    .line 73
    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->bgColor:I

    .line 75
    :cond_4a
    return-void
.end method

.method private readLSD()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readShort()I

    .line 6
    move-result v1

    .line 7
    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->width:I

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 11
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readShort()I

    .line 14
    move-result v1

    .line 15
    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->height:I

    .line 17
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 23
    and-int/lit16 v2, v0, 0x80

    .line 25
    if-eqz v2, :cond_1c

    .line 27
    const/4 v2, 0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 v2, 0x0

    .line 30
    :goto_1d
    iput-boolean v2, v1, Lcom/android/fileexplorer/view/gif/GifHeader;->gctFlag:Z

    .line 32
    const/4 v2, 0x2

    .line 33
    and-int/lit8 v0, v0, 0x7

    .line 35
    shl-int v0, v2, v0

    .line 37
    iput v0, v1, Lcom/android/fileexplorer/view/gif/GifHeader;->gctSize:I

    .line 39
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    .line 42
    move-result v0

    .line 43
    iput v0, v1, Lcom/android/fileexplorer/view/gif/GifHeader;->bgIndex:I

    .line 45
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 47
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    .line 50
    move-result v1

    .line 51
    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->pixelAspect:I

    .line 53
    return-void
.end method

.method private readNetscapeExt()V
    .registers 4

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readBlock()I

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->block:[B

    .line 6
    const/4 v1, 0x0

    .line 7
    aget-byte v1, v0, v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_1b

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
    iget-object v2, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 23
    shl-int/lit8 v0, v0, 0x8

    .line 25
    or-int/2addr v0, v1

    .line 26
    iput v0, v2, Lcom/android/fileexplorer/view/gif/GifHeader;->loopCount:I

    .line 28
    :cond_1b
    iget v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->blockSize:I

    .line 30
    if-lez v0, :cond_25

    .line 32
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->err()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 38
    :cond_25
    return-void
.end method

.method private readShort()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private reset()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->block:[B

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 10
    new-instance v0, Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 12
    invoke-direct {v0}, Lcom/android/fileexplorer/view/gif/GifHeader;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 17
    iput v1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->blockSize:I

    .line 19
    return-void
.end method

.method private setData(Ljava/nio/ByteBuffer;)Lcom/android/fileexplorer/view/gif/GifHeaderParser;
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->reset()V

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private skip()V
    .registers 4

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 10
    move-result v2

    .line 11
    add-int/2addr v2, v0

    .line 12
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 15
    if-gtz v0, :cond_0

    .line 17
    return-void
.end method

.method private skipImageData()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->read()I

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->skip()V

    .line 7
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 4
    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 6
    return-void
.end method

.method public isAnimated()Z
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readHeader()V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->err()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_d

    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readContents(I)V

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 16
    iget v0, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    .line 18
    const/4 v1, 0x1

    .line 19
    if-le v0, v1, :cond_15

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v1, 0x0

    .line 23
    :goto_16
    return v1
.end method

.method public parseHeader()Lcom/android/fileexplorer/view/gif/GifHeader;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 3
    if-eqz v0, :cond_25

    .line 5
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->err()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_d

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 13
    return-object v0

    .line 14
    :cond_d
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readHeader()V

    .line 17
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->err()Z

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_22

    .line 23
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->readContents()V

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 28
    iget v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->frameCount:I

    .line 30
    if-gez v1, :cond_22

    .line 32
    const/4 v1, 0x1

    .line 33
    iput v1, v0, Lcom/android/fileexplorer/view/gif/GifHeader;->status:I

    .line 35
    :cond_22
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    .line 37
    return-object v0

    .line 38
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 40
    const-string v1, "You must call setData() before parseHeader()"

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw v0
.end method

.method public setData([B)Lcom/android/fileexplorer/view/gif/GifHeaderParser;
    .registers 3

    if-eqz p1, :cond_a

    .line 5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->setData(Ljava/nio/ByteBuffer;)Lcom/android/fileexplorer/view/gif/GifHeaderParser;

    goto :goto_12

    :cond_a
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->rawData:Ljava/nio/ByteBuffer;

    .line 7
    iget-object p1, p0, Lcom/android/fileexplorer/view/gif/GifHeaderParser;->header:Lcom/android/fileexplorer/view/gif/GifHeader;

    const/4 v0, 0x2

    iput v0, p1, Lcom/android/fileexplorer/view/gif/GifHeader;->status:I

    :goto_12
    return-object p0
.end method
