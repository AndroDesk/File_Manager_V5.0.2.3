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
.field public static final MESSAGE_WHAT_DECODE_FRAMES:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/graphics/gif/DecodeGifImageHelper;->MESSAGE_WHAT_DECODE_FRAMES:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lmiuix/graphics/gif/DecodeGifImageHelper;)Lmiuix/graphics/gif/DecodeGifFrames;
    .registers 1

    iget-object p0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lmiuix/graphics/gif/DecodeGifFrames;

    return-object p0
.end method

.method private calcFrameIndex(I)I
    .registers 3

    iget v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mRealFrameCount:I

    if-nez v0, :cond_5

    return p1

    :cond_5
    rem-int/2addr p1, v0

    return p1
.end method

.method public static decode(Lmiuix/io/ResettableInputStream;JI)Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    .registers 7

    new-instance v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    invoke-direct {v0}, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    :try_start_b
    invoke-virtual {p0}, Lmiuix/io/ResettableInputStream;->reset()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_27

    new-instance v2, Lmiuix/graphics/gif/GifDecoder;

    invoke-direct {v2}, Lmiuix/graphics/gif/GifDecoder;-><init>()V

    iput-object v2, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

    invoke-virtual {v2, p3}, Lmiuix/graphics/gif/GifDecoder;->setStartFrame(I)V

    invoke-virtual {v2, p1, p2}, Lmiuix/graphics/gif/GifDecoder;->setMaxDecodeSize(J)V

    invoke-virtual {v2, p0}, Lmiuix/graphics/gif/GifDecoder;->read(Ljava/io/InputStream;)I

    move-result p1

    if-nez p1, :cond_22

    const/4 v1, 0x1

    :cond_22
    iput-boolean v1, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    :try_start_24
    invoke-virtual {p0}, Lmiuix/io/ResettableInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_27

    :catch_27
    return-object v0
.end method

.method private getLastFrameIndex()I
    .registers 3

    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;

    iget v0, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;->mIndex:I

    return v0
.end method


# virtual methods
.method public decodeFrom(I)Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    .registers 5

    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mGifSource:Lmiuix/io/ResettableInputStream;

    iget-wide v1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    invoke-static {v0, v1, v2, p1}, Lmiuix/graphics/gif/DecodeGifImageHelper;->decode(Lmiuix/io/ResettableInputStream;JI)Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    move-result-object p1

    return-object p1
.end method

.method public decodeNextFrames()V
    .registers 7

    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mMaxFrames:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-gt v1, v5, :cond_12

    if-gt v0, v3, :cond_16

    :goto_10
    move v2, v4

    goto :goto_16

    :cond_12
    div-int/2addr v1, v3

    if-gt v0, v1, :cond_16

    goto :goto_10

    :cond_16
    :goto_16
    if-eqz v2, :cond_26

    invoke-direct {p0}, Lmiuix/graphics/gif/DecodeGifImageHelper;->getLastFrameIndex()I

    move-result v0

    add-int/2addr v0, v4

    invoke-direct {p0, v0}, Lmiuix/graphics/gif/DecodeGifImageHelper;->calcFrameIndex(I)I

    move-result v0

    iget-object v1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lmiuix/graphics/gif/DecodeGifFrames;

    invoke-virtual {v1, v0}, Lmiuix/graphics/gif/DecodeGifFrames;->decode(I)V

    :cond_26
    return-void
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lmiuix/graphics/gif/DecodeGifFrames;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiuix/graphics/gif/DecodeGifFrames;->destroy()V

    :cond_7
    return-void
.end method

.method public firstDecodeNextFrames()V
    .registers 5

    new-instance v0, Lmiuix/graphics/gif/DecodeGifImageHelper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiuix/graphics/gif/DecodeGifImageHelper$1;-><init>(Lmiuix/graphics/gif/DecodeGifImageHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodeFrameHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mGifSource:Lmiuix/io/ResettableInputStream;

    iget-wide v2, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mMaxDecodeSize:J

    invoke-static {v1, v2, v3, v0}, Lmiuix/graphics/gif/DecodeGifFrames;->createInstance(Lmiuix/io/ResettableInputStream;JLandroid/os/Handler;)Lmiuix/graphics/gif/DecodeGifFrames;

    move-result-object v0

    iput-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mDecodeGifFrames:Lmiuix/graphics/gif/DecodeGifFrames;

    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mMaxFrames:I

    invoke-virtual {p0}, Lmiuix/graphics/gif/DecodeGifImageHelper;->decodeNextFrames()V

    return-void
.end method

.method public handleDecodeFramesResult(Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;)Z
    .registers 11

    iget-boolean v0, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7a

    iget-object v0, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

    if-nez v0, :cond_a

    goto :goto_7a

    :cond_a
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v3, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

    invoke-virtual {v3}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget-boolean p1, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x3

    iget v3, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mRealFrameCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    const-string p1, "Thread#%d: decoded %d frames [%s] [%d]"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "dumpFrameIndex"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lmiuix/graphics/gif/GifDecoder;->isDecodeToTheEnd()Z

    move-result p1

    if-eqz p1, :cond_51

    invoke-virtual {v0}, Lmiuix/graphics/gif/GifDecoder;->getRealFrameCount()I

    move-result p1

    iput p1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mRealFrameCount:I

    :cond_51
    invoke-virtual {v0}, Lmiuix/graphics/gif/GifDecoder;->getFrameCount()I

    move-result p1

    if-lez p1, :cond_79

    invoke-direct {p0}, Lmiuix/graphics/gif/DecodeGifImageHelper;->getLastFrameIndex()I

    move-result v2

    :goto_5b
    if-ge v1, p1, :cond_79

    invoke-virtual {v0, v1}, Lmiuix/graphics/gif/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v1}, Lmiuix/graphics/gif/GifDecoder;->getDelay(I)I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v6, v1

    invoke-direct {p0, v6}, Lmiuix/graphics/gif/DecodeGifImageHelper;->calcFrameIndex(I)I

    move-result v6

    iget-object v7, p0, Lmiuix/graphics/gif/DecodeGifImageHelper;->mFrames:Ljava/util/List;

    new-instance v8, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;

    invoke-direct {v8, v3, v5, v6}, Lmiuix/graphics/gif/DecodeGifImageHelper$GifFrame;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    :cond_79
    return v4

    :cond_7a
    :goto_7a
    return v1
.end method
