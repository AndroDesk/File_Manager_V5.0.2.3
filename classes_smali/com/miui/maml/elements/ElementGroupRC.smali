.class public abstract Lcom/miui/maml/elements/ElementGroupRC;
.super Lcom/miui/maml/elements/ElementGroup;
.source "ElementGroupRC.java"


# instance fields
.field public mController:Lcom/miui/maml/RendererController;

.field private mFrameRate:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    const-string p2, "frameRate"

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/miui/maml/elements/ElementGroupRC;->mFrameRate:F

    .line 13
    cmpl-float p1, p1, v0

    .line 15
    if-ltz p1, :cond_1f

    .line 17
    new-instance p1, Lcom/miui/maml/RendererController;

    .line 19
    invoke-direct {p1}, Lcom/miui/maml/RendererController;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 24
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroupRC;->onControllerCreated(Lcom/miui/maml/RendererController;)V

    .line 27
    iget-object p1, p0, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 29
    invoke-virtual {p1}, Lcom/miui/maml/RendererController;->init()V

    .line 32
    :cond_1f
    return-void
.end method


# virtual methods
.method public getRendererController()Lcom/miui/maml/RendererController;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    goto :goto_9

    .line 6
    :cond_5
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    return-object v0
.end method

.method public init()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 4
    iget v0, p0, Lcom/miui/maml/elements/ElementGroupRC;->mFrameRate:F

    .line 6
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 9
    return-void
.end method

.method public abstract onControllerCreated(Lcom/miui/maml/RendererController;)V
.end method
