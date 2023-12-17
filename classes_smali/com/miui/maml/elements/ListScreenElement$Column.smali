.class public Lcom/miui/maml/elements/ListScreenElement$Column;
.super Ljava/lang/Object;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation


# instance fields
.field public mList:Lcom/miui/maml/elements/ListScreenElement;

.field public mName:Ljava/lang/String;

.field public mObserver:Lcom/miui/maml/elements/VariableArrayElement$VarObserver;

.field public mRoot:Lcom/miui/maml/ScreenElementRoot;

.field public mTarget:Ljava/lang/String;

.field public mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/elements/ListScreenElement;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    iput-object p3, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 8
    if-eqz p1, :cond_c

    .line 10
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ListScreenElement$Column;->load(Lorg/w3c/dom/Element;)V

    .line 13
    :cond_c
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 3

    .line 1
    const-string v0, "name"

    .line 3
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mName:Ljava/lang/String;

    .line 9
    const-string v0, "target"

    .line 11
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    .line 17
    new-instance p1, Lcom/miui/maml/elements/ListScreenElement$Column$1;

    .line 19
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/ListScreenElement$Column$1;-><init>(Lcom/miui/maml/elements/ListScreenElement$Column;)V

    .line 22
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mObserver:Lcom/miui/maml/elements/VariableArrayElement$VarObserver;

    .line 24
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mObserver:Lcom/miui/maml/elements/VariableArrayElement$VarObserver;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/VariableArrayElement;->registerVarObserver(Lcom/miui/maml/elements/VariableArrayElement$VarObserver;Z)V

    .line 11
    :cond_a
    return-void
.end method

.method public init()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;

    .line 3
    if-nez v0, :cond_23

    .line 5
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 7
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Lcom/miui/maml/elements/VariableArrayElement;

    .line 15
    if-eqz v1, :cond_15

    .line 17
    check-cast v0, Lcom/miui/maml/elements/VariableArrayElement;

    .line 19
    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;

    .line 21
    goto :goto_23

    .line 22
    :cond_15
    const-string v0, "can\'t find VarArray:"

    .line 24
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    .line 30
    const-string v2, "ListScreenElement"

    .line 32
    invoke-static {v0, v1, v2}, La/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void

    .line 36
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;

    .line 38
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mObserver:Lcom/miui/maml/elements/VariableArrayElement$VarObserver;

    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/VariableArrayElement;->registerVarObserver(Lcom/miui/maml/elements/VariableArrayElement$VarObserver;Z)V

    .line 44
    return-void
.end method
