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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

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

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$700(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$800(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$500(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

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

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-virtual {p2}, Lcom/android/fileexplorer/fragment/BaseFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p1

    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 11

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$100(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(I)V

    goto :goto_3d

    :cond_12
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$200(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean p1, v1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    iget-object p1, p1, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iget-object p2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Util;->scrollToSdcardTab(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_3d

    :cond_2d
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    iget-object v0, p1, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$200(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v4, ""

    const-string v5, "手机tab页"

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    :goto_3d
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$400(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$300(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->startActionMode(Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper$MultiChoiceModeListener;I)V

    :cond_17
    const/4 p1, 0x1

    return p1
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 4

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$2;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {p1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$600(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    :cond_12
    return-void
.end method
