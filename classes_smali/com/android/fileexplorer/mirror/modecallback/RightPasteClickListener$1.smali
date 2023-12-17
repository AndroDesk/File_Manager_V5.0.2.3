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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;ZLandroid/content/ClipboardManager;Z)V
    .registers 5

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->this$0:Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;

    iput-boolean p2, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->val$hasOuterPaste:Z

    iput-object p3, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->val$clipboardManagerPaste:Landroid/content/ClipboardManager;

    iput-boolean p4, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->val$hasInnerPaste:Z

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

    const p2, 0x7f0a0307

    if-eq p1, p2, :cond_6

    goto :goto_50

    :cond_6
    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->val$hasOuterPaste:Z

    const/4 p2, 0x3

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->val$clipboardManagerPaste:Landroid/content/ClipboardManager;

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getPrimaryClip(Landroid/content/ClipboardManager;)Landroid/content/ClipData;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->this$0:Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->access$000(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->this$0:Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;

    invoke-static {v1}, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->access$100(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;)Lcom/android/fileexplorer/filemanager/FileOperationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->this$0:Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;

    invoke-static {v2}, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->access$000(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->getFileTransferDestType()I

    move-result v2

    invoke-static {p1, v0, v1, v2, p2}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handlePaste(Landroid/content/ClipData;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    goto :goto_50

    :cond_2f
    iget-boolean p1, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->val$hasInnerPaste:Z

    if-eqz p1, :cond_50

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->this$0:Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->access$000(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->this$0:Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->access$100(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;)Lcom/android/fileexplorer/filemanager/FileOperationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;->this$0:Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;

    invoke-static {v1}, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->access$000(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->getFileTransferDestType()I

    move-result v1

    invoke-static {p1, v0, v1, p2}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handleInnerPaste(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    :cond_50
    :goto_50
    return-void
.end method

.method public onPrepare(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)V
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    const v2, 0x7f0a0307

    const v3, 0x7f110315

    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenus(Ljava/util/List;)V

    return-void
.end method
