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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;Lcom/android/fileexplorer/filemanager/FileOperationManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mAnchorView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iput-object p3, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;)Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mFragment:Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;)Lcom/android/fileexplorer/filemanager/FileOperationManager;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    return-object p0
.end method


# virtual methods
.method public onRightClick(FF)V
    .registers 10

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mPopupMenu:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mPopupMenu:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    :cond_a
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getPrimaryClip(Landroid/content/ClipboardManager;)Landroid/content/ClipData;

    move-result-object v2

    move v3, v1

    :goto_1c
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_32

    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_2e

    const/4 v1, 0x1

    goto :goto_32

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_31
    move v1, v2

    :cond_32
    :goto_32
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    move-result v2

    if-nez v1, :cond_3e

    if-eqz v2, :cond_54

    :cond_3e
    new-instance v3, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    iget-object v4, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iget-object v5, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mAnchorView:Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;

    new-instance v6, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;

    invoke-direct {v6, p0, v1, v0, v2}, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener$1;-><init>(Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;ZLandroid/content/ClipboardManager;Z)V

    const/4 v0, -0x1

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$OnMenuListener;I)V

    iput-object v3, p0, Lcom/android/fileexplorer/mirror/modecallback/RightPasteClickListener;->mPopupMenu:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v3, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->show(II)V

    :cond_54
    return-void
.end method
