.class Lcom/android/fileexplorer/fragment/FileFragment$3;
.super Ljava/lang/Object;
.source "FileFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/FileFragment;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/FileFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$3;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 3

    const-string v0, "FileFragment"

    const-string v1, "initListView onEnterPrivate"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$3;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0329b9

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/view/ToastTextView;

    if-eqz v0, :cond_1f

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$3;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->enterPrivateFolder(Landroid/app/Activity;)V

    return-void
.end method

.method public onLoadMore()V
    .registers 1

    return-void
.end method

.method public onRefresh()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$3;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$002(Lcom/android/fileexplorer/fragment/FileFragment;Z)Z

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$3;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->clearCurrentScroll()V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$3;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/FileFragment;->updateUI()V

    return-void
.end method
