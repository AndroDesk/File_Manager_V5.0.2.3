.class public Lcom/android/fileexplorer/mirror/modecallback/MirrorSearchMultiChoiceCallback;
.super Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;
.source "MirrorSearchMultiChoiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback<",
        "Lcom/android/fileexplorer/adapter/search/SearchResultData<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;-><init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 4
    new-instance p2, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 12
    invoke-direct {p2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 15
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 17
    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/mirror/modecallback/MirrorSearchMultiChoiceCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorSearchMultiChoiceCallback;->lambda$onMenuItemClick$0()V

    return-void
.end method

.method private synthetic lambda$onMenuItemClick$0()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAllChecked(Z)V

    .line 5
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
    check-cast v1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 19
    iget-object v1, v1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

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

.method public encrypt()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->encryptReal(Ljava/util/ArrayList;)V

    .line 6
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
    sparse-switch p1, :sswitch_data_7e

    .line 16
    goto :goto_7d

    .line 17
    :sswitch_10
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 19
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 21
    invoke-static {p1, p2}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickForSave(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 24
    goto :goto_7d

    .line 25
    :sswitch_18
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mFragment:Lmiuix/appcompat/app/Fragment;

    .line 27
    instance-of v0, p1, Lcom/android/fileexplorer/mirror/fragments/IRenameInterface;

    .line 29
    if-eqz v0, :cond_7d

    .line 31
    check-cast p1, Lcom/android/fileexplorer/mirror/fragments/IRenameInterface;

    .line 33
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 41
    invoke-interface {p1, v0, p2}, Lcom/android/fileexplorer/mirror/fragments/IRenameInterface;->onRename(Lcom/android/fileexplorer/model/FileInfo;I)V

    .line 44
    goto :goto_7d

    .line 45
    :sswitch_2c
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 53
    iget-boolean p2, p1, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 55
    if-eqz p2, :cond_4d

    .line 57
    new-instance p2, Landroidx/lifecycle/c0;

    .line 59
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 61
    invoke-direct {p2, v0}, Landroidx/lifecycle/c0;-><init>(Landroidx/lifecycle/f0;)V

    .line 64
    const-class v0, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 66
    invoke-virtual {p2, v0}, Landroidx/lifecycle/c0;->a(Ljava/lang/Class;)Landroidx/lifecycle/a0;

    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;

    .line 72
    iget-object p1, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 74
    invoke-static {p2, p1}, Lcom/android/fileexplorer/mirror/utils/MirrorBrowseUtils;->browseFolder(Lcom/android/fileexplorer/mirror/viewmodels/MirrorFileExplorerHomeViewModel;Ljava/lang/String;)V

    .line 77
    goto :goto_7d

    .line 78
    :cond_4d
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 80
    invoke-static {p2, p1}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 83
    goto :goto_7d

    .line 84
    :sswitch_53
    if-eqz v1, :cond_7d

    .line 86
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 88
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 96
    const-string v0, ""

    .line 98
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->showFileInfoMirror(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 101
    goto :goto_7d

    .line 102
    :sswitch_65
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 104
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Landroidx/activity/b;

    .line 108
    const/16 v1, 0xe

    .line 110
    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 113
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->deleteFilesMirror(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    .line 116
    goto :goto_7d

    .line 117
    :sswitch_74
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 120
    move-result-object p1

    .line 121
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setMirrorPasteFileInfos(Ljava/util/ArrayList;Z)Z

    .line 126
    :cond_7d
    :goto_7d
    return-void

    .line 127
    :sswitch_data_7e
    .sparse-switch
        0x7f0a0054 -> :sswitch_74
        0x7f0a005a -> :sswitch_65
        0x7f0a0061 -> :sswitch_53
        0x7f0a006b -> :sswitch_2c
        0x7f0a0072 -> :sswitch_18
        0x7f0a0076 -> :sswitch_10
    .end sparse-switch
.end method

.method public onPrepare(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-le v0, v1, :cond_e

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move v1, v2

    .line 16
    :goto_f
    if-eqz v1, :cond_23

    .line 18
    const v0, 0x7f0a006b

    .line 21
    invoke-virtual {p1, v0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 24
    const v0, 0x7f0a0061

    .line 27
    invoke-virtual {p1, v0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 30
    const v0, 0x7f0a0072

    .line 33
    invoke-virtual {p1, v0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 36
    :cond_23
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_33

    .line 44
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 46
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->hasDir(Ljava/util/ArrayList;)Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_39

    .line 52
    :cond_33
    const v0, 0x7f0a0076

    .line 55
    invoke-virtual {p1, v0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 58
    :cond_39
    const v0, 0x7f0a005e

    .line 61
    invoke-virtual {p1, v0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 64
    const v0, 0x7f0a0079

    .line 67
    invoke-virtual {p1, v0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 70
    const v0, 0x7f0a006a

    .line 73
    invoke-virtual {p1, v0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 76
    const v0, 0x7f0a0075

    .line 79
    invoke-virtual {p1, v0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 82
    const v0, 0x7f0a0307

    .line 85
    invoke-virtual {p1, v0, v2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 88
    return-void
.end method
