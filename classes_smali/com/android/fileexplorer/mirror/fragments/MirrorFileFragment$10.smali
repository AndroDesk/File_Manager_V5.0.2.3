.class Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;
.super Ljava/lang/Object;
.source "MirrorFileFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/view/MirrorDropDownPopupWindow$OnMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->showVolumesPopup(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

.field public final synthetic val$devicesStr:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->val$devicesStr:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    const-string v0, "MirrorFileFragment"

    const-string v1, "onDismiss: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1602(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Z)Z

    return-void
.end method

.method public onItemSelected(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getLastSelectedVolumePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->val$devicesStr:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1700(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;I)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object p1

    if-eqz p1, :cond_6f

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v1, v1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    :cond_35
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iput-object p1, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    iget-object p1, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v1, v1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v2, v2, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v1, v1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->updateUI()V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget v0, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6f

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->setLastSelectedVolumePath()V

    :cond_6f
    return-void
.end method

.method public onShow()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1602(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Z)Z

    return-void
.end method
