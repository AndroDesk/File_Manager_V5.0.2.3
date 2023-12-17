.class Lcom/miui/maml/elements/LayerScreenElement$LayerView;
.super Landroid/view/View;
.source "LayerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/LayerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LayerView"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/LayerScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/LayerScreenElement;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/LayerScreenElement$LayerView;->this$0:Lcom/miui/maml/elements/LayerScreenElement;

    .line 3
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/LayerScreenElement$LayerView;->this$0:Lcom/miui/maml/elements/LayerScreenElement;

    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    .line 6
    iget-object p1, p0, Lcom/miui/maml/elements/LayerScreenElement$LayerView;->this$0:Lcom/miui/maml/elements/LayerScreenElement;

    .line 8
    iget-object p1, p1, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 10
    invoke-virtual {p1}, Lcom/miui/maml/RendererController;->doneRender()V

    .line 13
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/LayerScreenElement$LayerView;->this$0:Lcom/miui/maml/elements/LayerScreenElement;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_15

    .line 13
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_13

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/4 p1, 0x0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    :goto_15
    const/4 p1, 0x1

    .line 23
    :goto_16
    return p1
.end method
