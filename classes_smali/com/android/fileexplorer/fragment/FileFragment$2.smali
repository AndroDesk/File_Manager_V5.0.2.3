.class Lcom/android/fileexplorer/fragment/FileFragment$2;
.super Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;
.source "FileFragment.java"


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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileFragment;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;I)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;I)V

    .line 6
    return-void
.end method


# virtual methods
.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 11
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 18
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 23
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/FileMultiChoiceCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 6
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 14
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 20
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 22
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 24
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 27
    return-void
.end method
