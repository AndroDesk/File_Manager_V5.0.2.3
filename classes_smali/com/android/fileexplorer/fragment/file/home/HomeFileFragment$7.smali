.class Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;
.super Lcom/android/fileexplorer/fragment/file/home/HomeFileMultiChoiceCallback;
.source "HomeFileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initListView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;I)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/fileexplorer/fragment/file/home/HomeFileMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;I)V

    .line 6
    return-void
.end method


# virtual methods
.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->isActionMode:Z

    .line 6
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 14
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 21
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 23
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 26
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileMultiChoiceCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->isActionMode:Z

    .line 9
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 17
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 19
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 22
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 24
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 26
    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 29
    return-void
.end method
