.class public Lcom/miui/maml/StylesManager$Style;
.super Ljava/lang/Object;
.source "StylesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/StylesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Style"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Style"


# instance fields
.field private base:Lcom/miui/maml/StylesManager$Style;

.field private mAttrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public final synthetic this$0:Lcom/miui/maml/StylesManager;


# direct methods
.method public constructor <init>(Lcom/miui/maml/StylesManager;Lorg/w3c/dom/Element;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/miui/maml/StylesManager$Style;->this$0:Lcom/miui/maml/StylesManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/miui/maml/StylesManager$Style;->mAttrs:Ljava/util/HashMap;

    .line 13
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 16
    move-result-object p2

    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_11
    invoke-interface {p2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    .line 21
    move-result v1

    .line 22
    if-ge v0, v1, :cond_4b

    .line 24
    invoke-interface {p2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    const-string v3, "name"

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2e

    .line 44
    iput-object v1, p0, Lcom/miui/maml/StylesManager$Style;->name:Ljava/lang/String;

    .line 46
    goto :goto_48

    .line 47
    :cond_2e
    const-string v3, "base"

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_43

    .line 55
    invoke-static {p1}, Lcom/miui/maml/StylesManager;->access$000(Lcom/miui/maml/StylesManager;)Ljava/util/HashMap;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/miui/maml/StylesManager$Style;

    .line 65
    iput-object v1, p0, Lcom/miui/maml/StylesManager$Style;->base:Lcom/miui/maml/StylesManager$Style;

    .line 67
    goto :goto_48

    .line 68
    :cond_43
    iget-object v3, p0, Lcom/miui/maml/StylesManager$Style;->mAttrs:Ljava/util/HashMap;

    .line 70
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :goto_48
    add-int/lit8 v0, v0, 0x1

    .line 75
    goto :goto_11

    .line 76
    :cond_4b
    return-void
.end method


# virtual methods
.method public getAttr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/StylesManager$Style;->mAttrs:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-object v0

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/miui/maml/StylesManager$Style;->base:Lcom/miui/maml/StylesManager$Style;

    .line 14
    if-eqz v0, :cond_14

    .line 16
    invoke-virtual {v0, p1}, Lcom/miui/maml/StylesManager$Style;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method
