.class Lcom/miui/maml/elements/AdvancedSlider$EndPoint;
.super Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EndPoint"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "EndPoint"


# instance fields
.field public mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

.field private mPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/AdvancedSlider$Position;",
            ">;"
        }
    .end annotation
.end field

.field private mPathX:Lcom/miui/maml/data/Expression;

.field private mPathY:Lcom/miui/maml/data/Expression;

.field private mRawTolerance:I

.field private mTolerance:F

.field public final synthetic this$0:Lcom/miui/maml/elements/AdvancedSlider;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 3
    const-string v0, "EndPoint"

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Ljava/lang/String;)V

    .line 8
    const/16 p1, 0x96

    .line 10
    iput p1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    .line 12
    invoke-direct {p0, p2}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->load(Lorg/w3c/dom/Element;)V

    .line 15
    return-void
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$1000(Lcom/miui/maml/elements/AdvancedSlider$EndPoint;FF)Lcom/miui/maml/util/Utils$Point;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->getNearestPoint(FF)Lcom/miui/maml/util/Utils$Point;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getNearestPoint(FF)Lcom/miui/maml/util/Utils$Point;
    .registers 18

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 4
    if-nez v1, :cond_1d

    .line 6
    new-instance v1, Lcom/miui/maml/util/Utils$Point;

    .line 8
    iget-object v2, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 10
    invoke-static {v2}, Lcom/miui/maml/elements/AdvancedSlider;->access$600(Lcom/miui/maml/elements/AdvancedSlider;)F

    .line 13
    move-result v2

    .line 14
    sub-float v2, p1, v2

    .line 16
    float-to-double v2, v2

    .line 17
    iget-object v4, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 19
    invoke-static {v4}, Lcom/miui/maml/elements/AdvancedSlider;->access$700(Lcom/miui/maml/elements/AdvancedSlider;)F

    .line 22
    move-result v4

    .line 23
    sub-float v4, p2, v4

    .line 25
    float-to-double v4, v4

    .line 26
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 29
    return-object v1

    .line 30
    :cond_1d
    const/4 v1, 0x0

    .line 31
    const-wide v2, 0x7fefffffffffffffL  # Double.MAX_VALUE

    .line 36
    const/4 v4, 0x1

    .line 37
    move v5, v4

    .line 38
    :goto_25
    iget-object v6, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v6

    .line 44
    if-ge v5, v6, :cond_86

    .line 46
    iget-object v6, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 48
    invoke-static {v6}, Lcom/miui/maml/elements/AdvancedSlider;->access$600(Lcom/miui/maml/elements/AdvancedSlider;)F

    .line 51
    move-result v6

    .line 52
    sub-float v6, p1, v6

    .line 54
    iget-object v7, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 56
    invoke-static {v7}, Lcom/miui/maml/elements/AdvancedSlider;->access$700(Lcom/miui/maml/elements/AdvancedSlider;)F

    .line 59
    move-result v7

    .line 60
    sub-float v7, p2, v7

    .line 62
    iget-object v8, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 64
    add-int/lit8 v9, v5, -0x1

    .line 66
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v8

    .line 70
    check-cast v8, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 72
    iget-object v9, v0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v9

    .line 78
    check-cast v9, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 80
    new-instance v10, Lcom/miui/maml/util/Utils$Point;

    .line 82
    invoke-virtual {v8}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 85
    move-result v11

    .line 86
    float-to-double v11, v11

    .line 87
    invoke-virtual {v8}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 90
    move-result v8

    .line 91
    float-to-double v13, v8

    .line 92
    invoke-direct {v10, v11, v12, v13, v14}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 95
    new-instance v8, Lcom/miui/maml/util/Utils$Point;

    .line 97
    invoke-virtual {v9}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getX()F

    .line 100
    move-result v11

    .line 101
    float-to-double v11, v11

    .line 102
    invoke-virtual {v9}, Lcom/miui/maml/elements/AdvancedSlider$Position;->getY()F

    .line 105
    move-result v9

    .line 106
    float-to-double v13, v9

    .line 107
    invoke-direct {v8, v11, v12, v13, v14}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 110
    new-instance v9, Lcom/miui/maml/util/Utils$Point;

    .line 112
    float-to-double v11, v6

    .line 113
    float-to-double v6, v7

    .line 114
    invoke-direct {v9, v11, v12, v6, v7}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 117
    invoke-static {v10, v8, v9, v4}, Lcom/miui/maml/util/Utils;->pointProjectionOnSegment(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)Lcom/miui/maml/util/Utils$Point;

    .line 120
    move-result-object v6

    .line 121
    const/4 v7, 0x0

    .line 122
    invoke-static {v6, v9, v7}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 125
    move-result-wide v7

    .line 126
    cmpg-double v9, v7, v2

    .line 128
    if-gez v9, :cond_83

    .line 130
    move-object v1, v6

    .line 131
    move-wide v2, v7

    .line 132
    :cond_83
    add-int/lit8 v5, v5, 0x1

    .line 134
    goto :goto_25

    .line 135
    :cond_86
    return-object v1
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->loadTask(Lorg/w3c/dom/Element;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->loadPath(Lorg/w3c/dom/Element;)V

    .line 7
    return-void
.end method

.method private loadPath(Lorg/w3c/dom/Element;)V
    .registers 12

    .line 1
    const-string v0, "Path"

    .line 3
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_c

    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 12
    return-void

    .line 13
    :cond_c
    const/16 v0, 0x96

    .line 15
    const-string v1, "tolerance"

    .line 17
    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 33
    move-result-object v0

    .line 34
    const-string v1, "x"

    .line 36
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPathX:Lcom/miui/maml/data/Expression;

    .line 46
    const-string v1, "y"

    .line 48
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 55
    move-result-object v1

    .line 56
    iput-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPathY:Lcom/miui/maml/data/Expression;

    .line 58
    const-string v1, "Position"

    .line 60
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    .line 63
    move-result-object p1

    .line 64
    const/4 v1, 0x0

    .line 65
    move v7, v1

    .line 66
    :goto_41
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 69
    move-result v1

    .line 70
    if-ge v7, v1, :cond_63

    .line 72
    invoke-interface {p1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 75
    move-result-object v1

    .line 76
    move-object v4, v1

    .line 77
    check-cast v4, Lorg/w3c/dom/Element;

    .line 79
    iget-object v8, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 81
    new-instance v9, Lcom/miui/maml/elements/AdvancedSlider$Position;

    .line 83
    iget-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 85
    iget-object v5, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPathX:Lcom/miui/maml/data/Expression;

    .line 87
    iget-object v6, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPathY:Lcom/miui/maml/data/Expression;

    .line 89
    move-object v1, v9

    .line 90
    move-object v3, v0

    .line 91
    invoke-direct/range {v1 .. v6}, Lcom/miui/maml/elements/AdvancedSlider$Position;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    .line 94
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v7, v7, 0x1

    .line 99
    goto :goto_41

    .line 100
    :cond_63
    return-void
.end method

.method private loadTask(Lorg/w3c/dom/Element;)V
    .registers 7

    .line 1
    const-string v0, "Intent"

    .line 3
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Command"

    .line 9
    invoke-static {p1, v1}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "Trigger"

    .line 15
    invoke-static {p1, v2}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 18
    move-result-object p1

    .line 19
    if-nez v0, :cond_19

    .line 21
    if-nez v1, :cond_19

    .line 23
    if-nez p1, :cond_19

    .line 25
    return-void

    .line 26
    :cond_19
    new-instance v2, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    .line 28
    iget-object v3, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-direct {v2, v3, v4}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;-><init>(Lcom/miui/maml/elements/AdvancedSlider;Lcom/miui/maml/elements/AdvancedSlider$1;)V

    .line 34
    iput-object v2, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    .line 36
    if-eqz v0, :cond_31

    .line 38
    new-instance p1, Lcom/miui/maml/util/IntentInfo;

    .line 40
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 43
    move-result-object v1

    .line 44
    invoke-direct {p1, v0, v1}, Lcom/miui/maml/util/IntentInfo;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    .line 47
    iput-object p1, v2, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 49
    goto :goto_63

    .line 50
    :cond_31
    if-eqz v1, :cond_58

    .line 52
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 54
    invoke-static {v1, p1}, Lcom/miui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/ActionCommand;

    .line 57
    move-result-object p1

    .line 58
    iput-object p1, v2, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 60
    iget-object p1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    .line 62
    iget-object p1, p1, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 64
    if-nez p1, :cond_63

    .line 66
    const-string p1, "invalid Command element: "

    .line 68
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    const-string v0, "LockScreen_AdvancedSlider"

    .line 85
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    goto :goto_63

    .line 89
    :cond_58
    if-eqz p1, :cond_63

    .line 91
    new-instance v0, Lcom/miui/maml/CommandTrigger;

    .line 93
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 95
    invoke-direct {v0, p1, v1}, Lcom/miui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 98
    iput-object v0, v2, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 100
    :cond_63
    :goto_63
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->finish()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->finish()V

    .line 11
    :cond_a
    return-void
.end method

.method public getTransformedDist(Lcom/miui/maml/util/Utils$Point;FF)F
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 3
    if-nez v0, :cond_8

    .line 5
    const p1, 0x7effffff

    .line 8
    return p1

    .line 9
    :cond_8
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 12
    if-nez p1, :cond_e

    .line 14
    return v0

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 17
    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$600(Lcom/miui/maml/elements/AdvancedSlider;)F

    .line 20
    move-result v1

    .line 21
    sub-float/2addr p2, v1

    .line 22
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lcom/miui/maml/elements/AdvancedSlider;

    .line 24
    invoke-static {v1}, Lcom/miui/maml/elements/AdvancedSlider;->access$700(Lcom/miui/maml/elements/AdvancedSlider;)F

    .line 27
    move-result v1

    .line 28
    sub-float/2addr p3, v1

    .line 29
    new-instance v1, Lcom/miui/maml/util/Utils$Point;

    .line 31
    float-to-double v2, p2

    .line 32
    float-to-double p2, p3

    .line 33
    invoke-direct {v1, v2, v3, p2, p3}, Lcom/miui/maml/util/Utils$Point;-><init>(DD)V

    .line 36
    const/4 p2, 0x1

    .line 37
    invoke-static {p1, v1, p2}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 40
    move-result-wide p1

    .line 41
    double-to-float p1, p1

    .line 42
    iget p2, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mTolerance:F

    .line 44
    cmpg-float p2, p1, p2

    .line 46
    if-gez p2, :cond_30

    .line 48
    return p1

    .line 49
    :cond_30
    return v0
.end method

.method public init()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->init()V

    .line 11
    :cond_a
    iget v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    .line 13
    int-to-double v0, v0

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mTolerance:F

    .line 20
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
    const/4 v1, 0x3

    .line 15
    if-eq v0, v1, :cond_11

    .line 17
    goto :goto_18

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 20
    iget-object v1, p0, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->mReachedSound:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)I

    .line 25
    :goto_18
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider$SliderPoint;->onStateChange(Lcom/miui/maml/elements/AdvancedSlider$State;Lcom/miui/maml/elements/AdvancedSlider$State;)V

    .line 28
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->pause()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->pause()V

    .line 11
    :cond_a
    return-void
.end method

.method public resume()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ElementGroup;->resume()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/elements/AdvancedSlider$LaunchAction;->resume()V

    .line 11
    :cond_a
    return-void
.end method
