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
.method public constructor <init>(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public clearChoiceItems()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateChoiceItems()V

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1d

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$600(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 21
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$700(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_1d
    const/4 p1, 0x0

    .line 31
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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

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
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$100()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "initView onChoiceModeChange pos = "

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string p1, ", isChecked = "

    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 35
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->updateChoiceItems()V

    .line 38
    return-void
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 5

    .line 1
    const-string v0, "Drag_"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$100()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "onDrop position = "

    .line 20
    invoke-static {v1, p2, v0}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 25
    iget-object v0, v0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 27
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/file/base/BaseFilePresenter;->getFiles()Ljava/util/List;

    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 37
    if-nez p2, :cond_28

    .line 39
    const/4 p1, 0x0

    .line 40
    return p1

    .line 41
    :cond_28
    iget-boolean v0, p2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 43
    if-nez v0, :cond_37

    .line 45
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 47
    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    .line 54
    move-result p1

    .line 55
    return p1

    .line 56
    :cond_37
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 58
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 60
    invoke-static {p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    .line 67
    move-result p1

    .line 68
    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$200()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string p4, "onItemClick position: "

    .line 7
    invoke-static {p4, p2, p1}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 12
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_26

    .line 18
    if-nez p3, :cond_26

    .line 20
    invoke-static {}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$100()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    const-string p3, "current isInEdit "

    .line 26
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 31
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$300(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(I)V

    .line 38
    goto :goto_2d

    .line 39
    :cond_26
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 41
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->mPresenter:Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;

    .line 43
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/fragment/file/home/HomeFilePresenter;->onItemClick(I)V

    .line 46
    :goto_2d
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$200()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "onItemLongClick position: "

    .line 7
    invoke-static {v0, p2, p1}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 12
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_3c

    .line 18
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 20
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$500(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 26
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;->access$400(Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 32
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lcom/android/fileexplorer/util/DeviceUtils;->isLargeScreenDevice(Landroid/content/Context;)Z

    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2c

    .line 42
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 44
    goto :goto_34

    .line 45
    :cond_2c
    iget-object v1, p0, Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment$2;->this$0:Lcom/android/fileexplorer/fragment/file/home/HomeFileFragment;

    .line 47
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lmiuix/appcompat/app/Fragment;

    .line 53
    :goto_34
    invoke-virtual {p1, v0, p2, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;ILmiuix/appcompat/app/Fragment;)V

    .line 56
    const-string p1, "手机tab页"

    .line 58
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionExpose(Ljava/lang/String;)V

    .line 61
    :cond_3c
    const/4 p1, 0x1

    .line 62
    return p1
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 3

    return-void
.end method
