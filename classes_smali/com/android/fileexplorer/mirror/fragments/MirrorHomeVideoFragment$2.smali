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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;-><init>()V

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

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemChecked(IZ)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

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

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->access$300(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)Lcom/android/fileexplorer/mirror/adapter/MirrorFileListRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/adapter/MirrorFileRecyclerAdapter;->isItemChecked(I)Z

    move-result p1

    return p1
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;->isActionRunning()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 4

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    invoke-virtual {p2}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p1

    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    sget-object p1, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->TAG:Ljava/lang/String;

    const-string p3, "onItemClick position: "

    invoke-static {p3, p2, p1}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    iget-object p3, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isCtrlPressed()Z

    move-result p1

    iget-object p4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    iget-object p4, p4, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object p4, p4, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->keyData:Landroidx/lifecycle/q;

    invoke-virtual {p4}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;

    invoke-virtual {p4}, Lcom/android/fileexplorer/mirror/model/MirrorKeyInfo;->isShiftPressed()Z

    move-result p4

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemMultiChecked(IZZ)V

    :cond_40
    return-void
.end method

.method public onItemDoubleClick(Landroid/view/View;III)Z
    .registers 7

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_25

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAllChecked(Z)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

    iget-object v1, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;->access$100(Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    invoke-static {v1, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;)V

    :cond_25
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/modecallback/OnChoiceItemBaseClickListenerImpl;->onItemDoubleClick(Landroid/view/View;III)Z

    move-result p1

    return p1
.end method

.method public onRightClick(Landroid/view/View;IFF)V
    .registers 12

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment$2;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorHomeVideoFragment;

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
