.class Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;
.super Ljava/lang/Object;
.source "MirrorFileFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;->onRightClick(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;

.field public final synthetic val$clipboardManagerPaste:Landroid/content/ClipboardManager;

.field public final synthetic val$hasInnerPaste:Z

.field public final synthetic val$hasOuterPaste:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;ZZLandroid/content/ClipboardManager;)V
    .registers 5

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->this$1:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;

    iput-boolean p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->val$hasInnerPaste:Z

    iput-boolean p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->val$hasOuterPaste:Z

    iput-object p4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->val$clipboardManagerPaste:Landroid/content/ClipboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 1

    return-void
.end method

.method public onMenuItemClick(II)V
    .registers 6

    const p2, 0x7f0a02dc

    if-eq p1, p2, :cond_46

    const p2, 0x7f0a0307

    if-eq p1, p2, :cond_b

    goto :goto_4f

    :cond_b
    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->val$hasOuterPaste:Z

    const/4 p2, 0x3

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->val$clipboardManagerPaste:Landroid/content/ClipboardManager;

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getPrimaryClip(Landroid/content/ClipboardManager;)Landroid/content/ClipData;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->this$1:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->this$1:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;

    iget-object v1, v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v2, v1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getFileTransferDestType()I

    move-result v1

    invoke-static {p1, v0, v2, v1, p2}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handlePaste(Landroid/content/ClipData;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    goto :goto_4f

    :cond_2c
    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->val$hasInnerPaste:Z

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->this$1:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->this$1:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v1, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getFileTransferDestType()I

    move-result v0

    invoke-static {p1, v1, v0, p2}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handleInnerPaste(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    goto :goto_4f

    :cond_46
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->this$1:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onOptionsItemSelected(I)Z

    :cond_4f
    :goto_4f
    return-void
.end method

.method public onPrepare(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    const v2, 0x7f0a02dc

    const v3, 0x7f11030e

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->val$hasInnerPaste:Z

    if-nez v1, :cond_1b

    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->val$hasOuterPaste:Z

    if-eqz v1, :cond_29

    :cond_1b
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    const v2, 0x7f0a0307

    const v3, 0x7f110315

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenus(Ljava/util/List;)V

    return-void
.end method
