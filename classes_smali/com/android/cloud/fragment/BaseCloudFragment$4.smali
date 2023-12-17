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
.method public constructor <init>(Lcom/android/cloud/fragment/BaseCloudFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public clearChoiceItems()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->updateChoiceItems()V

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
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_27

    .line 9
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 11
    invoke-static {v0}, Lcom/android/cloud/fragment/BaseCloudFragment;->access$200(Lcom/android/cloud/fragment/BaseCloudFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(IZ)V

    .line 19
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 21
    invoke-static {p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->access$300(Lcom/android/cloud/fragment/BaseCloudFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/android/cloud/util/CloudFileUtils;->getSupportDragFileInfos(Ljava/util/List;)Ljava/util/ArrayList;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_27

    .line 39
    return-object p1

    .line 40
    :cond_27
    const/4 p1, 0x0

    .line 41
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
    iget-object v0, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 3
    iget-object v0, v0, Lcom/android/cloud/fragment/BaseCloudFragment;->mRecyclerView:Lcom/android/fileexplorer/view/RefreshLoadRecyclerView;

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
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 3
    invoke-virtual {p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->updateChoiceItems()V

    .line 6
    return-void
.end method

.method public onDrop(Landroid/view/DragEvent;I)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public onItemClick(Landroid/view/View;III)V
    .registers 5

    .line 1
    const-string p1, "onItemClick position: "

    .line 3
    const-string p4, "CloudFileFragment"

    .line 5
    invoke-static {p1, p2, p4}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 10
    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/BaseFragment;->isEditMode()Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1b

    .line 16
    if-nez p3, :cond_1b

    .line 18
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 20
    invoke-static {p1}, Lcom/android/cloud/fragment/BaseCloudFragment;->access$100(Lcom/android/cloud/fragment/BaseCloudFragment;)Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setItemChecked(I)V

    .line 27
    goto :goto_22

    .line 28
    :cond_1b
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 30
    iget-object p1, p1, Lcom/android/cloud/fragment/BaseCloudFragment;->mPresenter:Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;

    .line 32
    invoke-virtual {p1, p2}, Lcom/android/cloud/fragment/presenter/CloudDrivePresenter;->onItemClick(I)V

    .line 35
    :goto_22
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .registers 4

    .line 1
    const-string p1, "onItemLongClick position: "

    .line 3
    const-string v0, "CloudFileFragment"

    .line 5
    invoke-static {p1, p2, v0}, La/a;->u(Ljava/lang/String;ILjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/android/cloud/fragment/BaseCloudFragment$4;->this$0:Lcom/android/cloud/fragment/BaseCloudFragment;

    .line 10
    invoke-virtual {p1, p2}, Lcom/android/cloud/fragment/BaseCloudFragment;->onCloudItemLongClick(I)V

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public onStartDrag(Landroid/view/DragEvent;I)V
    .registers 3

    return-void
.end method
