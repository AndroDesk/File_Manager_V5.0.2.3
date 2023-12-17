.class Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;
.super Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;
.source "MirrorHomeVideoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->isEditMode()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_19

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    .line 11
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

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
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_16

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

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
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

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
    sget-object p1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->TAG:Ljava/lang/String;

    .line 3
    const-string p3, "onItemClick position: "

    .line 5
    invoke-static {p3, p2, p1}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    .line 10
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->isEditMode()Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_40

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    .line 18
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 20
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 22
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_40

    .line 28
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    .line 30
    iget-object p3, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 32
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 34
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 36
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 42
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isCtrlPressed()Z

    .line 45
    move-result p1

    .line 46
    iget-object p4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    .line 48
    iget-object p4, p4, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 50
    iget-object p4, p4, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    .line 52
    invoke-virtual {p4}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    .line 55
    move-result-object p4

    .line 56
    check-cast p4, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    .line 58
    invoke-virtual {p4}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isShiftPressed()Z

    .line 61
    move-result p4

    .line 62
    invoke-virtual {p3, p2, p1, p4}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemMultiChecked(IZZ)V

    .line 65
    :cond_40
    return-void
.end method

.method public onItemDoubleClick(Landroid/view/View;III)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    if-ge p2, v0, :cond_25

    .line 13
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    .line 15
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAllChecked(Z)V

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    .line 23
    iget-object v1, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 25
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)Ljava/util/List;

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 35
    invoke-static {v1, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 38
    :cond_25
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;->onItemDoubleClick(Landroid/view/View;III)Z

    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public onRightClick(Landroid/view/View;IFF)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

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
