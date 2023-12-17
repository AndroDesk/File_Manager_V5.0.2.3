.class Lcom/miui/maml/component/MamlView$InnerView;
.super Landroid/view/View;
.source "MamlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/component/MamlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerView"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/component/MamlView;


# direct methods
.method public constructor <init>(Lcom/miui/maml/component/MamlView;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 3
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 3
    iget-object v1, v0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    if-nez v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {v0}, Lcom/miui/maml/component/MamlView;->access$100(Lcom/miui/maml/component/MamlView;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_53

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17
    move-result v0

    .line 18
    iget-object v1, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 20
    invoke-static {v1}, Lcom/miui/maml/component/MamlView;->access$200(Lcom/miui/maml/component/MamlView;)F

    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 26
    invoke-static {v2}, Lcom/miui/maml/component/MamlView;->access$300(Lcom/miui/maml/component/MamlView;)F

    .line 29
    move-result v2

    .line 30
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 33
    iget-object v1, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 35
    invoke-static {v1}, Lcom/miui/maml/component/MamlView;->access$400(Lcom/miui/maml/component/MamlView;)F

    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x0

    .line 40
    cmpl-float v1, v1, v2

    .line 42
    if-eqz v1, :cond_48

    .line 44
    iget-object v1, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 46
    invoke-static {v1}, Lcom/miui/maml/component/MamlView;->access$400(Lcom/miui/maml/component/MamlView;)F

    .line 49
    move-result v1

    .line 50
    iget-object v2, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 52
    invoke-static {v2}, Lcom/miui/maml/component/MamlView;->access$400(Lcom/miui/maml/component/MamlView;)F

    .line 55
    move-result v2

    .line 56
    iget-object v3, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 58
    invoke-static {v3}, Lcom/miui/maml/component/MamlView;->access$500(Lcom/miui/maml/component/MamlView;)I

    .line 61
    move-result v3

    .line 62
    int-to-float v3, v3

    .line 63
    iget-object v4, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 65
    invoke-static {v4}, Lcom/miui/maml/component/MamlView;->access$600(Lcom/miui/maml/component/MamlView;)I

    .line 68
    move-result v4

    .line 69
    int-to-float v4, v4

    .line 70
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 73
    :cond_48
    iget-object v1, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 75
    iget-object v1, v1, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 77
    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 80
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 83
    goto :goto_5a

    .line 84
    :cond_53
    iget-object v0, p0, Lcom/miui/maml/component/MamlView$InnerView;->this$0:Lcom/miui/maml/component/MamlView;

    .line 86
    iget-object v0, v0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 88
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 91
    :goto_5a
    return-void
.end method
