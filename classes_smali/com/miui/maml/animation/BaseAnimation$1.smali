.class Lcom/miui/maml/animation/BaseAnimation$1;
.super Ljava/lang/Object;
.source "BaseAnimation.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/animation/BaseAnimation;->load(Lorg/w3c/dom/Element;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/animation/BaseAnimation;


# direct methods
.method public constructor <init>(Lcom/miui/maml/animation/BaseAnimation;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/animation/BaseAnimation$1;->this$0:Lcom/miui/maml/animation/BaseAnimation;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation$1;->this$0:Lcom/miui/maml/animation/BaseAnimation;

    .line 3
    iget-object v1, v0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, v0, p1}, Lcom/miui/maml/animation/BaseAnimation;->onCreateItem(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method
