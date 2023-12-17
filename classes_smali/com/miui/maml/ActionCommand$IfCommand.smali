.class Lcom/miui/maml/ActionCommand$IfCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IfCommand"
.end annotation


# static fields
.field private static final ALTERNATE:Ljava/lang/String; = "Alternate"

.field private static final CONSEQUENT:Ljava/lang/String; = "Consequent"

.field public static final TAG_NAME:Ljava/lang/String; = "IfCommand"


# instance fields
.field private mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

.field private mCondition:Lcom/miui/maml/data/Expression;

.field private mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 4
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "ifCondition"

    .line 10
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mCondition:Lcom/miui/maml/data/Expression;

    .line 20
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 23
    move-result-object p2

    .line 24
    const/4 v0, 0x0

    .line 25
    :goto_18
    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 28
    move-result v1

    .line 29
    if-ge v0, v1, :cond_5d

    .line 31
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 38
    move-result v1

    .line 39
    const/4 v2, 0x1

    .line 40
    if-ne v1, v2, :cond_5a

    .line 42
    invoke-interface {p2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lorg/w3c/dom/Element;

    .line 48
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    const-string v3, "Consequent"

    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_47

    .line 60
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 62
    if-nez v3, :cond_47

    .line 64
    new-instance v2, Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 66
    invoke-direct {v2, p1, v1}, Lcom/miui/maml/ActionCommand$MultiCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 69
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 71
    goto :goto_5a

    .line 72
    :cond_47
    const-string v3, "Alternate"

    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_5a

    .line 80
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 82
    if-nez v2, :cond_5a

    .line 84
    new-instance v2, Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 86
    invoke-direct {v2, p1, v1}, Lcom/miui/maml/ActionCommand$MultiCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 89
    iput-object v2, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 91
    :cond_5a
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    .line 93
    goto :goto_18

    .line 94
    :cond_5d
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mCondition:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_1d

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 11
    cmpg-double v0, v0, v2

    .line 13
    if-gtz v0, :cond_16

    .line 15
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 17
    if-eqz v0, :cond_1d

    .line 19
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->perform()V

    .line 22
    goto :goto_1d

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 25
    if-eqz v0, :cond_1d

    .line 27
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->perform()V

    .line 30
    :cond_1d
    :goto_1d
    return-void
.end method

.method public finish()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->finish()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->finish()V

    .line 15
    :cond_e
    return-void
.end method

.method public init()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->init()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->init()V

    .line 15
    :cond_e
    return-void
.end method

.method public pause()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->pause()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->pause()V

    .line 15
    :cond_e
    return-void
.end method

.method public resume()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mAlternateCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->resume()V

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IfCommand;->mConsequentCommand:Lcom/miui/maml/ActionCommand$MultiCommand;

    .line 10
    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$MultiCommand;->resume()V

    .line 15
    :cond_e
    return-void
.end method
