.class public abstract Lcom/miui/maml/elements/AnimatedScreenElement;
.super Lcom/miui/maml/elements/ScreenElement;
.source "AnimatedScreenElement.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AnimatedScreenElement"

.field private static final S_PAINT_COLOR:I = -0x4c06f6


# instance fields
.field private mActualXVar:Lcom/miui/maml/data/IndexedVariable;

.field private mActualYVar:Lcom/miui/maml/data/IndexedVariable;

.field public mAlpha:I

.field public mAlphaProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

.field private mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

.field private mCamera:Landroid/graphics/Camera;

.field public mContentDescription:Ljava/lang/String;

.field public mContentDescriptionExp:Lcom/miui/maml/data/Expression;

.field private mFolmeMode:Z

.field public mHasContentDescription:Z

.field public mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mInterceptTouch:Z

.field private mIsHaptic:Z

.field private mListener:Lcom/miui/maml/folme/MamlTransitionListener;

.field private mListenerWrapper:Lcom/miui/maml/folme/TransitionListenerWrapper;

.field private mMarginBottom:F

.field private mMarginLeft:F

.field private mMarginRight:F

.field private mMarginTop:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field public mPivotXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mPivotYProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mPivotZProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mPositions:Lcom/miui/maml/animation/PositionAnimation;

.field public mPressed:Z

.field public mRotationProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mRotationXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mRotationYProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mRotationZProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mRotations:Lcom/miui/maml/animation/RotationAnimation;

.field private mScaleExpression:Lcom/miui/maml/data/Expression;

.field public mScaleXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mScaleYProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mScales:Lcom/miui/maml/animation/ScaleAnimation;

.field private mSizes:Lcom/miui/maml/animation/SizeAnimation;

.field public mTickListener:Lcom/miui/maml/elements/FunctionElement;

.field public mTintChanged:Z

.field public mTintColor:I

.field public mTintColorParser:Lcom/miui/maml/util/ColorParser;

.field public mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field public mTintMode:Landroid/graphics/PorterDuff$Mode;

.field public mTintModeExp:Lcom/miui/maml/data/Expression;

.field public mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lmiuix/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation
.end field

.field public mTouchable:Z

.field private mVirtualViewId:I

.field public mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mYProperty:Lcom/miui/maml/folme/PropertyWrapper;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 13
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 15
    const/4 p2, 0x1

    .line 16
    iput-boolean p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 18
    new-instance p2, Landroid/graphics/Matrix;

    .line 20
    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 25
    new-instance p2, Landroid/graphics/Paint;

    .line 27
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 32
    const/high16 p2, -0x80000000

    .line 34
    iput p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    .line 36
    new-instance p2, Lcom/miui/maml/folme/MamlTransitionListener;

    .line 38
    invoke-direct {p2, p0}, Lcom/miui/maml/folme/MamlTransitionListener;-><init>(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    .line 41
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListener:Lcom/miui/maml/folme/MamlTransitionListener;

    .line 43
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 46
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    .line 48
    if-eqz p1, :cond_36

    .line 50
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 52
    invoke-virtual {p1, p0}, Lcom/miui/maml/ScreenElementRoot;->addAccessibleElements(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    .line 55
    :cond_36
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 57
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 59
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 64
    const/high16 p2, 0x3f800000  # 1.0f

    .line 66
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 71
    const p2, -0x4c06f6

    .line 74
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    new-instance p1, Lcom/miui/maml/folme/TransitionListenerWrapper;

    .line 79
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListener:Lcom/miui/maml/folme/MamlTransitionListener;

    .line 81
    invoke-direct {p1, p2}, Lcom/miui/maml/folme/TransitionListenerWrapper;-><init>(Lcom/miui/maml/folme/MamlTransitionListener;)V

    .line 84
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListenerWrapper:Lcom/miui/maml/folme/TransitionListenerWrapper;

    .line 86
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeToImpl(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeSetToImpl(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeFromToImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;
    .registers 6

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p3

    .line 5
    invoke-static {p1, p3}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 8
    move-result-object p3

    .line 9
    if-nez p3, :cond_18

    .line 11
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_18

    .line 17
    invoke-virtual {p0, p2, p4}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p2

    .line 21
    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 24
    move-result-object p3

    .line 25
    :cond_18
    return-object p3
.end method

.method private folmeFromToImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p2}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, p3}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 24
    move-result-object p3

    .line 25
    instance-of v2, v0, Lcom/miui/maml/elements/StateElement;

    .line 27
    if-eqz v2, :cond_5d

    .line 29
    instance-of v2, v1, Lcom/miui/maml/elements/StateElement;

    .line 31
    if-nez v2, :cond_21

    .line 33
    goto :goto_5d

    .line 34
    :cond_21
    check-cast v0, Lcom/miui/maml/elements/StateElement;

    .line 36
    check-cast v1, Lcom/miui/maml/elements/StateElement;

    .line 38
    instance-of p1, p3, Lcom/miui/maml/elements/ConfigElement;

    .line 40
    if-eqz p1, :cond_2c

    .line 42
    check-cast p3, Lcom/miui/maml/elements/ConfigElement;

    .line 44
    goto :goto_2d

    .line 45
    :cond_2c
    const/4 p3, 0x0

    .line 46
    :goto_2d
    if-eqz p3, :cond_36

    .line 48
    :try_start_2f
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListenerWrapper:Lcom/miui/maml/folme/TransitionListenerWrapper;

    .line 50
    invoke-virtual {p3, p1}, Lcom/miui/maml/elements/ConfigElement;->getAnimConfig(Lcom/miui/maml/folme/TransitionListenerWrapper;)[Lmiuix/animation/base/AnimConfig;

    .line 53
    move-result-object p1

    .line 54
    goto :goto_39

    .line 55
    :cond_36
    const/4 p1, 0x0

    .line 56
    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    .line 58
    :goto_39
    const-string p2, "from"

    .line 60
    invoke-virtual {v0, p2}, Lcom/miui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;

    .line 63
    move-result-object p2

    .line 64
    const-string p3, "to"

    .line 66
    invoke-virtual {v1, p3}, Lcom/miui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;

    .line 69
    move-result-object p3

    .line 70
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setupToProperties(Lcom/miui/maml/elements/StateElement;)V

    .line 73
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;

    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 84
    move-result-object v0

    .line 85
    invoke-interface {v0, p2, p3, p1}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_57} :catch_58

    .line 88
    goto :goto_5c

    .line 89
    :catch_58
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    :goto_5c
    return-void

    .line 94
    :cond_5d
    :goto_5d
    new-instance p3, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string v0, "folmeFromTo: wrong state name "

    .line 101
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string p1, " "

    .line 109
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    const-string p2, "AnimatedScreenElement"

    .line 121
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method private folmeSetToImpl(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/miui/maml/elements/StateElement;

    .line 11
    if-nez v1, :cond_23

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v1, "folmeSetTo: wrong state name "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    const-string v0, "AnimatedScreenElement"

    .line 32
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 36
    :cond_23
    check-cast v0, Lcom/miui/maml/elements/StateElement;

    .line 38
    :try_start_25
    const-string p1, "setTo"

    .line 40
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;

    .line 47
    move-result-object v0

    .line 48
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 55
    move-result-object v0

    .line 56
    invoke-interface {v0, p1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3a} :catch_3b

    .line 59
    goto :goto_3f

    .line 60
    :catch_3b
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    :goto_3f
    return-void
.end method

.method private folmeToImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p2}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 16
    move-result-object p2

    .line 17
    instance-of v1, v0, Lcom/miui/maml/elements/StateElement;

    .line 19
    if-nez v1, :cond_2b

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v0, "folmeTo: wrong state name "

    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    const-string p2, "AnimatedScreenElement"

    .line 40
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void

    .line 44
    :cond_2b
    check-cast v0, Lcom/miui/maml/elements/StateElement;

    .line 46
    instance-of p1, p2, Lcom/miui/maml/elements/ConfigElement;

    .line 48
    if-eqz p1, :cond_34

    .line 50
    check-cast p2, Lcom/miui/maml/elements/ConfigElement;

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    const/4 p2, 0x0

    .line 54
    :goto_35
    if-eqz p2, :cond_3e

    .line 56
    :try_start_37
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListenerWrapper:Lcom/miui/maml/folme/TransitionListenerWrapper;

    .line 58
    invoke-virtual {p2, p1}, Lcom/miui/maml/elements/ConfigElement;->getAnimConfig(Lcom/miui/maml/folme/TransitionListenerWrapper;)[Lmiuix/animation/base/AnimConfig;

    .line 61
    move-result-object p1

    .line 62
    goto :goto_41

    .line 63
    :cond_3e
    const/4 p1, 0x0

    .line 64
    new-array p1, p1, [Lmiuix/animation/base/AnimConfig;

    .line 66
    :goto_41
    const-string p2, "to"

    .line 68
    invoke-virtual {v0, p2}, Lcom/miui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;

    .line 71
    move-result-object p2

    .line 72
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->setupToProperties(Lcom/miui/maml/elements/StateElement;)V

    .line 75
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;

    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v0, p2, p1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_59} :catch_5a

    .line 90
    goto :goto_5e

    .line 91
    :catch_5a
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    :goto_5e
    return-void
.end method

.method private handleCancel()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 8
    if-eqz v0, :cond_14

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 13
    const-string v0, "cancel"

    .line 15
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    .line 21
    :cond_14
    return-void
.end method

.method private isInMainThread()Z
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 8
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_c

    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_c
    const/4 v0, 0x1

    .line 14
    return v0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 8
    move-result-object v8

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_16c

    .line 12
    const-string v3, "scale"

    .line 14
    invoke-direct {v0, v8, v1, v3, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 17
    move-result-object v3

    .line 18
    iput-object v3, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lcom/miui/maml/data/Expression;

    .line 20
    const-string v3, "x"

    .line 22
    const-string v4, "left"

    .line 24
    invoke-direct {v0, v8, v1, v3, v4}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 27
    move-result-object v3

    .line 28
    const-string v4, "y"

    .line 30
    const-string v5, "top"

    .line 32
    invoke-direct {v0, v8, v1, v4, v5}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 35
    move-result-object v4

    .line 36
    const-string v5, "w"

    .line 38
    const-string v6, "width"

    .line 40
    invoke-direct {v0, v8, v1, v5, v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 43
    move-result-object v5

    .line 44
    const-string v6, "h"

    .line 46
    const-string v7, "height"

    .line 48
    invoke-direct {v0, v8, v1, v6, v7}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 51
    move-result-object v6

    .line 52
    const-string v7, "angle"

    .line 54
    const-string v9, "rotation"

    .line 56
    invoke-direct {v0, v8, v1, v7, v9}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 59
    move-result-object v7

    .line 60
    const-string v9, "centerX"

    .line 62
    const-string v10, "pivotX"

    .line 64
    invoke-direct {v0, v8, v1, v9, v10}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 67
    move-result-object v9

    .line 68
    const-string v10, "centerY"

    .line 70
    const-string v11, "pivotY"

    .line 72
    invoke-direct {v0, v8, v1, v10, v11}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 75
    move-result-object v10

    .line 76
    const-string v11, "alpha"

    .line 78
    invoke-direct {v0, v8, v1, v11, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 81
    move-result-object v11

    .line 82
    const-string v12, "scaleX"

    .line 84
    invoke-direct {v0, v8, v1, v12, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 87
    move-result-object v12

    .line 88
    const-string v13, "scaleY"

    .line 90
    invoke-direct {v0, v8, v1, v13, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 93
    move-result-object v2

    .line 94
    const-string v13, "angleX"

    .line 96
    const-string v14, "rotationX"

    .line 98
    invoke-direct {v0, v8, v1, v13, v14}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 101
    move-result-object v13

    .line 102
    const-string v14, "angleY"

    .line 104
    const-string v15, "rotationY"

    .line 106
    invoke-direct {v0, v8, v1, v14, v15}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 109
    move-result-object v14

    .line 110
    const-string v15, "angleZ"

    .line 112
    move-object/from16 v16, v2

    .line 114
    const-string v2, "rotationZ"

    .line 116
    invoke-direct {v0, v8, v1, v15, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 119
    move-result-object v2

    .line 120
    const-string v15, "centerZ"

    .line 122
    move-object/from16 v17, v2

    .line 124
    const-string v2, "pivotZ"

    .line 126
    invoke-direct {v0, v8, v1, v15, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 129
    move-result-object v2

    .line 130
    iget-boolean v15, v0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 132
    if-eqz v15, :cond_ba

    .line 134
    new-instance v15, Lcom/miui/maml/data/IndexedVariable;

    .line 136
    move-object/from16 v18, v2

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    move-object/from16 v19, v3

    .line 145
    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 147
    move-object/from16 v20, v4

    .line 149
    const-string v4, "."

    .line 151
    move-object/from16 v21, v5

    .line 153
    const-string v5, "actual_x"

    .line 155
    invoke-static {v2, v3, v4, v5}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    move-result-object v2

    .line 159
    const/4 v3, 0x1

    .line 160
    invoke-direct {v15, v2, v8, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 163
    iput-object v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mActualXVar:Lcom/miui/maml/data/IndexedVariable;

    .line 165
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    .line 169
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    iget-object v5, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 174
    const-string v15, "actual_y"

    .line 176
    invoke-static {v3, v5, v4, v15}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    move-result-object v3

    .line 180
    const/4 v4, 0x1

    .line 181
    invoke-direct {v2, v3, v8, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 184
    iput-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mActualYVar:Lcom/miui/maml/data/IndexedVariable;

    .line 186
    goto :goto_c3

    .line 187
    :cond_ba
    move-object/from16 v18, v2

    .line 189
    move-object/from16 v19, v3

    .line 191
    move-object/from16 v20, v4

    .line 193
    move-object/from16 v21, v5

    .line 195
    const/4 v4, 0x1

    .line 196
    :goto_c3
    const-string v2, "touchable"

    .line 198
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    move-result-object v2

    .line 202
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 205
    move-result v2

    .line 206
    iput-boolean v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    .line 208
    const-string v2, "interceptTouch"

    .line 210
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    move-result-object v2

    .line 214
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 217
    move-result v2

    .line 218
    iput-boolean v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    .line 220
    const-string v2, "haptic"

    .line 222
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    move-result-object v2

    .line 226
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 229
    move-result v2

    .line 230
    iput-boolean v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    .line 232
    const-string v2, "contentDescription"

    .line 234
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    move-result-object v2

    .line 238
    iput-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    .line 240
    const-string v2, "contentDescriptionExp"

    .line 242
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    move-result-object v2

    .line 246
    invoke-static {v8, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 249
    move-result-object v2

    .line 250
    iput-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lcom/miui/maml/data/Expression;

    .line 252
    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    .line 254
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 257
    move-result v2

    .line 258
    const/4 v3, 0x0

    .line 259
    if-eqz v2, :cond_10a

    .line 261
    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lcom/miui/maml/data/Expression;

    .line 263
    if-eqz v2, :cond_109

    .line 265
    goto :goto_10a

    .line 266
    :cond_109
    move v4, v3

    .line 267
    :cond_10a
    :goto_10a
    iput-boolean v4, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    .line 269
    const-string v2, "marginLeft"

    .line 271
    const/4 v4, 0x0

    .line 272
    invoke-static {v1, v2, v4}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 275
    move-result v2

    .line 276
    iput v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginLeft:F

    .line 278
    const-string v2, "marginRight"

    .line 280
    invoke-static {v1, v2, v4}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 283
    move-result v2

    .line 284
    iput v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginRight:F

    .line 286
    const-string v2, "marginTop"

    .line 288
    invoke-static {v1, v2, v4}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 291
    move-result v2

    .line 292
    iput v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginTop:F

    .line 294
    const-string v2, "marginBottom"

    .line 296
    invoke-static {v1, v2, v4}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 299
    move-result v2

    .line 300
    iput v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginBottom:F

    .line 302
    const-string v2, "tint"

    .line 304
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    move-result-object v2

    .line 308
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 311
    move-result v4

    .line 312
    if-nez v4, :cond_140

    .line 314
    new-instance v4, Lcom/miui/maml/util/ColorParser;

    .line 316
    invoke-direct {v4, v8, v2}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    .line 319
    iput-object v4, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorParser:Lcom/miui/maml/util/ColorParser;

    .line 321
    :cond_140
    const-string v2, "tintmode"

    .line 323
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    move-result-object v2

    .line 327
    invoke-static {v8, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 330
    move-result-object v2

    .line 331
    iput-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintModeExp:Lcom/miui/maml/data/Expression;

    .line 333
    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorParser:Lcom/miui/maml/util/ColorParser;

    .line 335
    if-eqz v2, :cond_154

    .line 337
    invoke-virtual {v2}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 340
    move-result v3

    .line 341
    :cond_154
    iput v3, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 343
    const-string v2, "folmeMode"

    .line 345
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    move-result-object v1

    .line 349
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 352
    move-result v1

    .line 353
    iput-boolean v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mFolmeMode:Z

    .line 355
    move-object v15, v9

    .line 356
    move-object/from16 v4, v19

    .line 358
    move-object v9, v6

    .line 359
    move-object/from16 v19, v18

    .line 361
    move-object/from16 v18, v10

    .line 363
    move-object v10, v7

    .line 364
    goto :goto_180

    .line 365
    :cond_16c
    move-object v4, v2

    .line 366
    move-object v9, v4

    .line 367
    move-object v10, v9

    .line 368
    move-object v11, v10

    .line 369
    move-object v12, v11

    .line 370
    move-object v13, v12

    .line 371
    move-object v14, v13

    .line 372
    move-object v15, v14

    .line 373
    move-object/from16 v16, v15

    .line 375
    move-object/from16 v17, v16

    .line 377
    move-object/from16 v18, v17

    .line 379
    move-object/from16 v19, v18

    .line 381
    move-object/from16 v20, v19

    .line 383
    move-object/from16 v21, v20

    .line 385
    :goto_180
    new-instance v6, Lcom/miui/maml/folme/PropertyWrapper;

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    .line 389
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 394
    const-string v3, ".x"

    .line 396
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 399
    move-result-object v2

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 403
    move-result v5

    .line 404
    const-wide/16 v22, 0x0

    .line 406
    move-object v1, v6

    .line 407
    move-object v3, v8

    .line 408
    move-object/from16 p1, v15

    .line 410
    move-object v15, v6

    .line 411
    move-wide/from16 v6, v22

    .line 413
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 416
    iput-object v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 418
    new-instance v15, Lcom/miui/maml/folme/PropertyWrapper;

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    .line 422
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 427
    const-string v3, ".y"

    .line 429
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    move-result-object v2

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 436
    move-result v5

    .line 437
    const-wide/16 v6, 0x0

    .line 439
    move-object v1, v15

    .line 440
    move-object v3, v8

    .line 441
    move-object/from16 v4, v20

    .line 443
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 446
    iput-object v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 448
    new-instance v15, Lcom/miui/maml/folme/PropertyWrapper;

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    .line 452
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 457
    const-string v3, ".w"

    .line 459
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 462
    move-result-object v2

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 466
    move-result v5

    .line 467
    const-wide/high16 v22, -0x4010000000000000L  # -1.0

    .line 469
    move-object v1, v15

    .line 470
    move-object v3, v8

    .line 471
    move-object/from16 v4, v21

    .line 473
    move-wide/from16 v6, v22

    .line 475
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 478
    iput-object v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 480
    new-instance v15, Lcom/miui/maml/folme/PropertyWrapper;

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    .line 484
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 489
    const-string v3, ".h"

    .line 491
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 494
    move-result-object v2

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 498
    move-result v5

    .line 499
    move-object v1, v15

    .line 500
    move-object v3, v8

    .line 501
    move-object v4, v9

    .line 502
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 505
    iput-object v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 507
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    .line 511
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 516
    const-string v3, ".rotation"

    .line 518
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 521
    move-result-object v2

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 525
    move-result v5

    .line 526
    const-wide/16 v6, 0x0

    .line 528
    move-object v1, v9

    .line 529
    move-object v3, v8

    .line 530
    move-object v4, v10

    .line 531
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 534
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 536
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    .line 540
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 545
    const-string v3, ".alpha"

    .line 547
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 550
    move-result-object v2

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 554
    move-result v5

    .line 555
    const-wide v6, 0x406fe00000000000L  # 255.0

    .line 560
    move-object v1, v9

    .line 561
    move-object v3, v8

    .line 562
    move-object v4, v11

    .line 563
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 566
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphaProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 568
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    .line 572
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 577
    const-string v3, ".rotationX"

    .line 579
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 582
    move-result-object v2

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 586
    move-result v5

    .line 587
    const-wide/16 v10, 0x0

    .line 589
    move-object v1, v9

    .line 590
    move-object v3, v8

    .line 591
    move-object v4, v13

    .line 592
    move-wide v6, v10

    .line 593
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 596
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 598
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    .line 602
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 607
    const-string v3, ".rotationY"

    .line 609
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 612
    move-result-object v2

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 616
    move-result v5

    .line 617
    move-object v1, v9

    .line 618
    move-object v3, v8

    .line 619
    move-object v4, v14

    .line 620
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 623
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 625
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    .line 629
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 634
    const-string v3, ".rotationZ"

    .line 636
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 639
    move-result-object v2

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 643
    move-result v5

    .line 644
    move-object v1, v9

    .line 645
    move-object v3, v8

    .line 646
    move-object/from16 v4, v17

    .line 648
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 651
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 653
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    .line 657
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 662
    const-string v3, ".scaleX"

    .line 664
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 667
    move-result-object v2

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 671
    move-result v5

    .line 672
    const-wide/high16 v10, 0x3ff0000000000000L  # 1.0

    .line 674
    move-object v1, v9

    .line 675
    move-object v3, v8

    .line 676
    move-object v4, v12

    .line 677
    move-wide v6, v10

    .line 678
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 681
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 683
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    .line 687
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 690
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 692
    const-string v3, ".scaleY"

    .line 694
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 697
    move-result-object v2

    .line 698
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 701
    move-result v5

    .line 702
    move-object v1, v9

    .line 703
    move-object v3, v8

    .line 704
    move-object/from16 v4, v16

    .line 706
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 709
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 711
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    .line 715
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 718
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 720
    const-string v3, ".tintColor"

    .line 722
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 725
    move-result-object v2

    .line 726
    const/4 v4, 0x0

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 730
    move-result v5

    .line 731
    iget v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 733
    int-to-double v6, v1

    .line 734
    move-object v1, v9

    .line 735
    move-object v3, v8

    .line 736
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 739
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 741
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    .line 745
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 748
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 750
    const-string v3, ".pivotX"

    .line 752
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 755
    move-result-object v2

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 759
    move-result v5

    .line 760
    const-wide/16 v10, 0x0

    .line 762
    move-object v1, v9

    .line 763
    move-object v3, v8

    .line 764
    move-object/from16 v4, p1

    .line 766
    move-wide v6, v10

    .line 767
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 770
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 772
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    .line 776
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 779
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 781
    const-string v3, ".pivotY"

    .line 783
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 786
    move-result-object v2

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 790
    move-result v5

    .line 791
    move-object v1, v9

    .line 792
    move-object v3, v8

    .line 793
    move-object/from16 v4, v18

    .line 795
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 798
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 800
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    .line 804
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 807
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 809
    const-string v3, ".pivotZ"

    .line 811
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 814
    move-result-object v2

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 818
    move-result v5

    .line 819
    move-object v1, v9

    .line 820
    move-object v3, v8

    .line 821
    move-object/from16 v4, v19

    .line 823
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 826
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 828
    return-void
.end method

.method private setupToProperties(Lcom/miui/maml/elements/StateElement;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/miui/maml/elements/StateElement;->getProperties()Ljava/util/Collection;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_20

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lcom/miui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_8

    .line 27
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 29
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 32
    goto :goto_8

    .line 33
    :cond_20
    return-void
.end method


# virtual methods
.method public doRenderWithTranslation(Landroid/graphics/Canvas;)V
    .registers 13

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 7
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotationX()F

    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotationY()F

    .line 17
    move-result v2

    .line 18
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotationZ()F

    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    cmpl-float v5, v1, v4

    .line 25
    if-nez v5, :cond_22

    .line 27
    cmpl-float v5, v2, v4

    .line 29
    if-nez v5, :cond_22

    .line 31
    cmpl-float v5, v3, v4

    .line 33
    if-eqz v5, :cond_50

    .line 35
    :cond_22
    iget-object v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 37
    if-nez v5, :cond_2d

    .line 39
    new-instance v5, Landroid/graphics/Camera;

    .line 41
    invoke-direct {v5}, Landroid/graphics/Camera;-><init>()V

    .line 44
    iput-object v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 46
    :cond_2d
    iget-object v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 48
    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 51
    iget-object v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 53
    invoke-virtual {v5, v1, v2, v3}, Landroid/graphics/Camera;->rotate(FFF)V

    .line 56
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotZ()F

    .line 59
    move-result v1

    .line 60
    cmpl-float v2, v1, v4

    .line 62
    if-eqz v2, :cond_44

    .line 64
    iget-object v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 66
    invoke-virtual {v2, v4, v4, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 69
    :cond_44
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 71
    iget-object v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 73
    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 76
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 78
    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 81
    :cond_50
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotation()F

    .line 84
    move-result v1

    .line 85
    cmpl-float v2, v1, v4

    .line 87
    if-eqz v2, :cond_5d

    .line 89
    iget-object v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 91
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 94
    :cond_5d
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleX()F

    .line 97
    move-result v1

    .line 98
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleY()F

    .line 101
    move-result v2

    .line 102
    const/high16 v3, 0x3f800000  # 1.0f

    .line 104
    cmpl-float v5, v1, v3

    .line 106
    if-nez v5, :cond_6f

    .line 108
    cmpl-float v3, v2, v3

    .line 110
    if-eqz v3, :cond_74

    .line 112
    :cond_6f
    iget-object v3, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 114
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 117
    :cond_74
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getX()F

    .line 120
    move-result v1

    .line 121
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 124
    move-result v2

    .line 125
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotX()F

    .line 128
    move-result v3

    .line 129
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    .line 132
    move-result v5

    .line 133
    sub-float v5, v1, v5

    .line 135
    sub-float/2addr v3, v5

    .line 136
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotY()F

    .line 139
    move-result v5

    .line 140
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    .line 143
    move-result v6

    .line 144
    sub-float v6, v2, v6

    .line 146
    sub-float/2addr v5, v6

    .line 147
    iget-object v6, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 149
    neg-float v7, v3

    .line 150
    neg-float v8, v5

    .line 151
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 154
    iget-object v6, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 156
    add-float/2addr v3, v1

    .line 157
    add-float/2addr v5, v2

    .line 158
    invoke-virtual {v6, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 161
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 163
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->doRender(Landroid/graphics/Canvas;)V

    .line 169
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 171
    iget-boolean v1, v1, Lcom/miui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    .line 173
    if-eqz v1, :cond_d0

    .line 175
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 178
    move-result v1

    .line 179
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 182
    move-result v2

    .line 183
    cmpl-float v3, v1, v4

    .line 185
    if-lez v3, :cond_d0

    .line 187
    cmpl-float v3, v2, v4

    .line 189
    if-lez v3, :cond_d0

    .line 191
    invoke-virtual {p0, v4, v1}, Lcom/miui/maml/elements/ScreenElement;->getLeft(FF)F

    .line 194
    move-result v6

    .line 195
    invoke-virtual {p0, v4, v2}, Lcom/miui/maml/elements/ScreenElement;->getTop(FF)F

    .line 198
    move-result v7

    .line 199
    add-float v8, v6, v1

    .line 201
    add-float v9, v7, v2

    .line 203
    iget-object v10, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 205
    move-object v5, p1

    .line 206
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 209
    :cond_d0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 212
    return-void
.end method

.method public doTick(J)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    .line 4
    iget-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 6
    if-eqz p1, :cond_23

    .line 8
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mActualXVar:Lcom/miui/maml/data/IndexedVariable;

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getX()F

    .line 13
    move-result p2

    .line 14
    float-to-double v0, p2

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 18
    move-result-wide v0

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 22
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mActualYVar:Lcom/miui/maml/data/IndexedVariable;

    .line 24
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 27
    move-result p2

    .line 28
    float-to-double v0, p2

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 32
    move-result-wide v0

    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 36
    :cond_23
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->evaluateAlpha()I

    .line 39
    move-result p1

    .line 40
    iput p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 42
    const/4 p2, 0x0

    .line 43
    if-gez p1, :cond_2d

    .line 45
    move p1, p2

    .line 46
    :cond_2d
    iput p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 48
    iput-boolean p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 50
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTintColor()I

    .line 53
    move-result p1

    .line 54
    iget p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 56
    const/4 v0, 0x1

    .line 57
    if-eq p1, p2, :cond_3e

    .line 59
    iput-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 61
    iput p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 63
    :cond_3e
    iget p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 65
    if-eqz p1, :cond_6f

    .line 67
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 69
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintModeExp:Lcom/miui/maml/data/Expression;

    .line 71
    if-eqz p2, :cond_53

    .line 73
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 76
    move-result-wide p1

    .line 77
    double-to-int p1, p1

    .line 78
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 80
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 83
    move-result-object p1

    .line 84
    :cond_53
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 86
    if-eq p2, p1, :cond_5b

    .line 88
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 90
    iput-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 92
    :cond_5b
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 94
    if-nez p2, :cond_61

    .line 96
    iput-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 98
    :cond_61
    iget-boolean p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 100
    if-eqz p2, :cond_72

    .line 102
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    .line 104
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 106
    invoke-direct {p2, v0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 109
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 111
    goto :goto_72

    .line 112
    :cond_6f
    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 115
    :cond_72
    :goto_72
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTickListener:Lcom/miui/maml/elements/FunctionElement;

    .line 117
    if-eqz p1, :cond_79

    .line 119
    invoke-virtual {p1}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    .line 122
    :cond_79
    return-void
.end method

.method public evaluateAlpha()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphaProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 6
    move-result-wide v0

    .line 7
    double-to-long v0, v0

    .line 8
    long-to-int v0, v0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1d

    .line 15
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

    .line 17
    if-eqz v1, :cond_17

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/animation/AlphaAnimation;->getAlpha()I

    .line 22
    move-result v1

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    const/16 v1, 0xff

    .line 26
    :goto_19
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    .line 29
    move-result v0

    .line 30
    :cond_1d
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 32
    if-eqz v1, :cond_3a

    .line 34
    instance-of v2, v1, Lcom/miui/maml/elements/LayerScreenElement;

    .line 36
    if-nez v2, :cond_3a

    .line 38
    instance-of v2, v1, Lcom/miui/maml/elements/ElementGroup;

    .line 40
    if-eqz v2, :cond_30

    .line 42
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->isLayered()Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_30

    .line 48
    goto :goto_3a

    .line 49
    :cond_30
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 51
    invoke-virtual {v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAlpha()I

    .line 54
    move-result v1

    .line 55
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    .line 58
    move-result v0

    .line 59
    :cond_3a
    :goto_3a
    return v0
.end method

.method public finish()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->finish()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 15
    :try_start_e
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 17
    if-eqz v0, :cond_20

    .line 19
    const/4 v0, 0x1

    .line 20
    new-array v0, v0, [Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 22
    const/4 v1, 0x0

    .line 23
    aput-object p0, v0, v1

    .line 25
    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_1c

    .line 28
    goto :goto_20

    .line 29
    :catch_1c
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    :cond_20
    :goto_20
    return-void
.end method

.method public folmeCancel([Lcom/miui/maml/data/Expression;)V
    .registers 7

    .line 1
    if-eqz p1, :cond_3c

    .line 3
    :try_start_2
    new-instance v0, Landroidx/collection/b;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    .line 9
    array-length v2, p1

    .line 10
    :goto_9
    if-ge v1, v2, :cond_22

    .line 12
    aget-object v3, p1, v1

    .line 14
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Lcom/miui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_1f

    .line 24
    invoke-virtual {v0, v3}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v4, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 29
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 32
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_9

    .line 35
    :cond_22
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;

    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 46
    move-result-object p1

    .line 47
    iget v1, v0, Landroidx/collection/b;->c:I

    .line 49
    new-array v1, v1, [Lmiuix/animation/property/FloatProperty;

    .line 51
    invoke-virtual {v0, v1}, Landroidx/collection/b;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    check-cast v0, [Lmiuix/animation/property/FloatProperty;

    .line 57
    invoke-interface {p1, v0}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    .line 60
    goto :goto_55

    .line 61
    :cond_3c
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;

    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 76
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 78
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_50} :catch_51

    .line 81
    goto :goto_55

    .line 82
    :catch_51
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    :goto_55
    return-void
.end method

.method public folmeFromTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/miui/maml/elements/AnimatedScreenElement$3;

    .line 11
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/maml/elements/AnimatedScreenElement$3;-><init>(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-wide/16 p1, 0x0

    .line 16
    invoke-virtual {v0, v1, p0, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 19
    return-void
.end method

.method public folmeSetTo(Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/miui/maml/elements/AnimatedScreenElement$2;

    .line 11
    invoke-direct {v1, p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement$2;-><init>(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    .line 14
    const-wide/16 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 19
    return-void
.end method

.method public folmeTo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/miui/maml/elements/AnimatedScreenElement$1;

    .line 11
    invoke-direct {v1, p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement$1;-><init>(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-wide/16 p1, 0x0

    .line 16
    invoke-virtual {v0, v1, p0, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 19
    return-void
.end method

.method public getAbsoluteLeft()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 7
    if-nez v1, :cond_a

    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_e

    .line 11
    :cond_a
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getParentLeft()F

    .line 14
    move-result v1

    .line 15
    :goto_e
    add-float/2addr v0, v1

    .line 16
    return v0
.end method

.method public getAbsoluteTop()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 7
    if-nez v1, :cond_a

    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_e

    .line 11
    :cond_a
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getParentTop()F

    .line 14
    move-result v1

    .line 15
    :goto_e
    add-float/2addr v0, v1

    .line 16
    return v0
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 3
    return v0
.end method

.method public getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 3
    if-nez v0, :cond_e

    .line 5
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    .line 7
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/miui/maml/folme/AnimatedTarget;

    .line 13
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 15
    :cond_e
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 17
    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_1a

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_19

    .line 11
    const-string v0, "element.getContentDescription() == null "

    .line 13
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 19
    const-string v2, "AnimatedScreenElement"

    .line 21
    invoke-static {v0, v1, v2}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v0, ""

    .line 26
    :cond_19
    return-object v0

    .line 27
    :cond_1a
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    .line 29
    return-object v0
.end method

.method public getHeight()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeightRaw()F

    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getHeightRaw()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_16

    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    .line 16
    if-eqz v1, :cond_16

    .line 18
    invoke-virtual {v1}, Lcom/miui/maml/animation/SizeAnimation;->getHeight()D

    .line 21
    move-result-wide v0

    .line 22
    double-to-float v0, v0

    .line 23
    :cond_16
    return v0
.end method

.method public getLeft()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getX()F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->getLeft(FF)F

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final getMarginBottom()F
    .registers 3

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginBottom:F

    .line 3
    float-to-double v0, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final getMarginLeft()F
    .registers 3

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginLeft:F

    .line 3
    float-to-double v0, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final getMarginRight()F
    .registers 3

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginRight:F

    .line 3
    float-to-double v0, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public final getMarginTop()F
    .registers 3

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginTop:F

    .line 3
    float-to-double v0, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 3
    return-object v0
.end method

.method public getPivotX()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getPivotY()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getPivotZ()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getRotation()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_16

    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotations:Lcom/miui/maml/animation/RotationAnimation;

    .line 16
    if-eqz v1, :cond_16

    .line 18
    invoke-virtual {v1}, Lcom/miui/maml/animation/RotationAnimation;->getAngle()F

    .line 21
    move-result v1

    .line 22
    add-float/2addr v0, v1

    .line 23
    :cond_16
    return v0
.end method

.method public getRotationX()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    return v0
.end method

.method public getRotationY()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    return v0
.end method

.method public getRotationZ()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    return v0
.end method

.method public getScaleX()F
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_21

    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lcom/miui/maml/data/Expression;

    .line 16
    if-eqz v1, :cond_16

    .line 18
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 21
    move-result-wide v0

    .line 22
    double-to-float v0, v0

    .line 23
    :cond_16
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    .line 25
    if-eqz v1, :cond_21

    .line 27
    float-to-double v2, v0

    .line 28
    invoke-virtual {v1}, Lcom/miui/maml/animation/ScaleAnimation;->getScaleX()D

    .line 31
    move-result-wide v0

    .line 32
    mul-double/2addr v0, v2

    .line 33
    double-to-float v0, v0

    .line 34
    :cond_21
    return v0
.end method

.method public getScaleY()F
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_21

    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lcom/miui/maml/data/Expression;

    .line 16
    if-eqz v1, :cond_16

    .line 18
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 21
    move-result-wide v0

    .line 22
    double-to-float v0, v0

    .line 23
    :cond_16
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    .line 25
    if-eqz v1, :cond_21

    .line 27
    float-to-double v2, v0

    .line 28
    invoke-virtual {v1}, Lcom/miui/maml/animation/ScaleAnimation;->getScaleY()D

    .line 31
    move-result-wide v0

    .line 32
    mul-double/2addr v0, v2

    .line 33
    double-to-float v0, v0

    .line 34
    :cond_21
    return v0
.end method

.method public getTintColor()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 6
    move-result-wide v0

    .line 7
    double-to-long v0, v0

    .line 8
    long-to-int v0, v0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_16

    .line 15
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorParser:Lcom/miui/maml/util/ColorParser;

    .line 17
    if-eqz v1, :cond_16

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 22
    move-result v0

    .line 23
    :cond_16
    return v0
.end method

.method public getTop()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->getTop(FF)F

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getWidth()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidthRaw()F

    .line 4
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getWidthRaw()F
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_16

    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    .line 16
    if-eqz v1, :cond_16

    .line 18
    invoke-virtual {v1}, Lcom/miui/maml/animation/SizeAnimation;->getWidth()D

    .line 21
    move-result-wide v0

    .line 22
    double-to-float v0, v0

    .line 23
    :cond_16
    return v0
.end method

.method public getX()F
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_18

    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    .line 16
    if-eqz v1, :cond_18

    .line 18
    float-to-double v2, v0

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/animation/PositionAnimation;->getX()D

    .line 22
    move-result-wide v0

    .line 23
    add-double/2addr v0, v2

    .line 24
    double-to-float v0, v0

    .line 25
    :cond_18
    float-to-double v0, v0

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 29
    move-result v0

    .line 30
    return v0
.end method

.method public getY()F
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_18

    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    .line 16
    if-eqz v1, :cond_18

    .line 18
    float-to-double v2, v0

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/animation/PositionAnimation;->getY()D

    .line 22
    move-result-wide v0

    .line 23
    add-double/2addr v0, v2

    .line 24
    double-to-float v0, v0

    .line 25
    :cond_18
    float-to-double v0, v0

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 29
    move-result v0

    .line 30
    return v0
.end method

.method public init()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->initProperties()V

    .line 13
    :cond_c
    return-void
.end method

.method public initProperties()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 6
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 11
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 16
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 21
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 23
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 26
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphaProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 28
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 31
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 33
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 36
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 38
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 41
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 43
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 46
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 48
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 51
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 53
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 56
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 58
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 61
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 63
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 66
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 68
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 71
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 73
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 76
    return-void
.end method

.method public isInFolmeMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mFolmeMode:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public onActionCancel()V
    .registers 1

    return-void
.end method

.method public onActionDown(FF)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    const-string p2, "down"

    .line 5
    invoke-virtual {p1, p0, p2}, Lcom/miui/maml/ScreenElementRoot;->onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onActionMove(FF)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    const-string p2, "move"

    .line 5
    invoke-virtual {p1, p0, p2}, Lcom/miui/maml/ScreenElementRoot;->onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onActionUp()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 3
    const-string v1, "up"

    .line 5
    invoke-virtual {v0, p0, v1}, Lcom/miui/maml/ScreenElementRoot;->onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;
    .registers 4

    .line 1
    const-string v0, "AlphaAnimation"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_10

    .line 9
    new-instance p1, Lcom/miui/maml/animation/AlphaAnimation;

    .line 11
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/AlphaAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 14
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

    .line 16
    return-object p1

    .line 17
    :cond_10
    const-string v0, "PositionAnimation"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_20

    .line 25
    new-instance p1, Lcom/miui/maml/animation/PositionAnimation;

    .line 27
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 30
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    .line 32
    return-object p1

    .line 33
    :cond_20
    const-string v0, "RotationAnimation"

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_30

    .line 41
    new-instance p1, Lcom/miui/maml/animation/RotationAnimation;

    .line 43
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/RotationAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 46
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotations:Lcom/miui/maml/animation/RotationAnimation;

    .line 48
    return-object p1

    .line 49
    :cond_30
    const-string v0, "SizeAnimation"

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_40

    .line 57
    new-instance p1, Lcom/miui/maml/animation/SizeAnimation;

    .line 59
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/SizeAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 62
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    .line 64
    return-object p1

    .line 65
    :cond_40
    const-string v0, "ScaleAnimation"

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_50

    .line 73
    new-instance p1, Lcom/miui/maml/animation/ScaleAnimation;

    .line 75
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/ScaleAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 78
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    .line 80
    return-object p1

    .line 81
    :cond_50
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;

    .line 84
    move-result-object p1

    .line 85
    return-object p1
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_56

    .line 8
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    .line 10
    if-nez v0, :cond_c

    .line 12
    goto :goto_56

    .line 13
    :cond_c
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 20
    move-result v2

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 24
    move-result v3

    .line 25
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    .line 28
    move-result v4

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 32
    move-result p1

    .line 33
    const/4 v5, 0x7

    .line 34
    const/4 v6, 0x1

    .line 35
    if-eq p1, v5, :cond_36

    .line 37
    const/16 v5, 0x9

    .line 39
    if-eq p1, v5, :cond_29

    .line 41
    goto :goto_4a

    .line 42
    :cond_29
    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_4a

    .line 48
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 50
    invoke-virtual {p1, p0, v0}, Lcom/miui/maml/ScreenElementRoot;->onHoverChange(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    .line 53
    :cond_34
    :goto_34
    move v4, v6

    .line 54
    goto :goto_4a

    .line 55
    :cond_36
    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_4a

    .line 61
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 63
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getHoverElement()Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 66
    move-result-object p1

    .line 67
    if-eq p1, p0, :cond_34

    .line 69
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 71
    invoke-virtual {p1, p0, v0}, Lcom/miui/maml/ScreenElementRoot;->onHoverChange(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    .line 74
    goto :goto_34

    .line 75
    :cond_4a
    :goto_4a
    if-eqz v4, :cond_4f

    .line 77
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 80
    :cond_4f
    if-eqz v4, :cond_56

    .line 82
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    .line 84
    if-eqz p1, :cond_56

    .line 86
    move v1, v6

    .line 87
    :cond_56
    :goto_56
    return v1
.end method

.method public onSetAnimBefore()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

    .line 4
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    .line 6
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotations:Lcom/miui/maml/animation/RotationAnimation;

    .line 8
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    .line 10
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    .line 12
    return-void
.end method

.method public onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/miui/maml/animation/AlphaAnimation;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    check-cast p1, Lcom/miui/maml/animation/AlphaAnimation;

    .line 7
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

    .line 9
    goto :goto_2c

    .line 10
    :cond_9
    instance-of v0, p1, Lcom/miui/maml/animation/PositionAnimation;

    .line 12
    if-eqz v0, :cond_12

    .line 14
    check-cast p1, Lcom/miui/maml/animation/PositionAnimation;

    .line 16
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    .line 18
    goto :goto_2c

    .line 19
    :cond_12
    instance-of v0, p1, Lcom/miui/maml/animation/RotationAnimation;

    .line 21
    if-eqz v0, :cond_1b

    .line 23
    check-cast p1, Lcom/miui/maml/animation/RotationAnimation;

    .line 25
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotations:Lcom/miui/maml/animation/RotationAnimation;

    .line 27
    goto :goto_2c

    .line 28
    :cond_1b
    instance-of v0, p1, Lcom/miui/maml/animation/SizeAnimation;

    .line 30
    if-eqz v0, :cond_24

    .line 32
    check-cast p1, Lcom/miui/maml/animation/SizeAnimation;

    .line 34
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    .line 36
    goto :goto_2c

    .line 37
    :cond_24
    instance-of v0, p1, Lcom/miui/maml/animation/ScaleAnimation;

    .line 39
    if-eqz v0, :cond_2c

    .line 41
    check-cast p1, Lcom/miui/maml/animation/ScaleAnimation;

    .line 43
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    .line 45
    :cond_2c
    :goto_2c
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_8b

    .line 8
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    .line 10
    if-nez v0, :cond_d

    .line 12
    goto/16 :goto_8b

    .line 14
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 21
    move-result v2

    .line 22
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    .line 25
    move-result v3

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 29
    move-result p1

    .line 30
    const/4 v4, 0x1

    .line 31
    if-eqz p1, :cond_65

    .line 33
    if-eq p1, v4, :cond_3e

    .line 35
    const/4 v5, 0x2

    .line 36
    if-eq p1, v5, :cond_2d

    .line 38
    const/4 v0, 0x3

    .line 39
    if-eq p1, v0, :cond_29

    .line 41
    goto :goto_7f

    .line 42
    :cond_29
    invoke-direct {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->handleCancel()V

    .line 45
    goto :goto_7f

    .line 46
    :cond_2d
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 48
    if-eqz p1, :cond_7f

    .line 50
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 53
    move-result v3

    .line 54
    const-string p1, "move"

    .line 56
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionMove(FF)V

    .line 62
    goto :goto_7f

    .line 63
    :cond_3e
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 65
    if-eqz p1, :cond_7f

    .line 67
    iput-boolean v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 69
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_5c

    .line 75
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    .line 77
    if-eqz p1, :cond_53

    .line 79
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 81
    invoke-virtual {p1, v4}, Lcom/miui/maml/ScreenElementRoot;->haptic(I)V

    .line 84
    :cond_53
    const-string p1, "up"

    .line 86
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionUp()V

    .line 92
    goto :goto_7e

    .line 93
    :cond_5c
    const-string p1, "cancel"

    .line 95
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    .line 101
    goto :goto_7e

    .line 102
    :cond_65
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_7f

    .line 108
    iput-boolean v4, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 110
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    .line 112
    if-eqz p1, :cond_76

    .line 114
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 116
    invoke-virtual {p1, v4}, Lcom/miui/maml/ScreenElementRoot;->haptic(I)V

    .line 119
    :cond_76
    const-string p1, "down"

    .line 121
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionDown(FF)V

    .line 127
    :goto_7e
    move v3, v4

    .line 128
    :cond_7f
    :goto_7f
    if-eqz v3, :cond_84

    .line 130
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 133
    :cond_84
    if-eqz v3, :cond_8b

    .line 135
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    .line 137
    if-eqz p1, :cond_8b

    .line 139
    move v1, v4

    .line 140
    :cond_8b
    :goto_8b
    return v1
.end method

.method public onVisibilityChange(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 4
    if-nez p1, :cond_37

    .line 6
    invoke-direct {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->handleCancel()V

    .line 9
    iget p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    .line 11
    const/high16 v0, -0x80000000

    .line 13
    if-eq p1, v0, :cond_37

    .line 15
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getMamlAccessHelper()Lcom/miui/maml/util/MamlAccessHelper;

    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_37

    .line 25
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getMamlAccessHelper()Lcom/miui/maml/util/MamlAccessHelper;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lr0/a;->getFocusedVirtualView()I

    .line 36
    move-result p1

    .line 37
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    .line 39
    if-ne p1, v0, :cond_37

    .line 41
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getMamlAccessHelper()Lcom/miui/maml/util/MamlAccessHelper;

    .line 48
    move-result-object p1

    .line 49
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    .line 51
    const/16 v1, 0x80

    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/util/MamlAccessHelper;->performAccessibilityAction(II)V

    .line 56
    :cond_37
    return-void
.end method

.method public pause()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->handleCancel()V

    .line 7
    :try_start_6
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 9
    if-eqz v0, :cond_2a

    .line 11
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_2a

    .line 19
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 21
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 31
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->toArray()[Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v0, v1}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_25} :catch_26

    .line 38
    goto :goto_2a

    .line 39
    :catch_26
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    :cond_2a
    :goto_2a
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_a

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->doRenderWithTranslation(Landroid/graphics/Canvas;)V

    .line 14
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 8
    :cond_7
    return-void
.end method

.method public setHeight(D)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 6
    move-result-wide p1

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    .line 10
    return-void
.end method

.method public setOnTickListener(Lcom/miui/maml/elements/FunctionElement;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTickListener:Lcom/miui/maml/elements/FunctionElement;

    .line 3
    return-void
.end method

.method public setVirtualViewId(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    .line 3
    return-void
.end method

.method public setWidth(D)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 6
    move-result-wide p1

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    .line 10
    return-void
.end method

.method public setX(D)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 6
    move-result-wide p1

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    .line 10
    return-void
.end method

.method public setY(D)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 6
    move-result-wide p1

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    .line 10
    return-void
.end method

.method public touched(FF)Z
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FFZ)Z

    move-result p1

    return p1
.end method

.method public touched(FFZ)Z
    .registers 8

    if-eqz p3, :cond_18

    .line 2
    iget-object p3, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    const/4 v0, 0x0

    if-nez p3, :cond_9

    move p3, v0

    goto :goto_d

    :cond_9
    invoke-virtual {p3}, Lcom/miui/maml/elements/ElementGroup;->getParentLeft()F

    move-result p3

    .line 3
    :goto_d
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-nez v1, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getParentTop()F

    move-result v0

    :goto_16
    sub-float/2addr p1, p3

    sub-float/2addr p2, v0

    .line 4
    :cond_18
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result p3

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v0

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v2

    cmpl-float v3, p1, p3

    if-ltz v3, :cond_3c

    add-float/2addr p3, v1

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_3c

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_3c

    add-float/2addr v0, v2

    cmpg-float p1, p2, v0

    if-gtz p1, :cond_3c

    const/4 p1, 0x1

    goto :goto_3d

    :cond_3c
    const/4 p1, 0x0

    :goto_3d
    return p1
.end method

.method public unsetOnTickListener()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTickListener:Lcom/miui/maml/elements/FunctionElement;

    .line 4
    return-void
.end method
