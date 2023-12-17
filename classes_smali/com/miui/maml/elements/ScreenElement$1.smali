.class Lcom/miui/maml/elements/ScreenElement$1;
.super Ljava/lang/Object;
.source "ScreenElement.java"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/ScreenElement;->loadAnimations(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/ScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement$1;->this$0:Lcom/miui/maml/elements/ScreenElement;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 4

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Animation"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_28

    .line 13
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement$1;->this$0:Lcom/miui/maml/elements/ScreenElement;

    .line 15
    invoke-virtual {v1, v0, p1}, Lcom/miui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;

    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_28

    .line 21
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement$1;->this$0:Lcom/miui/maml/elements/ScreenElement;

    .line 23
    iget-object v1, v0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 25
    if-nez v1, :cond_21

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iput-object v1, v0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 34
    :cond_21
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement$1;->this$0:Lcom/miui/maml/elements/ScreenElement;

    .line 36
    iget-object v0, v0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_28
    return-void
.end method
