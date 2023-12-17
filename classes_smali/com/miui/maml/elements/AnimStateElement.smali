.class public Lcom/miui/maml/elements/AnimStateElement;
.super Lcom/miui/maml/elements/StateElement;
.source "AnimStateElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "AnimState"


# instance fields
.field private mAttrs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/data/IndexedVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 12

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/StateElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    iget-boolean p2, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 13
    if-nez p2, :cond_f

    .line 15
    return-void

    .line 16
    :cond_f
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    .line 23
    move-result p2

    .line 24
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_1c
    if-ge v1, p2, :cond_5d

    .line 31
    invoke-interface {p1, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    const-string v4, "name"

    .line 41
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_5a

    .line 47
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    invoke-static {v0, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 54
    move-result-object v2

    .line 55
    if-eqz v2, :cond_3d

    .line 57
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 60
    move-result-wide v4

    .line 61
    goto :goto_3f

    .line 62
    :cond_3d
    const-wide/16 v4, 0x0

    .line 64
    :goto_3f
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    iget-object v7, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 73
    const-string v8, "."

    .line 75
    invoke-static {v6, v7, v8, v3}, La/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v6

    .line 79
    const/4 v7, 0x1

    .line 80
    invoke-direct {v2, v6, v0, v7}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 83
    invoke-virtual {v2, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 86
    iget-object v4, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_5a
    add-int/lit8 v1, v1, 0x1

    .line 93
    goto :goto_1c

    .line 94
    :cond_5d
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1c

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/miui/maml/data/IndexedVariable;

    .line 23
    const-wide/16 v2, 0x0

    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 28
    goto :goto_a

    .line 29
    :cond_1c
    iget-object v0, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 34
    return-void
.end method

.method public getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;
    .registers 12

    .line 1
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 3
    invoke-direct {v0, p1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

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
    check-cast v1, Lcom/miui/maml/data/IndexedVariable;

    .line 54
    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

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
    check-cast v1, Lcom/miui/maml/data/IndexedVariable;

    .line 74
    invoke-virtual {v1}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

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
    iget-object v0, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public removeAttr([Ljava/lang/String;)V
    .registers 8

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    if-ge v1, v0, :cond_1d

    .line 5
    aget-object v2, p1, v1

    .line 7
    iget-object v3, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v3

    .line 13
    check-cast v3, Lcom/miui/maml/data/IndexedVariable;

    .line 15
    if-eqz v3, :cond_1a

    .line 17
    const-wide/16 v4, 0x0

    .line 19
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 22
    iget-object v3, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_2

    .line 30
    :cond_1d
    return-void
.end method

.method public updateAttr([Ljava/lang/String;[D)V
    .registers 9

    .line 1
    if-eqz p1, :cond_49

    .line 3
    if-eqz p2, :cond_49

    .line 5
    array-length v0, p1

    .line 6
    array-length v1, p2

    .line 7
    if-ne v0, v1, :cond_49

    .line 9
    array-length v0, p1

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_49

    .line 13
    iget-object v2, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    aget-object v3, p1, v1

    .line 17
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/miui/maml/data/IndexedVariable;

    .line 23
    if-nez v2, :cond_41

    .line 25
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    iget-object v4, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v4, "."

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    aget-object v4, p1, v1

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 54
    move-result-object v4

    .line 55
    const/4 v5, 0x1

    .line 56
    invoke-direct {v2, v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 59
    iget-object v3, p0, Lcom/miui/maml/elements/AnimStateElement;->mAttrs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    aget-object v4, p1, v1

    .line 63
    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_41
    aget-wide v3, p2, v1

    .line 68
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_a

    .line 74
    :cond_49
    return-void
.end method
