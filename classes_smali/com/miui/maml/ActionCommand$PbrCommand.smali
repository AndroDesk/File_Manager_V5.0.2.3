.class Lcom/miui/maml/ActionCommand$PbrCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PbrCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "PbrCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

.field private mCustElementName:Ljava/lang/String;

.field private mIsParamsValid:Z

.field private mParams:[Lcom/miui/maml/data/Expression;

.field private mUniformAutoRefresh:Z

.field private mUniformName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 4
    const-string p1, "params"

    .line 6
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 20
    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    .line 23
    move-result v0

    .line 24
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mIsParamsValid:Z

    .line 26
    if-nez v0, :cond_31

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v1, "Wrong params: "

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    const-string v0, "PbrCommand"

    .line 47
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_31
    const-string p1, "uniformName"

    .line 52
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mUniformName:Ljava/lang/String;

    .line 58
    const-string p1, "custElementName"

    .line 60
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mCustElementName:Ljava/lang/String;

    .line 66
    const-string p1, "uniformRefresh"

    .line 68
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 75
    move-result p1

    .line 76
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mUniformAutoRefresh:Z

    .line 78
    invoke-direct {p0, p2}, Lcom/miui/maml/ActionCommand$PbrCommand;->parseCommand(Lorg/w3c/dom/Element;)V

    .line 81
    return-void
.end method

.method private parseCommand(Lorg/w3c/dom/Element;)V
    .registers 3

    .line 1
    const-string v0, "command"

    .line 3
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v0, "updateUniform"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_12

    .line 18
    goto :goto_16

    .line 19
    :cond_12
    sget-object p1, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->UPDATE_UNIFORM:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 21
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mCommand:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 23
    :goto_16
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_26

    .line 7
    instance-of v1, v0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;

    .line 9
    if-nez v1, :cond_b

    .line 11
    goto :goto_26

    .line 12
    :cond_b
    check-cast v0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;

    .line 14
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$PbrCommand$CommandType:[I

    .line 16
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mCommand:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 18
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 21
    move-result v2

    .line 22
    aget v1, v1, v2

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eq v1, v2, :cond_1b

    .line 27
    goto :goto_26

    .line 28
    :cond_1b
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mCustElementName:Ljava/lang/String;

    .line 30
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mUniformName:Ljava/lang/String;

    .line 32
    iget-boolean v3, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mUniformAutoRefresh:Z

    .line 34
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 36
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->updateUniform(Ljava/lang/String;Ljava/lang/String;Z[Lcom/miui/maml/data/Expression;)V

    .line 39
    :cond_26
    :goto_26
    return-void
.end method
