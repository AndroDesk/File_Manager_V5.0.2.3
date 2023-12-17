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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string p1, "params"

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mParams:[Lcom/miui/maml/data/Expression;

    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mIsParamsValid:Z

    if-nez v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PbrCommand"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const-string p1, "uniformName"

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mUniformName:Ljava/lang/String;

    const-string p1, "custElementName"

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mCustElementName:Ljava/lang/String;

    const-string p1, "uniformRefresh"

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mUniformAutoRefresh:Z

    invoke-direct {p0, p2}, Lcom/miui/maml/ActionCommand$PbrCommand;->parseCommand(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private parseCommand(Lorg/w3c/dom/Element;)V
    .registers 3

    const-string v0, "command"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "updateUniform"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_16

    :cond_12
    sget-object p1, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->UPDATE_UNIFORM:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mCommand:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    :goto_16
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 6

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    instance-of v1, v0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;

    if-nez v1, :cond_b

    goto :goto_26

    :cond_b
    check-cast v0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;

    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$PbrCommand$CommandType:[I

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mCommand:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1b

    goto :goto_26

    :cond_1b
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mCustElementName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mUniformName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mUniformAutoRefresh:Z

    iget-object v4, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mParams:[Lcom/miui/maml/data/Expression;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->updateUniform(Ljava/lang/String;Ljava/lang/String;Z[Lcom/miui/maml/data/Expression;)V

    :cond_26
    :goto_26
    return-void
.end method
