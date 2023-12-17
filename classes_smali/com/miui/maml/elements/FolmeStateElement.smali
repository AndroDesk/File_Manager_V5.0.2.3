.class public Lcom/miui/maml/elements/FolmeStateElement;
.super Lcom/miui/maml/elements/StateElement;
.source "FolmeStateElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FolmeState"


# instance fields
.field private mAttrs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/data/Expression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/StateElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    new-instance p2, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/miui/maml/elements/FolmeStateElement;->mAttrs:Landroid/util/ArrayMap;

    .line 11
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    .line 18
    move-result p2

    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_13
    if-ge v0, p2, :cond_33

    .line 22
    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_30

    .line 40
    iget-object v3, p0, Lcom/miui/maml/elements/FolmeStateElement;->mAttrs:Landroid/util/ArrayMap;

    .line 42
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_30
    add-int/lit8 v0, v0, 0x1

    .line 51
    goto :goto_13

    .line 52
    :cond_33
    return-void
.end method


# virtual methods
.method public getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;
    .registers 12

    .line 1
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 3
    invoke-direct {v0, p1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/miui/maml/elements/FolmeStateElement;->mAttrs:Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p1

    .line 16
    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_56

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 34
    invoke-static {v2}, Lcom/miui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_f

    .line 40
    instance-of v3, v2, Lmiuix/animation/property/ColorProperty;

    .line 42
    const-wide/16 v4, 0x2

    .line 44
    const/4 v6, 0x0

    .line 45
    const/4 v7, 0x1

    .line 46
    if-eqz v3, :cond_43

    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/miui/maml/data/Expression;

    .line 54
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 57
    move-result-wide v8

    .line 58
    double-to-long v8, v8

    .line 59
    long-to-int v1, v8

    .line 60
    new-array v3, v7, [J

    .line 62
    aput-wide v4, v3, v6

    .line 64
    invoke-virtual {v0, v2, v1, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;

    .line 67
    goto :goto_f

    .line 68
    :cond_43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/miui/maml/data/Expression;

    .line 74
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 77
    move-result-wide v8

    .line 78
    double-to-float v1, v8

    .line 79
    new-array v3, v7, [J

    .line 81
    aput-wide v4, v3, v6

    .line 83
    invoke-virtual {v0, v2, v1, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 86
    goto :goto_f

    .line 87
    :cond_56
    return-object v0
.end method

.method public getProperties()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/FolmeStateElement;->mAttrs:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
