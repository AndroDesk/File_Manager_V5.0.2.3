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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mBackToFront:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mInited:Z

    .line 11
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

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_f

    .line 7
    const-string p1, "BaseFragment"

    .line 9
    const-string v0, "onKeyShortcut not in ActionMode, return."

    .line 11
    invoke-static {p1, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 23
    if-eqz v1, :cond_1c

    .line 25
    invoke-virtual {v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->getCheckedFileInfos()Ljava/util/ArrayList;

    .line 28
    move-result-object v0

    .line 29
    :cond_1c
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v0, p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setMirrorPasteFileInfos(Ljava/util/ArrayList;Z)Z

    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method private synthetic lambda$onRename$1(Landroidx/recyclerview/widget/RecyclerView;ILcom/android/fileexplorer/model/FileInfo;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_4d

    .line 11
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 13
    if-eqz v0, :cond_4d

    .line 15
    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setItemRadioChecked(I)V

    .line 18
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mRenamePopupWindow:Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    .line 20
    if-nez p2, :cond_20

    .line 22
    new-instance p2, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p2, v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mRenamePopupWindow:Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    .line 33
    :cond_20
    const p2, 0x7f0a0186

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_2f

    .line 42
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mRenamePopupWindow:Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    .line 44
    invoke-virtual {p1, p2, p3}, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->show(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 47
    goto :goto_4d

    .line 48
    :cond_2f
    const p2, 0x7f0a01dc

    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object p2

    .line 55
    const/4 v0, 0x0

    .line 56
    if-eqz p2, :cond_3f

    .line 58
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mRenamePopupWindow:Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    .line 60
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->show(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;Z)V

    .line 63
    goto :goto_4d

    .line 64
    :cond_3f
    const p2, 0x7f0a031b

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_4d

    .line 73
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mRenamePopupWindow:Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;

    .line 75
    invoke-virtual {p2, p1, p3, v0}, Lcom/android/fileexplorer/mirror/view/MirrorRenamePopupWindow;->show(Landroid/view/View;Lcom/android/fileexplorer/model/FileInfo;Z)V

    .line 78
    :cond_4d
    :goto_4d
    return-void
.end method

.method private synthetic lambda$onResume$0()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->getDataBackToFront()V

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mBackToFront:Z

    .line 13
    return-void
.end method


# virtual methods
.method public checkIfShowFabMenuLayout(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFabMenuFunctionLayout:Lcom/android/fileexplorer/view/FabMenuFunctionLayout;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/view/FabMenuFunctionLayout;->animShowHide(Z)V

    .line 9
    return-void
.end method

.method public createFileInfo()Lcom/android/fileexplorer/model/FileInfo;
    .registers 2

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/FileHelper;->getMiSharePath()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->createDestFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public exitActionMode()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 9
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->exitSelectedMode()V

    .line 12
    const/4 v0, 0x1

    .line 13
    return v0

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public getDataBackToFront()V
    .registers 1

    return-void
.end method

.method public getFileTransferDestType()I
    .registers 2

    .line 1
    sget v0, Lcom/android/fileexplorer/filemanager/FileTransferParams;->DEST_FIXED_MIRROR:I

    .line 3
    return v0
.end method

.method public getSessionName()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public handleHover(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 3
    iget-object v0, v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;->hoverMaskState:Landroidx/lifecycle/q;

    .line 5
    new-instance v1, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;

    .line 7
    invoke-direct {v1, p1}, Lcom/android/fileexplorer/mirror/model/MirrorHoverMaskInfo;-><init>(Z)V

    .line 10
    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->j(Ljava/lang/Object;)V

    .line 13
    return-void
.end method

.method public isEditMode()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 3
    if-eqz v0, :cond_c

    .line 5
    invoke-interface {v0}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper$MultiChoiceModeListener;->isSelectedMode()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    :goto_d
    return v0
.end method

.method public onActionModeChange(Z)V
    .registers 2

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->checkIfShowFabMenuLayout(Z)V

    .line 6
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 4
    return-void
.end method

.method public onBack()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    new-instance p1, Landroidx/lifecycle/c0;

    .line 6
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 13
    const-class v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 15
    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 21
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 23
    new-instance p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 31
    invoke-direct {p1, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 34
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 36
    return-void
.end method

.method public onDeActiveEmptyView()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->deActiveState()V

    .line 8
    :cond_7
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroyView()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mBackToFront:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mNeedRefresh:Z

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 11
    if-eqz v0, :cond_f

    .line 13
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->onDestroy()V

    .line 16
    :cond_f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 18
    if-eqz v0, :cond_16

    .line 20
    invoke-virtual {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->onDestroy()V

    .line 23
    :cond_16
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 25
    if-eqz v0, :cond_1d

    .line 27
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->onDestroy()V

    .line 30
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

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_17

    .line 4
    if-eqz p2, :cond_17

    .line 6
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 8
    if-eqz p1, :cond_17

    .line 10
    const-string p1, "BaseFragment"

    .line 12
    const-string p2, "press del"

    .line 14
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 19
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->deleteSelectedItems()V

    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public onKeyShortcut(I)Z
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_7a

    .line 4
    const-string v1, "BaseFragment"

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq p1, v2, :cond_65

    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x3

    .line 11
    if-eq p1, v3, :cond_2b

    .line 13
    if-eq p1, v4, :cond_26

    .line 15
    const/4 v2, 0x4

    .line 16
    if-eq p1, v2, :cond_12

    .line 18
    goto :goto_25

    .line 19
    :cond_12
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1e

    .line 25
    const-string p1, "onKeyShortcut not in ActionMode, return."

    .line 27
    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return v0

    .line 31
    :cond_1e
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 33
    if-eqz p1, :cond_25

    .line 35
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->deleteSelectedItems()V

    .line 38
    :cond_25
    :goto_25
    return v0

    .line 39
    :cond_26
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->copyOrMove(Z)Z

    .line 42
    move-result p1

    .line 43
    return p1

    .line 44
    :cond_2b
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->getClipboardManager()Landroid/content/ClipboardManager;

    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_32

    .line 50
    return v0

    .line 51
    :cond_32
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_4b

    .line 57
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getPrimaryClip(Landroid/content/ClipboardManager;)Landroid/content/ClipData;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 67
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->getFileTransferDestType()I

    .line 70
    move-result v2

    .line 71
    invoke-static {p1, v0, v1, v2, v4}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handlePaste(Landroid/content/ClipData;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    .line 74
    move-result p1

    .line 75
    return p1

    .line 76
    :cond_4b
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->hasPasteFileInfos()Z

    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_64

    .line 86
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->createFileInfo()Lcom/android/fileexplorer/model/FileInfo;

    .line 89
    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 92
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->getFileTransferDestType()I

    .line 95
    move-result v1

    .line 96
    invoke-static {p1, v0, v1, v4}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handleInnerPaste(Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    .line 99
    move-result p1

    .line 100
    return p1

    .line 101
    :cond_64
    return v0

    .line 102
    :cond_65
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->isEditMode()Z

    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_71

    .line 108
    const-string p1, "onKeyShortcut select all not in ActionMode, return."

    .line 110
    invoke-static {v1, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return v0

    .line 114
    :cond_71
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mMultiChoiceCallback:Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;

    .line 116
    if-eqz p1, :cond_79

    .line 118
    invoke-virtual {p1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setToggleAllChecked()V

    .line 121
    return v2

    .line 122
    :cond_79
    return v0

    .line 123
    :cond_7a
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->copyOrMove(Z)Z

    .line 126
    move-result p1

    .line 127
    return p1
.end method

.method public onPause()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->onPause()V

    .line 11
    :cond_a
    return-void
.end method

.method public onRename(Lcom/android/fileexplorer/model/FileInfo;I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_25

    .line 7
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    const v1, 0x102000a

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    if-eqz v0, :cond_25

    .line 22
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_25

    .line 28
    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/a;

    .line 30
    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/fileexplorer/mirror/fragments/a;-><init>(Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;Landroidx/recyclerview/widget/RecyclerView;ILcom/android/fileexplorer/model/FileInfo;)V

    .line 33
    const-wide/16 p1, 0x0

    .line 35
    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    :cond_25
    return-void
.end method

.method public onResume()V
    .registers 4

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->onResume()V

    .line 11
    :cond_a
    iget-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mBackToFront:Z

    .line 13
    if-eqz v0, :cond_1a

    .line 15
    new-instance v0, Landroidx/activity/b;

    .line 17
    const/16 v1, 0x8

    .line 19
    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 22
    const-wide/16 v1, 0x32

    .line 24
    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/model/Util;->doActionDelay(Ljava/lang/Runnable;J)V

    .line 27
    :cond_1a
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mBackToFront:Z

    .line 7
    return-void
.end method

.method public processDrop(Landroid/view/DragEvent;Lcom/android/fileexplorer/model/FileInfo;)Z
    .registers 7

    .line 1
    const-string v0, "Drag_BaseFragment"

    .line 3
    const-string v1, "processDrop"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/model/ViewDragManager;->getInstance()Lcom/android/fileexplorer/model/ViewDragManager;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/android/fileexplorer/model/ViewDragManager;->requestDragPermission(Landroid/app/Activity;Landroid/view/DragEvent;)Z

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez v0, :cond_1e

    .line 23
    const-string p1, "BaseFragment"

    .line 25
    const-string p2, "processDrop no permission, return false."

    .line 27
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return v1

    .line 31
    :cond_1e
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    .line 34
    move-result-object v0

    .line 35
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mFileOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 37
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->getFileTransferDestType()I

    .line 40
    move-result v3

    .line 41
    invoke-static {p1}, Lcom/android/fileexplorer/adapter/recycle/viewhelper/ViewDragListener;->dragInner(Landroid/view/DragEvent;)Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_30

    .line 47
    move p1, v1

    .line 48
    goto :goto_31

    .line 49
    :cond_30
    const/4 p1, 0x3

    .line 50
    :goto_31
    invoke-static {v0, p2, v2, v3, p1}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->handleDrop(Landroid/content/ClipData;Lcom/android/fileexplorer/model/FileInfo;Lcom/android/fileexplorer/filemanager/FileOperationManager;II)Z

    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_38

    .line 56
    return v1

    .line 57
    :cond_38
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->exitActionMode()Z

    .line 60
    const/4 p1, 0x1

    .line 61
    return p1
.end method

.method public processStartDrag()V
    .registers 3

    .line 1
    const-string v0, "BaseFragment"

    .line 3
    const-string v1, "processStartDrag"

    .line 5
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public reverseEmptyViewState()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->toggleActive()V

    .line 8
    :cond_7
    return-void
.end method

.method public setEmptyViewHint(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/BaseMirrorFragment;->mEmptyView:Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/mirror/view/MirrorEmptyView;->setHinText(I)V

    .line 8
    :cond_7
    return-void
.end method
