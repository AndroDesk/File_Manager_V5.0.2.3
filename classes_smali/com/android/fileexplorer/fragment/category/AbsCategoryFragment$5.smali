.class Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$5;
.super Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;
.source "AbsCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$5;->this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 6
    return-void
.end method


# virtual methods
.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$5;->this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$5;->this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    .line 11
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$5;->this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    .line 18
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 23
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$5;->this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    .line 6
    iget-object v0, p1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 8
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->access$100(Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;)Z

    .line 11
    move-result p1

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 15
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$5;->this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    .line 17
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment$5;->this$0:Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;

    .line 25
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/category/AbsCategoryFragment;->mRecyclerView:Lcom/android/fileexplorer/view/indicator/RecentRecyclerView;

    .line 27
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 30
    return-void
.end method
