.class Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;
.super Lcom/miui/maml/RendererController$EmptyListener;
.source "WindowScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/WindowScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProxyListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/WindowScreenElement;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/miui/maml/elements/WindowScreenElement;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    invoke-direct {p0}, Lcom/miui/maml/RendererController$EmptyListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/WindowScreenElement;Lcom/miui/maml/elements/WindowScreenElement$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/WindowScreenElement;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    invoke-static {v0}, Lcom/miui/maml/elements/WindowScreenElement;->access$200(Lcom/miui/maml/elements/WindowScreenElement;)Lcom/miui/maml/elements/WindowScreenElement$WindowView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public forceUpdate()V
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    iget-object v0, v0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    return-void
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ElementGroup;->onHover(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public tick(J)V
    .registers 4

    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTick(J)V

    return-void
.end method

.method public triggerUpdate()V
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    iget-object v0, v0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    return-void
.end method
