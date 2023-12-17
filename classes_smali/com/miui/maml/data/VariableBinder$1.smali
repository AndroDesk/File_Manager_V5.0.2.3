.class Lcom/miui/maml/data/VariableBinder$1;
.super Ljava/lang/Object;
.source "VariableBinder.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/data/VariableBinder;->loadVariables(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/data/VariableBinder;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableBinder;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/VariableBinder$1;->this$0:Lcom/miui/maml/data/VariableBinder;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$1;->this$0:Lcom/miui/maml/data/VariableBinder;

    .line 3
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/VariableBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_f

    .line 9
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$1;->this$0:Lcom/miui/maml/data/VariableBinder;

    .line 11
    iget-object v0, v0, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_f
    return-void
.end method
