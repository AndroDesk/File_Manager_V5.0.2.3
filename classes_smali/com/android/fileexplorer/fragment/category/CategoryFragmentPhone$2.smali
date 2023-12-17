.class Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;
.super Ljava/lang/Object;
.source "CategoryFragmentPhone.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/OnItemActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->iniRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->isEditMode()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1d

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$700(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 19
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 21
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$800(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

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

.method public isValid()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_16

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

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
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

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

.method public onItemClick(Landroid/view/View;III)V
    .registers 11

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->isEditMode()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_12

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$100(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(I)V

    .line 18
    goto :goto_3d

    .line 19
    :cond_12
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 21
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$200(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Ljava/util/ArrayList;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    move-object v1, p1

    .line 30
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 32
    iget-boolean p1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 34
    if-eqz p1, :cond_2d

    .line 36
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 38
    iget-object p1, p1, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 40
    iget-object p2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 42
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Util;->scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;)V

    .line 45
    goto :goto_3d

    .line 46
    :cond_2d
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 48
    iget-object v0, p1, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 50
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$200(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Ljava/util/ArrayList;

    .line 53
    move-result-object v2

    .line 54
    const-string v4, ""

    .line 56
    const-string v5, "手机tab页"

    .line 58
    move v3, p2

    .line 59
    invoke-static/range {v0 .. v5}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_3d
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->isEditMode()Z

    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_17

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$400(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 17
    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$300(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;I)V

    .line 24
    :cond_17
    const/4 p1, 0x1

    .line 25
    return p1
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 3
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->isEditMode()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_12

    .line 9
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    .line 11
    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$600(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 19
    :cond_12
    return-void
.end method
