.class public Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;
.super Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;
.source "MirrorCategoryMultiChoiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback<",
        "Lcom/android/fileexplorer/model/FileInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CategoryMultiChoiceCallback"


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;-><init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 4
    new-instance p1, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 6
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 8
    invoke-direct {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 11
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 13
    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;->lambda$onMenuItemClick$0()V

    return-void
.end method

.method private isAddFavorite()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1a

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 19
    if-eqz v1, :cond_6

    .line 21
    iget-boolean v1, v1, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 23
    if-nez v1, :cond_6

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    :goto_1b
    return v0
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
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    return-void
.end method

.method public encrypt()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

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
    if-ne v0, v1, :cond_c

    .line 11
    move v0, v1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v0, v2

    .line 14
    :goto_d
    sparse-switch p1, :sswitch_data_76

    .line 17
    goto :goto_75

    .line 18
    :sswitch_11
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 20
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    .line 25
    goto :goto_75

    .line 26
    :sswitch_19
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 28
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 30
    invoke-static {p1, p2}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickForSave(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 33
    goto :goto_75

    .line 34
    :sswitch_21
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mFragment:Lmiuix/appcompat/app/Fragment;

    .line 36
    instance-of v0, p1, Lcom/android/fileexplorer/mirror/fragments/IRenameInterface;

    .line 38
    if-eqz v0, :cond_75

    .line 40
    check-cast p1, Lcom/android/fileexplorer/mirror/fragments/IRenameInterface;

    .line 42
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 50
    invoke-interface {p1, v0, p2}, Lcom/android/fileexplorer/mirror/fragments/IRenameInterface;->onRename(Lcom/android/fileexplorer/model/FileInfo;I)V

    .line 53
    goto :goto_75

    .line 54
    :sswitch_35
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 62
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 64
    invoke-static {p2, p1}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 67
    goto :goto_75

    .line 68
    :sswitch_43
    if-eqz v0, :cond_75

    .line 70
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 72
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 80
    const-string v0, ""

    .line 82
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->showFileInfoMirror(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 85
    goto :goto_75

    .line 86
    :sswitch_55
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 88
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p1, p2, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    .line 93
    goto :goto_75

    .line 94
    :sswitch_5d
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 96
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Landroidx/activity/b;

    .line 100
    const/16 v1, 0xb

    .line 102
    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 105
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->deleteFilesMirror(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    .line 108
    goto :goto_75

    .line 109
    :sswitch_6c
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 112
    move-result-object p1

    .line 113
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setMirrorPasteFileInfos(Ljava/util/ArrayList;Z)Z

    .line 118
    :cond_75
    :goto_75
    return-void

    .line 119
    :sswitch_data_76
    .sparse-switch
        0x7f0a0054 -> :sswitch_6c
        0x7f0a005a -> :sswitch_5d
        0x7f0a005e -> :sswitch_55
        0x7f0a0061 -> :sswitch_43
        0x7f0a006b -> :sswitch_35
        0x7f0a0072 -> :sswitch_21
        0x7f0a0076 -> :sswitch_19
        0x7f0a0079 -> :sswitch_11
    .end sparse-switch
.end method

.method public onPrepare(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorCategoryMultiChoiceCallback;->isAddFavorite()Z

    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-le v1, v2, :cond_12

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    move v2, v3

    .line 20
    :goto_13
    if-eqz v2, :cond_27

    .line 22
    const v1, 0x7f0a006b

    .line 25
    invoke-virtual {p1, v1, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 28
    const v1, 0x7f0a0061

    .line 31
    invoke-virtual {p1, v1, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 34
    const v1, 0x7f0a0072

    .line 37
    invoke-virtual {p1, v1, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 40
    :cond_27
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_37

    .line 48
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 50
    invoke-static {v1}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->hasDir(Ljava/util/ArrayList;)Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3d

    .line 56
    :cond_37
    const v1, 0x7f0a0076

    .line 59
    invoke-virtual {p1, v1, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 62
    :cond_3d
    if-eqz v0, :cond_46

    .line 64
    const v0, 0x7f0a0079

    .line 67
    invoke-virtual {p1, v0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 70
    goto :goto_4c

    .line 71
    :cond_46
    const v0, 0x7f0a005e

    .line 74
    invoke-virtual {p1, v0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 77
    :goto_4c
    const v0, 0x7f0a006a

    .line 80
    invoke-virtual {p1, v0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 83
    const v0, 0x7f0a0075

    .line 86
    invoke-virtual {p1, v0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 89
    const v0, 0x7f0a0307

    .line 92
    invoke-virtual {p1, v0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 95
    return-void
.end method
