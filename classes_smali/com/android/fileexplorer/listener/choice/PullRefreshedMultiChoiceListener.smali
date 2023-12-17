.class public Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;
.super Lcom/android/fileexplorer/listener/choice/DecorMultiChoiceListener;
.source "PullRefreshedMultiChoiceListener.java"


# instance fields
.field private canLoadMore:Z

.field private enablePrivate:Z

.field private mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/listener/choice/DecorMultiChoiceListener;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/listeners/MultiChoiceModeListener;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->canLoadMore:Z

    .line 7
    iput-boolean p2, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->enablePrivate:Z

    .line 9
    iput-object p1, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 11
    return-void
.end method


# virtual methods
.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->canLoadMore()Z

    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->canLoadMore:Z

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 11
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->enablePrivate()Z

    .line 14
    move-result v0

    .line 15
    iput-boolean v0, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->enablePrivate:Z

    .line 17
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 28
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 30
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 33
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/listener/choice/DecorMultiChoiceListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/listener/choice/DecorMultiChoiceListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 6
    iget-boolean v0, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->canLoadMore:Z

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 19
    iget-boolean v0, p0, Lcom/android/fileexplorer/listener/choice/PullRefreshedMultiChoiceListener;->enablePrivate:Z

    .line 21
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 24
    return-void
.end method
