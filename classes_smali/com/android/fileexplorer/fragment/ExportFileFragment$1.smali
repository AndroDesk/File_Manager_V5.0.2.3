.class Lcom/android/fileexplorer/fragment/ExportFileFragment$1;
.super Ljava/lang/Object;
.source "ExportFileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/ExportFileFragment;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/ExportFileFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/ExportFileFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/ExportFileFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/ExportFileFragment;

    .line 3
    iget-object v0, p1, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 5
    if-eqz v0, :cond_f

    .line 7
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 9
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->doPickCancel(Landroid/app/Activity;)V

    .line 16
    :cond_f
    return-void
.end method
