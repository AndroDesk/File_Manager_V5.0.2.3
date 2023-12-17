.class Lcom/miui/maml/StylesManager$1;
.super Ljava/lang/Object;
.source "StylesManager.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/StylesManager;-><init>(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/StylesManager;


# direct methods
.method public constructor <init>(Lcom/miui/maml/StylesManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/StylesManager$1;->this$0:Lcom/miui/maml/StylesManager;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/miui/maml/StylesManager$Style;

    .line 3
    iget-object v1, p0, Lcom/miui/maml/StylesManager$1;->this$0:Lcom/miui/maml/StylesManager;

    .line 5
    invoke-direct {v0, v1, p1}, Lcom/miui/maml/StylesManager$Style;-><init>(Lcom/miui/maml/StylesManager;Lorg/w3c/dom/Element;)V

    .line 8
    iget-object p1, p0, Lcom/miui/maml/StylesManager$1;->this$0:Lcom/miui/maml/StylesManager;

    .line 10
    invoke-static {p1}, Lcom/miui/maml/StylesManager;->access$000(Lcom/miui/maml/StylesManager;)Ljava/util/HashMap;

    .line 13
    move-result-object p1

    .line 14
    iget-object v1, v0, Lcom/miui/maml/StylesManager$Style;->name:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    return-void
.end method
