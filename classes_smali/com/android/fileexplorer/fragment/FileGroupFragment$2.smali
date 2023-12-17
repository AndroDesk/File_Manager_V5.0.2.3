.class Lcom/android/fileexplorer/fragment/FileGroupFragment$2;
.super Ljava/lang/Object;
.source "FileGroupFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/FileGroupFragment;->initRecyclerView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

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

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

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

.method public onCheckAllStatusChange(ZILcom/android/fileexplorer/model/group/FileGroupParent;)V
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    instance-of v1, v0, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->checkGroupItems(ZILcom/android/fileexplorer/model/group/FileGroupParent;)V

    :cond_d
    return-void
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 4

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p1

    return p1
.end method

.method public onGroupClick(ZLcom/android/fileexplorer/model/group/FileGroupParent;)V
    .registers 3

    return-void
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(I)V

    goto :goto_25

    :cond_12
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    iget-object p3, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    instance-of p4, p3, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;

    if-eqz p4, :cond_25

    check-cast p3, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$000(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Ljava/util/List;

    move-result-object p1

    const-string p4, "手机tab页"

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->onOperationClick(ILjava/util/List;Ljava/lang/String;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 3

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {p1, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;I)V

    :cond_f
    const/4 p1, 0x1

    return p1
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    :cond_10
    return-void
.end method
