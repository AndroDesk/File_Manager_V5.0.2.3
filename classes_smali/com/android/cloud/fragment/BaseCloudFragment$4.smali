.class Lcom/android/cloud/fragment/BaseCloudFragment$4;
.super Ljava/lang/Object;
.source "BaseCloudFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/listener/OnChoiceItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/cloud/fragment/BaseCloudFragment;->initCloudFilesAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/cloud/fragment/BaseCloudFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/cloud/fragment/BaseCloudFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearChoiceItems()V
    .registers 2

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    invoke-virtual {v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->updateChoiceItems()V

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

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    invoke-static {v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->access$200(Lcom/android/cloud/fragment/BaseCloudFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    invoke-static {p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->access$300(Lcom/android/cloud/fragment/BaseCloudFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/android/cloud/util/CloudFileUtils;->getSupportDragFileInfos(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    return-object p1

    :cond_27
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

    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    iget-object v0, v0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

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
    .registers 3

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    invoke-virtual {p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->updateChoiceItems()V

    return-void
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    const-string p1, "onItemClick position: "

    const-string p4, "CloudFileFragment"

    invoke-static {p1, p2, p4}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_1b

    if-nez p3, :cond_1b

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    invoke-static {p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->access$100(Lcom/android/cloud/fragment/BaseCloudFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(I)V

    goto :goto_22

    :cond_1b
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    iget-object p1, p1, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    invoke-virtual {p1, p2}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onItemClick(I)V

    :goto_22
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 4

    const-string p1, "onItemLongClick position: "

    const-string v0, "CloudFileFragment"

    invoke-static {p1, p2, v0}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    invoke-virtual {p1, p2}, Lcom/android/cloud/fragment/BaseCloudFragment;->onCloudItemLongClick(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 3

    return-void
.end method
