.class Lcom/miui/maml/elements/AdvancedSlider$StartPoint;
.super Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StartPoint"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "StartPoint"


# instance fields
.field private mAnchorX:F

.field private mAnchorY:F

.field public mOffsetX:F

.field public mOffsetY:F

.field public mReboundController:Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

.field public final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 3
    const-string v0, "StartPoint"

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)V

    .line 8
    const-string p3, "anchorX"

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p2, p3, v0}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 14
    move-result p3

    .line 15
    iput p3, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mAnchorX:F

    .line 17
    const-string p3, "anchorY"

    .line 19
    invoke-static {p2, p3, v0}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 22
    move-result p3

    .line 23
    iput p3, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mAnchorY:F

    .line 25
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 28
    move-result-object p3

    .line 29
    invoke-static {p3, p2}, Lcom/miui/maml/animation/interpolater/InterpolatorHelper;->create(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/interpolater/InterpolatorHelper;

    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 36
    move-result-object v0

    .line 37
    const-string v1, "easeTime"

    .line 39
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    invoke-static {v0, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 46
    move-result-object p2

    .line 47
    if-eqz p3, :cond_39

    .line 49
    if-eqz p2, :cond_39

    .line 51
    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

    .line 53
    invoke-direct {v0, p1, p3, p2}, Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/animation/interpolater/InterpolatorHelper;Lcom/miui/maml/data/Expression;)V

    .line 56
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

    .line 58
    :cond_39
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mOffsetX:F

    .line 7
    iget v2, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mOffsetY:F

    .line 9
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 12
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->doRender(Landroid/graphics/Canvas;)V

    .line 15
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 18
    return-void
.end method

.method public doTick(J)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTick(J)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->tick(J)V

    .line 11
    :cond_a
    return-void
.end method

.method public getAnchorX()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mAnchorX:F

    .line 7
    add-float/2addr v0, v1

    .line 8
    return v0
.end method

.method public getAnchorY()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mAnchorY:F

    .line 7
    add-float/2addr v0, v1

    .line 8
    return v0
.end method

.method public getOffsetX()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mOffsetX:F

    .line 3
    return v0
.end method

.method public getOffsetY()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mOffsetY:F

    .line 3
    return v0
.end method

.method public init()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    .line 11
    :cond_a
    return-void
.end method

.method public moveTo(FF)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mOffsetX:F

    .line 3
    iput p2, p0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mOffsetY:F

    .line 5
    return-void
.end method

.method public onStateChange(Lcom/miui/maml/elements/AdvancedSlider$State;Lcom/miui/maml/elements/AdvancedSlider$State;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/miui/maml/elements/AdvancedSlider$State;->Invalid:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 3
    if-ne p1, v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    sget-object v0, Lcom/miui/maml/elements/AdvancedSlider$1;->$SwitchMap$com$miui$maml$elements$AdvancedSlider$State:[I

    .line 8
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 11
    move-result v1

    .line 12
    aget v0, v0, v1

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_20

    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq v0, v1, :cond_14

    .line 20
    goto :goto_27

    .line 21
    :cond_14
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 23
    if-nez v0, :cond_27

    .line 25
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 27
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedSound:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)I

    .line 32
    goto :goto_27

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 35
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalSound:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)I

    .line 40
    :cond_27
    :goto_27
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->onStateChange(Lcom/miui/maml/elements/AdvancedSlider$State;Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 43
    return-void
.end method
