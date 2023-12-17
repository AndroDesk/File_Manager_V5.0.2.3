.class Lcom/miui/maml/ActionCommand$FunctionPerformCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FunctionPerformCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FunctionCommand"


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 4
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 6
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 8
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
    if-eqz v0, :cond_f

    .line 7
    instance-of v1, v0, Lcom/miui/maml/elements/FunctionElement;

    .line 9
    if-eqz v1, :cond_f

    .line 11
    check-cast v0, Lcom/miui/maml/elements/FunctionElement;

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    .line 16
    :cond_f
    return-void
.end method
