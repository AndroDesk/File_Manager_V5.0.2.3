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
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    .line 13
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    .line 18
    sget-object p2, Lcom/miui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 20
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    .line 24
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    .line 29
    if-eqz p1, :cond_70

    .line 31
    const-string v0, "type"

    .line 33
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    const-string v1, "string"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_31

    .line 45
    sget-object p2, Lcom/miui/maml/elements/VariableArrayElement$Type;->STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 47
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 49
    goto :goto_33

    .line 50
    :cond_31
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 52
    :goto_33
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 55
    move-result-object p2

    .line 56
    const-string v0, "Vars"

    .line 58
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Lcom/miui/maml/elements/VariableArrayElement$1;

    .line 64
    invoke-direct {v1, p0, p2}, Lcom/miui/maml/elements/VariableArrayElement$1;-><init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;)V

    .line 67
    const-string v2, "Var"

    .line 69
    invoke-static {v0, v2, v1}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 72
    const-string v0, "Items"

    .line 74
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 77
    move-result-object p1

    .line 78
    new-instance v0, Lcom/miui/maml/elements/VariableArrayElement$2;

    .line 80
    invoke-direct {v0, p0, p2}, Lcom/miui/maml/elements/VariableArrayElement$2;-><init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;)V

    .line 83
    const-string v1, "Item"

    .line 85
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 88
    iget-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 90
    if-eqz p1, :cond_70

    .line 92
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 101
    const-string v2, ".count"

    .line 103
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    const/4 v1, 0x1

    .line 108
    invoke-direct {p1, v0, p2, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 111
    iput-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCountVar:Lcom/miui/maml/data/IndexedVariable;

    .line 113
    :cond_70
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public doTick(J)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x0

    .line 8
    :goto_7
    if-ge p2, p1, :cond_17

    .line 10
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/miui/maml/elements/VariableArrayElement$Var;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/elements/VariableArrayElement$Var;->tick()V

    .line 21
    add-int/lit8 p2, p2, 0x1

    .line 23
    goto :goto_7

    .line 24
    :cond_17
    return-void
.end method

.method public getItemSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCount:I

    .line 3
    return v0
.end method

.method public init()V
    .registers 6

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_b
    if-ge v2, v0, :cond_1b

    .line 14
    iget-object v3, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/miui/maml/elements/VariableArrayElement$Var;

    .line 22
    invoke-virtual {v3}, Lcom/miui/maml/elements/VariableArrayElement$Var;->init()V

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_b

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCount:I

    .line 36
    iget-object v2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCountVar:Lcom/miui/maml/data/IndexedVariable;

    .line 38
    if-eqz v2, :cond_2b

    .line 40
    int-to-double v3, v0

    .line 41
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 44
    :cond_2b
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    .line 46
    if-nez v0, :cond_4a

    .line 48
    iget v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCount:I

    .line 50
    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    iput-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    .line 54
    :goto_35
    iget v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCount:I

    .line 56
    if-ge v1, v0, :cond_4a

    .line 58
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    .line 60
    iget-object v2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/miui/maml/elements/VariableArrayElement$Item;

    .line 68
    iget-object v2, v2, Lcom/miui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    .line 70
    aput-object v2, v0, v1

    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 74
    goto :goto_35

    .line 75
    :cond_4a
    return-void
.end method

.method public registerVarObserver(Lcom/miui/maml/elements/VariableArrayElement$VarObserver;Z)V
    .registers 3

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    if-eqz p2, :cond_10

    .line 6
    iget-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    .line 8
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    .line 13
    invoke-interface {p1, p2}, Lcom/miui/maml/elements/VariableArrayElement$VarObserver;->onDataChange([Ljava/lang/Object;)V

    .line 16
    goto :goto_15

    .line 17
    :cond_10
    iget-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    .line 19
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 22
    :goto_15
    return-void
.end method
