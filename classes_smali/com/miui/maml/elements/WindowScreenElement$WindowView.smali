.class Lcom/miui/maml/elements/WindowScreenElement$WindowView;
.super Landroid/view/View;
.source "WindowScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/WindowScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WindowView"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/WindowScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/WindowScreenElement;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement$WindowView;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 3
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$WindowView;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->doRenderWithTranslation(Landroid/graphics/Canvas;)V

    .line 6
    iget-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement$WindowView;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 8
    iget-object p1, p1, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 10
    invoke-virtual {p1}, Lcom/miui/maml/RendererController;->doneRender()V

    .line 13
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$WindowView;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onHover(Landroid/view/MotionEvent;)Z

    .line 10
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$WindowView;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    .line 10
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method
