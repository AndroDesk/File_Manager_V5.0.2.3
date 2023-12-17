.class Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;
.super Ljava/lang/Object;
.source "SearchDetailFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/SearchDetailFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getCheckedDragFileInfos(I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->isEditMode()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_19

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 11
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 19
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 21
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_19
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_16

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->access$400(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->isActionRunning()Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_16

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    :goto_17
    return v0
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_12

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 13
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 15
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(I)V

    .line 18
    goto :goto_27

    .line 19
    :cond_12
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 21
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->access$300(Lcom/android/fileexplorer/fragment/SearchDetailFragment;)Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 24
    move-result-object p1

    .line 25
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 27
    invoke-virtual {p3, p2}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->getItem(I)Lcom/android/fileexplorer/model/FileInfo;

    .line 30
    move-result-object p3

    .line 31
    iget-object p4, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 33
    invoke-virtual {p4}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->getList()Ljava/util/ArrayList;

    .line 36
    move-result-object p4

    .line 37
    invoke-static {p1, p3, p4, p2}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickFileOnSearchPage(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;I)V

    .line 40
    :goto_27
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->isEditMode()Z

    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_f

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 11
    iget-object v0, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 13
    invoke-virtual {v0, v0, p2, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;ILmiuix/appcompat/app/Fragment;)V

    .line 16
    :cond_f
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/SearchDetailFragment;->isEditMode()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_10

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/SearchDetailFragment$2;->this$0:Lcom/android/fileexplorer/fragment/SearchDetailFragment;

    .line 11
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 17
    :cond_10
    return-void
.end method
