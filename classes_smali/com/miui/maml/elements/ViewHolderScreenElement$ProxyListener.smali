.class Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;
.super Lcom/miui/maml/RendererController$EmptyListener;
.source "ViewHolderScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/ViewHolderScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProxyListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/miui/maml/elements/ViewHolderScreenElement;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    invoke-direct {p0}, Lcom/miui/maml/RendererController$EmptyListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/ViewHolderScreenElement;Lcom/miui/maml/elements/ViewHolderScreenElement$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/ViewHolderScreenElement;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public forceUpdate()V
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    iget-object v0, v0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->forceUpdate()V

    return-void
.end method

.method public tick(J)V
    .registers 4

    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTickChildren(J)V

    return-void
.end method

.method public triggerUpdate()V
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    iget-object v0, v0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    return-void
.end method
