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
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Ljava/util/List;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->val$devicesStr:Ljava/util/List;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .line 1
    const-string v0, "MirrorFileFragment"

    .line 3
    const-string v1, "onDismiss: "

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1602(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Z)Z

    .line 14
    return-void
.end method

.method public onItemSelected(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->getLastSelectedVolumePath()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->val$devicesStr:Ljava/util/List;

    .line 9
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_15

    .line 21
    return-void

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 24
    invoke-static {v0, p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1700(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;I)Lcom/android/fileexplorer/model/StorageInfo;

    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_6f

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 32
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 34
    if-eqz v0, :cond_35

    .line 36
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 42
    iget-object v1, v1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 44
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_6f

    .line 54
    :cond_35
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 56
    iput-object p1, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 58
    iget-object p1, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 60
    new-instance v0, Lcom/android/fileexplorer/model/PathSegment;

    .line 62
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 64
    iget-object v1, v1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 66
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 72
    iget-object v2, v2, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 74
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 83
    iget-object v1, v1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    .line 85
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1, v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 94
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    .line 97
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 99
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->updateUI()V

    .line 102
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 104
    iget v0, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->mCurrentDeviceIndex:I

    .line 106
    const/4 v1, 0x2

    .line 107
    if-ne v0, v1, :cond_6f

    .line 109
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorAbsFileFragment;->setLastSelectedVolumePath()V

    .line 112
    :cond_6f
    return-void
.end method

.method public onShow()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$10;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->access$1602(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Z)Z

    .line 7
    return-void
.end method
