.class Lcom/miui/maml/ActionCommand$ExternCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ExternCommand"


# instance fields
.field private mCommand:Ljava/lang/String;

.field private mNumParaExp:Lcom/miui/maml/data/Expression;

.field private mStrParaExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 4
    const-string p1, "command"

    .line 6
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ExternCommand;->mCommand:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 15
    move-result-object p1

    .line 16
    const-string v0, "numPara"

    .line 18
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ExternCommand;->mNumParaExp:Lcom/miui/maml/data/Expression;

    .line 28
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 31
    move-result-object p1

    .line 32
    const-string v0, "strPara"

    .line 34
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ExternCommand;->mStrParaExp:Lcom/miui/maml/data/Expression;

    .line 44
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ExternCommand;->mCommand:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$ExternCommand;->mNumParaExp:Lcom/miui/maml/data/Expression;

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_d

    .line 12
    move-object v2, v3

    .line 13
    goto :goto_15

    .line 14
    :cond_d
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 17
    move-result-wide v4

    .line 18
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 21
    move-result-object v2

    .line 22
    :goto_15
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$ExternCommand;->mStrParaExp:Lcom/miui/maml/data/Expression;

    .line 24
    if-nez v4, :cond_1a

    .line 26
    goto :goto_1e

    .line 27
    :cond_1a
    invoke-virtual {v4}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    :goto_1e
    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/maml/ScreenElementRoot;->issueExternCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    .line 34
    return-void
.end method
