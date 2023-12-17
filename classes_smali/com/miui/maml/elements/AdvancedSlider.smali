.class public Lcom/miui/maml/elements/AdvancedSlider;
.super Lcom/miui/maml/elements/ElementGroup;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;,
        Lcom/miui/maml/elements/AdvancedSlider$EndPoint;,
        Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;,
        Lcom/miui/maml/elements/AdvancedSlider$Position;,
        Lcom/miui/maml/elements/AdvancedSlider$StartPoint;,
        Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;,
        Lcom/miui/maml/elements/AdvancedSlider$State;,
        Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;,
        Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;,
        Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;,
        Lcom/miui/maml/elements/AdvancedSlider$OnLaunchListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DRAG_TOLERANCE:I = 0x96

.field private static final FREE_ENDPOINT_DIST:F = 1.7014117E38f

.field private static final LOG_TAG:Ljava/lang/String; = "LockScreen_AdvancedSlider"

.field public static final MOVE_DIST:Ljava/lang/String; = "move_dist"

.field public static final MOVE_X:Ljava/lang/String; = "move_x"

.field public static final MOVE_Y:Ljava/lang/String; = "move_y"

.field private static final NONE_ENDPOINT_DIST:F = 3.4028235E38f

.field public static final SLIDER_STATE_NORMAL:I = 0x0

.field public static final SLIDER_STATE_PRESSED:I = 0x1

.field public static final SLIDER_STATE_REACHED:I = 0x2

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TAG_NAME:Ljava/lang/String; = "Slider"


# instance fields
.field private mCurrentEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

.field private mEndPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/AdvancedSlider$EndPoint;",
            ">;"
        }
    .end annotation
.end field

.field public mIsHaptic:Z

.field private mIsKeepStatusAfterLaunch:Z

.field private mMoveDistVar:Lcom/miui/maml/data/IndexedVariable;

.field private mMoveXVar:Lcom/miui/maml/data/IndexedVariable;

.field private mMoveYVar:Lcom/miui/maml/data/IndexedVariable;

.field private mMoving:Z

.field private mOnLaunchListener:Lcom/miui/maml/elements/AdvancedSlider$OnLaunchListener;

.field private mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

.field private mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

.field private mStartPointPressed:Z

.field private mStateVar:Lcom/miui/maml/data/IndexedVariable;

.field private mTouchOffsetX:F

.field private mTouchOffsetY:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider;->load(Lorg/w3c/dom/Element;)V

    .line 7
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/AdvancedSlider;)Lcom/miui/maml/elements/AdvancedSlider$StartPoint;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/AdvancedSlider;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/AdvancedSlider;->cancelMoving()V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/miui/maml/elements/AdvancedSlider;FF)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider;->moveStartPoint(FF)V

    .line 4
    return-void
.end method

.method public static synthetic access$500(Lcom/miui/maml/elements/AdvancedSlider;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    .line 3
    return p0
.end method

.method public static synthetic access$600(Lcom/miui/maml/elements/AdvancedSlider;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    .line 3
    return p0
.end method

.method public static synthetic access$700(Lcom/miui/maml/elements/AdvancedSlider;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    .line 3
    return p0
.end method

.method private cancelMoving()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->resetInner()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->onCancel()V

    .line 7
    return-void
.end method

.method private checkEndPoint(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Z
    .registers 6

    .line 1
    iget-wide v0, p1, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 3
    double-to-float v0, v0

    .line 4
    iget-wide v1, p1, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 6
    double-to-float p1, v1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p2, v0, p1, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FFZ)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_39

    .line 14
    invoke-virtual {p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->getState()Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 17
    move-result-object p1

    .line 18
    sget-object v0, Lcom/miui/maml/elements/AdvancedSlider$State;->Reached:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 20
    if-eq p1, v0, :cond_37

    .line 22
    invoke-virtual {p2, v0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 25
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p1

    .line 31
    :cond_1e
    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_32

    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 43
    if-eq v0, p2, :cond_1e

    .line 45
    sget-object v1, Lcom/miui/maml/elements/AdvancedSlider$State;->Pressed:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 47
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 50
    goto :goto_1e

    .line 51
    :cond_32
    iget-object p1, p2, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider;->onReach(Ljava/lang/String;)V

    .line 56
    :cond_37
    const/4 v1, 0x1

    .line 57
    goto :goto_3e

    .line 58
    :cond_39
    sget-object p1, Lcom/miui/maml/elements/AdvancedSlider$State;->Pressed:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 60
    invoke-virtual {p2, p1}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 63
    :goto_3e
    return v1
.end method

.method private checkTouch(FF)Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;
    .registers 13

    .line 1
    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V

    .line 7
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v2

    .line 13
    const v3, 0x7f7fffff  # Float.MAX_VALUE

    .line 16
    move-object v5, v1

    .line 17
    move v4, v3

    .line 18
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v6

    .line 22
    if-eqz v6, :cond_2e

    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 30
    invoke-static {v6, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$1000(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;FF)Lcom/miui/maml/util/Utils$Point;

    .line 33
    move-result-object v7

    .line 34
    invoke-virtual {v6, v7, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->getTransformedDist(Lcom/miui/maml/util/Utils$Point;FF)F

    .line 37
    move-result v8

    .line 38
    cmpg-float v9, v8, v4

    .line 40
    if-gez v9, :cond_11

    .line 42
    iput-object v6, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 44
    move-object v5, v7

    .line 45
    move v4, v8

    .line 46
    goto :goto_11

    .line 47
    :cond_2e
    const/4 p1, 0x0

    .line 48
    cmpg-float p2, v4, v3

    .line 50
    if-gez p2, :cond_8a

    .line 52
    iget-wide v1, v5, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 54
    double-to-float p2, v1

    .line 55
    iget-wide v1, v5, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 57
    double-to-float v1, v1

    .line 58
    invoke-direct {p0, p2, v1}, Lcom/miui/maml/elements/AdvancedSlider;->moveStartPoint(FF)V

    .line 61
    const p2, 0x7effffff

    .line 64
    cmpg-float p2, v4, p2

    .line 66
    if-gez p2, :cond_4a

    .line 68
    iget-object p1, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 70
    invoke-direct {p0, v5, p1}, Lcom/miui/maml/elements/AdvancedSlider;->checkEndPoint(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Z

    .line 73
    move-result p1

    .line 74
    goto :goto_6b

    .line 75
    :cond_4a
    iget-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object p2

    .line 81
    :cond_50
    :goto_50
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_6b

    .line 87
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 93
    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;

    .line 96
    move-result-object v2

    .line 97
    if-eqz v2, :cond_63

    .line 99
    goto :goto_50

    .line 100
    :cond_63
    invoke-direct {p0, v5, v1}, Lcom/miui/maml/elements/AdvancedSlider;->checkEndPoint(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Z

    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_50

    .line 106
    iput-object v1, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 108
    :cond_6b
    :goto_6b
    iget-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 110
    if-eqz p1, :cond_72

    .line 112
    sget-object v1, Lcom/miui/maml/elements/AdvancedSlider$State;->Reached:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 114
    goto :goto_74

    .line 115
    :cond_72
    sget-object v1, Lcom/miui/maml/elements/AdvancedSlider$State;->Pressed:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 117
    :goto_74
    invoke-virtual {p2, v1}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 120
    iget-boolean p2, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 122
    if-eqz p2, :cond_87

    .line 124
    iget-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 126
    if-eqz p1, :cond_82

    .line 128
    const-wide/high16 v1, 0x4000000000000000L  # 2.0

    .line 130
    goto :goto_84

    .line 131
    :cond_82
    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    .line 133
    :goto_84
    invoke-virtual {p2, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 136
    :cond_87
    iput-boolean p1, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    .line 138
    return-object v0

    .line 139
    :cond_8a
    const-string p1, "LockScreen_AdvancedSlider"

    .line 141
    const-string p2, "unlock touch canceled due to exceeding tollerance"

    .line 143
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 148
    const-string p2, "cancel"

    .line 150
    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 153
    return-object v1
.end method

.method private doLaunch(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 3
    const-string v1, "launch"

    .line 5
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 11
    iget-object v0, p1, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    .line 13
    if-eqz v0, :cond_13

    .line 15
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->perform()Landroid/content/Intent;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    :goto_14
    iget-object p1, p1, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mName:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/AdvancedSlider;->onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z

    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 8

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 6
    if-eqz v0, :cond_6a

    .line 8
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 17
    const-string v3, "."

    .line 19
    const-string v4, "state"

    .line 21
    invoke-static {v1, v2, v3, v4}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 28
    move-result-object v2

    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-direct {v0, v1, v2, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 33
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 35
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 44
    const-string v5, "move_x"

    .line 46
    invoke-static {v1, v2, v3, v5}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 53
    move-result-object v2

    .line 54
    invoke-direct {v0, v1, v2, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 57
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveXVar:Lcom/miui/maml/data/IndexedVariable;

    .line 59
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 68
    const-string v5, "move_y"

    .line 70
    invoke-static {v1, v2, v3, v5}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 77
    move-result-object v2

    .line 78
    invoke-direct {v0, v1, v2, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 81
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveYVar:Lcom/miui/maml/data/IndexedVariable;

    .line 83
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 92
    const-string v5, "move_dist"

    .line 94
    invoke-static {v1, v2, v3, v5}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 101
    move-result-object v2

    .line 102
    invoke-direct {v0, v1, v2, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 105
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveDistVar:Lcom/miui/maml/data/IndexedVariable;

    .line 107
    :cond_6a
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 109
    if-eqz v0, :cond_75

    .line 111
    iget-object v0, v0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->mReboundController:Lcom/miui/maml/elements/AdvancedSlider$InterpolatorController;

    .line 113
    if-eqz v0, :cond_75

    .line 115
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 117
    goto :goto_81

    .line 118
    :cond_75
    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;

    .line 120
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$SpeedAccController;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;)V

    .line 123
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 125
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 127
    invoke-virtual {v1, v0}, Lcom/miui/maml/ScreenElementRoot;->addPreTicker(Lcom/miui/maml/elements/ITicker;)V

    .line 130
    :goto_81
    const-string v0, "haptic"

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 139
    move-result v0

    .line 140
    iput-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    .line 142
    const-string v0, "keepStatusAfterLaunch"

    .line 144
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object p1

    .line 148
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 151
    move-result p1

    .line 152
    iput-boolean p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsKeepStatusAfterLaunch:Z

    .line 154
    return-void
.end method

.method private moveStartPoint(FF)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    .line 6
    move-result v0

    .line 7
    sub-float/2addr p1, v0

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 10
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    .line 13
    move-result v0

    .line 14
    sub-float/2addr p2, v0

    .line 15
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    .line 20
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 22
    if-eqz v0, :cond_39

    .line 24
    float-to-double v0, p1

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 28
    move-result-wide v0

    .line 29
    float-to-double p1, p2

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 33
    move-result-wide p1

    .line 34
    mul-double v2, v0, v0

    .line 36
    mul-double v4, p1, p1

    .line 38
    add-double/2addr v4, v2

    .line 39
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 42
    move-result-wide v2

    .line 43
    iget-object v4, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveXVar:Lcom/miui/maml/data/IndexedVariable;

    .line 45
    invoke-virtual {v4, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 48
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveYVar:Lcom/miui/maml/data/IndexedVariable;

    .line 50
    invoke-virtual {v0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 53
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveDistVar:Lcom/miui/maml/data/IndexedVariable;

    .line 55
    invoke-virtual {p1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 58
    :cond_39
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->resetInner()V

    .line 7
    return-void
.end method

.method public init()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 6
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->resetInner()V

    .line 12
    return-void
.end method

.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .registers 4

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "StartPoint"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 15
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 17
    invoke-direct {v0, p0, p1, v1}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 20
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 22
    return-object v0

    .line 23
    :cond_16
    const-string v1, "EndPoint"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_36

    .line 31
    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 33
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 35
    invoke-direct {v0, p0, p1, v1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 38
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 40
    if-nez p1, :cond_30

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    .line 44
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 49
    :cond_30
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    return-object v0

    .line 55
    :cond_36
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method public onLaunch(Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mOnLaunchListener:Lcom/miui/maml/elements/AdvancedSlider$OnLaunchListener;

    .line 3
    if-eqz p2, :cond_9

    .line 5
    invoke-interface {p2, p1}, Lcom/miui/maml/elements/AdvancedSlider$OnLaunchListener;->onLaunch(Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_9
    iget-boolean p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsKeepStatusAfterLaunch:Z

    .line 12
    return p1
.end method

.method public onMove(FF)V
    .registers 3

    return-void
.end method

.method public onReach(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    .line 3
    if-eqz p1, :cond_a

    .line 5
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lcom/miui/maml/ScreenElementRoot;->haptic(I)V

    .line 11
    :cond_a
    return-void
.end method

.method public onRelease()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->haptic(I)V

    .line 11
    :cond_a
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mIsHaptic:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->haptic(I)V

    .line 11
    :cond_a
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
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteLeft()F

    .line 20
    move-result v3

    .line 21
    sub-float/2addr v0, v3

    .line 22
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAbsoluteTop()F

    .line 25
    move-result v3

    .line 26
    sub-float/2addr v2, v3

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz v3, :cond_a5

    .line 34
    if-eq v3, v4, :cond_65

    .line 36
    const/4 v5, 0x2

    .line 37
    if-eq v3, v5, :cond_46

    .line 39
    const/4 v0, 0x3

    .line 40
    if-eq v3, v0, :cond_2b

    .line 42
    goto/16 :goto_11a

    .line 44
    :cond_2b
    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 46
    if-eqz v0, :cond_11a

    .line 48
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V

    .line 54
    iput-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 56
    iput-boolean v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 58
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->onRelease()V

    .line 61
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 63
    const-string v2, "cancel"

    .line 65
    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 68
    :goto_43
    move v0, v4

    .line 69
    goto/16 :goto_11b

    .line 71
    :cond_46
    iget-boolean v3, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 73
    if-eqz v3, :cond_11a

    .line 75
    invoke-direct {p0, v0, v2}, Lcom/miui/maml/elements/AdvancedSlider;->checkTouch(FF)Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;

    .line 78
    move-result-object v3

    .line 79
    if-eqz v3, :cond_58

    .line 81
    iget-object v3, v3, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 83
    iput-object v3, p0, Lcom/miui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 85
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AdvancedSlider;->onMove(FF)V

    .line 88
    goto :goto_43

    .line 89
    :cond_58
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 91
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 93
    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V

    .line 96
    iput-boolean v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 98
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->onRelease()V

    .line 101
    goto :goto_43

    .line 102
    :cond_65
    iget-boolean v3, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 104
    if-eqz v3, :cond_11a

    .line 106
    const-string v3, "LockScreen_AdvancedSlider"

    .line 108
    const-string v5, "unlock touch up"

    .line 110
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0, v0, v2}, Lcom/miui/maml/elements/AdvancedSlider;->checkTouch(FF)Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;

    .line 116
    move-result-object v0

    .line 117
    if-eqz v0, :cond_95

    .line 119
    iget-boolean v2, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->reached:Z

    .line 121
    if-eqz v2, :cond_81

    .line 123
    iget-object v2, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 125
    invoke-direct {p0, v2}, Lcom/miui/maml/elements/AdvancedSlider;->doLaunch(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Z

    .line 128
    move-result v2

    .line 129
    goto :goto_90

    .line 130
    :cond_81
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 132
    const-string v3, "release"

    .line 134
    invoke-virtual {v2, v3}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 137
    iget-object v2, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 139
    if-eqz v2, :cond_8f

    .line 141
    invoke-virtual {v2, v3}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 144
    :cond_8f
    move v2, v1

    .line 145
    :goto_90
    iget-object v0, v0, Lcom/miui/maml/elements/AdvancedSlider$CheckTouchResult;->endPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 147
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 149
    goto :goto_96

    .line 150
    :cond_95
    move v2, v1

    .line 151
    :goto_96
    iput-boolean v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 153
    if-nez v2, :cond_a1

    .line 155
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 157
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mCurrentEndPoint:Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 159
    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->start(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)V

    .line 162
    :cond_a1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->onRelease()V

    .line 165
    goto :goto_43

    .line 166
    :cond_a5
    iget-object v3, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 168
    invoke-virtual {v3, v0, v2, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FFZ)Z

    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_11a

    .line 174
    iput-boolean v4, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 176
    iget-object v3, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 178
    invoke-virtual {v3}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorX()F

    .line 181
    move-result v3

    .line 182
    sub-float/2addr v0, v3

    .line 183
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    .line 185
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 187
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getAnchorY()F

    .line 190
    move-result v0

    .line 191
    sub-float/2addr v2, v0

    .line 192
    iput v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    .line 194
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 196
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->isRunning()Z

    .line 199
    move-result v0

    .line 200
    if-eqz v0, :cond_e4

    .line 202
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 204
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->stopRunning()V

    .line 207
    iget v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    .line 209
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 211
    invoke-virtual {v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetX()F

    .line 214
    move-result v2

    .line 215
    sub-float/2addr v0, v2

    .line 216
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetX:F

    .line 218
    iget v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    .line 220
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 222
    invoke-virtual {v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->getOffsetY()F

    .line 225
    move-result v2

    .line 226
    sub-float/2addr v0, v2

    .line 227
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mTouchOffsetY:F

    .line 229
    :cond_e4
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 231
    sget-object v2, Lcom/miui/maml/elements/AdvancedSlider$State;->Pressed:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 233
    invoke-virtual {v0, v2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 236
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 241
    move-result-object v0

    .line 242
    :goto_f1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_103

    .line 248
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    move-result-object v2

    .line 252
    check-cast v2, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 254
    sget-object v3, Lcom/miui/maml/elements/AdvancedSlider$State;->Pressed:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 256
    invoke-virtual {v2, v3}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 259
    goto :goto_f1

    .line 260
    :cond_103
    iput-boolean v4, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    .line 262
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 264
    if-eqz v0, :cond_110

    .line 266
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 268
    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    .line 270
    invoke-virtual {v0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 273
    :cond_110
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mReboundAnimationController:Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;

    .line 275
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$ReboundAnimationController;->init()V

    .line 278
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->onStart()V

    .line 281
    goto/16 :goto_43

    .line 283
    :cond_11a
    :goto_11a
    move v0, v1

    .line 284
    :goto_11b
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    .line 287
    move-result p1

    .line 288
    if-nez p1, :cond_127

    .line 290
    if-eqz v0, :cond_128

    .line 292
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    .line 294
    if-eqz p1, :cond_128

    .line 296
    :cond_127
    move v1, v4

    .line 297
    :cond_128
    return v1
.end method

.method public pause()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->pause()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->resetInner()V

    .line 7
    return-void
.end method

.method public reset(J)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->reset(J)V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/AdvancedSlider;->resetInner()V

    .line 7
    return-void
.end method

.method public resetInner()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    .line 3
    if-eqz v0, :cond_4b

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPointPressed:Z

    .line 8
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2, v2}, Lcom/miui/maml/elements/AdvancedSlider$StartPoint;->moveTo(FF)V

    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStartPoint:Lcom/miui/maml/elements/AdvancedSlider$StartPoint;

    .line 16
    sget-object v2, Lcom/miui/maml/elements/AdvancedSlider$State;->Normal:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 18
    invoke-virtual {v1, v2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 21
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mEndPoints:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v1

    .line 27
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2c

    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;

    .line 39
    sget-object v3, Lcom/miui/maml/elements/AdvancedSlider$State;->Normal:Lcom/miui/maml/elements/AdvancedSlider$State;

    .line 41
    invoke-virtual {v2, v3}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->setState(Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 44
    goto :goto_1a

    .line 45
    :cond_2c
    iget-boolean v1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 47
    if-eqz v1, :cond_46

    .line 49
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveXVar:Lcom/miui/maml/data/IndexedVariable;

    .line 51
    const-wide/16 v2, 0x0

    .line 53
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 56
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveYVar:Lcom/miui/maml/data/IndexedVariable;

    .line 58
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 61
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoveDistVar:Lcom/miui/maml/data/IndexedVariable;

    .line 63
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 66
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mStateVar:Lcom/miui/maml/data/IndexedVariable;

    .line 68
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 71
    :cond_46
    iput-boolean v0, p0, Lcom/miui/maml/elements/AdvancedSlider;->mMoving:Z

    .line 73
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 76
    :cond_4b
    return-void
.end method

.method public setOnLaunchListener(Lcom/miui/maml/elements/AdvancedSlider$OnLaunchListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider;->mOnLaunchListener:Lcom/miui/maml/elements/AdvancedSlider$OnLaunchListener;

    .line 3
    return-void
.end method
