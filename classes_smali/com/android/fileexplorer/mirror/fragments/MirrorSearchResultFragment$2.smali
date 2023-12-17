.class Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;
.super Ljava/lang/Object;
.source "MirrorSearchResultFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/modecallback/OnMirrorItemActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_19

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 11
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 19
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 21
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

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

.method public isItemSelected(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->isItemChecked(I)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public isValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    .line 1
    const/16 p1, 0x14

    .line 3
    if-ne p1, p4, :cond_a

    .line 5
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 7
    invoke-static {p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;I)V

    .line 10
    goto :goto_45

    .line 11
    :cond_a
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 13
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 15
    invoke-interface {p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_45

    .line 21
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 23
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 25
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 27
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_45

    .line 33
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 35
    iget-object p3, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 37
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 39
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 41
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 47
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isCtrlPressed()Z

    .line 50
    move-result p1

    .line 51
    iget-object p4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 53
    iget-object p4, p4, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 55
    iget-object p4, p4, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 57
    invoke-virtual {p4}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 60
    move-result-object p4

    .line 61
    check-cast p4, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 63
    invoke-virtual {p4}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isShiftPressed()Z

    .line 66
    move-result p4

    .line 67
    invoke-virtual {p3, p2, p1, p4}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemMultiChecked(IZZ)V

    .line 70
    :cond_45
    :goto_45
    return-void
.end method

.method public onItemDoubleClick(Landroid/view/View;III)Z
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->getItem(I)Lcom/android/fileexplorer/model/FileInfo;

    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 9
    iget-object p2, p2, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 11
    const/4 p3, 0x0

    .line 12
    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAllChecked(Z)V

    .line 15
    iget-boolean p2, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 17
    if-eqz p2, :cond_1c

    .line 19
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 21
    iget-object p2, p2, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 23
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 25
    invoke-static {p2, p1}, Lcom/android/fileexplorer/mirror/utils/MirrorBrowseUtils;->browseFolder(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;Ljava/lang/String;)V

    .line 28
    goto :goto_25

    .line 29
    :cond_1c
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 31
    invoke-static {p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Lcom/android/fileexplorer/activity/BaseActivity;

    .line 34
    move-result-object p2

    .line 35
    invoke-static {p2, p1}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 38
    :goto_25
    return p3
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onRightClick(Landroid/view/View;IFF)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 3
    iget-object v6, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 5
    float-to-int v3, p3

    .line 6
    float-to-int v4, p4

    .line 7
    move-object v1, v6

    .line 8
    move-object v2, p1

    .line 9
    move v5, p2

    .line 10
    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->startPcMenu(Landroid/view/View;IIILcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;)V

    .line 13
    return-void
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_10

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    .line 11
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 17
    :cond_10
    return-void
.end method

.method public processHover(IZ)V
    .registers 3

    return-void
.end method
