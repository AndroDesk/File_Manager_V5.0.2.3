.class public Lcom/miui/maml/CommandTriggers;
.super Ljava/lang/Object;
.source "CommandTriggers.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CommandTriggers"

.field public static final TAG_NAME:Ljava/lang/String; = "Triggers"


# instance fields
.field private mTriggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/CommandTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    .line 11
    if-eqz p1, :cond_f

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/CommandTriggers;->load(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 16
    :cond_f
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V
    .registers 7

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_5
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_36

    .line 12
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v1, v2, :cond_33

    .line 23
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lorg/w3c/dom/Element;

    .line 29
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    const-string v3, "Trigger"

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_29

    .line 41
    goto :goto_33

    .line 42
    :cond_29
    iget-object v2, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    .line 44
    new-instance v3, Lcom/miui/maml/CommandTrigger;

    .line 46
    invoke-direct {v3, v1, p2}, Lcom/miui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 49
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_33
    :goto_33
    add-int/lit8 v0, v0, 0x1

    .line 54
    goto :goto_5

    .line 55
    :cond_36
    return-void
.end method


# virtual methods
.method public add(Lcom/miui/maml/CommandTrigger;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_19

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/maml/CommandTrigger;

    .line 19
    invoke-virtual {v1, p1}, Lcom/miui/maml/CommandTrigger;->isAction(Ljava/lang/String;)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_6

    .line 25
    return-object v1

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method public finish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/miui/maml/CommandTrigger;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/CommandTrigger;->finish()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public init()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/miui/maml/CommandTrigger;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/CommandTrigger;->init()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public onAction(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/miui/maml/CommandTrigger;

    .line 19
    invoke-virtual {v1, p1}, Lcom/miui/maml/CommandTrigger;->onAction(Ljava/lang/String;)V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public pause()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/miui/maml/CommandTrigger;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/CommandTrigger;->pause()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method public resume()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/CommandTriggers;->mTriggers:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/miui/maml/CommandTrigger;

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/CommandTrigger;->resume()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method
