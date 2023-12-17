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
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 11
    if-eqz p1, :cond_f

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/CommandTrigger;->load(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 16
    :cond_f
    return-void
.end method

.method public static fromElement(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/CommandTrigger;
    .registers 3

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_a

    .line 5
    :cond_4
    new-instance v0, Lcom/miui/maml/CommandTrigger;

    .line 7
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 10
    move-object p0, v0

    .line 11
    :goto_a
    return-object p0
.end method

.method public static fromParentElement(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/CommandTrigger;
    .registers 3

    .line 1
    const-string v0, "Trigger"

    .line 3
    invoke-static {p0, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0, p1}, Lcom/miui/maml/CommandTrigger;->fromElement(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private load(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .registers 7

    .line 1
    iput-object p2, p0, Lcom/miui/maml/CommandTrigger;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 3
    const-string v0, "target"

    .line 5
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "property"

    .line 11
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    const-string v2, "value"

    .line 17
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_40

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_40

    .line 33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_40

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v0, "."

    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-static {p2, v0, v2}, Lcom/miui/maml/ActionCommand$PropertyCommand;->create(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/ActionCommand$PropertyCommand;

    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/miui/maml/CommandTrigger;->mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

    .line 65
    :cond_40
    const-string v0, "action"

    .line 67
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    const-string v1, ","

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/miui/maml/CommandTrigger;->mActionStrings:[Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mScreenElement:Lcom/miui/maml/elements/ScreenElement;

    .line 81
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 84
    move-result-object v0

    .line 85
    const-string v1, "condition"

    .line 87
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 94
    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCondition:Lcom/miui/maml/data/Expression;

    .line 97
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 100
    move-result-object p1

    .line 101
    const/4 v0, 0x0

    .line 102
    :goto_65
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 105
    move-result v1

    .line 106
    if-ge v0, v1, :cond_8a

    .line 108
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 111
    move-result-object v1

    .line 112
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 115
    move-result v1

    .line 116
    const/4 v2, 0x1

    .line 117
    if-ne v1, v2, :cond_87

    .line 119
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lorg/w3c/dom/Element;

    .line 125
    invoke-static {v1, p2}, Lcom/miui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/ActionCommand;

    .line 128
    move-result-object v1

    .line 129
    if-eqz v1, :cond_87

    .line 131
    iget-object v2, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_87
    add-int/lit8 v0, v0, 0x1

    .line 138
    goto :goto_65

    .line 139
    :cond_8a
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->finish()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1d

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 26
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->finish()V

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    return-void
.end method

.method public init()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$PropertyCommand;->init()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1d

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 26
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->init()V

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    return-void
.end method

.method public isAction(Ljava/lang/String;)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mActionStrings:[Ljava/lang/String;

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_5
    if-ge v3, v1, :cond_14

    .line 8
    aget-object v4, v0, v3

    .line 10
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_11

    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_11
    add-int/lit8 v3, v3, 0x1

    .line 20
    goto :goto_5

    .line 21
    :cond_14
    return v2
.end method

.method public onAction(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/CommandTrigger;->isAction(Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_9

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 10
    :cond_9
    return-void
.end method

.method public pause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->pause()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1d

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 26
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->pause()V

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    return-void
.end method

.method public perform()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCondition:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 11
    cmpg-double v0, v0, v2

    .line 13
    if-gtz v0, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

    .line 18
    if-eqz v0, :cond_16

    .line 20
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$PropertyCommand;->perform()V

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v0

    .line 29
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2c

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 41
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->perform()V

    .line 44
    goto :goto_1c

    .line 45
    :cond_2c
    return-void
.end method

.method public resume()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mPropertyCommand:Lcom/miui/maml/ActionCommand$PropertyCommand;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->resume()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/CommandTrigger;->mCommands:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1d

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 26
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->resume()V

    .line 29
    goto :goto_d

    .line 30
    :cond_1d
    return-void
.end method
