.class Lcom/miui/maml/elements/GraphicsElement$Callbacks;
.super Ljava/lang/Object;
.source "GraphicsElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/GraphicsElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callbacks"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "OnDraw"


# instance fields
.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/ActionCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

    .line 11
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_f
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 19
    move-result v1

    .line 20
    if-ge v0, v1, :cond_34

    .line 22
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-ne v1, v2, :cond_31

    .line 33
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lorg/w3c/dom/Element;

    .line 39
    invoke-static {v1, p2}, Lcom/miui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/ActionCommand;

    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_31

    .line 45
    iget-object v2, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_31
    add-int/lit8 v0, v0, 0x1

    .line 52
    goto :goto_f

    .line 53
    :cond_34
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

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

.method public perform()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

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

.method public resume()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GraphicsElement$Callbacks;->mCommands:Ljava/util/ArrayList;

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
