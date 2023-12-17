.class public Lcom/android/fileexplorer/view/gif/GifImageView;
.super Landroid/widget/ImageView;
.source "GifImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/gif/GifImageView$OnFrameAvailable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GifDecoderView"


# instance fields
.field private animating:Z

.field private animationThread:Ljava/lang/Thread;

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field private frameCallback:Lcom/android/fileexplorer/view/gif/GifImageView$OnFrameAvailable;

.field private framesDisplayDuration:J

.field private gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

.field private final handler:Landroid/os/Handler;

.field private shouldClear:Z

.field private tmpBitmap:Landroid/graphics/Bitmap;

.field private final updateResults:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->handler:Landroid/os/Handler;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->framesDisplayDuration:J

    new-instance p1, Lcom/android/fileexplorer/view/gif/GifImageView$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/gif/GifImageView$1;-><init>(Lcom/android/fileexplorer/view/gif/GifImageView;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->updateResults:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/fileexplorer/view/gif/GifImageView$2;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/gif/GifImageView$2;-><init>(Lcom/android/fileexplorer/view/gif/GifImageView;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->handler:Landroid/os/Handler;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->framesDisplayDuration:J

    new-instance p1, Lcom/android/fileexplorer/view/gif/GifImageView$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/gif/GifImageView$1;-><init>(Lcom/android/fileexplorer/view/gif/GifImageView;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->updateResults:Ljava/lang/Runnable;

    new-instance p1, Lcom/android/fileexplorer/view/gif/GifImageView$2;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/gif/GifImageView$2;-><init>(Lcom/android/fileexplorer/view/gif/GifImageView;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/gif/GifImageView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/gif/GifImageView;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/view/gif/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/view/gif/GifImageView;Lcom/android/fileexplorer/view/gif/GifDecoder;)Lcom/android/fileexplorer/view/gif/GifDecoder;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/view/gif/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/android/fileexplorer/view/gif/GifImageView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->shouldClear:Z

    return p1
.end method

.method private canStart()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->shouldClear:Z

    invoke-virtual {p0}, Lcom/android/fileexplorer/view/gif/GifImageView;->stopAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getFramesDisplayDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->framesDisplayDuration:J

    return-wide v0
.end method

.method public getGifHeight()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getHeight()I

    move-result v0

    return v0
.end method

.method public getGifWidth()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOnFrameAvailable()Lcom/android/fileexplorer/view/gif/GifImageView$OnFrameAvailable;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->frameCallback:Lcom/android/fileexplorer/view/gif/GifImageView$OnFrameAvailable;

    return-object v0
.end method

.method public isAnimating()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    return v0
.end method

.method public run()V
    .registers 10

    const-string v0, "GifDecoderView"

    iget-boolean v1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->shouldClear:Z

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_e
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    if-nez v1, :cond_13

    return-void

    :cond_13
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getFrameCount()I

    move-result v1

    :cond_17
    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_81

    iget-boolean v3, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    if-nez v3, :cond_1f

    goto :goto_81

    :cond_1f
    const-wide/16 v3, 0x0

    :try_start_21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    invoke-virtual {v7}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v7, v5
    :try_end_36
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_21 .. :try_end_36} :catch_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_36} :catch_53

    :try_start_36
    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->frameCallback:Lcom/android/fileexplorer/view/gif/GifImageView$OnFrameAvailable;

    if-eqz v5, :cond_42

    iget-object v6, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v5, v6}, Lcom/android/fileexplorer/view/gif/GifImageView$OnFrameAvailable;->onFrameAvailable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    :cond_42
    iget-boolean v5, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    if-nez v5, :cond_47

    goto :goto_81

    :cond_47
    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->updateResults:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_36 .. :try_end_4e} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_4e} :catch_4f

    goto :goto_5e

    :catch_4f
    move-exception v5

    goto :goto_55

    :catch_51
    move-exception v5

    goto :goto_5b

    :catch_53
    move-exception v5

    move-wide v7, v3

    :goto_55
    invoke-static {v0, v5}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5e

    :catch_59
    move-exception v5

    move-wide v7, v3

    :goto_5b
    invoke-static {v0, v5}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_5e
    iget-boolean v5, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    if-nez v5, :cond_63

    goto :goto_81

    :cond_63
    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    invoke-virtual {v5}, Lcom/android/fileexplorer/view/gif/GifDecoder;->advance()V

    :try_start_68
    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    invoke-virtual {v5}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getNextDelay()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v5, v7

    long-to-int v5, v5

    if-lez v5, :cond_7e

    iget-wide v6, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->framesDisplayDuration:J

    cmp-long v3, v6, v3

    if-lez v3, :cond_7a

    goto :goto_7b

    :cond_7a
    int-to-long v6, v5

    :goto_7b
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_7e} :catch_7e

    :catch_7e
    :cond_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_81
    :goto_81
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    if-nez v2, :cond_17

    return-void
.end method

.method public setBytes([B)V
    .registers 4

    new-instance v0, Lcom/android/fileexplorer/view/gif/GifDecoder;

    invoke-direct {v0}, Lcom/android/fileexplorer/view/gif/GifDecoder;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/gif/GifDecoder;->read([B)I

    iget-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    invoke-virtual {p1}, Lcom/android/fileexplorer/view/gif/GifDecoder;->advance()V
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_10} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_23

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifImageView;->canStart()Z

    move-result p1

    if-eqz p1, :cond_22

    new-instance p1, Ljava/lang/Thread;

    const-string v0, "Gif Image VIEW"

    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_22
    return-void

    :catch_23
    move-exception p1

    iput-object v1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catch_2a
    move-exception p1

    iput-object v1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GifDecoderView"

    invoke-static {v1, v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setFramesDisplayDuration(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->framesDisplayDuration:J

    return-void
.end method

.method public setOnFrameAvailable(Lcom/android/fileexplorer/view/gif/GifImageView$OnFrameAvailable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->frameCallback:Lcom/android/fileexplorer/view/gif/GifImageView$OnFrameAvailable;

    return-void
.end method

.method public startAnimation()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifImageView;->canStart()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Gif Image VIEW"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_15
    return-void
.end method

.method public stopAnimation()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    :cond_d
    return-void
.end method
