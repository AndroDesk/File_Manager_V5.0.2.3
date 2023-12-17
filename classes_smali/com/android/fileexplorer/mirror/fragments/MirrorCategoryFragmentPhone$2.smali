.class Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;
.super Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;
.source "MirrorCategoryFragmentPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->iniRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 3
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;-><init>()V

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->isEditMode()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_19

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 11
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_16

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

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
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

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
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->isEditMode()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_39

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 11
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 13
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 15
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_39

    .line 21
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 23
    iget-object p3, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 25
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 27
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 29
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 35
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isCtrlPressed()Z

    .line 38
    move-result p1

    .line 39
    iget-object p4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 41
    iget-object p4, p4, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 43
    iget-object p4, p4, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 45
    invoke-virtual {p4}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 48
    move-result-object p4

    .line 49
    check-cast p4, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 51
    invoke-virtual {p4}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isShiftPressed()Z

    .line 54
    move-result p4

    .line 55
    invoke-virtual {p3, p2, p1, p4}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemMultiChecked(IZZ)V

    .line 58
    :cond_39
    return-void
.end method

.method public onItemDoubleClick(Landroid/view/View;III)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAllChecked(Z)V

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Ljava/util/ArrayList;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 21
    iget-boolean v1, v0, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 23
    if-eqz v1, :cond_22

    .line 25
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 27
    iget-object v1, v1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 29
    iget-object v0, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 31
    invoke-static {v1, v0}, Lcom/android/fileexplorer/mirror/utils/MirrorBrowseUtils;->browseFolder(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;Ljava/lang/String;)V

    .line 34
    goto :goto_33

    .line 35
    :cond_22
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    .line 37
    iget-object v1, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 39
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Ljava/util/ArrayList;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 49
    invoke-static {v1, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 52
    :goto_33
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;->onItemDoubleClick(Landroid/view/View;III)Z

    .line 55
    move-result p1

    .line 56
    return p1
.end method

.method public onRightClick(Landroid/view/View;IFF)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

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
    .registers 3

    return-void
.end method
