.class public Lcom/miui/maml/elements/FolmeConfigElement;
.super Lcom/miui/maml/elements/ConfigElement;
.source "FolmeConfigElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FolmeConfig"


# instance fields
.field private mConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ConfigElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    .line 11
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/FolmeConfigElement;->getConfigData(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 25
    move-result p2

    .line 26
    const/4 v0, 0x0

    .line 27
    :goto_1a
    if-ge v0, p2, :cond_45

    .line 29
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x1

    .line 38
    if-ne v1, v2, :cond_42

    .line 40
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lorg/w3c/dom/Element;

    .line 46
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    const-string v3, "Special"

    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_42

    .line 58
    iget-object v2, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    .line 60
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/FolmeConfigElement;->getConfigData(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_42
    add-int/lit8 v0, v0, 0x1

    .line 69
    goto :goto_1a

    .line 70
    :cond_45
    return-void
.end method

.method private getConfigData(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;
    .registers 5

    .line 1
    new-instance v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;-><init>(Lcom/miui/maml/elements/FolmeConfigElement;Lcom/miui/maml/elements/FolmeConfigElement$1;)V

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "ease"

    .line 13
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mEaseExp:[Lcom/miui/maml/data/Expression;

    .line 23
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 26
    move-result-object v1

    .line 27
    const-string v2, "fromSpeed"

    .line 29
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 36
    move-result-object v1

    .line 37
    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mFromSpeedExp:Lcom/miui/maml/data/Expression;

    .line 39
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 42
    move-result-object v1

    .line 43
    const-string v2, "delay"

    .line 45
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 52
    move-result-object v1

    .line 53
    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mDelayExp:Lcom/miui/maml/data/Expression;

    .line 55
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 58
    move-result-object v1

    .line 59
    const-string v2, "onBegin"

    .line 61
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 68
    move-result-object v1

    .line 69
    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnBeginCallbackExp:[Lcom/miui/maml/data/Expression;

    .line 71
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 74
    move-result-object v1

    .line 75
    const-string v2, "onComplete"

    .line 77
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 84
    move-result-object v1

    .line 85
    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnCompleteCallbackExp:[Lcom/miui/maml/data/Expression;

    .line 87
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 90
    move-result-object v1

    .line 91
    const-string v2, "onUpdate"

    .line 93
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 100
    move-result-object v1

    .line 101
    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnUpdateCallbackExp:[Lcom/miui/maml/data/Expression;

    .line 103
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 106
    move-result-object v1

    .line 107
    const-string v2, "property"

    .line 109
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    invoke-static {v1, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 116
    move-result-object p1

    .line 117
    iput-object p1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mPropertyExp:[Lcom/miui/maml/data/Expression;

    .line 119
    return-object v0
.end method

.method private getEaseFromExpressions([Lcom/miui/maml/data/Expression;)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .registers 10

    .line 1
    if-eqz p1, :cond_36

    .line 3
    array-length v0, p1

    .line 4
    if-lez v0, :cond_36

    .line 6
    const/4 v0, 0x0

    .line 7
    aget-object v0, p1, v0

    .line 9
    if-eqz v0, :cond_36

    .line 11
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 14
    move-result-wide v0

    .line 15
    double-to-int v0, v0

    .line 16
    array-length v1, p1

    .line 17
    const/4 v2, 0x1

    .line 18
    sub-int/2addr v1, v2

    .line 19
    new-array v1, v1, [F

    .line 21
    array-length v3, p1

    .line 22
    :goto_15
    if-ge v2, v3, :cond_2d

    .line 24
    aget-object v4, p1, v2

    .line 26
    if-eqz v4, :cond_25

    .line 28
    add-int/lit8 v5, v2, -0x1

    .line 30
    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 33
    move-result-wide v6

    .line 34
    double-to-float v4, v6

    .line 35
    aput v4, v1, v5

    .line 37
    goto :goto_2a

    .line 38
    :cond_25
    add-int/lit8 v4, v2, -0x1

    .line 40
    const/4 v5, 0x0

    .line 41
    aput v5, v1, v4

    .line 43
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_15

    .line 46
    :cond_2d
    :try_start_2d
    invoke-static {v0, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 49
    move-result-object p1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_32

    .line 50
    return-object p1

    .line 51
    :catch_32
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    :cond_36
    const/4 p1, 0x0

    .line 56
    return-object p1
.end method

.method private getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/b;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/miui/maml/data/Expression;",
            "Landroidx/collection/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroidx/collection/b;->clear()V

    .line 4
    if-eqz p1, :cond_1a

    .line 6
    array-length v0, p1

    .line 7
    if-lez v0, :cond_1a

    .line 9
    array-length v0, p1

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 13
    aget-object v2, p1, v1

    .line 15
    if-eqz v2, :cond_17

    .line 17
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p2, v2}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_17
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method


# virtual methods
.method public evaluateConfigValue()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_c
    if-ge v1, v0, :cond_61

    .line 15
    new-instance v2, Lcom/miui/maml/folme/ConfigValue;

    .line 17
    invoke-direct {v2}, Lcom/miui/maml/folme/ConfigValue;-><init>()V

    .line 20
    iget-object v3, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;

    .line 28
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mDelayExp:Lcom/miui/maml/data/Expression;

    .line 30
    if-eqz v4, :cond_26

    .line 32
    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 35
    move-result-wide v4

    .line 36
    double-to-long v4, v4

    .line 37
    iput-wide v4, v2, Lcom/miui/maml/folme/ConfigValue;->mDelay:J

    .line 39
    :cond_26
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mFromSpeedExp:Lcom/miui/maml/data/Expression;

    .line 41
    if-eqz v4, :cond_35

    .line 43
    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 46
    move-result-wide v4

    .line 47
    double-to-long v4, v4

    .line 48
    long-to-float v4, v4

    .line 49
    iput v4, v2, Lcom/miui/maml/folme/ConfigValue;->mFromSpeed:F

    .line 51
    const/4 v4, 0x1

    .line 52
    iput-boolean v4, v2, Lcom/miui/maml/folme/ConfigValue;->mHasFromSpeed:Z

    .line 54
    :cond_35
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mEaseExp:[Lcom/miui/maml/data/Expression;

    .line 56
    invoke-direct {p0, v4}, Lcom/miui/maml/elements/FolmeConfigElement;->getEaseFromExpressions([Lcom/miui/maml/data/Expression;)Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 59
    move-result-object v4

    .line 60
    iput-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    .line 62
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mPropertyExp:[Lcom/miui/maml/data/Expression;

    .line 64
    iget-object v5, v2, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Landroidx/collection/b;

    .line 66
    invoke-direct {p0, v4, v5}, Lcom/miui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/b;)V

    .line 69
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnBeginCallbackExp:[Lcom/miui/maml/data/Expression;

    .line 71
    iget-object v5, v2, Lcom/miui/maml/folme/ConfigValue;->mOnBeginCallback:Landroidx/collection/b;

    .line 73
    invoke-direct {p0, v4, v5}, Lcom/miui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/b;)V

    .line 76
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnCompleteCallbackExp:[Lcom/miui/maml/data/Expression;

    .line 78
    iget-object v5, v2, Lcom/miui/maml/folme/ConfigValue;->mOnCompleteCallback:Landroidx/collection/b;

    .line 80
    invoke-direct {p0, v4, v5}, Lcom/miui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/b;)V

    .line 83
    iget-object v3, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnUpdateCallbackExp:[Lcom/miui/maml/data/Expression;

    .line 85
    iget-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mOnUpdateCallback:Landroidx/collection/b;

    .line 87
    invoke-direct {p0, v3, v4}, Lcom/miui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/b;)V

    .line 90
    iget-object v3, p0, Lcom/miui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 97
    goto :goto_c

    .line 98
    :cond_61
    return-void
.end method
