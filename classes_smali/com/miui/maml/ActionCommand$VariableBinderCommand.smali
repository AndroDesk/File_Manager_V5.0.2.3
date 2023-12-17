.class Lcom/miui/maml/ActionCommand$VariableBinderCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VariableBinderCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BinderCommand"


# instance fields
.field private mBinder:Lcom/miui/maml/data/VariableBinder;

.field private mCommand:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    sget-object p1, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->Invalid:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    const-string p1, "name"

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mName:Ljava/lang/String;

    const-string p1, "command"

    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "refresh"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    sget-object p1, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    :cond_21
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lcom/miui/maml/data/VariableBinder;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    goto :goto_17

    :cond_12
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lcom/miui/maml/data/VariableBinder;

    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->refresh()V

    :cond_17
    :goto_17
    return-void
.end method

.method public init()V
    .registers 3

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findBinder(Ljava/lang/String;)Lcom/miui/maml/data/VariableBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lcom/miui/maml/data/VariableBinder;

    return-void
.end method
