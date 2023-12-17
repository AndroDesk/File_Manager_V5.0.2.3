.class Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;
.super Lcom/miui/maml/elements/ElementGroup;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SliderPoint"
.end annotation


# instance fields
.field private mCurrentStateElements:Lcom/miui/maml/elements/ScreenElement;

.field public mIsAlignChildren:Z

.field public mName:Ljava/lang/String;

.field public mNormalSound:Ljava/lang/String;

.field public mNormalStateElements:Lcom/miui/maml/elements/ElementGroup;

.field private mNormalStateTrigger:Lcom/miui/maml/CommandTrigger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mPointStateVar:Lcom/miui/maml/data/IndexedVariable;

.field public mPressedSound:Ljava/lang/String;

.field public mPressedStateElements:Lcom/miui/maml/elements/ElementGroup;

.field private mPressedStateTrigger:Lcom/miui/maml/CommandTrigger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mReachedSound:Ljava/lang/String;

.field private mReachedStateElements:Lcom/miui/maml/elements/ElementGroup;

.field private mReachedStateTrigger:Lcom/miui/maml/CommandTrigger;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mState:Lcom/miui/maml/elements/AdvancedSlider$State;

.field public final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 6
    sget-object p1, Lcom/miui/maml/elements/AdvancedSlider$State;->Invalid:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 8
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 10
    invoke-direct {p0, p2, p4}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .registers 7

    .line 1
    const-string p2, "name"

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    .line 9
    const-string p2, "normalSound"

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalSound:Ljava/lang/String;

    .line 17
    const-string p2, "pressedSound"

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedSound:Ljava/lang/String;

    .line 25
    const-string p2, "reachedSound"

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mReachedSound:Ljava/lang/String;

    .line 33
    const-string p2, "NormalState"

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    .line 38
    move-result-object p2

    .line 39
    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateTrigger:Lcom/miui/maml/CommandTrigger;

    .line 41
    const-string p2, "PressedState"

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    .line 46
    move-result-object p2

    .line 47
    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateTrigger:Lcom/miui/maml/CommandTrigger;

    .line 49
    const-string p2, "ReachedState"

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    .line 54
    move-result-object p2

    .line 55
    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Lcom/miui/maml/CommandTrigger;

    .line 57
    iget-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_5b

    .line 65
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    .line 74
    const-string v2, "."

    .line 76
    const-string v3, "state"

    .line 78
    invoke-static {v0, v1, v2, v3}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 85
    move-result-object v1

    .line 86
    const/4 v2, 0x1

    .line 87
    invoke-direct {p2, v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 90
    iput-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPointStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 92
    :cond_5b
    const-string p2, "alignChildren"

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 101
    move-result p1

    .line 102
    iput-boolean p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mIsAlignChildren:Z

    .line 104
    return-void
.end method

.method private loadTrigger(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_d

    .line 7
    iget-object p2, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 9
    invoke-static {p1, p2}, Lcom/miui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    return-object p1
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mIsAlignChildren:Z

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
    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mIsAlignChildren:Z

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
    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mIsAlignChildren:Z

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

.method public getState()Lcom/miui/maml/elements/AdvancedSlider$State;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 3
    return-object v0
.end method

.method public init()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lcom/miui/maml/elements/ElementGroup;

    .line 6
    if-eqz v0, :cond_b

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lcom/miui/maml/elements/ElementGroup;

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_13

    .line 17
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 20
    :cond_13
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lcom/miui/maml/elements/ElementGroup;

    .line 22
    if-eqz v0, :cond_1a

    .line 24
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 27
    :cond_1a
    sget-object v0, Lcom/miui/maml/elements/AdvancedSlider$State;->Normal:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 29
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 32
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateTrigger:Lcom/miui/maml/CommandTrigger;

    .line 34
    if-eqz v0, :cond_26

    .line 36
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->init()V

    .line 39
    :cond_26
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateTrigger:Lcom/miui/maml/CommandTrigger;

    .line 41
    if-eqz v0, :cond_2d

    .line 43
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->init()V

    .line 46
    :cond_2d
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Lcom/miui/maml/CommandTrigger;

    .line 48
    if-eqz v0, :cond_34

    .line 50
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->init()V

    .line 53
    :cond_34
    return-void
.end method

.method public onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .registers 4

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "NormalState"

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
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lcom/miui/maml/elements/ElementGroup;

    .line 22
    return-object v0

    .line 23
    :cond_16
    const-string v1, "PressedState"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_28

    .line 31
    new-instance v0, Lcom/miui/maml/elements/ElementGroup;

    .line 33
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 35
    invoke-direct {v0, p1, v1}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 38
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lcom/miui/maml/elements/ElementGroup;

    .line 40
    return-object v0

    .line 41
    :cond_28
    const-string v1, "ReachedState"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3a

    .line 49
    new-instance v0, Lcom/miui/maml/elements/ElementGroup;

    .line 51
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 53
    invoke-direct {v0, p1, v1}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 56
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lcom/miui/maml/elements/ElementGroup;

    .line 58
    return-object v0

    .line 59
    :cond_3a
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    .line 62
    move-result-object p1

    .line 63
    return-object p1
.end method

.method public onStateChange(Lcom/miui/maml/elements/AdvancedSlider$State;Lcom/miui/maml/elements/AdvancedSlider$State;)V
    .registers 7

    .line 1
    sget-object v0, Lcom/miui/maml/elements/AdvancedSlider$1;->$SwitchMap$com$miui$maml$elements$AdvancedSlider$State:[I

    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result p2

    .line 7
    aget p2, v0, p2

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p2, v1, :cond_42

    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x3

    .line 14
    if-eq p2, v2, :cond_1f

    .line 16
    if-eq p2, v3, :cond_12

    .line 18
    goto :goto_4e

    .line 19
    :cond_12
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateTrigger:Lcom/miui/maml/CommandTrigger;

    .line 21
    if-eqz p1, :cond_19

    .line 23
    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 26
    :cond_19
    const-string p1, "reached"

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 31
    goto :goto_4e

    .line 32
    :cond_1f
    iget-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateTrigger:Lcom/miui/maml/CommandTrigger;

    .line 34
    if-eqz p2, :cond_26

    .line 36
    invoke-virtual {p2}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 39
    :cond_26
    const-string p2, "pressed"

    .line 41
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 47
    move-result p1

    .line 48
    aget p1, v0, p1

    .line 50
    if-eq p1, v1, :cond_3c

    .line 52
    if-eq p1, v3, :cond_36

    .line 54
    goto :goto_4e

    .line 55
    :cond_36
    const-string p1, "pressed_reached"

    .line 57
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 60
    goto :goto_4e

    .line 61
    :cond_3c
    const-string p1, "pressed_normal"

    .line 63
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 66
    goto :goto_4e

    .line 67
    :cond_42
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateTrigger:Lcom/miui/maml/CommandTrigger;

    .line 69
    if-eqz p1, :cond_49

    .line 71
    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 74
    :cond_49
    const-string p1, "normal"

    .line 76
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 79
    :goto_4e
    return-void
.end method

.method public setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 3
    if-ne v0, p1, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 8
    const/4 v1, 0x0

    .line 9
    sget-object v2, Lcom/miui/maml/elements/AdvancedSlider$1;->$SwitchMap$com$miui$maml$elements$AdvancedSlider$State:[I

    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    move-result p1

    .line 15
    aget p1, v2, p1

    .line 17
    const/4 v2, 0x2

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eq p1, v3, :cond_47

    .line 22
    if-eq p1, v2, :cond_30

    .line 24
    const/4 v5, 0x3

    .line 25
    if-eq p1, v5, :cond_1d

    .line 27
    move p1, v4

    .line 28
    move v2, p1

    .line 29
    goto :goto_51

    .line 30
    :cond_1d
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mReachedStateElements:Lcom/miui/maml/elements/ElementGroup;

    .line 32
    if-eqz p1, :cond_23

    .line 34
    move-object v1, p1

    .line 35
    goto :goto_2a

    .line 36
    :cond_23
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lcom/miui/maml/elements/ElementGroup;

    .line 38
    if-eqz v1, :cond_28

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lcom/miui/maml/elements/ElementGroup;

    .line 43
    :goto_2a
    if-eqz p1, :cond_2e

    .line 45
    move p1, v3

    .line 46
    goto :goto_51

    .line 47
    :cond_2e
    move p1, v4

    .line 48
    goto :goto_51

    .line 49
    :cond_30
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lcom/miui/maml/elements/ElementGroup;

    .line 51
    if-eqz p1, :cond_36

    .line 53
    move-object v1, p1

    .line 54
    goto :goto_38

    .line 55
    :cond_36
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lcom/miui/maml/elements/ElementGroup;

    .line 57
    :goto_38
    if-eqz p1, :cond_44

    .line 59
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 61
    invoke-static {p1}, Lcom/miui/maml/elements/AdvancedSlider;->access$500(Lcom/miui/maml/elements/AdvancedSlider;)Z

    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_44

    .line 67
    move p1, v3

    .line 68
    goto :goto_45

    .line 69
    :cond_44
    move p1, v4

    .line 70
    :goto_45
    move v2, v3

    .line 71
    goto :goto_51

    .line 72
    :cond_47
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mNormalStateElements:Lcom/miui/maml/elements/ElementGroup;

    .line 74
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPressedStateElements:Lcom/miui/maml/elements/ElementGroup;

    .line 76
    if-eqz p1, :cond_4f

    .line 78
    move p1, v3

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    move p1, v4

    .line 81
    :goto_50
    move v2, v4

    .line 82
    :goto_51
    iget-object v5, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lcom/miui/maml/elements/ScreenElement;

    .line 84
    if-eq v5, v1, :cond_61

    .line 86
    if-eqz v5, :cond_5a

    .line 88
    invoke-virtual {v5, v4}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 91
    :cond_5a
    if-eqz v1, :cond_5f

    .line 93
    invoke-virtual {v1, v3}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 96
    :cond_5f
    iput-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mCurrentStateElements:Lcom/miui/maml/elements/ScreenElement;

    .line 98
    :cond_61
    if-eqz v1, :cond_68

    .line 100
    if-eqz p1, :cond_68

    .line 102
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->reset()V

    .line 105
    :cond_68
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mPointStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 107
    if-eqz p1, :cond_70

    .line 109
    int-to-double v1, v2

    .line 110
    invoke-virtual {p1, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 113
    :cond_70
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mState:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 115
    invoke-virtual {p0, v0, p1}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->onStateChange(Lcom/miui/maml/elements/AdvancedSlider$State;Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 118
    return-void
.end method
