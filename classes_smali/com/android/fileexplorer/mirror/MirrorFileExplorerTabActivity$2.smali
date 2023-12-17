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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$2;->this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canHandleEvent(Landroid/view/DragEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p1

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "mirror"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public handleDrop(Landroid/view/DragEvent;Ljava/lang/String;)Z
    .registers 4

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$2;->this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    iget-object p2, p2, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    move-object v0, p2

    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    check-cast p2, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    invoke-virtual {p2}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z

    move-result p1

    return p1
.end method

.method public handleHover(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$2;->this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    iget-object v0, v0, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->handleHover(Z)V

    return-void
.end method

.method public startDragReal(Landroid/view/DragEvent;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->startDragReal(Landroid/view/DragEvent;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$2;->this$0:Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity;

    iget-object p1, p1, Lcom/android/fileexplorer/FileExplorerTabBaseActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    check-cast p1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->processStartDrag()V

    return-void
.end method
