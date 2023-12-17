.class public Lcom/android/fileexplorer/mirror/modecallback/MirrorFavoriteMultiCallback;
.super Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;
.source "MirrorFavoriteMultiCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/mirror/modecallback/MirrorFavoriteMultiCallback$OnFavRemoveListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback<",
        "Lcom/android/fileexplorer/model/FavoriteItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mFavoriteRemoveListener:Lcom/android/fileexplorer/mirror/modecallback/MirrorFavoriteMultiCallback$OnFavRemoveListener;

.field private mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;ILcom/android/fileexplorer/mirror/modecallback/MirrorFavoriteMultiCallback$OnFavRemoveListener;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;-><init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 4
    iput-object p4, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorFavoriteMultiCallback;->mFavoriteRemoveListener:Lcom/android/fileexplorer/mirror/modecallback/MirrorFavoriteMultiCallback$OnFavRemoveListener;

    .line 6
    new-instance p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 8
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 10
    invoke-direct {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 13
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 15
    new-instance p1, Landroidx/lifecycle/c0;

    .line 17
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 19
    invoke-direct {p1, p2}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 22
    const-class p2, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 24
    invoke-virtual {p1, p2}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 30
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorFavoriteMultiCallback;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 32
    return-void
.end method


# virtual methods
.method public convert2RealCheckedItems()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1c

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/fileexplorer/model/FavoriteItem;

    .line 19
    iget-object v1, v1, Lcom/android/fileexplorer/model/FavoriteItem;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 21
    if-eqz v1, :cond_6

    .line 23
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    goto :goto_6

    .line 29
    :cond_1c
    return-void
.end method

.method public isSelectedMode()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss()V
    .registers 1

    return-void
.end method

.method public onMenuItemClick(II)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-ne v0, v1, :cond_b

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move v1, v2

    .line 13
    :goto_c
    sparse-switch p1, :sswitch_data_62

    .line 16
    goto :goto_61

    .line 17
    :sswitch_10
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorFavoriteMultiCallback;->mFavoriteRemoveListener:Lcom/android/fileexplorer/mirror/modecallback/MirrorFavoriteMultiCallback$OnFavRemoveListener;

    .line 19
    if-eqz p1, :cond_61

    .line 21
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 23
    invoke-interface {p1, p2}, Lcom/android/fileexplorer/mirror/modecallback/MirrorFavoriteMultiCallback$OnFavRemoveListener;->onRemove(Ljava/util/List;)V

    .line 26
    goto :goto_61

    .line 27
    :sswitch_1a
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 29
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 31
    invoke-static {p1, p2}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickForSave(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 34
    goto :goto_61

    .line 35
    :sswitch_22
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mFragment:Lmiuix/appcompat/app/Fragment;

    .line 37
    instance-of v0, p1, Lcom/android/fileexplorer/mirror/fragments/IRenameInterface;

    .line 39
    if-eqz v0, :cond_61

    .line 41
    check-cast p1, Lcom/android/fileexplorer/mirror/fragments/IRenameInterface;

    .line 43
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 51
    invoke-interface {p1, v0, p2}, Lcom/android/fileexplorer/mirror/fragments/IRenameInterface;->onRename(Lcom/android/fileexplorer/model/FileInfo;I)V

    .line 54
    goto :goto_61

    .line 55
    :sswitch_36
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 63
    iget-boolean p2, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 65
    if-eqz p2, :cond_4a

    .line 67
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorFavoriteMultiCallback;->mVM:Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 69
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 71
    invoke-static {p2, p1}, Lcom/android/fileexplorer/mirror/utils/MirrorBrowseUtils;->browseFolder(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;Ljava/lang/String;)V

    .line 74
    goto :goto_61

    .line 75
    :cond_4a
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 77
    invoke-static {p2, p1}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 80
    goto :goto_61

    .line 81
    :sswitch_50
    if-eqz v1, :cond_61

    .line 83
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 85
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 93
    const-string v0, ""

    .line 95
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->showFileInfoMirror(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 98
    :cond_61
    :goto_61
    return-void

    .line 99
    :sswitch_data_62
    .sparse-switch
        0x7f0a0061 -> :sswitch_50
        0x7f0a006b -> :sswitch_36
        0x7f0a0072 -> :sswitch_22
        0x7f0a0076 -> :sswitch_1a
        0x7f0a0079 -> :sswitch_10
    .end sparse-switch
.end method

.method public onPrepare(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 11
    const v2, 0x7f0a006b

    .line 14
    const v3, 0x7f110312

    .line 17
    invoke-direct {v1, v2, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 25
    const v3, 0x7f0a0079

    .line 28
    const v4, 0x7f110324

    .line 31
    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;

    .line 39
    const v3, 0x7f0a0061

    .line 42
    const v4, 0x7f11030b

    .line 45
    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Menu;-><init>(II)V

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenus(Ljava/util/List;)V

    .line 54
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 59
    move-result v0

    .line 60
    const/4 v1, 0x1

    .line 61
    const/4 v4, 0x0

    .line 62
    if-le v0, v1, :cond_40

    .line 64
    goto :goto_41

    .line 65
    :cond_40
    move v1, v4

    .line 66
    :goto_41
    if-eqz v1, :cond_4f

    .line 68
    invoke-virtual {p1, v2, v4}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 71
    invoke-virtual {p1, v3, v4}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 74
    const v0, 0x7f0a0072

    .line 77
    invoke-virtual {p1, v0, v4}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 80
    :cond_4f
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_5f

    .line 88
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 90
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->hasDir(Ljava/util/ArrayList;)Z

    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_65

    .line 96
    :cond_5f
    const v0, 0x7f0a0076

    .line 99
    invoke-virtual {p1, v0, v4}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 102
    :cond_65
    return-void
.end method
