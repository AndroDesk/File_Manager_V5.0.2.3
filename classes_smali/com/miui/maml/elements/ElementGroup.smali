.class public Lcom/miui/maml/elements/ElementGroup;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "ElementGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ElementGroup$LinearDirection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML_ElementGroup"

.field public static final TAG_NAME:Ljava/lang/String; = "ElementGroup"

.field public static final TAG_NAME1:Ljava/lang/String; = "Group"


# instance fields
.field public mClip:Z

.field public mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation
.end field

.field private mHovered:Z

.field private mIndexVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLayered:Z

.field private mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

.field private mTouched:Z


# direct methods
.method private constructor <init>(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)V
    .registers 4

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 7
    sget-object p1, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->None:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    iput-object p1, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 8
    iput-object p2, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 3
    sget-object p2, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->None:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    iput-object p2, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 4
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public static createArrayGroup(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)Lcom/miui/maml/elements/ElementGroup;
    .registers 3

    .line 1
    new-instance v0, Lcom/miui/maml/elements/ElementGroup;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)V

    .line 6
    return-object v0
.end method

.method public static isArrayGroup(Lcom/miui/maml/elements/ScreenElement;)Z
    .registers 2

    .line 1
    instance-of v0, p0, Lcom/miui/maml/elements/ElementGroup;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    check-cast p0, Lcom/miui/maml/elements/ElementGroup;

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->isArray()Z

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_e

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 p0, 0x0

    .line 16
    :goto_f
    return p0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 6

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    const-string v0, "clip"

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    .line 16
    const-string v0, "layered"

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Lcom/miui/maml/elements/ElementGroup;->mLayered:Z

    .line 28
    const-string v0, "linear"

    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const-string v1, "h"

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2e

    .line 42
    sget-object v0, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->Horizontal:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 44
    iput-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 46
    goto :goto_3a

    .line 47
    :cond_2e
    const-string v1, "v"

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3a

    .line 55
    sget-object v0, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->Vertical:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 57
    iput-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 59
    :cond_3a
    :goto_3a
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 66
    move-result v0

    .line 67
    const/4 v1, 0x0

    .line 68
    :goto_43
    if-ge v1, v0, :cond_60

    .line 70
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 77
    move-result v2

    .line 78
    const/4 v3, 0x1

    .line 79
    if-ne v2, v3, :cond_5d

    .line 81
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lorg/w3c/dom/Element;

    .line 87
    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/ElementGroup;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 94
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    .line 96
    goto :goto_43

    .line 97
    :cond_60
    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 13
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 21
    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method

.method public addElement(Lcom/miui/maml/elements/ScreenElement;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_a

    .line 3
    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/ScreenElement;->setParent(Lcom/miui/maml/elements/ElementGroup;)V

    .line 6
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_a
    return-void
.end method

.method public doRender(Landroid/graphics/Canvas;)V
    .registers 14

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getLeft(FF)F

    .line 13
    move-result v10

    .line 14
    invoke-virtual {p0, v2, v1}, Lcom/miui/maml/elements/ScreenElement;->getTop(FF)F

    .line 17
    move-result v11

    .line 18
    iget-boolean v3, p0, Lcom/miui/maml/elements/ElementGroup;->mLayered:Z

    .line 20
    if-eqz v3, :cond_2f

    .line 22
    cmpl-float v3, v0, v2

    .line 24
    if-lez v3, :cond_2f

    .line 26
    cmpl-float v3, v1, v2

    .line 28
    if-lez v3, :cond_2f

    .line 30
    add-float v6, v10, v0

    .line 32
    add-float v7, v11, v1

    .line 34
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAlpha()I

    .line 37
    move-result v8

    .line 38
    const/16 v9, 0x1f

    .line 40
    move-object v3, p1

    .line 41
    move v4, v10

    .line 42
    move v5, v11

    .line 43
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 46
    move-result v3

    .line 47
    goto :goto_33

    .line 48
    :cond_2f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 51
    move-result v3

    .line 52
    :goto_33
    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 55
    cmpl-float v4, v0, v2

    .line 57
    if-lez v4, :cond_45

    .line 59
    cmpl-float v4, v1, v2

    .line 61
    if-lez v4, :cond_45

    .line 63
    iget-boolean v4, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    .line 65
    if-eqz v4, :cond_45

    .line 67
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 70
    :cond_45
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->doRenderChildren(Landroid/graphics/Canvas;)V

    .line 73
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 76
    return-void
.end method

.method public doRenderChildren(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 10
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 18
    iget-object v3, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 20
    if-eqz v3, :cond_19

    .line 22
    int-to-double v4, v1

    .line 23
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 26
    :cond_19
    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_7

    .line 32
    :cond_1f
    return-void
.end method

.method public doTick(J)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTickChildren(J)V

    .line 7
    return-void
.end method

.method public doTickChildren(J)V
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    move v2, v1

    .line 11
    :goto_a
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x1

    .line 13
    if-ge v3, v0, :cond_7e

    .line 15
    iget-object v6, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v6

    .line 21
    check-cast v6, Lcom/miui/maml/elements/ScreenElement;

    .line 23
    iget-object v7, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 25
    if-eqz v7, :cond_1e

    .line 27
    int-to-double v8, v3

    .line 28
    invoke-virtual {v7, v8, v9}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 31
    :cond_1e
    invoke-virtual {v6, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->tick(J)V

    .line 34
    iget-object v7, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 36
    sget-object v8, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->None:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 38
    if-eq v7, v8, :cond_7b

    .line 40
    instance-of v7, v6, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 42
    if-eqz v7, :cond_7b

    .line 44
    invoke-virtual {v6}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_7b

    .line 50
    check-cast v6, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 52
    sget-object v7, Lcom/miui/maml/elements/ElementGroup$1;->$SwitchMap$com$miui$maml$elements$ElementGroup$LinearDirection:[I

    .line 54
    iget-object v8, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 56
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 59
    move-result v8

    .line 60
    aget v7, v7, v8

    .line 62
    if-eq v7, v5, :cond_5e

    .line 64
    if-eq v7, v4, :cond_42

    .line 66
    goto :goto_7b

    .line 67
    :cond_42
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getMarginTop()F

    .line 70
    move-result v4

    .line 71
    add-float/2addr v4, v1

    .line 72
    float-to-double v7, v4

    .line 73
    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 76
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 79
    move-result v1

    .line 80
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getMarginBottom()F

    .line 83
    move-result v5

    .line 84
    add-float/2addr v5, v1

    .line 85
    add-float/2addr v5, v4

    .line 86
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 89
    move-result v1

    .line 90
    cmpg-float v4, v2, v1

    .line 92
    if-gez v4, :cond_7a

    .line 94
    goto :goto_79

    .line 95
    :cond_5e
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getMarginLeft()F

    .line 98
    move-result v4

    .line 99
    add-float/2addr v4, v1

    .line 100
    float-to-double v7, v4

    .line 101
    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/elements/AnimatedScreenElement;->setX(D)V

    .line 104
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 107
    move-result v1

    .line 108
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getMarginRight()F

    .line 111
    move-result v5

    .line 112
    add-float/2addr v5, v1

    .line 113
    add-float/2addr v5, v4

    .line 114
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 117
    move-result v1

    .line 118
    cmpg-float v4, v2, v1

    .line 120
    if-gez v4, :cond_7a

    .line 122
    :goto_79
    move v2, v1

    .line 123
    :cond_7a
    move v1, v5

    .line 124
    :cond_7b
    :goto_7b
    add-int/lit8 v3, v3, 0x1

    .line 126
    goto :goto_a

    .line 127
    :cond_7e
    sget-object p1, Lcom/miui/maml/elements/ElementGroup$1;->$SwitchMap$com$miui$maml$elements$ElementGroup$LinearDirection:[I

    .line 129
    iget-object p2, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 131
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 134
    move-result p2

    .line 135
    aget p1, p1, p2

    .line 137
    if-eq p1, v5, :cond_a4

    .line 139
    if-eq p1, v4, :cond_8d

    .line 141
    goto :goto_ba

    .line 142
    :cond_8d
    float-to-double p1, v1

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->setHeight(D)V

    .line 146
    float-to-double v0, v2

    .line 147
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setWidth(D)V

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 153
    move-result-wide p1

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->setActualHeight(D)V

    .line 157
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 160
    move-result-wide p1

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->setActualWidth(D)V

    .line 164
    goto :goto_ba

    .line 165
    :cond_a4
    float-to-double p1, v1

    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->setWidth(D)V

    .line 169
    float-to-double v0, v2

    .line 170
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setHeight(D)V

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 176
    move-result-wide p1

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->setActualWidth(D)V

    .line 180
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 183
    move-result-wide p1

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->setActualHeight(D)V

    .line 187
    :goto_ba
    return-void
.end method

.method public findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-object v0

    .line 8
    :cond_7
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_e
    if-ge v1, v0, :cond_22

    .line 17
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 25
    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_1f

    .line 31
    return-object v2

    .line 32
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_e

    .line 35
    :cond_22
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method

.method public finish()V
    .registers 6

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_28

    .line 13
    :try_start_c
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 21
    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->finish()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_18

    .line 24
    goto :goto_25

    .line 25
    :catch_18
    move-exception v2

    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    const-string v4, "MAML_ElementGroup"

    .line 32
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    :goto_25
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_a

    .line 41
    :cond_28
    return-void
.end method

.method public getChild(I)Lcom/miui/maml/elements/ScreenElement;
    .registers 3

    .line 1
    if-ltz p1, :cond_14

    .line 3
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v0

    .line 9
    if-lt p1, v0, :cond_b

    .line 11
    goto :goto_14

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/miui/maml/elements/ScreenElement;

    .line 20
    return-object p1

    .line 21
    :cond_14
    :goto_14
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public getElements()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getParentLeft()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 7
    if-nez v1, :cond_a

    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_e

    .line 11
    :cond_a
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getParentLeft()F

    .line 14
    move-result v1

    .line 15
    :goto_e
    add-float/2addr v0, v1

    .line 16
    return v0
.end method

.method public getParentTop()F
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 7
    if-nez v1, :cond_a

    .line 9
    const/4 v1, 0x0

    .line 10
    goto :goto_e

    .line 11
    :cond_a
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getParentTop()F

    .line 14
    move-result v1

    .line 15
    :goto_e
    add-float/2addr v0, v1

    .line 16
    return v0
.end method

.method public getSize()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public init()V
    .registers 6

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_22

    .line 13
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 15
    if-eqz v2, :cond_14

    .line 17
    int-to-double v3, v1

    .line 18
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 21
    :cond_14
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 29
    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->init()V

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_a

    .line 35
    :cond_22
    return-void
.end method

.method public isArray()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public isLayered()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ElementGroup;->mLayered:Z

    .line 3
    return v0
.end method

.method public onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mFactory:Lcom/miui/maml/elements/ScreenElementFactory;

    .line 7
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/miui/maml/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 16
    move-result v2

    .line 17
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 20
    move-result v0

    .line 21
    iget-boolean v2, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    .line 23
    if-eqz v2, :cond_24

    .line 25
    if-nez v0, :cond_24

    .line 27
    iget-boolean v0, p0, Lcom/miui/maml/elements/ElementGroup;->mHovered:Z

    .line 29
    if-nez v0, :cond_1f

    .line 31
    return v1

    .line 32
    :cond_1f
    const/16 v0, 0xa

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v0

    .line 43
    const/4 v2, 0x1

    .line 44
    sub-int/2addr v0, v2

    .line 45
    :goto_2c
    if-ltz v0, :cond_49

    .line 47
    iget-object v3, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/miui/maml/elements/ScreenElement;

    .line 55
    iget-object v4, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 57
    if-eqz v4, :cond_3e

    .line 59
    int-to-double v5, v0

    .line 60
    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 63
    :cond_3e
    invoke-virtual {v3, p1}, Lcom/miui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_46

    .line 69
    move v1, v2

    .line 70
    goto :goto_49

    .line 71
    :cond_46
    add-int/lit8 v0, v0, -0x1

    .line 73
    goto :goto_2c

    .line 74
    :cond_49
    :goto_49
    if-eqz v1, :cond_4c

    .line 76
    goto :goto_50

    .line 77
    :cond_4c
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    .line 80
    move-result v2

    .line 81
    :goto_50
    iput-boolean v2, p0, Lcom/miui/maml/elements/ElementGroup;->mHovered:Z

    .line 83
    return v2
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .registers 11

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 20
    move-result v3

    .line 21
    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 24
    move-result v2

    .line 25
    iget-boolean v3, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    .line 27
    if-eqz v3, :cond_27

    .line 29
    if-nez v2, :cond_27

    .line 31
    iget-boolean v2, p0, Lcom/miui/maml/elements/ElementGroup;->mTouched:Z

    .line 33
    if-nez v2, :cond_23

    .line 35
    return v1

    .line 36
    :cond_23
    const/4 v2, 0x3

    .line 37
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 40
    :cond_27
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 45
    move-result v2

    .line 46
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 48
    invoke-virtual {v3}, Lcom/miui/maml/ScreenElementRoot;->version()I

    .line 51
    move-result v3

    .line 52
    const/4 v4, 0x2

    .line 53
    const/4 v5, 0x1

    .line 54
    if-lt v3, v4, :cond_39

    .line 56
    move v3, v5

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    move v3, v1

    .line 59
    :goto_3a
    if-eqz v3, :cond_59

    .line 61
    sub-int/2addr v2, v5

    .line 62
    :goto_3d
    if-ltz v2, :cond_77

    .line 64
    iget-object v3, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Lcom/miui/maml/elements/ScreenElement;

    .line 72
    iget-object v4, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 74
    if-eqz v4, :cond_4f

    .line 76
    int-to-double v6, v2

    .line 77
    invoke-virtual {v4, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 80
    :cond_4f
    invoke-virtual {v3, p1}, Lcom/miui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_56

    .line 86
    goto :goto_72

    .line 87
    :cond_56
    add-int/lit8 v2, v2, -0x1

    .line 89
    goto :goto_3d

    .line 90
    :cond_59
    move v3, v1

    .line 91
    :goto_5a
    if-ge v3, v2, :cond_77

    .line 93
    iget-object v4, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Lcom/miui/maml/elements/ScreenElement;

    .line 101
    iget-object v6, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 103
    if-eqz v6, :cond_6c

    .line 105
    int-to-double v7, v3

    .line 106
    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 109
    :cond_6c
    invoke-virtual {v4, p1}, Lcom/miui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_74

    .line 115
    :goto_72
    move v1, v5

    .line 116
    goto :goto_77

    .line 117
    :cond_74
    add-int/lit8 v3, v3, 0x1

    .line 119
    goto :goto_5a

    .line 120
    :cond_77
    :goto_77
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 123
    if-eqz v1, :cond_7d

    .line 125
    goto :goto_81

    .line 126
    :cond_7d
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    .line 129
    move-result v5

    .line 130
    :goto_81
    iput-boolean v5, p0, Lcom/miui/maml/elements/ElementGroup;->mTouched:Z

    .line 132
    return v5
.end method

.method public onVisibilityChange(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 4
    iget-object p1, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_a
    if-ge v0, p1, :cond_1a

    .line 13
    iget-object v1, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/miui/maml/elements/ScreenElement;

    .line 21
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method

.method public pause()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->pause()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 13
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 21
    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method

.method public pauseAnim(J)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 13
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 21
    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method

.method public playAnim(JJJZZ)V
    .registers 22

    .line 1
    move-object v0, p0

    .line 2
    invoke-super/range {p0 .. p8}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 5
    iget-object v1, v0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_b
    if-ge v2, v1, :cond_2d

    .line 14
    iget-object v3, v0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 16
    if-eqz v3, :cond_15

    .line 18
    int-to-double v4, v2

    .line 19
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 22
    :cond_15
    iget-object v3, v0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    move-object v4, v3

    .line 29
    check-cast v4, Lcom/miui/maml/elements/ScreenElement;

    .line 31
    move-wide v5, p1

    .line 32
    move-wide/from16 v7, p3

    .line 34
    move-wide/from16 v9, p5

    .line 36
    move/from16 v11, p7

    .line 38
    move/from16 v12, p8

    .line 40
    invoke-virtual/range {v4 .. v12}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_b

    .line 46
    :cond_2d
    return-void
.end method

.method public removeAllElements()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 9
    return-void
.end method

.method public removeElement(Lcom/miui/maml/elements/ScreenElement;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 9
    return-void
.end method

.method public reset(J)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 13
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 21
    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method

.method public resume()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 13
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 21
    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method

.method public resumeAnim(J)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 13
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 21
    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_22

    .line 13
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 15
    if-eqz v2, :cond_14

    .line 17
    int-to-double v3, v1

    .line 18
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 21
    :cond_14
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 29
    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_a

    .line 35
    :cond_22
    return-void
.end method

.method public setClip(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    .line 3
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 13
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 21
    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 13
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 21
    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_a

    .line 27
    :cond_1a
    return-void
.end method
