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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileGroupFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->isEditMode()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_19

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 11
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 19
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 21
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

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

.method public isValid()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_16

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$100(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Lcom/android/fileexplorer/adapter/recycle/PinnedSectionRecyclerView;

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 5
    instance-of v1, v0, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;

    .line 7
    if-eqz v1, :cond_d

    .line 9
    check-cast v0, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;

    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->checkGroupItems(ZILcom/android/fileexplorer/model/group/FileGroupParent;)V

    .line 14
    :cond_d
    return-void
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 3
    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

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
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 3
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 5
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->isInActionMode()Z

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_12

    .line 11
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 13
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 15
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(I)V

    .line 18
    goto :goto_25

    .line 19
    :cond_12
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 21
    iget-object p3, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 23
    instance-of p4, p3, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;

    .line 25
    if-eqz p4, :cond_25

    .line 27
    check-cast p3, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;

    .line 29
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->access$000(Lcom/android/fileexplorer/fragment/FileGroupFragment;)Ljava/util/List;

    .line 32
    move-result-object p1

    .line 33
    const-string p4, "手机tab页"

    .line 35
    invoke-virtual {p3, p2, p1, p4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->onOperationClick(ILjava/util/List;Ljava/lang/String;)V

    .line 38
    :cond_25
    :goto_25
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->isEditMode()Z

    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_f

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 11
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 13
    invoke-virtual {p1, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;I)V

    .line 16
    :cond_f
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/FileGroupFragment;->isEditMode()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_10

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileGroupFragment$2;->this$0:Lcom/android/fileexplorer/fragment/FileGroupFragment;

    .line 11
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 17
    :cond_10
    return-void
.end method
