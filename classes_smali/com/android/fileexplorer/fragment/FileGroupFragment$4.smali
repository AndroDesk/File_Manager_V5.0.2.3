.class Lcom/android/fileexplorer/fragment/FileGroupFragment$4;
.super Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;
.source "FileGroupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/FileGroupFragment;->initRecyclerView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 6
    return-void
.end method


# virtual methods
.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 13
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 20
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 22
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 29
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 6
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 16
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    .line 23
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 25
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    .line 33
    return-void
.end method
