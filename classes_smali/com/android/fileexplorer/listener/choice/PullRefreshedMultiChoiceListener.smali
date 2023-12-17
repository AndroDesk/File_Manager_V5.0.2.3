.class public Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;
.super Lcom/android/fileexplorer/listener/choice/DecorMultiChoiceListener;
.source "PullRefreshedMultiChoiceListener.java"


# instance fields
.field private canLoadMore:Z

.field private enablePrivate:Z

.field private mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/listener/choice/DecorMultiChoiceListener;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->canLoadMore:Z

    iput-boolean p2, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->enablePrivate:Z

    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    return-void
.end method


# virtual methods
.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->canLoadMore()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->canLoadMore:Z

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->enablePrivate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->enablePrivate:Z

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/listener/choice/DecorMultiChoiceListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/listener/choice/DecorMultiChoiceListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-boolean v0, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->canLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    iget-boolean v0, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->enablePrivate:Z

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    return-void
.end method
