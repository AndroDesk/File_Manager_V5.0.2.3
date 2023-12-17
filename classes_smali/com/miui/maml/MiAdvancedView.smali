.class public Lcom/miui/maml/MiAdvancedView;
.super Landroid/view/View;
.source "MiAdvancedView.java"

# interfaces
.implements Lcom/miui/maml/RendererController$IRenderable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MiAdvancedView"


# instance fields
.field private mLoggedHardwareRender:Z

.field private mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

.field public mNeedDisallowInterceptTouchEvent:Z

.field private mPaused:Z

.field private mPivotX:I

.field private mPivotY:I

.field public mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mScale:F

.field private mUseExternalRenderThread:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/maml/MiAdvancedView;->mPaused:Z

    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iput-object p2, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p2, :cond_1b

    new-instance p1, Lcom/miui/maml/MiAdvancedView$1;

    invoke-direct {p1, p0}, Lcom/miui/maml/MiAdvancedView$1;-><init>(Lcom/miui/maml/MiAdvancedView;)V

    invoke-virtual {p2, p1}, Lcom/miui/maml/ScreenElementRoot;->setOnHoverChangeListener(Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;)V

    :cond_1b
    invoke-virtual {p0}, Lcom/miui/maml/MiAdvancedView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/RenderThread;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/MiAdvancedView;-><init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method

.method private removeAccessHelperRef()V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setMamlAccessHelper(Lcom/miui/maml/util/MamlAccessHelper;)V

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/miui/maml/util/MamlAccessHelper;->removeRoot()V

    :cond_d
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/maml/MiAdvancedView;->cleanUp(Z)V

    return-void
.end method

.method public cleanUp(Z)V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setKeepResource(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->detachFromVsync()V

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    if-nez p1, :cond_18

    invoke-direct {p0}, Lcom/miui/maml/MiAdvancedView;->removeAccessHelperRef()V

    :cond_18
    invoke-static {}, Lcom/miui/maml/util/Utils;->triggerGC()V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lr0/a;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public doRender()V
    .registers 1

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final getRoot()Lcom/miui/maml/ScreenElementRoot;
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    return-object v0
.end method

.method public getSuggestedMinimumHeight()I
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public init()V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->attachToVsync()V

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfInit()V

    new-instance v0, Lcom/miui/maml/util/MamlAccessHelper;

    iget-object v1, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v0, v1, p0}, Lcom/miui/maml/util/MamlAccessHelper;-><init>(Lcom/miui/maml/ScreenElementRoot;Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    invoke-static {p0, v0}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    iget-boolean v0, p0, Lcom/miui/maml/MiAdvancedView;->mLoggedHardwareRender:Z

    if-nez v0, :cond_1d

    const-string v0, "canvas hardware render: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiAdvancedView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/maml/MiAdvancedView;->mLoggedHardwareRender:Z

    :cond_1d
    iget v0, p0, Lcom/miui/maml/MiAdvancedView;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Lcom/miui/maml/MiAdvancedView;->mScale:F

    iget v2, p0, Lcom/miui/maml/MiAdvancedView;->mPivotX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/maml/MiAdvancedView;->mPivotY:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_41

    :cond_3c
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    :goto_41
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onHover(Landroid/view/MotionEvent;)Z

    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_d

    const-string v1, "accessibilityText"

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 8

    iget-object p1, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p1

    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    sub-int/2addr p4, p2

    int-to-float p4, p4

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result v0

    div-float/2addr p4, v0

    float-to-double v0, p4

    const-string p4, "view_width"

    invoke-virtual {p1, p4, v0, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    sub-int/2addr p5, p3

    int-to-float p4, p5

    iget-object p5, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p5}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result p5

    div-float/2addr p4, p5

    float-to-double p4, p4

    const-string v0, "view_height"

    invoke-virtual {p1, v0, p4, p5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    :goto_2a
    instance-of p5, p4, Landroid/view/View;

    if-eqz p5, :cond_49

    check-cast p4, Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int/2addr p5, v0

    add-int/2addr p2, p5

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getScrollY()I

    move-result v0

    sub-int/2addr p5, v0

    add-int/2addr p3, p5

    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    goto :goto_2a

    :cond_49
    int-to-float p2, p2

    iget-object p4, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p4}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result p4

    div-float/2addr p2, p4

    float-to-double p4, p2

    const-string p2, "view_x"

    invoke-virtual {p1, p2, p4, p5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    int-to-float p2, p3

    iget-object p3, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p3}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    move-result p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    const-string p4, "view_y"

    invoke-virtual {p1, p4, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget-object p1, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/maml/MiAdvancedView;->mPaused:Z

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/maml/MiAdvancedView;->mPaused:Z

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    move-result v0

    iget-boolean v1, p0, Lcom/miui/maml/MiAdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    if-eq v1, v0, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v0, p0, Lcom/miui/maml/MiAdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    :cond_15
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    :cond_1a
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setScale(FII)V
    .registers 4

    iput p1, p0, Lcom/miui/maml/MiAdvancedView;->mScale:F

    iput p2, p0, Lcom/miui/maml/MiAdvancedView;->mPivotX:I

    iput p3, p0, Lcom/miui/maml/MiAdvancedView;->mPivotY:I

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/miui/maml/MiAdvancedView;->onResume()V

    goto :goto_13

    :cond_9
    const/4 v0, 0x4

    if-eq p1, v0, :cond_10

    const/16 v0, 0x8

    if-ne p1, v0, :cond_13

    :cond_10
    invoke-virtual {p0}, Lcom/miui/maml/MiAdvancedView;->onPause()V

    :cond_13
    :goto_13
    return-void
.end method