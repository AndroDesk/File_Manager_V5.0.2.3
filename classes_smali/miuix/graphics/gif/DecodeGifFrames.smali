.class Lmiuix/graphics/gif/DecodeGifFrames;
.super Landroid/os/Handler;
.source "DecodeGifImageHelper.java"


# static fields
.field private static final MESSAGE_WHAT_START:I

.field public static final TAG:Ljava/lang/String; = "DecodeGifFrames"


# instance fields
.field private mCallerHandler:Landroid/os/Handler;

.field public mDecodeResult:Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

.field private mGifSource:Lmiuix/io/ResettableInputStream;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field private mMaxDecodeSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/graphics/gif/DecodeGifFrames;->MESSAGE_WHAT_START:I

    return-void
.end method

.method public constructor <init>(Landroid/os/HandlerThread;Lmiuix/io/ResettableInputStream;JLandroid/os/Handler;)V
    .registers 7

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mHandlerThread:Landroid/os/HandlerThread;

    iput-wide p3, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mMaxDecodeSize:J

    iput-object p2, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mGifSource:Lmiuix/io/ResettableInputStream;

    iput-object p5, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mCallerHandler:Landroid/os/Handler;

    return-void
.end method

.method public static createInstance(Lmiuix/io/ResettableInputStream;JLandroid/os/Handler;)Lmiuix/graphics/gif/DecodeGifFrames;
    .registers 11

    new-instance v1, Landroid/os/HandlerThread;

    const-string v0, "handler thread to decode GIF frames"

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v6, Lmiuix/graphics/gif/DecodeGifFrames;

    move-object v0, v6

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmiuix/graphics/gif/DecodeGifFrames;-><init>(Landroid/os/HandlerThread;Lmiuix/io/ResettableInputStream;JLandroid/os/Handler;)V

    return-object v6
.end method


# virtual methods
.method public decode(I)V
    .registers 4

    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mDecodeResult:Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    invoke-direct {v0}, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;-><init>()V

    iput-object v0, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mDecodeResult:Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public finalize()V
    .registers 2

    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAndClearDecodeResult()Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    .registers 3

    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mDecodeResult:Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    const/4 v1, 0x0

    iput-object v1, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mDecodeResult:Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mGifSource:Lmiuix/io/ResettableInputStream;

    iget-wide v2, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mMaxDecodeSize:J

    invoke-static {v0, v2, v3, p1}, Lmiuix/graphics/gif/DecodeGifImageHelper;->decode(Lmiuix/io/ResettableInputStream;JI)Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    move-result-object p1

    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mDecodeResult:Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    iget-object v2, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

    iput-object v2, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

    iget-boolean p1, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    iput-boolean p1, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    iget-object p1, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mCallerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1e
    return-void
.end method