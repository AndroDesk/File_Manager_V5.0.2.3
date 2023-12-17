.class Lcom/miui/maml/ScreenElementRoot$2;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"

# interfaces
.implements Lcom/miui/maml/elements/ScreenElementVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/ScreenElementRoot;->traverseElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$2;->this$0:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public visit(Lcom/miui/maml/elements/ScreenElement;)V
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/miui/maml/elements/FramerateController;

    .line 3
    if-eqz v0, :cond_10

    .line 5
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_10

    .line 11
    move-object v1, p1

    .line 12
    check-cast v1, Lcom/miui/maml/elements/FramerateController;

    .line 14
    invoke-virtual {v0, v1}, Lcom/miui/maml/RendererController;->addFramerateController(Lcom/miui/maml/elements/FramerateController;)V

    .line 17
    :cond_10
    instance-of v0, p1, Lcom/miui/maml/elements/ElementGroupRC;

    .line 19
    if-nez v0, :cond_18

    .line 21
    instance-of v0, p1, Lcom/miui/maml/ScreenElementRoot;

    .line 23
    if-eqz v0, :cond_25

    .line 25
    :cond_18
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$2;->this$0:Lcom/miui/maml/ScreenElementRoot;

    .line 27
    invoke-static {v0}, Lcom/miui/maml/ScreenElementRoot;->access$000(Lcom/miui/maml/ScreenElementRoot;)Ljava/util/ArrayList;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_25
    return-void
.end method
