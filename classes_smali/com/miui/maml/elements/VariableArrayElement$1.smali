.class Lcom/miui/maml/elements/VariableArrayElement$1;
.super Ljava/lang/Object;
.source "VariableArrayElement.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/VariableArrayElement;

.field public final synthetic val$vars:Lcom/miui/maml/data/Variables;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement$1;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 3
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement$1;->val$vars:Lcom/miui/maml/data/Variables;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$1;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 3
    invoke-static {v0}, Lcom/miui/maml/elements/VariableArrayElement;->access$100(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/miui/maml/elements/VariableArrayElement$Var;

    .line 9
    iget-object v2, p0, Lcom/miui/maml/elements/VariableArrayElement$1;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 11
    iget-object v3, p0, Lcom/miui/maml/elements/VariableArrayElement$1;->val$vars:Lcom/miui/maml/data/Variables;

    .line 13
    invoke-direct {v1, v2, v3, p1}, Lcom/miui/maml/elements/VariableArrayElement$Var;-><init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)V

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method
