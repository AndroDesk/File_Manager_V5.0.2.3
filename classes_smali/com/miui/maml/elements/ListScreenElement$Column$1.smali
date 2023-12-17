.class Lcom/miui/maml/elements/ListScreenElement$Column$1;
.super Ljava/lang/Object;
.source "ListScreenElement.java"

# interfaces
.implements Lcom/miui/maml/elements/VariableArrayElement$VarObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/ListScreenElement$Column;->load(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/ListScreenElement$Column;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ListScreenElement$Column;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$Column$1;->this$0:Lcom/miui/maml/elements/ListScreenElement$Column;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDataChange([Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column$1;->this$0:Lcom/miui/maml/elements/ListScreenElement$Column;

    .line 3
    iget-object v1, v0, Lcom/miui/maml/elements/ListScreenElement$Column;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 5
    iget-object v0, v0, Lcom/miui/maml/elements/ListScreenElement$Column;->mName:Ljava/lang/String;

    .line 7
    invoke-static {v1, v0, p1}, Lcom/miui/maml/elements/ListScreenElement;->access$700(Lcom/miui/maml/elements/ListScreenElement;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    return-void
.end method
