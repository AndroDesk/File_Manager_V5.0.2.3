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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/StylesManager;Lorg/w3c/dom/Element;)V
    .registers 7

    iput-object p1, p0, Lcom/miui/maml/StylesManager$Style;->this$0:Lcom/miui/maml/StylesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/StylesManager$Style;->mAttrs:Ljava/util/HashMap;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p2

    const/4 v0, 0x0

    :goto_11
    invoke-interface {p2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_4b

    invoke-interface {p2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iput-object v1, p0, Lcom/miui/maml/StylesManager$Style;->name:Ljava/lang/String;

    goto :goto_48

    :cond_2e
    const-string v3, "base"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-static {p1}, Lcom/miui/maml/StylesManager;->access$000(Lcom/miui/maml/StylesManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/StylesManager$Style;

    iput-object v1, p0, Lcom/miui/maml/StylesManager$Style;->base:Lcom/miui/maml/StylesManager$Style;

    goto :goto_48

    :cond_43
    iget-object v3, p0, Lcom/miui/maml/StylesManager$Style;->mAttrs:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_4b
    return-void
.end method


# virtual methods
.method public getAttr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/miui/maml/StylesManager$Style;->mAttrs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/miui/maml/StylesManager$Style;->base:Lcom/miui/maml/StylesManager$Style;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Lcom/miui/maml/StylesManager$Style;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method
