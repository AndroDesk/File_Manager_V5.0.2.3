.class Lcom/miui/maml/util/MamlAccessHelper$1;
.super Ljava/lang/Object;
.source "MamlAccessHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/util/MamlAccessHelper;->performAccessibilityAction(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/util/MamlAccessHelper;

.field public final synthetic val$action:I

.field public final synthetic val$id:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/util/MamlAccessHelper;II)V
    .registers 4

    iput-object p1, p0, Lcom/miui/maml/util/MamlAccessHelper$1;->this$0:Lcom/miui/maml/util/MamlAccessHelper;

    iput p2, p0, Lcom/miui/maml/util/MamlAccessHelper$1;->val$id:I

    iput p3, p0, Lcom/miui/maml/util/MamlAccessHelper$1;->val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper$1;->this$0:Lcom/miui/maml/util/MamlAccessHelper;

    iget-object v1, v0, Lcom/miui/maml/util/MamlAccessHelper;->mHostView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lr0/a;->getAccessibilityNodeProvider(Landroid/view/View;)Ln0/d;

    move-result-object v0

    iget v1, p0, Lcom/miui/maml/util/MamlAccessHelper$1;->val$id:I

    iget v2, p0, Lcom/miui/maml/util/MamlAccessHelper$1;->val$action:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ln0/d;->c(IILandroid/os/Bundle;)Z

    return-void
.end method
