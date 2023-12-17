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
.method public constructor <init>(Lcom/miui/maml/util/MamlAccessHelper;II)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/miui/maml/util/MamlAccessHelper$1;->this$0:Lcom/miui/maml/util/MamlAccessHelper;

    .line 3
    iput p2, p0, Lcom/miui/maml/util/MamlAccessHelper$1;->val$id:I

    .line 5
    iput p3, p0, Lcom/miui/maml/util/MamlAccessHelper$1;->val$action:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlAccessHelper$1;->this$0:Lcom/miui/maml/util/MamlAccessHelper;

    .line 3
    iget-object v1, v0, Lcom/miui/maml/util/MamlAccessHelper;->mHostView:Landroid/view/View;

    .line 5
    invoke-virtual {v0, v1}, Lr0/a;->getAccessibilityNodeProvider(Landroid/view/View;)Ln0/d;

    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/miui/maml/util/MamlAccessHelper$1;->val$id:I

    .line 11
    iget v2, p0, Lcom/miui/maml/util/MamlAccessHelper$1;->val$action:I

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v1, v2, v3}, Ln0/d;->c(IILandroid/os/Bundle;)Z

    .line 17
    return-void
.end method
