.class Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;
.super Ljava/lang/Object;
.source "RightPasteClickListener.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->onRightClick(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;

.field public final synthetic val$clipboardManagerPaste:Landroid/content/ClipboardManager;

.field public final synthetic val$hasInnerPaste:Z

.field public final synthetic val$hasOuterPaste:Z


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;ZLandroid/content/ClipboardManager;Z)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->this$0:Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;

    .line 3
    iput-boolean p2, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->val$hasOuterPaste:Z

    .line 5
    iput-object p3, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->val$clipboardManagerPaste:Landroid/content/ClipboardManager;

    .line 7
    iput-boolean p4, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->val$hasInnerPaste:Z

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
    const p2, 0x7f0a0307

    .line 4
    if-eq p1, p2, :cond_6

    .line 6
    goto :goto_50

    .line 7
    :cond_6
    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->val$hasOuterPaste:Z

    .line 9
    const/4 p2, 0x3

    .line 10
    if-eqz p1, :cond_2f

    .line 12
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->val$clipboardManagerPaste:Landroid/content/ClipboardManager;

    .line 14
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getPrimaryClip(Landroid/content/ClipboardManager;)Landroid/content/ClipData;

    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->this$0:Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;

    .line 20
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->access$000(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->this$0:Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;

    .line 30
    invoke-static {v1}, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->access$100(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;)Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->this$0:Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;

    .line 36
    invoke-static {v2}, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->access$000(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->getFileTransferDestType()I

    .line 43
    move-result v2

    .line 44
    invoke-static {p1, v0, v1, v2, p2}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handlePaste(Landroid/content/ClipData;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    .line 47
    goto :goto_50

    .line 48
    :cond_2f
    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->val$hasInnerPaste:Z

    .line 50
    if-eqz p1, :cond_50

    .line 52
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->this$0:Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;

    .line 54
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->access$000(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 61
    move-result-object p1

    .line 62
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->this$0:Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;

    .line 64
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->access$100(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;)Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 67
    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->this$0:Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;

    .line 70
    invoke-static {v1}, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->access$000(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->getFileTransferDestType()I

    .line 77
    move-result v1

    .line 78
    invoke-static {p1, v0, v1, p2}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handleInnerPaste(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    .line 81
    :cond_50
    :goto_50
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
    const v2, 0x7f0a0307

    .line 11
    const v3, 0x7f110315

    .line 14
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenus(Ljava/util/List;)V

    .line 23
    return-void
.end method
