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
.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/miui/maml/MiAdvancedView;->mPaused:Z

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 6
    iput-object p2, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p2, :cond_1b

    .line 7
    new-instance p1, Lcom/miui/maml/MiAdvancedView$1;

    invoke-direct {p1, p0}, Lcom/miui/maml/MiAdvancedView$1;-><init>(Lcom/miui/maml/MiAdvancedView;)V

    invoke-virtual {p2, p1}, Lcom/miui/maml/ScreenElementRoot;->setOnHoverChangeListener(Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;)V

    .line 8
    :cond_1b
    invoke-virtual {p0}, Lcom/miui/maml/MiAdvancedView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/RenderThread;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/MiAdvancedView;-><init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method

.method private removeAccessHelperRef()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setMamlAccessHelper(Lcom/miui/maml/util/MamlAccessHelper;)V

    .line 7
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {v0}, Lcom/miui/maml/util/MamlAccessHelper;->removeRoot()V

    .line 14
    :cond_d
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/miui/maml/MiAdvancedView;->cleanUp(Z)V

    return-void
.end method

.method public cleanUp(Z)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setKeepResource(Z)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->detachFromVsync()V

    .line 5
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    if-nez p1, :cond_18

    .line 6
    invoke-direct {p0}, Lcom/miui/maml/MiAdvancedView;->removeAccessHelperRef()V

    .line 7
    :cond_18
    invoke-static {}, Lcom/miui/maml/util/Utils;->triggerGC()V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0, p1}, Lr0/a;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public doRender()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 4
    return-void
.end method

.method public final getRoot()Lcom/miui/maml/ScreenElementRoot;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    return-object v0
.end method

.method public getSuggestedMinimumHeight()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    .line 6
    move-result v0

    .line 7
    float-to-int v0, v0

    .line 8
    return v0
.end method

.method public init()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {v0, p0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 6
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 19
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 21
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->attachToVsync()V

    .line 24
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 26
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfInit()V

    .line 29
    new-instance v0, Lcom/miui/maml/util/MamlAccessHelper;

    .line 31
    iget-object v1, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 33
    invoke-direct {v0, v1, p0}, Lcom/miui/maml/util/MamlAccessHelper;-><init>(Lcom/miui/maml/ScreenElementRoot;Landroid/view/View;)V

    .line 36
    iput-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    .line 38
    invoke-static {p0, v0}, Lm0/g0;->m(Landroid/view/View;Lm0/a;)V

    .line 41
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 9
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/MiAdvancedView;->mLoggedHardwareRender:Z

    .line 3
    if-nez v0, :cond_1d

    .line 5
    const-string v0, "canvas hardware render: "

    .line 7
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const-string v1, "MiAdvancedView"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/miui/maml/MiAdvancedView;->mLoggedHardwareRender:Z

    .line 30
    :cond_1d
    iget v0, p0, Lcom/miui/maml/MiAdvancedView;->mScale:F

    .line 32
    const/4 v1, 0x0

    .line 33
    cmpl-float v0, v0, v1

    .line 35
    if-eqz v0, :cond_3c

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 40
    move-result v0

    .line 41
    iget v1, p0, Lcom/miui/maml/MiAdvancedView;->mScale:F

    .line 43
    iget v2, p0, Lcom/miui/maml/MiAdvancedView;->mPivotX:I

    .line 45
    int-to-float v2, v2

    .line 46
    iget v3, p0, Lcom/miui/maml/MiAdvancedView;->mPivotY:I

    .line 48
    int-to-float v3, v3

    .line 49
    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 52
    iget-object v1, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 54
    invoke-virtual {v1, p1}, Lcom/miui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 60
    goto :goto_41

    .line 61
    :cond_3c
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 63
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 66
    :goto_41
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onHover(Landroid/view/MotionEvent;)Z

    .line 8
    :cond_7
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    const-string v1, "accessibilityText"

    .line 7
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_d
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 17
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 8

    .line 1
    iget-object p1, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 9
    sub-int/2addr p4, p2

    .line 10
    int-to-float p4, p4

    .line 11
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 16
    move-result v0

    .line 17
    div-float/2addr p4, v0

    .line 18
    float-to-double v0, p4

    .line 19
    const-string p4, "view_width"

    .line 21
    invoke-virtual {p1, p4, v0, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 24
    sub-int/2addr p5, p3

    .line 25
    int-to-float p4, p5

    .line 26
    iget-object p5, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 28
    invoke-virtual {p5}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 31
    move-result p5

    .line 32
    div-float/2addr p4, p5

    .line 33
    float-to-double p4, p4

    .line 34
    const-string v0, "view_height"

    .line 36
    invoke-virtual {p1, v0, p4, p5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 42
    move-result-object p4

    .line 43
    :goto_2a
    instance-of p5, p4, Landroid/view/View;

    .line 45
    if-eqz p5, :cond_49

    .line 47
    check-cast p4, Landroid/view/View;

    .line 49
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    .line 52
    move-result p5

    .line 53
    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    .line 56
    move-result v0

    .line 57
    sub-int/2addr p5, v0

    .line 58
    add-int/2addr p2, p5

    .line 59
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    .line 62
    move-result p5

    .line 63
    invoke-virtual {p4}, Landroid/view/View;->getScrollY()I

    .line 66
    move-result v0

    .line 67
    sub-int/2addr p5, v0

    .line 68
    add-int/2addr p3, p5

    .line 69
    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 72
    move-result-object p4

    .line 73
    goto :goto_2a

    .line 74
    :cond_49
    int-to-float p2, p2

    .line 75
    iget-object p4, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 77
    invoke-virtual {p4}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 80
    move-result p4

    .line 81
    div-float/2addr p2, p4

    .line 82
    float-to-double p4, p2

    .line 83
    const-string p2, "view_x"

    .line 85
    invoke-virtual {p1, p2, p4, p5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 88
    int-to-float p2, p3

    .line 89
    iget-object p3, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 91
    invoke-virtual {p3}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 94
    move-result p3

    .line 95
    div-float/2addr p2, p3

    .line 96
    float-to-double p2, p2

    .line 97
    const-string p4, "view_y"

    .line 99
    invoke-virtual {p1, p4, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 102
    iget-object p1, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 104
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 107
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/MiAdvancedView;->mPaused:Z

    .line 4
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V

    .line 9
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/MiAdvancedView;->mPaused:Z

    .line 4
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V

    .line 9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    if-eqz v0, :cond_1a

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    .line 8
    move-result v0

    .line 9
    iget-boolean v1, p0, Lcom/miui/maml/MiAdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    .line 11
    if-eq v1, v0, :cond_15

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 20
    iput-boolean v0, p0, Lcom/miui/maml/MiAdvancedView;->mNeedDisallowInterceptTouchEvent:Z

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/miui/maml/MiAdvancedView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 24
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    .line 27
    :cond_1a
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public setScale(FII)V
    .registers 4

    .line 1
    iput p1, p0, Lcom/miui/maml/MiAdvancedView;->mScale:F

    .line 3
    iput p2, p0, Lcom/miui/maml/MiAdvancedView;->mPivotX:I

    .line 5
    iput p3, p0, Lcom/miui/maml/MiAdvancedView;->mPivotY:I

    .line 7
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    if-nez p1, :cond_9

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/MiAdvancedView;->onResume()V

    .line 9
    goto :goto_13

    .line 10
    :cond_9
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_10

    .line 13
    const/16 v0, 0x8

    .line 15
    if-ne p1, v0, :cond_13

    .line 17
    :cond_10
    invoke-virtual {p0}, Lcom/miui/maml/MiAdvancedView;->onPause()V

    .line 20
    :cond_13
    :goto_13
    return-void
.end method
