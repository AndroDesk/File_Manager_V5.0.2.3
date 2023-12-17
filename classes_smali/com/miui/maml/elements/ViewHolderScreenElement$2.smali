.class Lcom/miui/maml/elements/ViewHolderScreenElement$2;
.super Ljava/lang/Object;
.source "ViewHolderScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/ViewHolderScreenElement;->onVisibilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

.field public final synthetic val$_v:Z


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ViewHolderScreenElement;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$2;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    .line 3
    iput-boolean p2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$2;->val$_v:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$2;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$2;->val$_v:Z

    .line 9
    if-eqz v1, :cond_c

    .line 11
    const/4 v1, 0x0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v1, 0x4

    .line 14
    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    return-void
.end method
