.class public final Lpl/droidsonroids/gif/f;
.super Lpl/droidsonroids/gif/g;
.source "RenderTask.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lpl/droidsonroids/gif/GifDrawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/g;-><init>(Lpl/droidsonroids/gif/GifDrawable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, v0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->o(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_7b

    iget-object v4, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v0

    iput-wide v5, v4, Lpl/droidsonroids/gif/GifDrawable;->c:J

    iget-object v4, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    iget-boolean v4, v4, Lpl/droidsonroids/gif/GifDrawable;->b:Z

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    iget-boolean v5, v4, Lpl/droidsonroids/gif/GifDrawable;->l:Z

    if-nez v5, :cond_3e

    iget-object v4, v4, Lpl/droidsonroids/gif/GifDrawable;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v5, v4, Lpl/droidsonroids/gif/GifDrawable;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p0, v0, v1, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v4, Lpl/droidsonroids/gif/GifDrawable;->p:Ljava/util/concurrent/ScheduledFuture;

    :cond_3e
    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->b()I

    move-result v0

    iget-object v1, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, v1, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->j()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v1, v0, Lpl/droidsonroids/gif/GifDrawable;->m:Lpl/droidsonroids/gif/d;

    iget-object v4, v0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v4}, Lpl/droidsonroids/gif/GifInfoHandle;->c()I

    move-result v4

    if-eqz v4, :cond_73

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->g()I

    move-result v0

    if-ge v4, v0, :cond_71

    goto :goto_73

    :cond_71
    add-int/lit8 v4, v4, -0x1

    :cond_73
    :goto_73
    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    iget-wide v5, v0, Lpl/droidsonroids/gif/GifDrawable;->c:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_84

    :cond_7b
    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, v0, Lpl/droidsonroids/gif/GifDrawable;->c:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lpl/droidsonroids/gif/GifDrawable;->b:Z

    :cond_84
    :goto_84
    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->m:Lpl/droidsonroids/gif/d;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_9e

    iget-object v0, p0, Lpl/droidsonroids/gif/g;->a:Lpl/droidsonroids/gif/GifDrawable;

    iget-object v0, v0, Lpl/droidsonroids/gif/GifDrawable;->m:Lpl/droidsonroids/gif/d;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_9e
    return-void
.end method
