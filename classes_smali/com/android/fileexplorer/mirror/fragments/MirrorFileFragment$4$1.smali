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
.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;ZZLandroid/content/ClipboardManager;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->this$1:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;

    .line 3
    iput-boolean p2, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->val$hasInnerPaste:Z

    .line 5
    iput-boolean p3, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->val$hasOuterPaste:Z

    .line 7
    iput-object p4, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->val$clipboardManagerPaste:Landroid/content/ClipboardManager;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 1

    return-void
.end method

.method public onMenuItemClick(II)V
    .registers 6

    .line 1
    const p2, 0x7f0a02dc

    .line 4
    if-eq p1, p2, :cond_46

    .line 6
    const p2, 0x7f0a0307

    .line 9
    if-eq p1, p2, :cond_b

    .line 11
    goto :goto_4f

    .line 12
    :cond_b
    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->val$hasOuterPaste:Z

    .line 14
    const/4 p2, 0x3

    .line 15
    if-eqz p1, :cond_2c

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->val$clipboardManagerPaste:Landroid/content/ClipboardManager;

    .line 19
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getPrimaryClip(Landroid/content/ClipboardManager;)Landroid/content/ClipData;

    .line 22
    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->this$1:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;

    .line 25
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 27
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->this$1:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;

    .line 33
    iget-object v1, v1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 35
    iget-object v2, v1, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 37
    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getFileTransferDestType()I

    .line 40
    move-result v1

    .line 41
    invoke-static {p1, v0, v2, v1, p2}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handlePaste(Landroid/content/ClipData;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    .line 44
    goto :goto_4f

    .line 45
    :cond_2c
    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->val$hasInnerPaste:Z

    .line 47
    if-eqz p1, :cond_4f

    .line 49
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->this$1:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;

    .line 51
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 53
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 56
    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->this$1:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;

    .line 59
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 61
    iget-object v1, v0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 63
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->getFileTransferDestType()I

    .line 66
    move-result v0

    .line 67
    invoke-static {p1, v1, v0, p2}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handleInnerPaste(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    .line 70
    goto :goto_4f

    .line 71
    :cond_46
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->this$1:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;

    .line 73
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    .line 75
    iget-object p1, p1, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->mInteractionHubR:Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;

    .line 77
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileViewInteractionHubR;->onOptionsItemSelected(I)Z

    .line 80
    :cond_4f
    :goto_4f
    return-void
.end method

.method public onPrepare(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 8
    const v2, 0x7f0a02dc

    .line 11
    const v3, 0x7f11030e

    .line 14
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->val$hasInnerPaste:Z

    .line 22
    if-nez v1, :cond_1b

    .line 24
    iget-boolean v1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$4$1;->val$hasOuterPaste:Z

    .line 26
    if-eqz v1, :cond_29

    .line 28
    :cond_1b
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 30
    const v2, 0x7f0a0307

    .line 33
    const v3, 0x7f110315

    .line 36
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_29
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenus(Ljava/util/List;)V

    .line 45
    return-void
.end method
