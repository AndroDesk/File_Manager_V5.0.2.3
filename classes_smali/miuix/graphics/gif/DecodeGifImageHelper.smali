.class public Lmiuix/graphics/gif/DecodeGifImageHelper;
.super Ljava/lang/Object;
.source "DecodeGifImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;,
        Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    }
.end annotation


# static fields
.field public static final MESSAGE_WHAT_DECODE_FRAMES:I = 0x1


# instance fields
.field public mDecodeFrameHandler:Landroid/os/Handler;

.field private mDecodeGifFrames:Lmiuix/graphics/gif/DecodeGifFrames;

.field public mDecodedAllFrames:Z

.field public mFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field public mGifSource:Lmiuix/io/ResettableInputStream;

.field public mMaxDecodeSize:J

.field private mMaxFrames:I

.field public mRealFrameCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/32 v0, 0x100000

    .line 7
    iput-wide v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    .line 16
    return-void
.end method

.method public static synthetic access$000(Lmiuix/graphics/gif/DecodeGifImageHelper;)Lmiuix/graphics/gif/DecodeGifFrames;
    .registers 1

    .line 1
    iget-object p0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lmiuix/graphics/gif/DecodeGifFrames;

    .line 3
    return-object p0
.end method

.method private calcFrameIndex(I)I
    .registers 3

    .line 1
    iget v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mRealFrameCount:I

    .line 3
    if-nez v0, :cond_5

    .line 5
    return p1

    .line 6
    :cond_5
    rem-int/2addr p1, v0

    .line 7
    return p1
.end method

.method public static decode(Lmiuix/io/ResettableInputStream;JI)Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    .registers 7

    .line 1
    new-instance v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    .line 3
    invoke-direct {v0}, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    .line 12
    :try_start_b
    invoke-virtual {p0}, Lmiuix/io/ResettableInputStream;->reset()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_27

    .line 15
    new-instance v2, Lmiuix/graphics/gif/GifDecoder;

    .line 17
    invoke-direct {v2}, Lmiuix/graphics/gif/GifDecoder;-><init>()V

    .line 20
    iput-object v2, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

    .line 22
    invoke-virtual {v2, p3}, Lmiuix/graphics/gif/GifDecoder;->setStartFrame(I)V

    .line 25
    invoke-virtual {v2, p1, p2}, Lmiuix/graphics/gif/GifDecoder;->setMaxDecodeSize(J)V

    .line 28
    invoke-virtual {v2, p0}, Lmiuix/graphics/gif/GifDecoder;->read(Ljava/io/InputStream;)I

    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_22

    .line 34
    const/4 v1, 0x1

    .line 35
    :cond_22
    iput-boolean v1, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    .line 37
    :try_start_24
    invoke-virtual {p0}, Lmiuix/io/ResettableInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_27

    .line 40
    :catch_27
    return-object v0
.end method

.method private getLastFrameIndex()I
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;

    .line 15
    iget v0, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mIndex:I

    .line 17
    return v0
.end method


# virtual methods
.method public decodeFrom(I)Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mGifSource:Lmiuix/io/ResettableInputStream;

    .line 3
    iget-wide v1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    .line 5
    invoke-static {v0, v1, v2, p1}, Lmiuix/graphics/gif/DecodeGifImageHelper;->decode(Lmiuix/io/ResettableInputStream;JI)Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public decodeNextFrames()V
    .registers 7

    .line 1
    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mMaxFrames:I

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x3

    .line 13
    if-gt v1, v5, :cond_12

    .line 15
    if-gt v0, v3, :cond_16

    .line 17
    :goto_10
    move v2, v4

    .line 18
    goto :goto_16

    .line 19
    :cond_12
    div-int/2addr v1, v3

    .line 20
    if-gt v0, v1, :cond_16

    .line 22
    goto :goto_10

    .line 23
    :cond_16
    :goto_16
    if-eqz v2, :cond_26

    .line 25
    invoke-direct {p0}, Lmiuix/graphics/gif/DecodeGifImageHelper;->getLastFrameIndex()I

    .line 28
    move-result v0

    .line 29
    add-int/2addr v0, v4

    .line 30
    invoke-direct {p0, v0}, Lmiuix/graphics/gif/DecodeGifImageHelper;->calcFrameIndex(I)I

    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lmiuix/graphics/gif/DecodeGifFrames;

    .line 36
    invoke-virtual {v1, v0}, Lmiuix/graphics/gif/DecodeGifFrames;->decode(I)V

    .line 39
    :cond_26
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lmiuix/graphics/gif/DecodeGifFrames;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lmiuix/graphics/gif/DecodeGifFrames;->destroy()V

    .line 8
    :cond_7
    return-void
.end method

.method public firstDecodeNextFrames()V
    .registers 5

    .line 1
    new-instance v0, Lmiuix/graphics/gif/DecodeGifImageHelper$1;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Lmiuix/graphics/gif/DecodeGifImageHelper$1;-><init>(Lmiuix/graphics/gif/DecodeGifImageHelper;Landroid/os/Looper;)V

    .line 10
    iput-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodeFrameHandler:Landroid/os/Handler;

    .line 12
    iget-object v1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mGifSource:Lmiuix/io/ResettableInputStream;

    .line 14
    iget-wide v2, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    .line 16
    invoke-static {v1, v2, v3, v0}, Lmiuix/graphics/gif/DecodeGifFrames;->createInstance(Lmiuix/io/ResettableInputStream;JLandroid/os/Handler;)Lmiuix/graphics/gif/DecodeGifFrames;

    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lmiuix/graphics/gif/DecodeGifFrames;

    .line 22
    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mMaxFrames:I

    .line 30
    invoke-virtual {p0}, Lmiuix/graphics/gif/DecodeGifImageHelper;->decodeNextFrames()V

    .line 33
    return-void
.end method

.method public handleDecodeFramesResult(Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;)Z
    .registers 11

    .line 1
    iget-boolean v0, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7a

    .line 6
    iget-object v0, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

    .line 8
    if-nez v0, :cond_a

    .line 10
    goto :goto_7a

    .line 11
    :cond_a
    const/4 v2, 0x4

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 21
    move-result-wide v3

    .line 22
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    move-result-object v3

    .line 26
    aput-object v3, v2, v1

    .line 28
    iget-object v3, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

    .line 30
    invoke-virtual {v3}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    .line 33
    move-result v3

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v3

    .line 38
    const/4 v4, 0x1

    .line 39
    aput-object v3, v2, v4

    .line 41
    const/4 v3, 0x2

    .line 42
    iget-boolean p1, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    .line 44
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    move-result-object p1

    .line 48
    aput-object p1, v2, v3

    .line 50
    const/4 p1, 0x3

    .line 51
    iget v3, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mRealFrameCount:I

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v3

    .line 57
    aput-object v3, v2, p1

    .line 59
    const-string p1, "Thread#%d: decoded %d frames [%s] [%d]"

    .line 61
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    const-string v2, "dumpFrameIndex"

    .line 67
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {v0}, Lmiuix/graphics/gif/GifDecoder;->isDecodeToTheEnd()Z

    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_51

    .line 76
    invoke-virtual {v0}, Lmiuix/graphics/gif/GifDecoder;->getRealFrameCount()I

    .line 79
    move-result p1

    .line 80
    iput p1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mRealFrameCount:I

    .line 82
    :cond_51
    invoke-virtual {v0}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    .line 85
    move-result p1

    .line 86
    if-lez p1, :cond_79

    .line 88
    invoke-direct {p0}, Lmiuix/graphics/gif/DecodeGifImageHelper;->getLastFrameIndex()I

    .line 91
    move-result v2

    .line 92
    :goto_5b
    if-ge v1, p1, :cond_79

    .line 94
    invoke-virtual {v0, v1}, Lmiuix/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v0, v1}, Lmiuix/graphics/gif/GifDecoder;->getDelay(I)I

    .line 101
    move-result v5

    .line 102
    add-int/lit8 v6, v2, 0x1

    .line 104
    add-int/2addr v6, v1

    .line 105
    invoke-direct {p0, v6}, Lmiuix/graphics/gif/DecodeGifImageHelper;->calcFrameIndex(I)I

    .line 108
    move-result v6

    .line 109
    iget-object v7, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    .line 111
    new-instance v8, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;

    .line 113
    invoke-direct {v8, v3, v5, v6}, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;-><init>(Landroid/graphics/Bitmap;II)V

    .line 116
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 121
    goto :goto_5b

    .line 122
    :cond_79
    return v4

    .line 123
    :cond_7a
    :goto_7a
    return v1
.end method
