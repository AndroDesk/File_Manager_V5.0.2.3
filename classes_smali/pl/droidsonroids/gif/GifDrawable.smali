.class public Lpl/droidsonroids/gif/GifDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GifDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public volatile b:Z

.field public c:J

.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Bitmap;

.field public final g:Lpl/droidsonroids/gif/GifInfoHandle;

.field public final h:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lpl/droidsonroids/gif/a;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroid/content/res/ColorStateList;

.field public j:Landroid/graphics/PorterDuffColorFilter;

.field public k:Landroid/graphics/PorterDuff$Mode;

.field public final l:Z

.field public final m:Lpl/droidsonroids/gif/d;

.field public final n:Lpl/droidsonroids/gif/f;

.field public final o:Landroid/graphics/Rect;

.field public p:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    .line 1
    new-instance v0, Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    invoke-direct {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lpl/droidsonroids/gif/GifDrawable;->b:Z

    .line 12
    const-wide/high16 v1, -0x8000000000000000L

    .line 14
    iput-wide v1, p0, Lpl/droidsonroids/gif/GifDrawable;->c:J

    .line 16
    new-instance v1, Landroid/graphics/Rect;

    .line 18
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 21
    iput-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->d:Landroid/graphics/Rect;

    .line 23
    new-instance v1, Landroid/graphics/Paint;

    .line 25
    const/4 v2, 0x6

    .line 26
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 29
    iput-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->e:Landroid/graphics/Paint;

    .line 31
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 33
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 36
    iput-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 38
    new-instance v1, Lpl/droidsonroids/gif/f;

    .line 40
    invoke-direct {v1, p0}, Lpl/droidsonroids/gif/f;-><init>(Lpl/droidsonroids/gif/GifDrawable;)V

    .line 43
    iput-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->n:Lpl/droidsonroids/gif/f;

    .line 45
    iput-boolean p1, p0, Lpl/droidsonroids/gif/GifDrawable;->l:Z

    .line 47
    sget v2, Lpl/droidsonroids/gif/c;->a:I

    .line 49
    sget-object v2, Lpl/droidsonroids/gif/c$a;->a:Lpl/droidsonroids/gif/c;

    .line 51
    iput-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 53
    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->k()I

    .line 59
    move-result v3

    .line 60
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->f()I

    .line 63
    move-result v4

    .line 64
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 66
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 69
    move-result-object v3

    .line 70
    iput-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->f:Landroid/graphics/Bitmap;

    .line 72
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->l()Z

    .line 75
    move-result v4

    .line 76
    xor-int/2addr p1, v4

    .line 77
    invoke-virtual {v3, p1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 80
    new-instance p1, Landroid/graphics/Rect;

    .line 82
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->k()I

    .line 85
    move-result v3

    .line 86
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->f()I

    .line 89
    move-result v4

    .line 90
    invoke-direct {p1, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 93
    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawable;->o:Landroid/graphics/Rect;

    .line 95
    new-instance p1, Lpl/droidsonroids/gif/d;

    .line 97
    invoke-direct {p1, p0}, Lpl/droidsonroids/gif/d;-><init>(Lpl/droidsonroids/gif/GifDrawable;)V

    .line 100
    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawable;->m:Lpl/droidsonroids/gif/d;

    .line 102
    invoke-virtual {v1}, Lpl/droidsonroids/gif/f;->a()V

    .line 105
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->k()I

    .line 108
    move-result p1

    .line 109
    iput p1, p0, Lpl/droidsonroids/gif/GifDrawable;->q:I

    .line 111
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->f()I

    .line 114
    move-result p1

    .line 115
    iput p1, p0, Lpl/droidsonroids/gif/GifDrawable;->r:I

    .line 117
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 5

    .line 1
    if-eqz p1, :cond_14

    .line 3
    if-nez p2, :cond_5

    .line 5
    goto :goto_14

    .line 6
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 14
    move-result p1

    .line 15
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 17
    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 20
    return-object v0

    .line 21
    :cond_14
    :goto_14
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public final canPause()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekBackward()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->j()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-le v0, v1, :cond_a

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    :goto_b
    return v1
.end method

.method public final canSeekForward()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->j()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-le v0, v1, :cond_a

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v1, 0x0

    .line 12
    :goto_b
    return v1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->j:Landroid/graphics/PorterDuffColorFilter;

    .line 3
    if-eqz v0, :cond_15

    .line 5
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->e:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_15

    .line 13
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->e:Landroid/graphics/Paint;

    .line 15
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->j:Landroid/graphics/PorterDuffColorFilter;

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v0, 0x0

    .line 23
    :goto_16
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->f:Landroid/graphics/Bitmap;

    .line 25
    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->o:Landroid/graphics/Rect;

    .line 27
    iget-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->d:Landroid/graphics/Rect;

    .line 29
    iget-object v4, p0, Lpl/droidsonroids/gif/GifDrawable;->e:Landroid/graphics/Paint;

    .line 31
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 34
    if-eqz v0, :cond_29

    .line 36
    iget-object p1, p0, Lpl/droidsonroids/gif/GifDrawable;->e:Landroid/graphics/Paint;

    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 42
    :cond_29
    return-void
.end method

.method public final getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->e:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getAudioSessionId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getBufferPercentage()I
    .registers 2

    const/16 v0, 0x64

    return v0
.end method

.method public final getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->e:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getCurrentPosition()I
    .registers 2

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->d()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getDuration()I
    .registers 2

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->e()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getIntrinsicHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lpl/droidsonroids/gif/GifDrawable;->r:I

    .line 3
    return v0
.end method

.method public final getIntrinsicWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lpl/droidsonroids/gif/GifDrawable;->q:I

    .line 3
    return v0
.end method

.method public final getOpacity()I
    .registers 3

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->l()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_15

    .line 9
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->e:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 14
    move-result v0

    .line 15
    const/16 v1, 0xff

    .line 17
    if-ge v0, v1, :cond_13

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/4 v0, -0x1

    .line 21
    return v0

    .line 22
    :cond_15
    :goto_15
    const/4 v0, -0x2

    .line 23
    return v0
.end method

.method public final invalidateSelf()V
    .registers 9

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    iget-boolean v0, p0, Lpl/droidsonroids/gif/GifDrawable;->l:Z

    .line 6
    if-eqz v0, :cond_33

    .line 8
    iget-boolean v0, p0, Lpl/droidsonroids/gif/GifDrawable;->b:Z

    .line 10
    if-eqz v0, :cond_33

    .line 12
    iget-wide v0, p0, Lpl/droidsonroids/gif/GifDrawable;->c:J

    .line 14
    const-wide/high16 v2, -0x8000000000000000L

    .line 16
    cmp-long v4, v0, v2

    .line 18
    if-eqz v4, :cond_33

    .line 20
    const-wide/16 v4, 0x0

    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 25
    move-result-wide v6

    .line 26
    sub-long/2addr v0, v6

    .line 27
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 30
    move-result-wide v0

    .line 31
    iput-wide v2, p0, Lpl/droidsonroids/gif/GifDrawable;->c:J

    .line 33
    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 35
    iget-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->n:Lpl/droidsonroids/gif/f;

    .line 37
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 40
    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 42
    iget-object v3, p0, Lpl/droidsonroids/gif/GifDrawable;->n:Lpl/droidsonroids/gif/f;

    .line 44
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    invoke-virtual {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->p:Ljava/util/concurrent/ScheduledFuture;

    .line 52
    :cond_33
    return-void
.end method

.method public final isPlaying()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lpl/droidsonroids/gif/GifDrawable;->b:Z

    .line 3
    return v0
.end method

.method public final isRunning()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lpl/droidsonroids/gif/GifDrawable;->b:Z

    .line 3
    return v0
.end method

.method public final isStateful()Z
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_13

    .line 7
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->i:Landroid/content/res/ColorStateList;

    .line 9
    if-eqz v0, :cond_11

    .line 11
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 21
    :goto_14
    return v0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->d:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    return-void
.end method

.method public final onStateChange([I)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lpl/droidsonroids/gif/GifDrawable;->i:Landroid/content/res/ColorStateList;

    .line 3
    if-eqz p1, :cond_10

    .line 5
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->k:Landroid/graphics/PorterDuff$Mode;

    .line 7
    if-eqz v0, :cond_10

    .line 9
    invoke-virtual {p0, p1, v0}, Lpl/droidsonroids/gif/GifDrawable;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawable;->j:Landroid/graphics/PorterDuffColorFilter;

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    return p1
.end method

.method public final pause()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->stop()V

    .line 4
    return-void
.end method

.method public final seekTo(I)V
    .registers 4

    .line 1
    if-ltz p1, :cond_d

    .line 3
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 5
    new-instance v1, Lpl/droidsonroids/gif/GifDrawable$a;

    .line 7
    invoke-direct {v1, p0, p0, p1}, Lpl/droidsonroids/gif/GifDrawable$a;-><init>(Lpl/droidsonroids/gif/GifDrawable;Lpl/droidsonroids/gif/GifDrawable;I)V

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string v0, "Position is not positive"

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p1
.end method

.method public final setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->e:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->e:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    return-void
.end method

.method public final setDither(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->e:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 6
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->invalidateSelf()V

    .line 9
    return-void
.end method

.method public final setFilterBitmap(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->e:Landroid/graphics/Paint;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 6
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->invalidateSelf()V

    .line 9
    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawable;->i:Landroid/content/res/ColorStateList;

    .line 3
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->k:Landroid/graphics/PorterDuff$Mode;

    .line 5
    invoke-virtual {p0, p1, v0}, Lpl/droidsonroids/gif/GifDrawable;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawable;->j:Landroid/graphics/PorterDuffColorFilter;

    .line 11
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->invalidateSelf()V

    .line 14
    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawable;->k:Landroid/graphics/PorterDuff$Mode;

    .line 3
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->i:Landroid/content/res/ColorStateList;

    .line 5
    invoke-virtual {p0, v0, p1}, Lpl/droidsonroids/gif/GifDrawable;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lpl/droidsonroids/gif/GifDrawable;->j:Landroid/graphics/PorterDuffColorFilter;

    .line 11
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->invalidateSelf()V

    .line 14
    return-void
.end method

.method public final setVisible(ZZ)Z
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lpl/droidsonroids/gif/GifDrawable;->l:Z

    .line 7
    if-nez v1, :cond_21

    .line 9
    if-eqz p1, :cond_1c

    .line 11
    if-eqz p2, :cond_16

    .line 13
    iget-object p1, p0, Lpl/droidsonroids/gif/GifDrawable;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 15
    new-instance p2, Lpl/droidsonroids/gif/b;

    .line 17
    invoke-direct {p2, p0, p0}, Lpl/droidsonroids/gif/b;-><init>(Lpl/droidsonroids/gif/GifDrawable;Lpl/droidsonroids/gif/GifDrawable;)V

    .line 20
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 23
    :cond_16
    if-eqz v0, :cond_21

    .line 25
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->start()V

    .line 28
    goto :goto_21

    .line 29
    :cond_1c
    if-eqz v0, :cond_21

    .line 31
    invoke-virtual {p0}, Lpl/droidsonroids/gif/GifDrawable;->stop()V

    .line 34
    :cond_21
    :goto_21
    return v0
.end method

.method public final start()V
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lpl/droidsonroids/gif/GifDrawable;->b:Z

    .line 4
    if-eqz v0, :cond_7

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lpl/droidsonroids/gif/GifDrawable;->b:Z

    .line 11
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_3e

    .line 12
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 14
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->q()J

    .line 17
    move-result-wide v0

    .line 18
    iget-boolean v2, p0, Lpl/droidsonroids/gif/GifDrawable;->l:Z

    .line 20
    const-wide/16 v3, 0x0

    .line 22
    const/4 v5, -0x1

    .line 23
    if-eqz v2, :cond_20

    .line 25
    iput-wide v3, p0, Lpl/droidsonroids/gif/GifDrawable;->c:J

    .line 27
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->m:Lpl/droidsonroids/gif/d;

    .line 29
    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 32
    goto :goto_3d

    .line 33
    :cond_20
    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->p:Ljava/util/concurrent/ScheduledFuture;

    .line 35
    if-eqz v2, :cond_28

    .line 37
    const/4 v6, 0x0

    .line 38
    invoke-interface {v2, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 41
    :cond_28
    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->m:Lpl/droidsonroids/gif/d;

    .line 43
    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 46
    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 48
    iget-object v5, p0, Lpl/droidsonroids/gif/GifDrawable;->n:Lpl/droidsonroids/gif/f;

    .line 50
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 53
    move-result-wide v0

    .line 54
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 56
    invoke-virtual {v2, v5, v0, v1, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->p:Ljava/util/concurrent/ScheduledFuture;

    .line 62
    :goto_3d
    return-void

    .line 63
    :catchall_3e
    move-exception v0

    .line 64
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    .line 65
    throw v0
.end method

.method public final stop()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lpl/droidsonroids/gif/GifDrawable;->b:Z

    .line 4
    if-nez v0, :cond_7

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lpl/droidsonroids/gif/GifDrawable;->b:Z

    .line 11
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1e

    .line 12
    iget-object v1, p0, Lpl/droidsonroids/gif/GifDrawable;->p:Ljava/util/concurrent/ScheduledFuture;

    .line 14
    if-eqz v1, :cond_12

    .line 16
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 19
    :cond_12
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->m:Lpl/droidsonroids/gif/d;

    .line 21
    const/4 v1, -0x1

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 25
    iget-object v0, p0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 27
    invoke-virtual {v0}, Lpl/droidsonroids/gif/GifInfoHandle;->r()V

    .line 30
    return-void

    .line 31
    :catchall_1e
    move-exception v0

    .line 32
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    .line 33
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 8
    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifInfoHandle;->k()I

    .line 11
    move-result v2

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v2, v1, v3

    .line 19
    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 21
    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifInfoHandle;->f()I

    .line 24
    move-result v2

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x1

    .line 30
    aput-object v2, v1, v3

    .line 32
    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 34
    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifInfoHandle;->j()I

    .line 37
    move-result v2

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x2

    .line 43
    aput-object v2, v1, v3

    .line 45
    iget-object v2, p0, Lpl/droidsonroids/gif/GifDrawable;->g:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 47
    invoke-virtual {v2}, Lpl/droidsonroids/gif/GifInfoHandle;->i()I

    .line 50
    move-result v2

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v2

    .line 55
    const/4 v3, 0x3

    .line 56
    aput-object v2, v1, v3

    .line 58
    const-string v2, "GIF: size: %dx%d, frames: %d, error: %d"

    .line 60
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    return-object v0
.end method
