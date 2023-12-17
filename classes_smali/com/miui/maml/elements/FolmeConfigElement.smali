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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ConfigElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/FolmeConfigElement;->getConfigData(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p2

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, p2, :cond_45

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_42

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Special"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/miui/maml/elements/FolmeConfigElement;->getConfigData(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_45
    return-void
.end method

.method private getConfigData(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;
    .registers 5

    new-instance v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;-><init>(Lcom/miui/maml/elements/FolmeConfigElement;Lcom/miui/maml/elements/FolmeConfigElement$1;)V

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    const-string v2, "ease"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mEaseExp:[Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    const-string v2, "fromSpeed"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mFromSpeedExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    const-string v2, "delay"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mDelayExp:Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    const-string v2, "onBegin"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnBeginCallbackExp:[Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    const-string v2, "onComplete"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnCompleteCallbackExp:[Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    const-string v2, "onUpdate"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnUpdateCallbackExp:[Lcom/miui/maml/data/Expression;

    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    const-string v2, "property"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mPropertyExp:[Lcom/miui/maml/data/Expression;

    return-object v0
.end method

.method private getEaseFromExpressions([Lcom/miui/maml/data/Expression;)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .registers 10

    if-eqz p1, :cond_36

    array-length v0, p1

    if-lez v0, :cond_36

    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v1, v1, [F

    array-length v3, p1

    :goto_15
    if-ge v2, v3, :cond_2d

    aget-object v4, p1, v2

    if-eqz v4, :cond_25

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-float v4, v6

    aput v4, v1, v5

    goto :goto_2a

    :cond_25
    add-int/lit8 v4, v2, -0x1

    const/4 v5, 0x0

    aput v5, v1, v4

    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2d
    :try_start_2d
    invoke-static {v0, v1}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object p1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_32

    return-object p1

    :catch_32
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_36
    const/4 p1, 0x0

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

    invoke-virtual {p2}, Landroidx/collection/b;->clear()V

    if-eqz p1, :cond_1a

    array-length v0, p1

    if-lez v0, :cond_1a

    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1a

    aget-object v2, p1, v1

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method


# virtual methods
.method public evaluateConfigValue()V
    .registers 7

    iget-object v0, p0, Lcom/miui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_61

    new-instance v2, Lcom/miui/maml/folme/ConfigValue;

    invoke-direct {v2}, Lcom/miui/maml/folme/ConfigValue;-><init>()V

    iget-object v3, p0, Lcom/miui/maml/elements/FolmeConfigElement;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;

    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mDelayExp:Lcom/miui/maml/data/Expression;

    if-eqz v4, :cond_26

    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-long v4, v4

    iput-wide v4, v2, Lcom/miui/maml/folme/ConfigValue;->mDelay:J

    :cond_26
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mFromSpeedExp:Lcom/miui/maml/data/Expression;

    if-eqz v4, :cond_35

    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-long v4, v4

    long-to-float v4, v4

    iput v4, v2, Lcom/miui/maml/folme/ConfigValue;->mFromSpeed:F

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/miui/maml/folme/ConfigValue;->mHasFromSpeed:Z

    :cond_35
    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mEaseExp:[Lcom/miui/maml/data/Expression;

    invoke-direct {p0, v4}, Lcom/miui/maml/elements/FolmeConfigElement;->getEaseFromExpressions([Lcom/miui/maml/data/Expression;)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mPropertyExp:[Lcom/miui/maml/data/Expression;

    iget-object v5, v2, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Landroidx/collection/b;

    invoke-direct {p0, v4, v5}, Lcom/miui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/b;)V

    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnBeginCallbackExp:[Lcom/miui/maml/data/Expression;

    iget-object v5, v2, Lcom/miui/maml/folme/ConfigValue;->mOnBeginCallback:Landroidx/collection/b;

    invoke-direct {p0, v4, v5}, Lcom/miui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/b;)V

    iget-object v4, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnCompleteCallbackExp:[Lcom/miui/maml/data/Expression;

    iget-object v5, v2, Lcom/miui/maml/folme/ConfigValue;->mOnCompleteCallback:Landroidx/collection/b;

    invoke-direct {p0, v4, v5}, Lcom/miui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/b;)V

    iget-object v3, v3, Lcom/miui/maml/elements/FolmeConfigElement$ConfigData;->mOnUpdateCallbackExp:[Lcom/miui/maml/data/Expression;

    iget-object v4, v2, Lcom/miui/maml/folme/ConfigValue;->mOnUpdateCallback:Landroidx/collection/b;

    invoke-direct {p0, v3, v4}, Lcom/miui/maml/elements/FolmeConfigElement;->getStrFromExpToSet([Lcom/miui/maml/data/Expression;Landroidx/collection/b;)V

    iget-object v3, p0, Lcom/miui/maml/elements/ConfigElement;->mTempValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_61
    return-void
.end method
