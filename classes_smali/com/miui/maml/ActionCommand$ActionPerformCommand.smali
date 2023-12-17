.class Lcom/miui/maml/ActionCommand$ActionPerformCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionPerformCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ActionCommand"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mActionExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 4
    const-string p1, "action"

    .line 6
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ActionPerformCommand;->mAction:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_24

    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ActionPerformCommand;->mAction:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 24
    move-result-object p1

    .line 25
    const-string v0, "actionExp"

    .line 27
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ActionPerformCommand;->mActionExp:Lcom/miui/maml/data/Expression;

    .line 37
    :cond_24
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/miui/maml/elements/ScreenElement;

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ActionPerformCommand;->mAction:Ljava/lang/String;

    .line 12
    if-eqz v1, :cond_11

    .line 14
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 17
    goto :goto_1e

    .line 18
    :cond_11
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ActionPerformCommand;->mActionExp:Lcom/miui/maml/data/Expression;

    .line 20
    if-eqz v1, :cond_1e

    .line 22
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1e

    .line 28
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 31
    :cond_1e
    :goto_1e
    return-void
.end method
