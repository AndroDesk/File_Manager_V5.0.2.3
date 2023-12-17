.class public Lcom/miui/maml/elements/video/SurfaceVideoView;
.super Lcom/miui/maml/elements/video/BaseVideoView;
.source "SurfaceVideoView.java"


# static fields
.field private static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field private static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceVideoView"


# instance fields
.field private mFormat:I

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mMamlSurfaceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/component/MamlSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mSubLayer:I

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field private mVisibility:I

.field private mWidth:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/component/MamlSurface;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 p1, -0x2

    .line 5
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mFormat:I

    .line 7
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSubLayer:I

    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVisibility:I

    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mX:F

    .line 15
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mY:F

    .line 17
    new-instance p1, Lcom/miui/maml/elements/video/SurfaceVideoView$1;

    .line 19
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/video/SurfaceVideoView$1;-><init>(Lcom/miui/maml/elements/video/SurfaceVideoView;)V

    .line 22
    iput-object p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 24
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Surface_getInstance()Landroid/view/Surface;

    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    .line 30
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 32
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 35
    iput-object p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    .line 37
    new-instance p1, Landroid/os/Handler;

    .line 39
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/video/SurfaceVideoView;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->updateSurfaceInternal()V

    .line 4
    return-void
.end method

.method private initSize()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "window"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/WindowManager;

    .line 11
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/graphics/Point;

    .line 17
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    .line 29
    if-gtz v0, :cond_22

    .line 31
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 33
    iput v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    .line 35
    :cond_22
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    .line 41
    if-gtz v0, :cond_2e

    .line 43
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 45
    iput v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    .line 47
    :cond_2e
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->updateSize()V

    .line 50
    return-void
.end method

.method private postUpdateRunnable()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    .line 12
    iget-object v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    :cond_10
    return-void
.end method

.method private updateSize()V
    .registers 7

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mScaleMode:I

    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_25

    .line 6
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 8
    if-lez v0, :cond_25

    .line 10
    iget v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 12
    if-lez v1, :cond_25

    .line 14
    iget v2, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    .line 16
    mul-int v3, v1, v2

    .line 18
    iget v4, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    .line 20
    mul-int v5, v4, v0

    .line 22
    if-ge v3, v5, :cond_1c

    .line 24
    mul-int/2addr v2, v1

    .line 25
    div-int/2addr v2, v0

    .line 26
    iput v2, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    .line 28
    goto :goto_25

    .line 29
    :cond_1c
    mul-int/2addr v2, v1

    .line 30
    mul-int v3, v4, v0

    .line 32
    if-le v2, v3, :cond_25

    .line 34
    mul-int/2addr v4, v0

    .line 35
    div-int/2addr v4, v1

    .line 36
    iput v4, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    .line 38
    :cond_25
    :goto_25
    return-void
.end method

.method private updateSurfaceInternal()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 3
    if-eqz v0, :cond_3f

    .line 5
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_openTransaction()V

    .line 8
    :try_start_7
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVisibility:I

    .line 10
    if-nez v0, :cond_11

    .line 12
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 14
    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_show(Landroid/view/SurfaceControl;)V

    .line 17
    goto :goto_16

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 20
    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_hide(Landroid/view/SurfaceControl;)V

    .line 23
    :goto_16
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 25
    iget v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSubLayer:I

    .line 27
    invoke-static {v0, v1}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_setLayer(Landroid/view/SurfaceControl;I)V

    .line 30
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 32
    iget v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mX:F

    .line 34
    iget v2, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mY:F

    .line 36
    invoke-static {v0, v1, v2}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_setPosition(Landroid/view/SurfaceControl;FF)V

    .line 39
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 41
    iget v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    .line 43
    iget v2, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    .line 45
    invoke-static {v0, v1, v2}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_setBufferSize(Landroid/view/SurfaceControl;II)V

    .line 48
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    .line 50
    iget-object v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 52
    invoke-static {v0, v1}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Surface_copyFrom(Landroid/view/Surface;Landroid/view/SurfaceControl;)V
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_3a

    .line 55
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_closeTransaction()V

    .line 58
    goto :goto_3f

    .line 59
    :catchall_3a
    move-exception v0

    .line 60
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_closeTransaction()V

    .line 63
    throw v0

    .line 64
    :cond_3f
    :goto_3f
    return-void
.end method


# virtual methods
.method public addSurfaceHolderCallback()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/maml/component/MamlSurface;

    .line 9
    if-eqz v0, :cond_18

    .line 11
    invoke-virtual {v0}, Lcom/miui/maml/component/MamlSurface;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_18

    .line 17
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 19
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 25
    :cond_18
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->initSize()V

    .line 4
    if-eqz p1, :cond_45

    .line 6
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_45

    .line 16
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 18
    if-nez v0, :cond_45

    .line 20
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    .line 22
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/miui/maml/component/MamlSurface;

    .line 28
    if-eqz v0, :cond_26

    .line 30
    invoke-virtual {v0}, Lcom/miui/maml/component/MamlSurface;->isIsSuperWallpaper()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_26

    .line 36
    const-string v1, "superwallpaper.SurfaceVideoView"

    .line 38
    goto :goto_28

    .line 39
    :cond_26
    const-string v1, "SurfaceVideoView"

    .line 41
    :goto_28
    move-object v4, v1

    .line 42
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 45
    move-result-object v2

    .line 46
    if-eqz v0, :cond_34

    .line 48
    invoke-virtual {v0}, Lcom/miui/maml/component/MamlSurface;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    .line 51
    move-result-object p1

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    const/4 p1, 0x0

    .line 54
    :goto_35
    move-object v3, p1

    .line 55
    iget v5, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    .line 57
    iget v6, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    .line 59
    iget v7, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mFormat:I

    .line 61
    invoke-static/range {v2 .. v7}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_getInstance_with_params(Landroid/view/Surface;Landroid/view/SurfaceControl;Ljava/lang/String;III)Landroid/view/SurfaceControl;

    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 67
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->updateSurfaceInternal()V

    .line 70
    :cond_45
    return-void
.end method

.method public onSurfaceDestroyed()V
    .registers 4

    .line 1
    const-string v0, "SurfaceVideoView"

    .line 3
    const-string v1, "onSurfaceDestroyed"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->releaseMedia(Z)V

    .line 12
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_15

    .line 17
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 20
    iput-object v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    .line 24
    if-eqz v0, :cond_1c

    .line 26
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    .line 31
    if-eqz v0, :cond_27

    .line 33
    iget-object v2, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 35
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    iput-object v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    .line 40
    :cond_27
    return-void
.end method

.method public setFormat(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mFormat:I

    .line 3
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_10

    .line 3
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iput v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    .line 7
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    .line 11
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->updateSize()V

    .line 14
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    .line 17
    :cond_10
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVisibility:I

    .line 3
    if-eq v0, p1, :cond_9

    .line 5
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVisibility:I

    .line 7
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    .line 10
    :cond_9
    return-void
.end method

.method public setX(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mX:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mX:F

    .line 9
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    .line 12
    :cond_b
    return-void
.end method

.method public setY(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mY:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_b

    .line 7
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mY:F

    .line 9
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    .line 12
    :cond_b
    return-void
.end method

.method public setZOrderOnTop(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_6

    .line 3
    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSubLayer:I

    .line 6
    goto :goto_9

    .line 7
    :cond_6
    const/4 p1, -0x2

    .line 8
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSubLayer:I

    .line 10
    :goto_9
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    .line 13
    return-void
.end method

.method public updateVideoSize()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->updateSize()V

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->updateSurfaceInternal()V

    .line 7
    return-void
.end method
