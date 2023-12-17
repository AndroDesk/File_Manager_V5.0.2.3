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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChoiceItems()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/FileFragment;->updateChoiceItems()V

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

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public isItemSelected(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/FileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

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

    const-string p2, "FileFragment"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/FileFragment;->updateChoiceItems()V

    return-void
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 5

    const-string v0, "onDrop position = "

    const-string v1, "Drag_FileFragment"

    invoke-static {v0, p2, v1}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/fragment/FileFragment;->getItem(I)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p2

    if-nez p2, :cond_1a

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/FileFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/fragment/FileFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p1

    return p1

    :cond_1a
    iget-boolean v0, p2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez v0, :cond_29

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/FileFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/fragment/FileFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p1

    return p1

    :cond_29
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/fragment/FileFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p1

    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    const-string p1, "onItemClick position: "

    const-string p4, "FileFragment"

    invoke-static {p1, p2, p4}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_19

    if-nez p3, :cond_19

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(I)V

    goto :goto_35

    :cond_19
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/fragment/FileFragment;->getItem(I)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    if-nez p1, :cond_22

    return-void

    :cond_22
    iget-boolean p3, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz p3, :cond_2c

    iget-object p3, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iput-object p1, p3, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mExtraPath:Ljava/lang/String;

    :cond_2c
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    const-string p3, "手机tab页"

    invoke-virtual {p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->clickFile(ILjava/lang/String;)V

    :goto_35
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 4

    const-string p1, "onItemLongClick position: "

    const-string v0, "FileFragment"

    invoke-static {p1, p2, v0}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$1;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v0, p1, Lcom/android/fileexplorer/fragment/BaseFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    invoke-virtual {v0, v0, p2, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;ILmiuix/appcompat/app/Fragment;)V

    const-string p1, "手机tab页"

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionExpose(Ljava/lang/String;)V

    :cond_1b
    const/4 p1, 0x1

    return p1
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 3

    return-void
.end method
