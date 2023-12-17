.class abstract Lcom/miui/maml/ActionCommand$StatefulActionCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StatefulActionCommand"
.end annotation


# instance fields
.field private mVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 4
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {p1, p2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 14
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 16
    return-void
.end method


# virtual methods
.method public final updateState(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    int-to-double v1, p1

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 17
    return-void
.end method
