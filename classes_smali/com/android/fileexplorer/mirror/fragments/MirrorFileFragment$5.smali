.class Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;
.super Ljava/lang/Object;
.source "MirrorFileFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/modecallback/OnMirrorChoiceItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public clearChoiceItems()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->updateChoiceItems()V

    .line 6
    return-void
.end method

.method public getCheckedDragFileInfos(I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_49

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 11
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 13
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->isItemChecked(I)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1b

    .line 19
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 21
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 27
    goto :goto_40

    .line 28
    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 30
    iget-object v1, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 32
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 34
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 36
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 42
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isCtrlPressed()Z

    .line 45
    move-result v0

    .line 46
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 48
    iget-object v2, v2, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 50
    iget-object v2, v2, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 52
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 58
    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isShiftPressed()Z

    .line 61
    move-result v2

    .line 62
    invoke-virtual {v1, p1, v0, v2}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemMultiChecked(IZZ)V

    .line 65
    :goto_40
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 67
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 69
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :cond_49
    const/4 p1, 0x0

    .line 75
    return-object p1
.end method

.method public isItemSelected(I)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->isItemChecked(I)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->isActionRunning()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_e

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    :goto_f
    return v0
.end method

.method public onChoiceModeChange(IZ)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "initView onChoiceModeChange pos = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string p1, ", isChecked = "

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const-string p2, "MirrorFileFragment"

    .line 28
    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 33
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->updateChoiceItems()V

    .line 36
    return-void
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 5

    .line 1
    const-string v0, "onDrop position = "

    .line 3
    const-string v1, "Drag_MirrorFileFragment"

    .line 5
    invoke-static {v0, p2, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 10
    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getItem(I)Lcom/android/fileexplorer/model/FileInfo;

    .line 13
    move-result-object p2

    .line 14
    if-nez p2, :cond_11

    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_11
    iget-boolean v0, p2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 20
    if-nez v0, :cond_20

    .line 22
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 24
    invoke-virtual {p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    .line 31
    move-result p1

    .line 32
    return p1

    .line 33
    :cond_20
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 35
    invoke-static {v0, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$102(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfo;

    .line 38
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 40
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 42
    invoke-static {p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    .line 49
    move-result p1

    .line 50
    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    .line 1
    const-string p1, "onItemClick position: "

    .line 3
    const-string p4, "MirrorFileFragment"

    .line 5
    invoke-static {p1, p2, p4}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 10
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_42

    .line 16
    if-nez p3, :cond_42

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 20
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 22
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 24
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_42

    .line 30
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 32
    iget-object p3, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 34
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

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
    iget-object p4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 50
    iget-object p4, p4, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

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
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 5
    const/4 p3, 0x0

    .line 6
    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAllChecked(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 11
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 13
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->clickFile(I)V

    .line 16
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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

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
