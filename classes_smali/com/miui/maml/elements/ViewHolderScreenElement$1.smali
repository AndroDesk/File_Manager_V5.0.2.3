.class Lcom/miui/maml/elements/ViewHolderScreenElement$1;
.super Ljava/lang/Object;
.source "ViewHolderScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/elements/ViewHolderScreenElement;->setHardwareLayer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

.field public final synthetic val$b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/elements/ViewHolderScreenElement;Z)V
    .registers 3

    iput-object p1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$1;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    iput-boolean p2, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$1;->val$b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$1;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    invoke-virtual {v0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$1;->val$b:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x2

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
