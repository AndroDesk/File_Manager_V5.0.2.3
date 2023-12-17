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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    return-void
.end method


# virtual methods
.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullRefresh(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePullLoad(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$4;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->setEnablePrivate(Z)V

    return-void
.end method
