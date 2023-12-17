.class Lcom/miui/maml/ActionCommand$MultiCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiCommand"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "MultiCommand"

.field public static final TAG_NAME1:Ljava/lang/String; = "GroupCommand"


# instance fields
.field public mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/ActionCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Lcom/miui/maml/ActionCommand$MultiCommand$1;

    .line 13
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/ActionCommand$MultiCommand$1;-><init>(Lcom/miui/maml/ActionCommand$MultiCommand;Lcom/miui/maml/elements/ScreenElement;)V

    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-static {p2, p1, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 20
    return-void
.end method


# virtual methods
.method public doPerform()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->perform()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public finish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->finish()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public init()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->init()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public pause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->pause()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public resume()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$MultiCommand;->mCommands:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->resume()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method
