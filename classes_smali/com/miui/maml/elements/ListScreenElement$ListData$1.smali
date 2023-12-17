.class Lcom/miui/maml/elements/ListScreenElement$ListData$1;
.super Ljava/lang/Object;
.source "ListScreenElement.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/ListScreenElement$ListData;->load(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/ListScreenElement$ListData;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ListScreenElement$ListData;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ListData$1;->this$0:Lcom/miui/maml/elements/ListScreenElement$ListData;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$ListData$1;->this$0:Lcom/miui/maml/elements/ListScreenElement$ListData;

    .line 3
    iget-object v1, v0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mColumns:Ljava/util/ArrayList;

    .line 5
    new-instance v2, Lcom/miui/maml/elements/ListScreenElement$Column;

    .line 7
    iget-object v3, v0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 9
    iget-object v0, v0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 11
    invoke-direct {v2, p1, v3, v0}, Lcom/miui/maml/elements/ListScreenElement$Column;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/elements/ListScreenElement;)V

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method
