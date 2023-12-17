.class public Lcom/miui/maml/elements/VariableArrayElement;
.super Lcom/miui/maml/elements/ScreenElement;
.source "VariableArrayElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/VariableArrayElement$Item;,
        Lcom/miui/maml/elements/VariableArrayElement$Var;,
        Lcom/miui/maml/elements/VariableArrayElement$VarObserver;,
        Lcom/miui/maml/elements/VariableArrayElement$Type;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VarArray"


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/VariableArrayElement$Item;",
            ">;"
        }
    .end annotation
.end field

.field public mData:[Ljava/lang/Object;

.field private mItemCount:I

.field private mItemCountVar:Lcom/miui/maml/data/IndexedVariable;

.field public mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

.field public mVarObserver:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/miui/maml/elements/VariableArrayElement$VarObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mVars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/VariableArrayElement$Var;",
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
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    sget-object p2, Lcom/miui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lcom/miui/maml/elements/VariableArrayElement$Type;

    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    if-eqz p1, :cond_70

    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object p2, Lcom/miui/maml/elements/VariableArrayElement$Type;->STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;

    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    goto :goto_33

    :cond_31
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    :goto_33
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string v0, "Vars"

    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    new-instance v1, Lcom/miui/maml/elements/VariableArrayElement$1;

    invoke-direct {v1, p0, p2}, Lcom/miui/maml/elements/VariableArrayElement$1;-><init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;)V

    const-string v2, "Var"

    invoke-static {v0, v2, v1}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    const-string v0, "Items"

    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    new-instance v0, Lcom/miui/maml/elements/VariableArrayElement$2;

    invoke-direct {v0, p0, p2}, Lcom/miui/maml/elements/VariableArrayElement$2;-><init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;)V

    const-string v1, "Item"

    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    iget-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz p1, :cond_70

    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v2, ".count"

    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, p2, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCountVar:Lcom/miui/maml/data/IndexedVariable;

    :cond_70
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public doTick(J)V
    .registers 4

    iget-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_7
    if-ge p2, p1, :cond_17

    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/elements/VariableArrayElement$Var;

    invoke-virtual {v0}, Lcom/miui/maml/elements/VariableArrayElement$Var;->tick()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public getItemSize()I
    .registers 2

    iget v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCount:I

    return v0
.end method

.method public init()V
    .registers 6

    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_1b

    iget-object v3, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/maml/elements/VariableArrayElement$Var;

    invoke-virtual {v3}, Lcom/miui/maml/elements/VariableArrayElement$Var;->init()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1b
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCount:I

    iget-object v2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCountVar:Lcom/miui/maml/data/IndexedVariable;

    if-eqz v2, :cond_2b

    int-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    :cond_2b
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    if-nez v0, :cond_4a

    iget v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCount:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    :goto_35
    iget v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCount:I

    if-ge v1, v0, :cond_4a

    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/elements/VariableArrayElement$Item;

    iget-object v2, v2, Lcom/miui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_4a
    return-void
.end method

.method public registerVarObserver(Lcom/miui/maml/elements/VariableArrayElement$VarObserver;Z)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    invoke-interface {p1, p2}, Lcom/miui/maml/elements/VariableArrayElement$VarObserver;->onDataChange([Ljava/lang/Object;)V

    goto :goto_15

    :cond_10
    iget-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_15
    return-void
.end method
