.class public Lcom/miui/maml/RendererCore;
.super Ljava/lang/Object;
.source "RendererCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/RendererCore$OnReleaseListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RendererCore"


# instance fields
.field private mCleaned:Z

.field private mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

.field private mOnReleaseListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/RendererCore$OnReleaseListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReleased:Z

.field private mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/miui/maml/MultipleRenderable;

    .line 6
    invoke-direct {v0}, Lcom/miui/maml/MultipleRenderable;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    .line 11
    iput-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 13
    invoke-virtual {p1, v0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 16
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 18
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->selfInit()V

    .line 21
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 23
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->attachToVsync()V

    .line 26
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 28
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 31
    return-void
.end method


# virtual methods
.method public declared-synchronized addRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/miui/maml/RendererCore;->mCleaned:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3a

    .line 4
    if-eqz v0, :cond_7

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    .line 10
    invoke-virtual {v0, p1}, Lcom/miui/maml/MultipleRenderable;->add(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 13
    const-string v0, "RendererCore"

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v2, "add: "

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string p1, " size:"

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    .line 35
    invoke-virtual {p1}, Lcom/miui/maml/MultipleRenderable;->size()I

    .line 38
    move-result p1

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 51
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V

    .line 54
    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/miui/maml/RendererCore;->mReleased:Z
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_3a

    .line 57
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :catchall_3a
    move-exception p1

    .line 60
    monitor-exit p0

    .line 61
    throw p1
.end method

.method public cleanUp()V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/RendererCore;->mCleaned:Z

    .line 4
    const-string v0, "cleanUp: "

    .line 6
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "RendererCore"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 28
    if-eqz v0, :cond_28

    .line 30
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->detachFromVsync()V

    .line 33
    iget-object v0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 35
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 41
    :cond_28
    return-void
.end method

.method public finalize()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/RendererCore;->cleanUp()V

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    return-object v0
.end method

.method public declared-synchronized pauseRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/miui/maml/RendererCore;->mCleaned:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_30

    .line 4
    if-eqz v0, :cond_7

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    .line 10
    invoke-virtual {v0, p1}, Lcom/miui/maml/MultipleRenderable;->pause(Lcom/miui/maml/RendererController$IRenderable;)I

    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_2e

    .line 16
    const-string p1, "RendererCore"

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    const-string v1, "self pause: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 44
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_30

    .line 47
    :cond_2e
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :catchall_30
    move-exception p1

    .line 50
    monitor-exit p0

    .line 51
    throw p1
.end method

.method public declared-synchronized removeRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/miui/maml/RendererCore;->mCleaned:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_61

    .line 4
    if-eqz v0, :cond_7

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    .line 10
    invoke-virtual {v0, p1}, Lcom/miui/maml/MultipleRenderable;->remove(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 13
    const-string v0, "RendererCore"

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v2, "remove: "

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string p1, " size:"

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    .line 35
    invoke-virtual {p1}, Lcom/miui/maml/MultipleRenderable;->size()I

    .line 38
    move-result p1

    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    .line 51
    invoke-virtual {p1}, Lcom/miui/maml/MultipleRenderable;->size()I

    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_5f

    .line 57
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 59
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V

    .line 62
    iget-boolean p1, p0, Lcom/miui/maml/RendererCore;->mReleased:Z

    .line 64
    if-nez p1, :cond_5c

    .line 66
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    .line 68
    if-eqz p1, :cond_5c

    .line 70
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_5c

    .line 76
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    .line 78
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/miui/maml/RendererCore$OnReleaseListener;

    .line 84
    invoke-interface {p1, p0}, Lcom/miui/maml/RendererCore$OnReleaseListener;->OnRendererCoreReleased(Lcom/miui/maml/RendererCore;)Z

    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_5c

    .line 90
    invoke-virtual {p0}, Lcom/miui/maml/RendererCore;->cleanUp()V

    .line 93
    :cond_5c
    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/miui/maml/RendererCore;->mReleased:Z
    :try_end_5f
    .catchall {:try_start_7 .. :try_end_5f} :catchall_61

    .line 96
    :cond_5f
    monitor-exit p0

    .line 97
    return-void

    .line 98
    :catchall_61
    move-exception p1

    .line 99
    monitor-exit p0

    .line 100
    throw p1
.end method

.method public render(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/RendererCore;->mCleaned:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 8
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 11
    return-void
.end method

.method public declared-synchronized resumeRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/miui/maml/RendererCore;->mCleaned:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2d

    .line 4
    if-eqz v0, :cond_7

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/miui/maml/RendererCore;->mMultipleRenderable:Lcom/miui/maml/MultipleRenderable;

    .line 10
    invoke-virtual {v0, p1}, Lcom/miui/maml/MultipleRenderable;->resume(Lcom/miui/maml/RendererController$IRenderable;)I

    .line 13
    const-string p1, "RendererCore"

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v1, "self resume: "

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object p1, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 41
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2d

    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    monitor-exit p0

    .line 48
    throw p1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/RendererCore;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 8
    :cond_7
    return-void
.end method

.method public setOnReleaseListener(Lcom/miui/maml/RendererCore$OnReleaseListener;)V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lcom/miui/maml/RendererCore;->mOnReleaseListener:Ljava/lang/ref/WeakReference;

    .line 8
    return-void
.end method
