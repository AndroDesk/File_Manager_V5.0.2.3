.class Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$7;
.super Ljava/lang/Object;
.source "MirrorFileFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/PullToRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$7;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onEnterPrivate()V
    .registers 3

    .line 1
    const-string v0, "MirrorFileFragment"

    .line 3
    const-string v1, "initListView onEnterPrivate"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$7;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 10
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)Landroid/view/View;

    .line 13
    move-result-object v0

    .line 14
    const v1, 0x7f0a042f

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/fileexplorer/view/ToastTextView;

    .line 23
    if-eqz v0, :cond_1d

    .line 25
    const/16 v1, 0x8

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :cond_1d
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$7;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 32
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 34
    invoke-static {v0}, Lcom/android/fileexplorer/util/AppUtils;->enterPrivateFolder(Landroid/app/Activity;)V

    .line 37
    return-void
.end method

.method public onLoadMore()V
    .registers 1

    return-void
.end method

.method public onRefresh()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$7;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->clearCurrentScroll()V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$7;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 10
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->updateUI()V

    .line 13
    return-void
.end method
