.class public Lcom/miui/maml/StylesManager;
.super Ljava/lang/Object;
.source "StylesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/StylesManager$Style;
    }
.end annotation


# instance fields
.field private mStyles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/maml/StylesManager$Style;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/StylesManager;->mStyles:Ljava/util/HashMap;

    .line 11
    new-instance v0, Lcom/miui/maml/StylesManager$1;

    .line 13
    invoke-direct {v0, p0}, Lcom/miui/maml/StylesManager$1;-><init>(Lcom/miui/maml/StylesManager;)V

    .line 16
    const-string v1, "Style"

    .line 18
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 21
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/StylesManager;)Ljava/util/HashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/StylesManager;->mStyles:Ljava/util/HashMap;

    .line 3
    return-object p0
.end method


# virtual methods
.method public getStyle(Ljava/lang/String;)Lcom/miui/maml/StylesManager$Style;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/StylesManager;->mStyles:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/miui/maml/StylesManager$Style;

    .line 9
    return-object p1
.end method
