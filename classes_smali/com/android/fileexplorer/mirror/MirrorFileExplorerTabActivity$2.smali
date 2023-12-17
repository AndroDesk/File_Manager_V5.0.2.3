.class Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$2;
.super Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;
.source "MirrorFileExplorerTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;->initDragEvent(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$2;->this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 3
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public canHandleEvent(Landroid/view/DragEvent;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_14

    .line 7
    invoke-virtual {p1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    .line 10
    move-result-object p1

    .line 11
    const-string v0, "mirror"

    .line 13
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_14

    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 p1, 0x0

    .line 22
    :goto_15
    return p1
.end method

.method public handleDrop(Landroid/view/DragEvent;Ljava/lang/String;)Z
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$2;->this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 3
    iget-object p2, p2, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 8
    check-cast p2, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 10
    invoke-virtual {p2}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public handleHover(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$2;->this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 5
    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 7
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->handleHover(Z)V

    .line 10
    return-void
.end method

.method public startDragReal(Landroid/view/DragEvent;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->startDragReal(Landroid/view/DragEvent;)V

    .line 4
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$2;->this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    .line 6
    iget-object p1, p1, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    .line 8
    check-cast p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 10
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->processStartDrag()V

    .line 13
    return-void
.end method
