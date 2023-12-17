.class Lcom/android/fileexplorer/fragment/FileFragment$1;
.super Ljava/lang/Object;
.source "FileFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/FileFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/FileFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public clearChoiceItems()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/FileFragment;->updateChoiceItems()V

    .line 6
    return-void
.end method

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_19

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 11
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

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

.method public isItemSelected(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isValid()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

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
    const-string p2, "FileFragment"

    .line 28
    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 33
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/FileFragment;->updateChoiceItems()V

    .line 36
    return-void
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 5

    .line 1
    const-string v0, "onDrop position = "

    .line 3
    const-string v1, "Drag_FileFragment"

    .line 5
    invoke-static {v0, p2, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 10
    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/fragment/FileFragment;->getItem(I)Lcom/android/fileexplorer/model/FileInfo;

    .line 13
    move-result-object p2

    .line 14
    if-nez p2, :cond_1a

    .line 16
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 18
    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/FileFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/fragment/FileFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_1a
    iget-boolean v0, p2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 29
    if-nez v0, :cond_29

    .line 31
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 33
    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/FileFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/fragment/FileFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_29
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 44
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 46
    invoke-static {p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/fragment/FileFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    .line 53
    move-result p1

    .line 54
    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    .line 1
    const-string p1, "onItemClick position: "

    .line 3
    const-string p4, "FileFragment"

    .line 5
    invoke-static {p1, p2, p4}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 10
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_19

    .line 16
    if-nez p3, :cond_19

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 20
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 22
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(I)V

    .line 25
    goto :goto_35

    .line 26
    :cond_19
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 28
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/fragment/FileFragment;->getItem(I)Lcom/android/fileexplorer/model/FileInfo;

    .line 31
    move-result-object p1

    .line 32
    if-nez p1, :cond_22

    .line 34
    return-void

    .line 35
    :cond_22
    iget-boolean p3, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 37
    if-eqz p3, :cond_2c

    .line 39
    iget-object p3, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 41
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 43
    iput-object p1, p3, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mExtraPath:Ljava/lang/String;

    .line 45
    :cond_2c
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 47
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    .line 49
    const-string p3, "手机tab页"

    .line 51
    invoke-virtual {p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->clickFile(ILjava/lang/String;)V

    .line 54
    :goto_35
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 4

    .line 1
    const-string p1, "onItemLongClick position: "

    .line 3
    const-string v0, "FileFragment"

    .line 5
    invoke-static {p1, p2, v0}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 10
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_1b

    .line 16
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    .line 18
    iget-object v0, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 20
    invoke-virtual {v0, v0, p2, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;ILmiuix/appcompat/app/Fragment;)V

    .line 23
    const-string p1, "手机tab页"

    .line 25
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionExpose(Ljava/lang/String;)V

    .line 28
    :cond_1b
    const/4 p1, 0x1

    .line 29
    return p1
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 3

    return-void
.end method
