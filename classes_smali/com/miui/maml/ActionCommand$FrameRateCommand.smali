.class Lcom/miui/maml/ActionCommand$FrameRateCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameRateCommand"
.end annotation


# static fields
.field private static final TAG_NAME:Ljava/lang/String; = "FrameRateCommand"


# instance fields
.field private mRate:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 4
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 7
    move-result-object p1

    .line 8
    const-string v0, "rate"

    .line 10
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 14
    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FrameRateCommand;->mRate:Lcom/miui/maml/data/Expression;

    .line 20
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FrameRateCommand;->mRate:Lcom/miui/maml/data/Expression;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$FrameRateCommand;->mRate:Lcom/miui/maml/data/Expression;

    .line 11
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 14
    move-result-wide v1

    .line 15
    double-to-float v1, v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->requestFrameRateByCommand(F)V

    .line 19
    :cond_12
    return-void
.end method
