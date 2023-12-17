.class public final Lpl/droidsonroids/gif/f;
.super Lpl/droidsonroids/gif/g;
.source "RenderTask.java"


# direct methods
.method public constructor <init>(Lpl/droidsonroids/gif/GifDrawable;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/g;-><init>(Lpl/droidsonroids/gif/GifDrawable;)V

    .line 4
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    .line 3
    iget-object v1, v0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 5
    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->f:Landroid/graphics/Bitmap;

    .line 7
    invoke-virtual {v1, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->o(Landroid/graphics/Bitmap;)J

    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 13
    cmp-long v4, v0, v2

    .line 15
    if-ltz v4, :cond_7b

    .line 17
    iget-object v4, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 22
    move-result-wide v5

    .line 23
    add-long/2addr v5, v0

    .line 24
    iput-wide v5, v4, Lpl/droidsonroids/gif/GifDrawable;->c:J

    .line 26
    iget-object v4, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    .line 28
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_3e

    .line 34
    iget-object v4, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    .line 36
    iget-boolean v4, v4, Lpl/droidsonroids/gif/GifDrawable;->b:Z

    .line 38
    if-eqz v4, :cond_3e

    .line 40
    iget-object v4, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    .line 42
    iget-boolean v5, v4, Lpl/droidsonroids/gif/GifDrawable;->l:Z

    .line 44
    if-nez v5, :cond_3e

    .line 46
    iget-object v4, v4, Lpl/droidsonroids/gif/GifDrawable;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 48
    invoke-virtual {v4, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 51
    iget-object v4, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    .line 53
    iget-object v5, v4, Lpl/droidsonroids/gif/GifDrawable;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 55
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    invoke-virtual {v5, p0, v0, v1, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 60
    move-result-object v0

    .line 61
    iput-object v0, v4, Lpl/droidsonroids/gif/GifDrawable;->p:Ljava/util/concurrent/ScheduledFuture;

    .line 63
    :cond_3e
    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    .line 65
    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 67
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_84

    .line 73
    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    .line 75
    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 77
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->b()I

    .line 80
    move-result v0

    .line 81
    iget-object v1, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    .line 83
    iget-object v1, v1, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 85
    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->j()I

    .line 88
    move-result v1

    .line 89
    add-int/lit8 v1, v1, -0x1

    .line 91
    if-ne v0, v1, :cond_84

    .line 93
    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    .line 95
    iget-object v1, v0, Lpl/droidsonroids/gif/GifDrawable;->m:Lpl/droidsonroids/gif/d;

    .line 97
    iget-object v4, v0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 99
    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->c()I

    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_73

    .line 105
    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 107
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->g()I

    .line 110
    move-result v0

    .line 111
    if-ge v4, v0, :cond_71

    .line 113
    goto :goto_73

    .line 114
    :cond_71
    add-int/lit8 v4, v4, -0x1

    .line 116
    :cond_73
    :goto_73
    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    .line 118
    iget-wide v5, v0, Lpl/droidsonroids/gif/GifDrawable;->c:J

    .line 120
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 123
    goto :goto_84

    .line 124
    :cond_7b
    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    .line 126
    const-wide/high16 v4, -0x8000000000000000L

    .line 128
    iput-wide v4, v0, Lpl/droidsonroids/gif/GifDrawable;->c:J

    .line 130
    const/4 v1, 0x0

    .line 131
    iput-boolean v1, v0, Lpl/droidsonroids/gif/GifDrawable;->b:Z

    .line 133
    :cond_84
    :goto_84
    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    .line 135
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_9e

    .line 141
    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    .line 143
    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->m:Lpl/droidsonroids/gif/d;

    .line 145
    const/4 v1, -0x1

    .line 146
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_9e

    .line 152
    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    .line 154
    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->m:Lpl/droidsonroids/gif/d;

    .line 156
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 159
    :cond_9e
    return-void
.end method
