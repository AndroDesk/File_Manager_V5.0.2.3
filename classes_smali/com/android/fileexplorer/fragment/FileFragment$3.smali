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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$3;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 3

    .line 1
    const-string v0, "FileFragment"

    .line 3
    const-string v1, "initListView onEnterPrivate"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$3;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 10
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/BaseFragment;->mRootView:Landroid/view/View;

    .line 12
    const v1, 0x7f0a042f

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/fileexplorer/view/ToastTextView;

    .line 21
    if-eqz v0, :cond_1b

    .line 23
    const/16 v1, 0x8

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$3;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 30
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 32
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->enterPrivateFolder(Landroid/app/Activity;)V

    .line 39
    return-void
.end method

.method public onLoadMore()V
    .registers 1

    return-void
.end method

.method public onRefresh()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$3;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$002(Lcom/android/fileexplorer/fragment/FileFragment;Z)Z

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$3;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 9
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 11
    invoke-virtual {v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->clearCurrentScroll()V

    .line 14
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$3;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 16
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/FileFragment;->updateUI()V

    .line 19
    return-void
.end method
