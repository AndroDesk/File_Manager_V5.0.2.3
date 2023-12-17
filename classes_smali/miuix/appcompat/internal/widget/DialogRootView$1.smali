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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/internal/widget/DialogRootView;IIIIII)V
    .registers 8

    iput-object p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    iput p2, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$wDp:I

    iput p3, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$hDp:I

    iput p4, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$left:I

    iput p5, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$top:I

    iput p6, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$right:I

    iput p7, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$bottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$wDp:I

    if-ne v1, v2, :cond_16

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$hDp:I

    if-eq v0, v1, :cond_39

    :cond_16
    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-static {v0}, Lmiuix/appcompat/internal/widget/DialogRootView;->access$000(Lmiuix/appcompat/internal/widget/DialogRootView;)Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-static {v0}, Lmiuix/appcompat/internal/widget/DialogRootView;->access$000(Lmiuix/appcompat/internal/widget/DialogRootView;)Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;

    move-result-object v1

    iget-object v0, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->this$0:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v3, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$left:I

    iget v4, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$top:I

    iget v5, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$right:I

    iget v6, p0, Lmiuix/appcompat/internal/widget/DialogRootView$1;->val$bottom:I

    invoke-interface/range {v1 .. v6}, Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;->onConfigurationChanged(Landroid/content/res/Configuration;IIII)V

    :cond_39
    return-void
.end method
