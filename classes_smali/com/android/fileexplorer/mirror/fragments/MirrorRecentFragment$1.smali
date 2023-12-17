.class Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;
.super Ljava/lang/Object;
.source "MirrorRecentFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/modecallback/OnMirrorGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_23

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 11
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 13
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->isItemChecked(I)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1a

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 21
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 27
    :cond_1a
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 29
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 31
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_23
    const/4 p1, 0x0

    .line 37
    return-object p1
.end method

.method public isItemSelected(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileGroupRecyclerAdapter;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_16

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

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
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

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

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 3
    iget-object p2, p2, Lcom/android/fileexplorer/model/group/FileGroupParent;->mFileItemGroup:Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 5
    check-cast p2, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 7
    invoke-static {p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;Lcom/android/fileexplorer/apptag/FileItemAppGroup;)V

    .line 10
    return-void
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 5
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 7
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_31

    .line 13
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 15
    iget-object p3, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 17
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 19
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 21
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 27
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isCtrlPressed()Z

    .line 30
    move-result p1

    .line 31
    iget-object p4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 33
    iget-object p4, p4, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 35
    iget-object p4, p4, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 37
    invoke-virtual {p4}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 40
    move-result-object p4

    .line 41
    check-cast p4, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 43
    invoke-virtual {p4}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isShiftPressed()Z

    .line 46
    move-result p4

    .line 47
    invoke-virtual {p3, p2, p1, p4}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemMultiChecked(IZZ)V

    .line 50
    :cond_31
    return-void
.end method

.method public onItemDoubleClick(Landroid/view/View;III)Z
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

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
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 15
    iget-object p3, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 17
    check-cast p3, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;

    .line 19
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;)Ljava/util/List;

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "onRightClick() position = ["

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "], x = ["

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "], y = ["

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "]"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    const-string v1, "RecentFragment"

    .line 41
    invoke-static {v1, v0}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment$1;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorRecentFragment;

    .line 46
    iget-object v6, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 48
    float-to-int v3, p3

    .line 49
    float-to-int v4, p4

    .line 50
    move-object v1, v6

    .line 51
    move-object v2, p1

    .line 52
    move v5, p2

    .line 53
    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->startPcMenu(Landroid/view/View;IIILcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;)V

    .line 56
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
