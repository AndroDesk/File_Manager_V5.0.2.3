.class public Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "BaseMirrorFragment.java"

# interfaces
.implements Lcom/android/fileexplorer/mirror/MirrorFileExplorerTabActivity$OnMainActionCallback;
.implements Lcom/android/fileexplorer/model/Util$OnDoubleTapListener;
.implements Lcom/android/fileexplorer/mirror/fragments/IRenameInterface;


# static fields
.field public static final LOAD_DELAY:J = 0x32L

.field private static final TAG:Ljava/lang/String; = "BaseFragment"


# instance fields
.field public mBackToFront:Z

.field public mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

.field public mFabMenuFunctionLayout:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

.field public mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

.field public mInited:Z

.field public mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

.field public mNeedRefresh:Z

.field private mRenamePopupWindow:Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

.field public mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mBackToFront:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mInited:Z

    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;Landroidx/recyclerview/widget/RecyclerView;ILcom/android/fileexplorer/model/FileInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->lambda$onRename$1(Landroidx/recyclerview/widget/RecyclerView;ILcom/android/fileexplorer/model/FileInfo;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->lambda$onResume$0()V

    return-void
.end method

.method private copyOrMove(Z)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_f

    const-string p1, "BaseFragment"

    const-string v0, "onKeyShortcut not in ActionMode, return."

    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    move-result-object v0

    :cond_1c
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setMirrorPasteFileInfos(Ljava/util/ArrayList;Z)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$onRename$1(Landroidx/recyclerview/widget/RecyclerView;ILcom/android/fileexplorer/model/FileInfo;)V
    .registers 5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_59

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    if-eqz v0, :cond_59

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemRadioChecked(I)V

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mRenamePopupWindow:Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    if-nez p2, :cond_20

    new-instance p2, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mRenamePopupWindow:Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    :cond_20
    const p2, 0x7f032c10

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_33

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mRenamePopupWindow:Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    invoke-virtual {p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->show(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;)V

    goto :goto_59

    :cond_33
    const p2, 0x7f032c4a

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_47

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mRenamePopupWindow:Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->show(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;Z)V

    goto :goto_59

    :cond_47
    const p2, 0x7f032e8d

    invoke-static {p2}, Lnp/NPFog;->d(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_59

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mRenamePopupWindow:Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    invoke-virtual {p2, p1, p3, v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->show(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;Z)V

    :cond_59
    :goto_59
    return-void
.end method

.method private synthetic lambda$onResume$0()V
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->getDataBackToFront()V

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mBackToFront:Z

    return-void
.end method


# virtual methods
.method public checkIfShowFabMenuLayout(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFabMenuFunctionLayout:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->animShowHide(Z)V

    return-void
.end method

.method public createFileInfo()Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    invoke-static {}, Lcom/android/fileexplorer/util/FileHelper;->getMiSharePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public exitActionMode()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->exitSelectedMode()V

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public getDataBackToFront()V
    .registers 1

    return-void
.end method

.method public getFileTransferDestType()I
    .registers 2

    sget v0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_FIXED_MIRROR:I

    return v0
.end method

.method public getSessionName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleHover(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->hoverMaskState:Landroidx/lifecycle/q;

    new-instance v1, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;

    invoke-direct {v1, p1}, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public isEditMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onActionModeChange(Z)V
    .registers 2

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->checkIfShowFabMenuLayout(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onBack()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroidx/lifecycle/c0;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    const-class v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    new-instance p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {p1, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    return-void
.end method

.method public onDeActiveEmptyView()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->deActiveState()V

    :cond_7
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mBackToFront:Z

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->onDestroy()V

    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onDestroy()V

    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->onDestroy()V

    :cond_1d
    return-void
.end method

.method public onDoubleTap()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onImmersionMenuClick(Landroid/view/MenuItem;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public onKeyEvent(IZ)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_17

    if-eqz p2, :cond_17

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    if-eqz p1, :cond_17

    const-string p1, "BaseFragment"

    const-string p2, "press del"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->deleteSelectedItems()V

    const/4 p1, 0x1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyShortcut(I)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_7a

    const-string v1, "BaseFragment"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_65

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq p1, v3, :cond_2b

    if-eq p1, v4, :cond_26

    const/4 v2, 0x4

    if-eq p1, v2, :cond_12

    goto :goto_25

    :cond_12
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, "onKeyShortcut not in ActionMode, return."

    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1e
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->deleteSelectedItems()V

    :cond_25
    :goto_25
    return v0

    :cond_26
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->copyOrMove(Z)Z

    move-result p1

    return p1

    :cond_2b
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->getClipboardManager()Landroid/content/ClipboardManager;

    move-result-object p1

    if-nez p1, :cond_32

    return v0

    :cond_32
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getPrimaryClip(Landroid/content/ClipboardManager;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->getFileTransferDestType()I

    move-result v2

    invoke-static {p1, v0, v1, v2, v4}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handlePaste(Landroid/content/ClipData;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    move-result p1

    return p1

    :cond_4b
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    move-result p1

    if-eqz p1, :cond_64

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->getFileTransferDestType()I

    move-result v1

    invoke-static {p1, v0, v1, v4}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handleInnerPaste(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    move-result p1

    return p1

    :cond_64
    return v0

    :cond_65
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_71

    const-string p1, "onKeyShortcut select all not in ActionMode, return."

    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_71
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    if-eqz p1, :cond_79

    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setToggleAllChecked()V

    return v2

    :cond_79
    return v0

    :cond_7a
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->copyOrMove(Z)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->onPause()V

    :cond_a
    return-void
.end method

.method public onRename(Lcom/android/fileexplorer/model/FileInfo;I)V
    .registers 5

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_25

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/a;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/fileexplorer/mirror/fragments/a;-><init>(Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;Landroidx/recyclerview/widget/RecyclerView;ILcom/android/fileexplorer/model/FileInfo;)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_25
    return-void
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->onResume()V

    :cond_a
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mBackToFront:Z

    if-eqz v0, :cond_1a

    new-instance v0, Landroidx/activity/b;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    :cond_1a
    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mBackToFront:Z

    return-void
.end method

.method public processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z
    .registers 7

    const-string v0, "Drag_BaseFragment"

    const-string v1, "processDrop"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/fileexplorer/model/ViewDragManager;->getInstance()Lcom/android/fileexplorer/model/ViewDragManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/model/ViewDragManager;->requestDragPermission(Landroid/app/Activity;Landroid/view/DragEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    const-string p1, "BaseFragment"

    const-string p2, "processDrop no permission, return false."

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1e
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->getFileTransferDestType()I

    move-result v3

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->dragInner(Landroid/view/DragEvent;)Z

    move-result p1

    if-eqz p1, :cond_30

    move p1, v1

    goto :goto_31

    :cond_30
    const/4 p1, 0x3

    :goto_31
    invoke-static {v0, p2, v2, v3, p1}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handleDrop(Landroid/content/ClipData;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    move-result p1

    if-nez p1, :cond_38

    return v1

    :cond_38
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    const/4 p1, 0x1

    return p1
.end method

.method public processStartDrag()V
    .registers 3

    const-string v0, "BaseFragment"

    const-string v1, "processStartDrag"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reverseEmptyViewState()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->toggleActive()V

    :cond_7
    return-void
.end method

.method public setEmptyViewHint(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setHinText(I)V

    :cond_7
    return-void
.end method
