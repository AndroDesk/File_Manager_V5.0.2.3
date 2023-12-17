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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;I)V
    .registers 6

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/fileexplorer/fragment/file/home/HomeFileMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;I)V

    return-void
.end method


# virtual methods
.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->isActionMode:Z

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileMultiChoiceCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->isActionMode:Z

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$7;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {p1, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    return-void
.end method
