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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/maml/elements/FunctionElement;->enable:Z

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/FunctionElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/FunctionElement;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    return-object p0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    new-instance v1, Lcom/miui/maml/elements/FunctionElement$1;

    invoke-direct {v1, p0}, Lcom/miui/maml/elements/FunctionElement$1;-><init>(Lcom/miui/maml/elements/FunctionElement;)V

    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public finish()V
    .registers 3

    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->finish()V

    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->finish()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public init()V
    .registers 3

    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->init()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public pause()V
    .registers 3

    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->pause()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public perform()V
    .registers 3

    iget-boolean v0, p0, Lcom/miui/maml/elements/FunctionElement;->enable:Z

    if-eqz v0, :cond_36

    :try_start_4
    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->perform()V
    :try_end_19
    .catch Ljava/lang/StackOverflowError; {:try_start_4 .. :try_end_19} :catch_1a

    goto :goto_a

    :catch_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/maml/elements/FunctionElement;->enable:Z

    const-string v0, "Function "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Function"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void
.end method

.method public resume()V
    .registers 3

    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/ActionCommand;

    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->resume()V

    goto :goto_9

    :cond_19
    return-void
.end method
