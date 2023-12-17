.class public Lcom/miui/maml/CommandTrigger;
.super Ljava/lang/Object;
.source "CommandTrigger.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Trigger"


# instance fields
.field private mActionStrings:[Ljava/lang/String;

.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/ActionCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mCondition:Lcom/miui/maml/data/Expression;

.field private mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

.field private mScreenElement:Lcom/miui/maml/elements/ScreenElement;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    if-eqz p1, :cond_f

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/CommandTrigger;->load(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    :cond_f
    return-void
.end method

.method public static fromElement(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/CommandTrigger;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Lcom/miui/maml/CommandTrigger;

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    move-object p0, v0

    :goto_a
    return-object p0
.end method

.method public static fromParentElement(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/CommandTrigger;
    .registers 3

    const-string v0, "Trigger"

    invoke-static {p0, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/miui/maml/CommandTrigger;->fromElement(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/CommandTrigger;

    move-result-object p0

    return-object p0
.end method

.method private load(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .registers 7

    iput-object p2, p0, Lcom/miui/maml/CommandTrigger;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    const-string v0, "target"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "property"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_40

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_40

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_40

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v2}, Lcom/miui/maml/ActionCommand$PropertyCommand;->create(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ActionCommand$PropertyCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/CommandTrigger;->mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

    :cond_40
    const-string v0, "action"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/CommandTrigger;->mActionStrings:[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    const-string v1, "condition"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCondition:Lcom/miui/maml/data/Expression;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_65
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_8a

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_87

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-static {v1, p2}, Lcom/miui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/ActionCommand;

    move-result-object v1

    if-eqz v1, :cond_87

    iget-object v2, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_87
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    :cond_8a
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->finish()V

    :cond_7
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->finish()V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public init()V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$PropertyCommand;->init()V

    :cond_7
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->init()V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public isAction(Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mActionStrings:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method

.method public onAction(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/miui/maml/CommandTrigger;->isAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->perform()V

    :cond_9
    return-void
.end method

.method public pause()V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->pause()V

    :cond_7
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->pause()V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public perform()V
    .registers 5

    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCondition:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$PropertyCommand;->perform()V

    :cond_16
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->perform()V

    goto :goto_1c

    :cond_2c
    return-void
.end method

.method public resume()V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->resume()V

    :cond_7
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->resume()V

    goto :goto_d

    :cond_1d
    return-void
.end method