.class Lcom/android/fileexplorer/fragment/FileFragment$9;
.super Ljava/lang/Object;
.source "FileFragment.java"

# interfaces
.implements Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu$OnMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/FileFragment;->showVolumesPopup(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/FileFragment;

.field public final synthetic val$devicesStr:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/FileFragment;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$9;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iput-object p2, p0, Lcom/android/fileexplorer/fragment/FileFragment$9;->val$devicesStr:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    const-string v0, "FileFragment"

    const-string v1, "onDismiss: "

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$9;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$1602(Lcom/android/fileexplorer/fragment/FileFragment;Z)Z

    return-void
.end method

.method public onItemSelected(Lmiuix/popupwidget/widget/DropDownSingleChoiceMenu;I)V
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$9;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->getLastSelectedVolumePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$9;->val$devicesStr:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    return-void

    :cond_15
    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$9;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/fragment/FileFragment;->access$1700(Lcom/android/fileexplorer/fragment/FileFragment;I)Lcom/android/fileexplorer/model/StorageInfo;

    move-result-object p1

    if-eqz p1, :cond_6f

    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileFragment$9;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object p2, p2, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    if-eqz p2, :cond_35

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$9;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6f

    :cond_35
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/FileFragment$9;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iput-object p1, p2, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    iget-object p1, p2, Lcom/android/fileexplorer/fragment/AbsActionBarFragment;->mInteractionHubR:Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;

    new-instance p2, Lcom/android/fileexplorer/model/PathSegment;

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$9;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/fragment/FileFragment$9;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v1, v1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/android/fileexplorer/model/PathSegment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$9;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget-object v0, v0, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mStorageInfo:Lcom/android/fileexplorer/model/StorageInfo;

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/StorageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/FileViewInteractionHubR;->initPath(Lcom/android/fileexplorer/model/PathSegment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$9;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/FileFragment;->exitActionMode()Z

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$9;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/FileFragment;->updateUI()V

    iget-object p1, p0, Lcom/android/fileexplorer/fragment/FileFragment$9;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    iget p2, p1, Lcom/android/fileexplorer/fragment/AbsFileFragment;->mCurrentDeviceIndex:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_6f

    invoke-virtual {p1}, Lcom/android/fileexplorer/fragment/AbsFileFragment;->setLastSelectedVolumePath()V

    :cond_6f
    return-void
.end method

.method public onShow()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/FileFragment$9;->this$0:Lcom/android/fileexplorer/fragment/FileFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/FileFragment;->access$1602(Lcom/android/fileexplorer/fragment/FileFragment;Z)Z

    return-void
.end method
