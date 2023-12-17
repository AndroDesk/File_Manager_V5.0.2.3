.class public Lcom/miui/maml/SingleRootListener;
.super Ljava/lang/Object;
.source "SingleRootListener.java"

# interfaces
.implements Lcom/miui/maml/RendererController$Listener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SingleRootListener"


# instance fields
.field private mRenderable:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/RendererController$IRenderable;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/RendererController$IRenderable;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/SingleRootListener;->setRoot(Lcom/miui/maml/ScreenElementRoot;)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/miui/maml/SingleRootListener;->setRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 10
    return-void
.end method


# virtual methods
.method public doRender()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/miui/maml/RendererController$IRenderable;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    if-eqz v0, :cond_11

    .line 15
    invoke-interface {v0}, Lcom/miui/maml/RendererController$IRenderable;->doRender()V

    .line 18
    :cond_11
    return-void
.end method

.method public finish()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->finish()V

    .line 6
    return-void
.end method

.method public forceUpdate()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/miui/maml/RendererController$IRenderable;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    if-eqz v0, :cond_17

    .line 15
    instance-of v1, v0, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;

    .line 17
    if-eqz v1, :cond_17

    .line 19
    check-cast v0, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;

    .line 21
    invoke-interface {v0}, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;->forceUpdate()V

    .line 24
    :cond_17
    return-void
.end method

.method public init()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->init()V

    .line 6
    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onHover(Landroid/view/MotionEvent;)Z

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 9
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 9
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->pause()V

    .line 6
    return-void
.end method

.method public resume()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->resume()V

    .line 6
    return-void
.end method

.method public setRenderable(Lcom/miui/maml/RendererController$IRenderable;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_8

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    iput-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    .line 12
    return-void
.end method

.method public setRoot(Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_5

    .line 3
    iput-object p1, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 8
    const-string v0, "root is null"

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public tick(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/ScreenElementRoot;->tick(J)V

    .line 6
    return-void
.end method

.method public triggerUpdate()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/SingleRootListener;->mRenderable:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/miui/maml/RendererController$IRenderable;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    if-eqz v0, :cond_17

    .line 15
    instance-of v1, v0, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;

    .line 17
    if-eqz v1, :cond_17

    .line 19
    check-cast v0, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;

    .line 21
    invoke-interface {v0}, Lcom/miui/maml/RendererController$ISelfUpdateRenderable;->triggerUpdate()V

    .line 24
    :cond_17
    return-void
.end method
