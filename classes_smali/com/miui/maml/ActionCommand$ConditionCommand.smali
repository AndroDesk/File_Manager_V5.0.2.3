.class Lcom/miui/maml/ActionCommand$ConditionCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConditionCommand"
.end annotation


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand;

.field private mCondition:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ActionCommand;Lcom/miui/maml/data/Expression;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 8
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ConditionCommand;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 10
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$ConditionCommand;->mCondition:Lcom/miui/maml/data/Expression;

    .line 12
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ConditionCommand;->mCondition:Lcom/miui/maml/data/Expression;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    cmpl-double v0, v0, v2

    .line 11
    if-lez v0, :cond_11

    .line 13
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ConditionCommand;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 15
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->perform()V

    .line 18
    :cond_11
    return-void
.end method

.method public init()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$ConditionCommand;->mCommand:Lcom/miui/maml/ActionCommand;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->init()V

    .line 6
    return-void
.end method
