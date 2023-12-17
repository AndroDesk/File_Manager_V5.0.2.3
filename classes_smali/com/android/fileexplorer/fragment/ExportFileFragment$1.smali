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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/ExportFileFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/ExportFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/ExportFileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/ExportFileFragment;

    iget-object v0, p1, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    if-eqz v0, :cond_f

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->doPickCancel(Landroid/app/Activity;)V

    :cond_f
    return-void
.end method
