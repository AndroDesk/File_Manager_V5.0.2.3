.class public Lcom/miui/maml/FancyDrawable;
.super Lcom/miui/maml/MamlDrawable;
.source "FancyDrawable.java"

# interfaces
.implements Lcom/miui/maml/RendererController$IRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/FancyDrawable$FancyDrawableState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "FancyDrawable"

.field private static final QUIET_IMAGE_NAME:Ljava/lang/String; = "quietImage.png"

.field private static final RENDER_TIMEOUT:I = 0x64

.field private static final START_IMAGE_NAME:Ljava/lang/String; = "startImage.png"

.field private static final USE_QUIET_IMAGE_TAG:Ljava/lang/String; = "useQuietImage"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPauseLock:Ljava/lang/Object;

.field private mPaused:Z

.field private mQuietDrawable:Landroid/graphics/drawable/Drawable;

.field private mRenderTimeout:Ljava/lang/Runnable;

.field private mRendererCore:Lcom/miui/maml/RendererCore;

.field private mStartDrawable:Landroid/graphics/drawable/Drawable;

.field private mTimeOut:Z


# direct methods
.method public constructor <init>(Lcom/miui/maml/RendererCore;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/MamlDrawable;-><init>()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    .line 22
    new-instance v0, Lcom/miui/maml/FancyDrawable$1;

    .line 24
    invoke-direct {v0, p0}, Lcom/miui/maml/FancyDrawable$1;-><init>(Lcom/miui/maml/FancyDrawable;)V

    .line 27
    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 29
    invoke-direct {p0, p1}, Lcom/miui/maml/FancyDrawable;->init(Lcom/miui/maml/RendererCore;)V

    .line 32
    return-void
.end method

.method public static synthetic access$002(Lcom/miui/maml/FancyDrawable;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/FancyDrawable;->mTimeOut:Z

    .line 3
    return p1
.end method

.method public static synthetic access$100(Lcom/miui/maml/FancyDrawable;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/FancyDrawable;->doPause()V

    .line 4
    return-void
.end method

.method private doPause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-boolean v1, p0, Lcom/miui/maml/FancyDrawable;->mPaused:Z

    .line 6
    if-eqz v1, :cond_9

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_9
    const-string v1, "doPause: "

    .line 12
    invoke-direct {p0, v1}, Lcom/miui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/miui/maml/FancyDrawable;->mPaused:Z

    .line 18
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 20
    invoke-virtual {v1, p0}, Lcom/miui/maml/RendererCore;->pauseRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_18
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    .line 27
    throw v1
.end method

.method private doResume()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-boolean v1, p0, Lcom/miui/maml/FancyDrawable;->mPaused:Z

    .line 6
    if-nez v1, :cond_9

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_9
    const-string v1, "doResume: "

    .line 12
    invoke-direct {p0, v1}, Lcom/miui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/miui/maml/FancyDrawable;->mPaused:Z

    .line 18
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 20
    invoke-virtual {v1, p0}, Lcom/miui/maml/RendererCore;->resumeRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_18
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    .line 27
    throw v1
.end method

.method private init(Lcom/miui/maml/RendererCore;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/miui/maml/FancyDrawable$FancyDrawableState;

    .line 6
    invoke-direct {v0, p1}, Lcom/miui/maml/FancyDrawable$FancyDrawableState;-><init>(Lcom/miui/maml/RendererCore;)V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/MamlDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    .line 11
    iput-object p1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 13
    invoke-virtual {p1, p0}, Lcom/miui/maml/RendererCore;->addRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 16
    iget-object p1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 18
    invoke-virtual {p1}, Lcom/miui/maml/RendererCore;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    .line 25
    move-result p1

    .line 26
    float-to-int p1, p1

    .line 27
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 29
    invoke-virtual {v0}, Lcom/miui/maml/RendererCore;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    .line 36
    move-result v0

    .line 37
    float-to-int v0, v0

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/MamlDrawable;->setIntrinsicSize(II)V

    .line 41
    iget-object p1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 43
    invoke-virtual {p1}, Lcom/miui/maml/RendererCore;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 50
    move-result-object p1

    .line 51
    iget-object v0, p1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 53
    iget-object v1, p1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object v1

    .line 59
    const-string v2, "quietImage.png"

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    const/4 v1, 0x0

    .line 68
    if-eqz v0, :cond_58

    .line 70
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 79
    move-result v2

    .line 80
    iget-object v3, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 85
    move-result v3

    .line 86
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    :cond_58
    iget-object v0, p1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 91
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    move-result-object p1

    .line 97
    const-string v2, "startImage.png"

    .line 99
    invoke-virtual {v0, p1, v2}, Lcom/miui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 102
    move-result-object p1

    .line 103
    iput-object p1, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    if-eqz p1, :cond_7d

    .line 107
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 110
    move-result-object p1

    .line 111
    iput-object p1, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 116
    move-result v0

    .line 117
    iget-object v2, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 122
    move-result v2

    .line 123
    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 126
    :cond_7d
    return-void
.end method

.method private logd(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    const-string p1, "  ["

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string p1, "]"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    const-string v0, "FancyDrawable"

    .line 32
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .line 1
    const-string v0, "cleanUp: "

    .line 3
    invoke-direct {p0, v0}, Lcom/miui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 8
    invoke-virtual {v0, p0}, Lcom/miui/maml/RendererCore;->removeRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 11
    return-void
.end method

.method public doRender()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 10
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 12
    const-wide/16 v2, 0x64

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 19
    iget-object v1, p0, Lcom/miui/maml/MamlDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    return-void
.end method

.method public drawIcon(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-boolean v0, p0, Lcom/miui/maml/FancyDrawable;->mTimeOut:Z

    .line 10
    if-eqz v0, :cond_11

    .line 12
    invoke-direct {p0}, Lcom/miui/maml/FancyDrawable;->doResume()V

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/miui/maml/FancyDrawable;->mTimeOut:Z

    .line 18
    :cond_11
    :try_start_11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 25
    move-result-object v1

    .line 26
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 28
    int-to-float v1, v1

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 32
    move-result-object v2

    .line 33
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 35
    int-to-float v2, v2

    .line 36
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 39
    iget v1, p0, Lcom/miui/maml/MamlDrawable;->mWidth:I

    .line 41
    int-to-float v1, v1

    .line 42
    iget v2, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 44
    int-to-float v2, v2

    .line 45
    div-float/2addr v1, v2

    .line 46
    iget v2, p0, Lcom/miui/maml/MamlDrawable;->mHeight:I

    .line 48
    int-to-float v2, v2

    .line 49
    iget v3, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 51
    int-to-float v3, v3

    .line 52
    div-float/2addr v2, v3

    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-virtual {p1, v1, v2, v3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 57
    const-string v1, "useQuietImage"

    .line 59
    iget-object v2, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 61
    invoke-virtual {v2}, Lcom/miui/maml/RendererCore;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 68
    move-result-object v2

    .line 69
    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D

    .line 72
    move-result-wide v1

    .line 73
    const-wide/16 v3, 0x0

    .line 75
    cmpl-double v1, v1, v3

    .line 77
    if-lez v1, :cond_56

    .line 79
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    if-eqz v1, :cond_56

    .line 83
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    goto :goto_5b

    .line 87
    :cond_56
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 89
    invoke-virtual {v1, p1}, Lcom/miui/maml/RendererCore;->render(Landroid/graphics/Canvas;)V

    .line 92
    :goto_5b
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_5e} :catch_5f

    .line 95
    goto :goto_63

    .line 96
    :catch_5f
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    :goto_63
    return-void
.end method

.method public finalize()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->cleanUp()V

    .line 4
    invoke-super {p0}, Lcom/miui/maml/MamlDrawable;->finalize()V

    .line 7
    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 3
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 3
    return v0
.end method

.method public getQuietDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/RendererCore;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getStartDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    return-object v0
.end method

.method public onPause()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pause"

    .line 7
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/miui/maml/FancyDrawable;->doPause()V

    .line 13
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 15
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "resume"

    .line 7
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/miui/maml/FancyDrawable;->doResume()V

    .line 13
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 15
    :cond_e
    return-void
.end method

.method public setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 7

    .line 1
    if-eqz p2, :cond_44

    .line 3
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 5
    if-ltz v0, :cond_1b

    .line 7
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 9
    if-ltz v0, :cond_1b

    .line 11
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 17
    if-gt v0, v1, :cond_1b

    .line 19
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 25
    if-gt v0, v1, :cond_1b

    .line 27
    goto :goto_44

    .line 28
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    const-string v1, "Badge location "

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    const-string p2, " not in badged drawable bounds "

    .line 45
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    new-instance p2, Landroid/graphics/Rect;

    .line 50
    iget v1, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 52
    iget v2, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-direct {p2, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 65
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p1

    .line 69
    :cond_44
    :goto_44
    iput-object p1, p0, Lcom/miui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    iput-object p2, p0, Lcom/miui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    .line 73
    iget-object v0, p0, Lcom/miui/maml/MamlDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    .line 75
    iput-object p1, v0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    iput-object p2, v0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    .line 79
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/MamlDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4
    const-string v0, "FancyDrawable"

    .line 6
    const-string v1, "setColorFilter"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    if-eqz v0, :cond_11

    .line 15
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 20
    if-eqz v0, :cond_18

    .line 22
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/miui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    if-eqz v0, :cond_1f

    .line 29
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 32
    :cond_1f
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 34
    if-eqz v0, :cond_26

    .line 36
    invoke-virtual {v0, p1}, Lcom/miui/maml/RendererCore;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 39
    :cond_26
    return-void
.end method
