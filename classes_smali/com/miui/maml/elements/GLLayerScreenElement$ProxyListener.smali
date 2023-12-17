.class Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;
.super Lcom/miui/maml/RendererController$EmptyListener;
.source "GLLayerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/GLLayerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProxyListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/GLLayerScreenElement;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/GLLayerScreenElement;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-direct {p0}, Lcom/miui/maml/RendererController$EmptyListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/GLLayerScreenElement;Lcom/miui/maml/elements/GLLayerScreenElement$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/GLLayerScreenElement;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$700(Lcom/miui/maml/elements/GLLayerScreenElement;)Landroid/opengl/GLSurfaceView;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 10
    return-void
.end method

.method public forceUpdate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 3
    iget-object v0, v0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->forceUpdate()V

    .line 12
    return-void
.end method

.method public tick(J)V
    .registers 3

    return-void
.end method

.method public triggerUpdate()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 3
    iget-object v0, v0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    .line 12
    return-void
.end method
