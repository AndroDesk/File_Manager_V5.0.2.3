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
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 6
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->handler:Landroid/os/Handler;

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->framesDisplayDuration:J

    .line 9
    new-instance p1, Lcom/android/fileexplorer/view/gif/GifImageView$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/gif/GifImageView$1;-><init>(Lcom/android/fileexplorer/view/gif/GifImageView;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->updateResults:Ljava/lang/Runnable;

    .line 10
    new-instance p1, Lcom/android/fileexplorer/view/gif/GifImageView$2;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/gif/GifImageView$2;-><init>(Lcom/android/fileexplorer/view/gif/GifImageView;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->handler:Landroid/os/Handler;

    const-wide/16 p1, -0x1

    .line 3
    iput-wide p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->framesDisplayDuration:J

    .line 4
    new-instance p1, Lcom/android/fileexplorer/view/gif/GifImageView$1;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/gif/GifImageView$1;-><init>(Lcom/android/fileexplorer/view/gif/GifImageView;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->updateResults:Ljava/lang/Runnable;

    .line 5
    new-instance p1, Lcom/android/fileexplorer/view/gif/GifImageView$2;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/view/gif/GifImageView$2;-><init>(Lcom/android/fileexplorer/view/gif/GifImageView;)V

    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/view/gif/GifImageView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/view/gif/GifImageView;)Landroid/graphics/Bitmap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    .line 3
    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/fileexplorer/view/gif/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    .line 3
    return-object p1
.end method

.method public static synthetic access$202(Lcom/android/fileexplorer/view/gif/GifImageView;Lcom/android/fileexplorer/view/gif/GifDecoder;)Lcom/android/fileexplorer/view/gif/GifDecoder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    .line 3
    return-object p1
.end method

.method public static synthetic access$302(Lcom/android/fileexplorer/view/gif/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 3
    return-object p1
.end method

.method public static synthetic access$402(Lcom/android/fileexplorer/view/gif/GifImageView;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->shouldClear:Z

    .line 3
    return p1
.end method

.method private canStart()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    .line 7
    if-eqz v0, :cond_e

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 11
    if-nez v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->shouldClear:Z

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/gif/GifImageView;->stopAnimation()V

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->handler:Landroid/os/Handler;

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    return-void
.end method

.method public getFramesDisplayDuration()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->framesDisplayDuration:J

    .line 3
    return-wide v0
.end method

.method public getGifHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getHeight()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getGifWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getWidth()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOnFrameAvailable()Lcom/android/fileexplorer/view/gif/GifImageView$OnFrameAvailable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->frameCallback:Lcom/android/fileexplorer/view/gif/GifImageView$OnFrameAvailable;

    .line 3
    return-object v0
.end method

.method public isAnimating()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    .line 3
    return v0
.end method

.method public run()V
    .registers 10

    .line 1
    const-string v0, "GifDecoderView"

    .line 3
    iget-boolean v1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->shouldClear:Z

    .line 5
    if-eqz v1, :cond_e

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->handler:Landroid/os/Handler;

    .line 9
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    .line 17
    if-nez v1, :cond_13

    .line 19
    return-void

    .line 20
    :cond_13
    invoke-virtual {v1}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getFrameCount()I

    .line 23
    move-result v1

    .line 24
    :cond_17
    const/4 v2, 0x0

    .line 25
    :goto_18
    if-ge v2, v1, :cond_81

    .line 27
    iget-boolean v3, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    .line 29
    if-nez v3, :cond_1f

    .line 31
    goto :goto_81

    .line 32
    :cond_1f
    const-wide/16 v3, 0x0

    .line 34
    :try_start_21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 37
    move-result-wide v5

    .line 38
    iget-object v7, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    .line 40
    invoke-virtual {v7}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    .line 43
    move-result-object v7

    .line 44
    iput-object v7, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    .line 46
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 49
    move-result-wide v7

    .line 50
    sub-long/2addr v7, v5

    .line 51
    const-wide/32 v5, 0xf4240

    .line 54
    div-long/2addr v7, v5
    :try_end_36
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_21 .. :try_end_36} :catch_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_36} :catch_53

    .line 55
    :try_start_36
    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->frameCallback:Lcom/android/fileexplorer/view/gif/GifImageView$OnFrameAvailable;

    .line 57
    if-eqz v5, :cond_42

    .line 59
    iget-object v6, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    .line 61
    invoke-interface {v5, v6}, Lcom/android/fileexplorer/view/gif/GifImageView$OnFrameAvailable;->onFrameAvailable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 64
    move-result-object v5

    .line 65
    iput-object v5, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    .line 67
    :cond_42
    iget-boolean v5, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    .line 69
    if-nez v5, :cond_47

    .line 71
    goto :goto_81

    .line 72
    :cond_47
    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->handler:Landroid/os/Handler;

    .line 74
    iget-object v6, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->updateResults:Ljava/lang/Runnable;

    .line 76
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_36 .. :try_end_4e} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_4e} :catch_4f

    .line 79
    goto :goto_5e

    .line 80
    :catch_4f
    move-exception v5

    .line 81
    goto :goto_55

    .line 82
    :catch_51
    move-exception v5

    .line 83
    goto :goto_5b

    .line 84
    :catch_53
    move-exception v5

    .line 85
    move-wide v7, v3

    .line 86
    :goto_55
    invoke-static {v0, v5}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 89
    goto :goto_5e

    .line 90
    :catch_59
    move-exception v5

    .line 91
    move-wide v7, v3

    .line 92
    :goto_5b
    invoke-static {v0, v5}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 95
    :goto_5e
    iget-boolean v5, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    .line 97
    if-nez v5, :cond_63

    .line 99
    goto :goto_81

    .line 100
    :cond_63
    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    .line 102
    invoke-virtual {v5}, Lcom/android/fileexplorer/view/gif/GifDecoder;->advance()V

    .line 105
    :try_start_68
    iget-object v5, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    .line 107
    invoke-virtual {v5}, Lcom/android/fileexplorer/view/gif/GifDecoder;->getNextDelay()I

    .line 110
    move-result v5

    .line 111
    int-to-long v5, v5

    .line 112
    sub-long/2addr v5, v7

    .line 113
    long-to-int v5, v5

    .line 114
    if-lez v5, :cond_7e

    .line 116
    iget-wide v6, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->framesDisplayDuration:J

    .line 118
    cmp-long v3, v6, v3

    .line 120
    if-lez v3, :cond_7a

    .line 122
    goto :goto_7b

    .line 123
    :cond_7a
    int-to-long v6, v5

    .line 124
    :goto_7b
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_7e} :catch_7e

    .line 127
    :catch_7e
    :cond_7e
    add-int/lit8 v2, v2, 0x1

    .line 129
    goto :goto_18

    .line 130
    :cond_81
    :goto_81
    iget-boolean v2, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    .line 132
    if-nez v2, :cond_17

    .line 134
    return-void
.end method

.method public setBytes([B)V
    .registers 4

    .line 1
    new-instance v0, Lcom/android/fileexplorer/view/gif/GifDecoder;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/view/gif/GifDecoder;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_8
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/gif/GifDecoder;->read([B)I

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    .line 14
    invoke-virtual {p1}, Lcom/android/fileexplorer/view/gif/GifDecoder;->advance()V
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_10} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_23

    .line 17
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifImageView;->canStart()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_22

    .line 23
    new-instance p1, Ljava/lang/Thread;

    .line 25
    const-string v0, "Gif Image VIEW"

    .line 27
    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 35
    :cond_22
    return-void

    .line 36
    :catch_23
    move-exception p1

    .line 37
    iput-object v1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    return-void

    .line 43
    :catch_2a
    move-exception p1

    .line 44
    iput-object v1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->gifDecoder:Lcom/android/fileexplorer/view/gif/GifDecoder;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    const-string v1, "GifDecoderView"

    .line 52
    invoke-static {v1, v0, p1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public setFramesDisplayDuration(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->framesDisplayDuration:J

    .line 3
    return-void
.end method

.method public setOnFrameAvailable(Lcom/android/fileexplorer/view/gif/GifImageView$OnFrameAvailable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->frameCallback:Lcom/android/fileexplorer/view/gif/GifImageView$OnFrameAvailable;

    .line 3
    return-void
.end method

.method public startAnimation()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/view/gif/GifImageView;->canStart()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_15

    .line 10
    new-instance v0, Ljava/lang/Thread;

    .line 12
    const-string v1, "Gif Image VIEW"

    .line 14
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 17
    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 22
    :cond_15
    return-void
.end method

.method public stopAnimation()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animating:Z

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 6
    if-eqz v0, :cond_d

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/fileexplorer/view/gif/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 14
    :cond_d
    return-void
.end method
