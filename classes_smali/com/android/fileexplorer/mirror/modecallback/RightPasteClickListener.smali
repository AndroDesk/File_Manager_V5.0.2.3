.class public Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;
.super Ljava/lang/Object;
.source "RightPasteClickListener.java"

# interfaces
.implements Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView$OnRightClickListener;


# instance fields
.field private mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

.field private mAnchorView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

.field private mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field private mFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

.field private mPopupMenu:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;Lcom/android/fileexplorer/filemanager/FileOperationManager;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mAnchorView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 8
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 14
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 16
    iput-object p3, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 18
    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;)Lcom/android/fileexplorer/filemanager/FileOperationManager;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 3
    return-object p0
.end method


# virtual methods
.method public onRightClick(FF)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mPopupMenu:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 3
    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->dismiss()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mPopupMenu:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 11
    :cond_a
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->getClipboardManager()Landroid/content/ClipboardManager;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_32

    .line 18
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_31

    .line 24
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getPrimaryClip(Landroid/content/ClipboardManager;)Landroid/content/ClipData;

    .line 27
    move-result-object v2

    .line 28
    move v3, v1

    .line 29
    :goto_1c
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    .line 32
    move-result v4

    .line 33
    if-ge v3, v4, :cond_32

    .line 35
    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_2e

    .line 45
    const/4 v1, 0x1

    .line 46
    goto :goto_32

    .line 47
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    .line 49
    goto :goto_1c

    .line 50
    :cond_31
    move v1, v2

    .line 51
    :cond_32
    :goto_32
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    .line 58
    move-result v2

    .line 59
    if-nez v1, :cond_3e

    .line 61
    if-eqz v2, :cond_54

    .line 63
    :cond_3e
    new-instance v3, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 65
    iget-object v4, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 67
    iget-object v5, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mAnchorView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    .line 69
    new-instance v6, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;

    .line 71
    invoke-direct {v6, p0, v1, v0, v2}, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;-><init>(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;ZLandroid/content/ClipboardManager;Z)V

    .line 74
    const/4 v0, -0x1

    .line 75
    invoke-direct {v3, v4, v5, v6, v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;I)V

    .line 78
    iput-object v3, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mPopupMenu:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 80
    float-to-int p1, p1

    .line 81
    float-to-int p2, p2

    .line 82
    invoke-virtual {v3, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->show(II)V

    .line 85
    :cond_54
    return-void
.end method
