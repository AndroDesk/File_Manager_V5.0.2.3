.class Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;
.super Ljava/lang/Object;
.source "MirrorHomePictureFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/modecallback/OnMirrorGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->isEditMode()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_19

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 11
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_16

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

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

.method public onCheckAllStatusChange(ZILcom/android/fileexplorer/model/group/FileGroupParent;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 5
    instance-of v1, v0, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;

    .line 7
    if-eqz v1, :cond_d

    .line 9
    check-cast v0, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;

    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->checkGroupItems(ZILcom/android/fileexplorer/model/group/FileGroupParent;)V

    .line 14
    :cond_d
    return-void
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

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

.method public onGroupClick(ZLcom/android/fileexplorer/model/group/FileGroupParent;)V
    .registers 3

    return-void
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    .line 1
    sget-object p1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->TAG:Ljava/lang/String;

    .line 3
    const-string p3, "onItemClick position: "

    .line 5
    invoke-static {p3, p2, p1}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 10
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 12
    invoke-interface {p1}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_42

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 20
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 22
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 24
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_42

    .line 30
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 32
    iget-object p3, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 34
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 36
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 38
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 44
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isCtrlPressed()Z

    .line 47
    move-result p1

    .line 48
    iget-object p4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 50
    iget-object p4, p4, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 52
    iget-object p4, p4, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 54
    invoke-virtual {p4}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 57
    move-result-object p4

    .line 58
    check-cast p4, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 60
    invoke-virtual {p4}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isShiftPressed()Z

    .line 63
    move-result p4

    .line 64
    invoke-virtual {p3, p2, p1, p4}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemMultiChecked(IZZ)V

    .line 67
    :cond_42
    return-void
.end method

.method public onItemDoubleClick(Landroid/view/View;III)Z
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 5
    instance-of p3, p1, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;

    .line 7
    const/4 p4, 0x0

    .line 8
    if-eqz p3, :cond_19

    .line 10
    invoke-virtual {p1, p4}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAllChecked(Z)V

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

    .line 15
    iget-object p3, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 17
    check-cast p3, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;

    .line 19
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;)Ljava/util/List;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p3, p2, p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->onOperationClick(ILjava/util/List;)V

    .line 26
    :cond_19
    return p4
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onRightClick(Landroid/view/View;IFF)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomePictureFragment;

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

.method public processHover(IZ)V
    .registers 3

    return-void
.end method
