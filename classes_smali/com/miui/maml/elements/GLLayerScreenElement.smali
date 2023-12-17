.class public Lcom/miui/maml/elements/GLLayerScreenElement;
.super Lcom/miui/maml/elements/ViewHolderScreenElement;
.source "GLLayerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;,
        Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML GLLayerScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "GLLayer"


# instance fields
.field private mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

.field private mHVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mOnSurfaceChangeCommands:Lcom/miui/maml/CommandTrigger;

.field private mOnSurfaceCreateCommands:Lcom/miui/maml/CommandTrigger;

.field private mOnSurfaceDrawCommands:Lcom/miui/maml/CommandTrigger;

.field private mView:Landroid/opengl/GLSurfaceView;

.field private mViewVar:Lcom/miui/maml/data/IndexedVariable;

.field private mWVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 7
    return-void
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceCreateCommands:Lcom/miui/maml/CommandTrigger;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceChangeCommands:Lcom/miui/maml/CommandTrigger;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mWVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mHVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/miui/maml/elements/GLLayerScreenElement;)Landroid/opengl/GLSurfaceView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 3
    return-object p0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 6

    .line 1
    new-instance p1, Landroid/opengl/GLSurfaceView;

    .line 3
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 11
    invoke-direct {p1, v0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 16
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 18
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 20
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    .line 23
    move-result v0

    .line 24
    float-to-int v0, v0

    .line 25
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 27
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    .line 30
    move-result v1

    .line 31
    float-to-int v1, v1

    .line 32
    invoke-direct {p1, v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 35
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 37
    const/4 v0, 0x1

    .line 38
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 40
    const/16 v1, 0x100

    .line 42
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 44
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 46
    new-instance v1, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;

    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-direct {v1, p0, v2}, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;-><init>(Lcom/miui/maml/elements/GLLayerScreenElement;Lcom/miui/maml/elements/GLLayerScreenElement$1;)V

    .line 52
    invoke-virtual {p1, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 55
    iget-object p1, p0, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 57
    const/4 v1, 0x0

    .line 58
    if-eqz p1, :cond_3d

    .line 60
    move p1, v1

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    move p1, v0

    .line 63
    :goto_3e
    iget-object v2, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 65
    invoke-virtual {v2, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 68
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 70
    if-eqz p1, :cond_63

    .line 72
    const-string v2, "create"

    .line 74
    invoke-virtual {p1, v2}, Lcom/miui/maml/CommandTriggers;->find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceCreateCommands:Lcom/miui/maml/CommandTrigger;

    .line 80
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 82
    const-string v2, "change"

    .line 84
    invoke-virtual {p1, v2}, Lcom/miui/maml/CommandTriggers;->find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceChangeCommands:Lcom/miui/maml/CommandTrigger;

    .line 90
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 92
    const-string v2, "draw"

    .line 94
    invoke-virtual {p1, v2}, Lcom/miui/maml/CommandTriggers;->find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 100
    :cond_63
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 102
    if-nez p1, :cond_6e

    .line 104
    const-string p1, "GLLayerScreenElement"

    .line 106
    const-string v2, "no draw commands."

    .line 108
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_6e
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 114
    move-result-object p1

    .line 115
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 117
    const-string v3, "__objGLCanvas"

    .line 119
    invoke-direct {v2, v3, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 122
    iput-object v2, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

    .line 124
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 126
    const-string v3, "__objGLView"

    .line 128
    invoke-direct {v2, v3, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 131
    iput-object v2, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mViewVar:Lcom/miui/maml/data/IndexedVariable;

    .line 133
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 135
    const-string v2, "__w"

    .line 137
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 140
    iput-object v1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mWVar:Lcom/miui/maml/data/IndexedVariable;

    .line 142
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 144
    const-string v2, "__h"

    .line 146
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 149
    iput-object v1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mHVar:Lcom/miui/maml/data/IndexedVariable;

    .line 151
    return-void
.end method


# virtual methods
.method public doTick(J)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->doTickSelf(J)V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->updateView()V

    .line 7
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 3
    return-object v0
.end method

.method public init()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mViewVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 5
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 8
    invoke-super {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->init()V

    .line 11
    return-void
.end method

.method public onControllerCreated(Lcom/miui/maml/RendererController;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/GLLayerScreenElement;Lcom/miui/maml/elements/GLLayerScreenElement$1;)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/miui/maml/RendererController;->setListener(Lcom/miui/maml/RendererController$Listener;)V

    .line 10
    return-void
.end method
