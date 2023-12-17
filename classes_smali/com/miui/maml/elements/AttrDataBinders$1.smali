.class Lcom/miui/maml/elements/AttrDataBinders$1;
.super Ljava/lang/Object;
.source "AttrDataBinders.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/AttrDataBinders;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/ContextVariables;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/AttrDataBinders;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/elements/AttrDataBinders;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$1;->this$0:Lcom/miui/maml/elements/AttrDataBinders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$1;->this$0:Lcom/miui/maml/elements/AttrDataBinders;

    invoke-static {v0}, Lcom/miui/maml/elements/AttrDataBinders;->access$000(Lcom/miui/maml/elements/AttrDataBinders;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v2, p0, Lcom/miui/maml/elements/AttrDataBinders$1;->this$0:Lcom/miui/maml/elements/AttrDataBinders;

    iget-object v2, v2, Lcom/miui/maml/elements/AttrDataBinders;->mVars:Lcom/miui/maml/data/ContextVariables;

    invoke-direct {v1, p1, v2}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/ContextVariables;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_1d

    :catch_13
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AttrDataBinders"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-void
.end method
