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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(IZ)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public isItemSelected(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileSearchRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->isItemChecked(I)Z

    move-result p1

    return p1
.end method

.method public isValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 4

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    invoke-virtual {p2}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p1

    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    const/16 p1, 0x14

    if-ne p1, p4, :cond_a

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;I)V

    goto :goto_45

    :cond_a
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    invoke-interface {p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    move-result p1

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    iget-object p3, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isCtrlPressed()Z

    move-result p1

    iget-object p4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    iget-object p4, p4, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p4, p4, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    invoke-virtual {p4}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    invoke-virtual {p4}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isShiftPressed()Z

    move-result p4

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemMultiChecked(IZZ)V

    :cond_45
    :goto_45
    return-void
.end method

.method public onItemDoubleClick(Landroid/view/View;III)Z
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->getItem(I)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    iget-object p2, p2, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAllChecked(Z)V

    iget-boolean p2, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz p2, :cond_1c

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    iget-object p2, p2, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/android/fileexplorer/mirror/utils/MirrorBrowseUtils;->browseFolder(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;Ljava/lang/String;)V

    goto :goto_25

    :cond_1c
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    invoke-static {p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;->access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;)Lcom/android/fileexplorer/activity/BaseActivity;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;)V

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

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    iget-object v6, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    float-to-int v3, p3

    float-to-int v4, p4

    move-object v1, v6

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->startPcMenu(Landroid/view/View;IIILcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;)V

    return-void
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(IZ)V

    :cond_10
    return-void
.end method

.method public processHover(IZ)V
    .registers 3

    return-void
.end method
