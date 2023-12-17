.class public Lcom/miui/maml/elements/ButtonScreenElement;
.super Lcom/miui/maml/elements/ElementGroup;
.source "ButtonScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ButtonScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Button"


# instance fields
.field private mIsAlignChildren:Z

.field private mListener:Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;

.field private mListenerName:Ljava/lang/String;

.field private mNormalElements:Lcom/miui/maml/elements/ElementGroup;

.field private mPressedElements:Lcom/miui/maml/elements/ElementGroup;

.field private mPreviousTapPositionX:F

.field private mPreviousTapPositionY:F

.field private mPreviousTapUpTime:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ButtonScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 7
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const-string v0, "alignChildren"

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    .line 16
    const-string v0, "listener"

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    .line 24
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    .line 27
    return-void
.end method

.method private showNormalElements()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mNormalElements:Lcom/miui/maml/elements/ElementGroup;

    .line 3
    if-eqz v0, :cond_8

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 9
    :cond_8
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPressedElements:Lcom/miui/maml/elements/ElementGroup;

    .line 11
    if-eqz v0, :cond_10

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 17
    :cond_10
    return-void
.end method

.method private showPressedElements()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPressedElements:Lcom/miui/maml/elements/ElementGroup;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_11

    .line 6
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mNormalElements:Lcom/miui/maml/elements/ElementGroup;

    .line 11
    if-eqz v0, :cond_18

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 17
    goto :goto_18

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mNormalElements:Lcom/miui/maml/elements/ElementGroup;

    .line 20
    if-eqz v0, :cond_18

    .line 22
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 25
    :cond_18
    :goto_18
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    .line 6
    if-nez v0, :cond_14

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    .line 11
    move-result v0

    .line 12
    neg-float v0, v0

    .line 13
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    .line 16
    move-result v1

    .line 17
    neg-float v1, v1

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 21
    :cond_14
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    .line 24
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 27
    return-void
.end method

.method public getParentLeft()F
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    .line 9
    move-result v0

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v0, v1

    .line 12
    :goto_b
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 14
    if-nez v2, :cond_10

    .line 16
    goto :goto_14

    .line 17
    :cond_10
    invoke-virtual {v2}, Lcom/miui/maml/elements/ElementGroup;->getParentLeft()F

    .line 20
    move-result v1

    .line 21
    :goto_14
    add-float/2addr v0, v1

    .line 22
    return v0
.end method

.method public getParentTop()F
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mIsAlignChildren:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    .line 9
    move-result v0

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v0, v1

    .line 12
    :goto_b
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 14
    if-nez v2, :cond_10

    .line 16
    goto :goto_14

    .line 17
    :cond_10
    invoke-virtual {v2}, Lcom/miui/maml/elements/ElementGroup;->getParentTop()F

    .line 20
    move-result v1

    .line 21
    :goto_14
    add-float/2addr v0, v1

    .line 22
    return v0
.end method

.method public init()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListener:Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;

    .line 6
    if-nez v0, :cond_29

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_29

    .line 16
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 18
    iget-object v1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 23
    move-result-object v0

    .line 24
    :try_start_17
    check-cast v0, Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;

    .line 26
    iput-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListener:Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_1b} :catch_1c

    .line 28
    goto :goto_29

    .line 29
    :catch_1c
    const-string v0, "button listener designated by the name is not actually a listener: "

    .line 31
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListenerName:Ljava/lang/String;

    .line 37
    const-string v2, "ButtonScreenElement"

    .line 39
    invoke-static {v0, v1, v2}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_29
    :goto_29
    invoke-direct {p0}, Lcom/miui/maml/elements/ButtonScreenElement;->showNormalElements()V

    .line 45
    return-void
.end method

.method public onActionCancel()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ButtonScreenElement;->resetState()V

    .line 7
    return-void
.end method

.method public onActionDown(FF)V
    .registers 7

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionDown(FF)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListener:Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;

    .line 6
    if-eqz v0, :cond_c

    .line 8
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 10
    invoke-interface {v0, v1}, Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;->onButtonDown(Ljava/lang/String;)Z

    .line 13
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    move-result-wide v0

    .line 17
    iget-wide v2, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    .line 19
    sub-long/2addr v0, v2

    .line 20
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 23
    move-result v2

    .line 24
    int-to-long v2, v2

    .line 25
    cmp-long v0, v0, v2

    .line 27
    if-gtz v0, :cond_49

    .line 29
    iget v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    .line 31
    sub-float v0, p1, v0

    .line 33
    iget v1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    .line 35
    sub-float v1, p2, v1

    .line 37
    mul-float/2addr v0, v0

    .line 38
    mul-float/2addr v1, v1

    .line 39
    add-float/2addr v1, v0

    .line 40
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 43
    move-result-object v0

    .line 44
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    .line 53
    move-result v0

    .line 54
    mul-int/2addr v0, v0

    .line 55
    int-to-float v0, v0

    .line 56
    cmpg-float v0, v1, v0

    .line 58
    if-gez v0, :cond_49

    .line 60
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListener:Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;

    .line 62
    if-eqz v0, :cond_44

    .line 64
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 66
    invoke-interface {v0, v1}, Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;->onButtonDoubleClick(Ljava/lang/String;)Z

    .line 69
    :cond_44
    const-string v0, "double"

    .line 71
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 74
    :cond_49
    iput p1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPreviousTapPositionX:F

    .line 76
    iput p2, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPreviousTapPositionY:F

    .line 78
    invoke-direct {p0}, Lcom/miui/maml/elements/ButtonScreenElement;->showPressedElements()V

    .line 81
    iget-object p1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPressedElements:Lcom/miui/maml/elements/ElementGroup;

    .line 83
    if-eqz p1, :cond_57

    .line 85
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->reset()V

    .line 88
    :cond_57
    return-void
.end method

.method public onActionUp()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionUp()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListener:Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;

    .line 6
    if-eqz v0, :cond_c

    .line 8
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 10
    invoke-interface {v0, v1}, Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;->onButtonUp(Ljava/lang/String;)Z

    .line 13
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPreviousTapUpTime:J

    .line 19
    invoke-virtual {p0}, Lcom/miui/maml/elements/ButtonScreenElement;->resetState()V

    .line 22
    return-void
.end method

.method public onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .registers 4

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Normal"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    new-instance v0, Lcom/miui/maml/elements/ElementGroup;

    .line 15
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 17
    invoke-direct {v0, p1, v1}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 20
    iput-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mNormalElements:Lcom/miui/maml/elements/ElementGroup;

    .line 22
    return-object v0

    .line 23
    :cond_16
    const-string v1, "Pressed"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_28

    .line 31
    new-instance v0, Lcom/miui/maml/elements/ElementGroup;

    .line 33
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 35
    invoke-direct {v0, p1, v1}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 38
    iput-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mPressedElements:Lcom/miui/maml/elements/ElementGroup;

    .line 40
    return-object v0

    .line 41
    :cond_28
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public resetState()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/ButtonScreenElement;->showNormalElements()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mNormalElements:Lcom/miui/maml/elements/ElementGroup;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->reset()V

    .line 11
    :cond_a
    return-void
.end method

.method public setListener(Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ButtonScreenElement;->mListener:Lcom/miui/maml/elements/ButtonScreenElement$ButtonActionListener;

    .line 3
    return-void
.end method
