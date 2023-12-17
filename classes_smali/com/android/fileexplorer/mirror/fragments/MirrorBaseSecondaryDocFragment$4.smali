.class Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;
.super Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;
.source "MirrorBaseSecondaryDocFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->iniListAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_19

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 11
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->access$400(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_16

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->access$500(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

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
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

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
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 5
    const-string p3, "onItemClick position: "

    .line 7
    invoke-static {p3, p2, p1}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 12
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_42

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

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
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

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
    iget-object p4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

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
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAllChecked(Z)V

    .line 9
    :try_start_8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;
    :try_end_14
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_14} :catch_15

    .line 21
    goto :goto_36

    .line 22
    :catch_15
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 24
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->TAG:Ljava/lang/String;

    .line 26
    const-string v1, "click index out of bounds error: index "

    .line 28
    const-string v2, " size "

    .line 30
    invoke-static {v1, p2, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 36
    invoke-static {v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;)Ljava/util/List;

    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 43
    move-result v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    .line 55
    :goto_36
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 57
    iget-object v1, v1, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;->mActivity:Lcom/android/fileexplorer/FileExplorerTabBaseActivity;

    .line 59
    invoke-static {v1, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;->onItemDoubleClick(Landroid/view/View;III)Z

    .line 65
    move-result p1

    .line 66
    return p1
.end method

.method public onRightClick(Landroid/view/View;IFF)V
    .registers 12

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;->onRightClick(Landroid/view/View;IFF)V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorBaseSecondaryDocFragment;

    .line 6
    iget-object v6, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 8
    float-to-int v3, p3

    .line 9
    float-to-int v4, p4

    .line 10
    move-object v1, v6

    .line 11
    move-object v2, p1

    .line 12
    move v5, p2

    .line 13
    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->startPcMenu(Landroid/view/View;IIILcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;)V

    .line 16
    return-void
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 3

    return-void
.end method
