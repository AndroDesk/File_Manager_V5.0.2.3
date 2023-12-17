.class Lmiuix/appcompat/internal/widget/DialogRootView$1;
.super Ljava/lang/Object;
.source "DialogRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/widget/DialogRootView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

.field public final synthetic val$bottom:I

.field public final synthetic val$hDp:I

.field public final synthetic val$left:I

.field public final synthetic val$right:I

.field public final synthetic val$top:I

.field public final synthetic val$wDp:I


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/widget/DialogRootView;IIIIII)V
    .registers 8

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 3
    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$wDp:I

    .line 5
    iput p3, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$hDp:I

    .line 7
    iput p4, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$left:I

    .line 9
    iput p5, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$top:I

    .line 11
    iput p6, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$right:I

    .line 13
    iput p7, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$bottom:I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    move-result-object v0

    .line 11
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 13
    iget v2, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$wDp:I

    .line 15
    if-ne v1, v2, :cond_16

    .line 17
    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 19
    iget v1, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$hDp:I

    .line 21
    if-eq v0, v1, :cond_39

    .line 23
    :cond_16
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 25
    invoke-static {v0}, Lmiuix/appcompat/internal/widget/DialogRootView;->access$000(Lmiuix/appcompat/internal/widget/DialogRootView;)Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;

    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_39

    .line 31
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 33
    invoke-static {v0}, Lmiuix/appcompat/internal/widget/DialogRootView;->access$000(Lmiuix/appcompat/internal/widget/DialogRootView;)Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;

    .line 36
    move-result-object v1

    .line 37
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 46
    move-result-object v2

    .line 47
    iget v3, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$left:I

    .line 49
    iget v4, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$top:I

    .line 51
    iget v5, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$right:I

    .line 53
    iget v6, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$bottom:I

    .line 55
    invoke-interface/range {v1 .. v6}, Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;->onConfigurationChanged(Landroid/content/res/Configuration;IIII)V

    .line 58
    :cond_39
    return-void
.end method
