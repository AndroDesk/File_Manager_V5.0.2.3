.class Lmiuix/graphics/gif/DecodeGifFrames;
.super Landroid/os/Handler;
.source "DecodeGifImageHelper.java"


# static fields
.field private static final MESSAGE_WHAT_START:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DecodeGifFrames"


# instance fields
.field private mCallerHandler:Landroid/os/Handler;

.field public mDecodeResult:Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

.field private mGifSource:Lmiuix/io/ResettableInputStream;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field private mMaxDecodeSize:J


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;Lmiuix/io/ResettableInputStream;JLandroid/os/Handler;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    iput-object p1, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mHandlerThread:Landroid/os/HandlerThread;

    .line 10
    iput-wide p3, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mMaxDecodeSize:J

    .line 12
    iput-object p2, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mGifSource:Lmiuix/io/ResettableInputStream;

    .line 14
    iput-object p5, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mCallerHandler:Landroid/os/Handler;

    .line 16
    return-void
.end method

.method public static createInstance(Lmiuix/io/ResettableInputStream;JLandroid/os/Handler;)Lmiuix/graphics/gif/DecodeGifFrames;
    .registers 11

    .line 1
    new-instance v1, Landroid/os/HandlerThread;

    .line 3
    const-string v0, "handler thread to decode GIF frames"

    .line 5
    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 11
    new-instance v6, Lmiuix/graphics/gif/DecodeGifFrames;

    .line 13
    move-object v0, v6

    .line 14
    move-object v2, p0

    .line 15
    move-wide v3, p1

    .line 16
    move-object v5, p3

    .line 17
    invoke-direct/range {v0 .. v5}, Lmiuix/graphics/gif/DecodeGifFrames;-><init>(Landroid/os/HandlerThread;Lmiuix/io/ResettableInputStream;JLandroid/os/Handler;)V

    .line 20
    return-object v6
.end method


# virtual methods
.method public decode(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mDecodeResult:Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    .line 8
    invoke-direct {v0}, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;-><init>()V

    .line 11
    iput-object v0, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mDecodeResult:Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    .line 13
    const/4 v0, 0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    return-void
.end method

.method public destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mHandlerThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 6
    return-void
.end method

.method public finalize()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mHandlerThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 6
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 9
    return-void
.end method

.method public getAndClearDecodeResult()Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mDecodeResult:Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mDecodeResult:Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    .line 6
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1e

    .line 6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 8
    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mGifSource:Lmiuix/io/ResettableInputStream;

    .line 10
    iget-wide v2, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mMaxDecodeSize:J

    .line 12
    invoke-static {v0, v2, v3, p1}, Lmiuix/graphics/gif/DecodeGifImageHelper;->decode(Lmiuix/io/ResettableInputStream;JI)Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mDecodeResult:Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    .line 18
    iget-object v2, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

    .line 20
    iput-object v2, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mGifDecoder:Lmiuix/graphics/gif/GifDecoder;

    .line 22
    iget-boolean p1, p1, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    .line 24
    iput-boolean p1, v0, Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;->mIsDecodeOk:Z

    .line 26
    iget-object p1, p0, Lmiuix/graphics/gif/DecodeGifFrames;->mCallerHandler:Landroid/os/Handler;

    .line 28
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 31
    :cond_1e
    return-void
.end method
