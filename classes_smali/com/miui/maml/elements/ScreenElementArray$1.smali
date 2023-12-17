.class Lcom/miui/maml/elements/ScreenElementArray$1;
.super Ljava/lang/Object;
.source "ScreenElementArray.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/ScreenElementArray;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/ScreenElementArray;

.field public final synthetic val$_root:Lcom/miui/maml/ScreenElementRoot;

.field public final synthetic val$count:I

.field public final synthetic val$indexVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElementArray;ILcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->this$0:Lcom/miui/maml/elements/ScreenElementArray;

    .line 3
    iput p2, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->val$count:I

    .line 5
    iput-object p3, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->val$_root:Lcom/miui/maml/ScreenElementRoot;

    .line 7
    iput-object p4, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->val$indexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->this$0:Lcom/miui/maml/elements/ScreenElementArray;

    .line 3
    const-string v1, "name"

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "Var"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_14
    iget v4, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->val$count:I

    .line 23
    if-ge v3, v4, :cond_5d

    .line 25
    if-eqz v1, :cond_22

    .line 27
    const-string v4, "dontAddToMap"

    .line 29
    const-string v5, "true"

    .line 31
    invoke-interface {p1, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    goto :goto_3d

    .line 35
    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const-string v5, "["

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v5, "]"

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    const-string v5, "namesSuffix"

    .line 59
    invoke-interface {p1, v5, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_3d
    iget-object v4, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->this$0:Lcom/miui/maml/elements/ScreenElementArray;

    .line 64
    invoke-static {v4, p1}, Lcom/miui/maml/elements/ScreenElementArray;->access$001(Lcom/miui/maml/elements/ScreenElementArray;Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    .line 67
    move-result-object v4

    .line 68
    if-eqz v4, :cond_5a

    .line 70
    if-nez v2, :cond_57

    .line 72
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->val$_root:Lcom/miui/maml/ScreenElementRoot;

    .line 74
    iget-object v5, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->val$indexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 76
    invoke-static {v2, v5}, Lcom/miui/maml/elements/ElementGroup;->createArrayGroup(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)Lcom/miui/maml/elements/ElementGroup;

    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2, v0}, Lcom/miui/maml/elements/ScreenElement;->setName(Ljava/lang/String;)V

    .line 83
    iget-object v5, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->this$0:Lcom/miui/maml/elements/ScreenElementArray;

    .line 85
    invoke-virtual {v5, v2}, Lcom/miui/maml/elements/ElementGroup;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 88
    :cond_57
    invoke-virtual {v2, v4}, Lcom/miui/maml/elements/ElementGroup;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 91
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    .line 93
    goto :goto_14

    .line 94
    :cond_5d
    return-void
.end method
