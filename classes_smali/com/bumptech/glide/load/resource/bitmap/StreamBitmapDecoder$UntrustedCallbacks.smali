.class Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder$UntrustedCallbacks;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/Downsampler$DecodeCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UntrustedCallbacks"
.end annotation


# instance fields
.field private final bufferedStream:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

.field private final exceptionStream:Lcom/bumptech/glide/util/ExceptionCatchingInputStream;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Lcom/bumptech/glide/util/ExceptionCatchingInputStream;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder$UntrustedCallbacks;->bufferedStream:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder$UntrustedCallbacks;->exceptionStream:Lcom/bumptech/glide/util/ExceptionCatchingInputStream;

    .line 8
    return-void
.end method


# virtual methods
.method public onDecodeComplete(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder$UntrustedCallbacks;->exceptionStream:Lcom/bumptech/glide/util/ExceptionCatchingInputStream;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->getException()Ljava/io/IOException;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_e

    .line 9
    if-eqz p2, :cond_d

    .line 11
    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 14
    :cond_d
    throw v0

    .line 15
    :cond_e
    return-void
.end method

.method public onObtainBounds()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder$UntrustedCallbacks;->bufferedStream:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fixMarkLimit()V

    .line 6
    return-void
.end method
