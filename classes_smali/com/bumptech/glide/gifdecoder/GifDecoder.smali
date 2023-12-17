.class public interface abstract Lcom/bumptech/glide/gifdecoder/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;,
        Lcom/bumptech/glide/gifdecoder/GifDecoder$GifDecodeStatus;
    }
.end annotation


# static fields
.field public static final STATUS_FORMAT_ERROR:I

.field public static final STATUS_OK:I

.field public static final STATUS_OPEN_ERROR:I

.field public static final STATUS_PARTIAL_DECODE:I

.field public static final TOTAL_ITERATION_COUNT_FOREVER:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->STATUS_FORMAT_ERROR:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->STATUS_OK:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->STATUS_OPEN_ERROR:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->STATUS_PARTIAL_DECODE:I

    return-void
.end method


# virtual methods
.method public abstract advance()V
.end method

.method public abstract clear()V
.end method

.method public abstract getByteSize()I
.end method

.method public abstract getCurrentFrameIndex()I
.end method

.method public abstract getData()Ljava/nio/ByteBuffer;
.end method

.method public abstract getDelay(I)I
.end method

.method public abstract getFrameCount()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLoopCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getNetscapeLoopCount()I
.end method

.method public abstract getNextDelay()I
.end method

.method public abstract getNextFrame()Landroid/graphics/Bitmap;
.end method

.method public abstract getStatus()I
.end method

.method public abstract getTotalIterationCount()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract read(Ljava/io/InputStream;I)I
.end method

.method public abstract read([B)I
.end method

.method public abstract resetFrameIndex()V
.end method

.method public abstract setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V
.end method

.method public abstract setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
.end method

.method public abstract setDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)V
.end method
