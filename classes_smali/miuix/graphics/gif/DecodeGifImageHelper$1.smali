.class Lmiuix/graphics/gif/DecodeGifImageHelper$1;
.super Landroid/os/Handler;
.source "DecodeGifImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/graphics/gif/DecodeGifImageHelper;->firstDecodeNextFrames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/graphics/gif/DecodeGifImageHelper;


# direct methods
.method public constructor <init>(Lmiuix/graphics/gif/DecodeGifImageHelper;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper$1;->this$0:Lmiuix/graphics/gif/DecodeGifImageHelper;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_6

    .line 6
    goto :goto_1b

    .line 7
    :cond_6
    iget-object p1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper$1;->this$0:Lmiuix/graphics/gif/DecodeGifImageHelper;

    .line 9
    invoke-static {p1}, Lmiuix/graphics/gif/DecodeGifImageHelper;->access$000(Lmiuix/graphics/gif/DecodeGifImageHelper;)Lmiuix/graphics/gif/DecodeGifFrames;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lmiuix/graphics/gif/DecodeGifFrames;->getAndClearDecodeResult()Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lmiuix/graphics/gif/DecodeGifImageHelper;->handleDecodeFramesResult(Lmiuix/graphics/gif/DecodeGifImageHelper$GifDecodeResult;)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1b

    .line 23
    iget-object p1, p0, Lmiuix/graphics/gif/DecodeGifImageHelper$1;->this$0:Lmiuix/graphics/gif/DecodeGifImageHelper;

    .line 25
    invoke-virtual {p1}, Lmiuix/graphics/gif/DecodeGifImageHelper;->decodeNextFrames()V

    .line 28
    :cond_1b
    :goto_1b
    return-void
.end method
