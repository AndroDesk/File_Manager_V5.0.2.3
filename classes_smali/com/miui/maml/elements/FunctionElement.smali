.class public Lcom/miui/maml/elements/FunctionElement;
.super Lcom/miui/maml/elements/ScreenElement;
.source "FunctionElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Function"


# instance fields
.field private enable:Z

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
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    .line 11
    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/miui/maml/elements/FunctionElement;->enable:Z

    .line 14
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/FunctionElement;->load(Lorg/w3c/dom/Element;)V

    .line 17
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/FunctionElement;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const/4 v0, 0x0

    .line 5
    new-instance v1, Lcom/miui/maml/elements/FunctionElement$1;

    .line 7
    invoke-direct {v1, p0}, Lcom/miui/maml/elements/FunctionElement$1;-><init>(Lcom/miui/maml/elements/FunctionElement;)V

    .line 10
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 13
    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public finish()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->finish()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_19

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 22
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->finish()V

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method public init()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_19

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 22
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->init()V

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method public pause()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_19

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 22
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->pause()V

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method

.method public perform()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/FunctionElement;->enable:Z

    .line 3
    if-eqz v0, :cond_36

    .line 5
    :try_start_4
    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_36

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 23
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->perform()V
    :try_end_19
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_19} :catch_1a

    .line 26
    goto :goto_a

    .line 27
    :catch_1a
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/miui/maml/elements/FunctionElement;->enable:Z

    .line 30
    const-string v0, "Function "

    .line 32
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, " was disabled"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    const-string v1, "Function"

    .line 52
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_36
    return-void
.end method

.method public resume()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_19

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 22
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->resume()V

    .line 25
    goto :goto_9

    .line 26
    :cond_19
    return-void
.end method
