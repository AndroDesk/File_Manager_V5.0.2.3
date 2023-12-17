.class public abstract Lcom/miui/maml/elements/ViewHolderScreenElement;
.super Lcom/miui/maml/elements/ElementGroupRC;
.source "ViewHolderScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;
    }
.end annotation


# static fields
.field public static final LAYER_BOTTOM:I = 0x2

.field public static final LAYER_TOP:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MAML ViewHolderScreenElement"


# instance fields
.field private mHardware:Z

.field public mLayer:I

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field public mUpdatePosition:Z

.field public mUpdateSize:Z

.field public mUpdateTranslation:Z

.field public mViewAdded:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroupRC;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    const/4 p2, 0x2

    .line 5
    iput p2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayer:I

    .line 7
    const-string v0, "layerType"

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "hardware"

    .line 15
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 22
    move-result v1

    .line 23
    iput-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mHardware:Z

    .line 25
    const-string v1, "updatePosition"

    .line 27
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-static {v1, v2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getAttrAsBoolean(Ljava/lang/String;Z)Z

    .line 35
    move-result v1

    .line 36
    iput-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdatePosition:Z

    .line 38
    const-string v1, "updateSize"

    .line 40
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1, v2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getAttrAsBoolean(Ljava/lang/String;Z)Z

    .line 47
    move-result v1

    .line 48
    iput-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateSize:Z

    .line 50
    const-string v1, "updateTranslation"

    .line 52
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1, v2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getAttrAsBoolean(Ljava/lang/String;Z)Z

    .line 59
    move-result p1

    .line 60
    iput-boolean p1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateTranslation:Z

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_57

    .line 68
    const-string p1, "top"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_4c

    .line 76
    goto :goto_57

    .line 77
    :cond_4c
    const-string p1, "bottom"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_59

    .line 85
    iput p2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayer:I

    .line 87
    goto :goto_59

    .line 88
    :cond_57
    :goto_57
    iput v2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayer:I

    .line 90
    :cond_59
    :goto_59
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getLayoutParam()Landroid/view/ViewGroup$LayoutParams;

    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 96
    return-void
.end method

.method private final finishView()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z

    .line 3
    if-eqz v0, :cond_1f

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1f

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1f

    .line 17
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 19
    if-eqz v2, :cond_1f

    .line 21
    check-cast v1, Landroid/view/ViewGroup;

    .line 23
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z

    .line 29
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onViewRemoved(Landroid/view/View;)V

    .line 32
    :cond_1f
    return-void
.end method

.method private static getAttrAsBoolean(Ljava/lang/String;Z)Z
    .registers 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return p1

    .line 8
    :cond_7
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method private final initView()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z

    .line 3
    if-nez v0, :cond_32

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getViewManager()Lcom/miui/maml/util/MamlViewManager;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_32

    .line 13
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v1}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onUpdateView(Landroid/view/View;)V

    .line 20
    iget v2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayer:I

    .line 22
    const/4 v3, 0x2

    .line 23
    if-ne v2, v3, :cond_1f

    .line 25
    const/4 v2, 0x0

    .line 26
    iget-object v4, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 28
    invoke-interface {v0, v1, v2, v4}, Lcom/miui/maml/util/MamlViewManager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 31
    goto :goto_24

    .line 32
    :cond_1f
    iget-object v2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 34
    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    :goto_24
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mHardware:Z

    .line 39
    if-eqz v0, :cond_2c

    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 45
    :cond_2c
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z

    .line 48
    invoke-virtual {p0, v1}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onViewAdded(Landroid/view/View;)V

    .line 51
    :cond_32
    return-void
.end method

.method private updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v1, v0, :cond_e

    .line 11
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    move v0, v2

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 19
    move-result v1

    .line 20
    float-to-int v1, v1

    .line 21
    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 23
    if-eq v3, v1, :cond_1b

    .line 25
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    move v2, v0

    .line 29
    :goto_1c
    return v2
.end method


# virtual methods
.method public doTick(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 3
    if-nez v0, :cond_f

    .line 5
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTick(J)V

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 15
    goto :goto_12

    .line 16
    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->doTickSelf(J)V

    .line 19
    :goto_12
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->updateView()V

    .line 22
    return-void
.end method

.method public doTickSelf(J)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1a

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    move v2, v1

    .line 11
    :goto_a
    if-ge v2, v0, :cond_1a

    .line 13
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/miui/maml/animation/BaseAnimation;

    .line 21
    invoke-virtual {v3, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->tick(J)V

    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->evaluateAlpha()I

    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 33
    if-gez p1, :cond_23

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    move v1, p1

    .line 37
    :goto_24
    iput v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 39
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTickListener:Lcom/miui/maml/elements/FunctionElement;

    .line 41
    if-eqz p1, :cond_2d

    .line 43
    invoke-virtual {p1}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    .line 46
    :cond_2d
    return-void
.end method

.method public finish()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->finishView()V

    .line 7
    return-void
.end method

.method public getLayoutParam()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 10
    const/16 v1, 0x100

    .line 12
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 14
    return-object v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public init()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroupRC;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getViewManager()Lcom/miui/maml/util/MamlViewManager;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_f

    .line 12
    invoke-direct {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->initView()V

    .line 15
    goto :goto_16

    .line 16
    :cond_f
    const-string v0, "MAML ViewHolderScreenElement"

    .line 18
    const-string v1, "ViewManager must be set before init"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :goto_16
    return-void
.end method

.method public isViewAdded()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z

    .line 3
    return v0
.end method

.method public onControllerCreated(Lcom/miui/maml/RendererController;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/ViewHolderScreenElement;Lcom/miui/maml/elements/ViewHolderScreenElement$1;)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/miui/maml/RendererController;->setListener(Lcom/miui/maml/RendererController$Listener;)V

    .line 10
    return-void
.end method

.method public onUpdateView(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdatePosition:Z

    .line 3
    if-eqz v0, :cond_12

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    .line 19
    :cond_12
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateTranslation:Z

    .line 21
    if-eqz v0, :cond_52

    .line 23
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotX()F

    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 30
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotY()F

    .line 33
    move-result v0

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 37
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotation()F

    .line 40
    move-result v0

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 44
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotationX()F

    .line 47
    move-result v0

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 51
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotationY()F

    .line 54
    move-result v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 58
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAlpha()I

    .line 61
    move-result v0

    .line 62
    int-to-float v0, v0

    .line 63
    const/high16 v1, 0x437f0000  # 255.0f

    .line 65
    div-float/2addr v0, v1

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 69
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleX()F

    .line 72
    move-result v0

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 76
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleY()F

    .line 79
    move-result v0

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 83
    :cond_52
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateSize:Z

    .line 85
    if-eqz v0, :cond_63

    .line 87
    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 89
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_63

    .line 95
    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    :cond_63
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onVisibilityChange(Z)V
    .registers 3

    .line 1
    new-instance v0, Lcom/miui/maml/elements/ViewHolderScreenElement$2;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/elements/ViewHolderScreenElement$2;-><init>(Lcom/miui/maml/elements/ViewHolderScreenElement;Z)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->postInMainThread(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public setHardwareLayer(Z)V
    .registers 3

    .line 1
    new-instance v0, Lcom/miui/maml/elements/ViewHolderScreenElement$1;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/elements/ViewHolderScreenElement$1;-><init>(Lcom/miui/maml/elements/ViewHolderScreenElement;Z)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->postInMainThread(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public updateView()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdatePosition:Z

    .line 3
    if-nez v0, :cond_c

    .line 5
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateTranslation:Z

    .line 7
    if-nez v0, :cond_c

    .line 9
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mUpdateSize:Z

    .line 11
    if-eqz v0, :cond_17

    .line 13
    :cond_c
    iget-boolean v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement;->mViewAdded:Z

    .line 15
    if-eqz v0, :cond_17

    .line 17
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->onUpdateView(Landroid/view/View;)V

    .line 24
    :cond_17
    return-void
.end method
