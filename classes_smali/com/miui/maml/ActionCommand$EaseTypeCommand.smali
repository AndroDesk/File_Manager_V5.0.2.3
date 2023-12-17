.class Lcom/miui/maml/ActionCommand$EaseTypeCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EaseTypeCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "EaseTypeCommand"


# instance fields
.field private mEaseFun:Ljava/lang/String;

.field private mEaseParams:Ljava/lang/String;

.field private mEaseTypeExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 4
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ANIMATION_ITEM:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 6
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 11
    move-result-object p1

    .line 12
    const-string v0, "easeTypeExp"

    .line 14
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mEaseTypeExp:Lcom/miui/maml/data/Expression;

    .line 24
    const-string p1, "easeFunExp"

    .line 26
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mEaseFun:Ljava/lang/String;

    .line 32
    const-string p1, "easeParamsExp"

    .line 34
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mEaseParams:Ljava/lang/String;

    .line 40
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
    check-cast v0, Ljava/util/ArrayList;

    .line 7
    if-nez v0, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_27

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 26
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mEaseTypeExp:Lcom/miui/maml/data/Expression;

    .line 28
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mEaseParams:Ljava/lang/String;

    .line 34
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mEaseFun:Ljava/lang/String;

    .line 36
    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->changeInterpolator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    goto :goto_d

    .line 40
    :cond_27
    return-void
.end method
