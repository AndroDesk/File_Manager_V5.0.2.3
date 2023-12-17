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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChoiceItems()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->updateChoiceItems()V

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

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(IZ)V

    goto :goto_40

    :cond_1b
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v1, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isCtrlPressed()Z

    move-result v0

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v2, v2, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v2, v2, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isShiftPressed()Z

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemMultiChecked(IZZ)V

    :goto_40
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_49
    const/4 p1, 0x0

    return-object p1
.end method

.method public isItemSelected(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecycleAdapter:Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->isItemChecked(I)Z

    move-result p1

    return p1
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->isActionRunning()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public onChoiceModeChange(IZ)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initView onChoiceModeChange pos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isChecked = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MirrorFileFragment"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->updateChoiceItems()V

    return-void
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 5

    const-string v0, "onDrop position = "

    const-string v1, "Drag_MirrorFileFragment"

    invoke-static {v0, p2, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getItem(I)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p2

    if-nez p2, :cond_11

    const/4 p1, 0x0

    return p1

    :cond_11
    iget-boolean v0, p2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez v0, :cond_20

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-virtual {p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p1

    return p1

    :cond_20
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-static {v0, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$102(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/fileexplorer/model/FileInfo;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p1

    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    const-string p1, "onItemClick position: "

    const-string p4, "MirrorFileFragment"

    invoke-static {p1, p2, p4}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_42

    if-nez p3, :cond_42

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object p3, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isCtrlPressed()Z

    move-result p1

    iget-object p4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object p4, p4, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p4, p4, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    invoke-virtual {p4}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    invoke-virtual {p4}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isShiftPressed()Z

    move-result p4

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemMultiChecked(IZZ)V

    :cond_42
    return-void
.end method

.method public onItemDoubleClick(Landroid/view/View;III)Z
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAllChecked(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->clickFile(I)V

    return p3
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onRightClick(Landroid/view/View;IFF)V
    .registers 12

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

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
    .registers 3

    return-void
.end method

.method public processHover(IZ)V
    .registers 3

    return-void
.end method
