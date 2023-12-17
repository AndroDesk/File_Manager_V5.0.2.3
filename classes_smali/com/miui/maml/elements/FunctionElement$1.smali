.class Lcom/miui/maml/elements/FunctionElement$1;
.super Ljava/lang/Object;
.source "FunctionElement.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/FunctionElement;->load(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/FunctionElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/FunctionElement;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/FunctionElement$1;->this$0:Lcom/miui/maml/elements/FunctionElement;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement$1;->this$0:Lcom/miui/maml/elements/FunctionElement;

    .line 3
    invoke-static {p1, v0}, Lcom/miui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/ActionCommand;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_11

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement$1;->this$0:Lcom/miui/maml/elements/FunctionElement;

    .line 11
    invoke-static {v0}, Lcom/miui/maml/elements/FunctionElement;->access$000(Lcom/miui/maml/elements/FunctionElement;)Ljava/util/ArrayList;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_11
    return-void
.end method
