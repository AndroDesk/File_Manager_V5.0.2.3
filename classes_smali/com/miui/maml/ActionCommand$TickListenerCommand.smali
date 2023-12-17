.class Lcom/miui/maml/ActionCommand$TickListenerCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TickListenerCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "TickListenerCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

.field private mFunNameExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 7
    move-result-object p1

    .line 8
    const-string v0, "function"

    .line 10
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TickListenerCommand;->mFunNameExp:Lcom/miui/maml/data/Expression;

    .line 20
    const-string p1, "command"

    .line 22
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    const-string p2, "set"

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_32

    .line 37
    const-string p2, "unset"

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2d

    .line 45
    goto :goto_36

    .line 46
    :cond_2d
    sget-object p1, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->UNSET:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 48
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TickListenerCommand;->mCommand:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 50
    goto :goto_36

    .line 51
    :cond_32
    sget-object p1, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->SET:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 53
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TickListenerCommand;->mCommand:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 55
    :goto_36
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3b

    .line 7
    instance-of v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 9
    if-nez v1, :cond_b

    .line 11
    goto :goto_3b

    .line 12
    :cond_b
    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 14
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

    .line 16
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TickListenerCommand;->mCommand:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 21
    move-result v2

    .line 22
    aget v1, v1, v2

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eq v1, v2, :cond_22

    .line 27
    const/4 v2, 0x2

    .line 28
    if-eq v1, v2, :cond_1e

    .line 30
    goto :goto_3b

    .line 31
    :cond_1e
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->unsetOnTickListener()V

    .line 34
    goto :goto_3b

    .line 35
    :cond_22
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TickListenerCommand;->mFunNameExp:Lcom/miui/maml/data/Expression;

    .line 37
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_3b

    .line 51
    instance-of v2, v1, Lcom/miui/maml/elements/FunctionElement;

    .line 53
    if-eqz v2, :cond_3b

    .line 55
    check-cast v1, Lcom/miui/maml/elements/FunctionElement;

    .line 57
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setOnTickListener(Lcom/miui/maml/elements/FunctionElement;)V

    .line 60
    :cond_3b
    :goto_3b
    return-void
.end method
