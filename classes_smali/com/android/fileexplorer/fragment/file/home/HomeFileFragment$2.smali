.class Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;
.super Ljava/lang/Object;
.source "HomeFileFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChoiceItems()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateChoiceItems()V

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

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$600(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$700(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_1d
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

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

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
    .registers 6

    invoke-static {}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView onChoiceModeChange pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isChecked = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateChoiceItems()V

    return-void
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 5

    const-string v0, "Drag_"

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDrop position = "

    invoke-static {v1, p2, v0}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    if-nez p2, :cond_28

    const/4 p1, 0x0

    return p1

    :cond_28
    iget-boolean v0, p2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez v0, :cond_37

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p1

    return p1

    :cond_37
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p1

    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p4, "onItemClick position: "

    invoke-static {p4, p2, p1}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_26

    if-nez p3, :cond_26

    invoke-static {}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p3, "current isInEdit "

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$300(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(I)V

    goto :goto_2d

    :cond_26
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->onItemClick(I)V

    :goto_2d
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 5

    invoke-static {}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onItemLongClick position: "

    invoke-static {v0, p2, p1}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_3c

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$500(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$400(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    goto :goto_34

    :cond_2c
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lmiuix/appcompat/app/Fragment;

    :goto_34
    invoke-virtual {p1, v0, p2, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;ILmiuix/appcompat/app/Fragment;)V

    const-string p1, "手机tab页"

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionExpose(Ljava/lang/String;)V

    :cond_3c
    const/4 p1, 0x1

    return p1
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 3

    return-void
.end method
