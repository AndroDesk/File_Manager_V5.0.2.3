.class public Lcom/miui/maml/elements/ScreenElementArray;
.super Lcom/miui/maml/elements/ElementGroup;
.source "ScreenElementArray.java"


# static fields
.field private static final DEF_INDEX_VAR_NAME:Ljava/lang/String; = "__i"

.field public static final TAG_NAME:Ljava/lang/String; = "Array"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 8

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    const-string v0, "count"

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 10
    move-result v0

    .line 11
    const-string v1, "indexName"

    .line 13
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_18

    .line 23
    const-string v1, "__i"

    .line 25
    :cond_18
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 27
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-direct {v2, v1, v3, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 35
    const/4 v1, 0x0

    .line 36
    new-instance v3, Lcom/miui/maml/elements/ScreenElementArray$1;

    .line 38
    invoke-direct {v3, p0, v0, p2, v2}, Lcom/miui/maml/elements/ScreenElementArray$1;-><init>(Lcom/miui/maml/elements/ScreenElementArray;ILcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)V

    .line 41
    invoke-static {p1, v1, v3}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 44
    return-void
.end method

.method public static synthetic access$001(Lcom/miui/maml/elements/ScreenElementArray;Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method
