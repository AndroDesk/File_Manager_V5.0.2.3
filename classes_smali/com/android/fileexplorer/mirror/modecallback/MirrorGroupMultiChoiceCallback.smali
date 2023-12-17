.class public Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;
.super Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;
.source "MirrorGroupMultiChoiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback<",
        "Lcom/android/fileexplorer/model/group/FileGroupData<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GroupMultiChoiceCallback"


# instance fields
.field private shouldShowFav:Z


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;-><init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 4
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->shouldShowFav:Z

    .line 7
    new-instance p2, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    .line 15
    invoke-direct {p2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 18
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 20
    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->lambda$onMenuItemClick$0()V

    return-void
.end method

.method private getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/android/fileexplorer/model/FileInfo;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    instance-of v1, p1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 7
    if-eqz v1, :cond_13

    .line 9
    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 11
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_13
    instance-of v1, p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 22
    if-eqz v1, :cond_1a

    .line 24
    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    .line 26
    return-object p1

    .line 27
    :cond_1a
    return-object v0
.end method

.method private isAddFavorite()Z
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->shouldShowFav:Z

    .line 4
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_44

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 24
    invoke-virtual {v4}, Lcom/android/fileexplorer/model/group/FileGroupData;->isMulti()Z

    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_20

    .line 30
    iput-boolean v2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->shouldShowFav:Z

    .line 32
    return v2

    .line 33
    :cond_20
    if-eqz v3, :cond_23

    .line 35
    goto :goto_b

    .line 36
    :cond_23
    const/4 v5, 0x0

    .line 37
    invoke-virtual {v4}, Lcom/android/fileexplorer/model/group/FileGroupData;->isSingle()Z

    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_2c

    .line 43
    iget-object v5, v4, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    .line 45
    :cond_2c
    instance-of v4, v5, Lcom/android/fileexplorer/model/FileInfo;

    .line 47
    if-eqz v4, :cond_39

    .line 49
    move-object v4, v5

    .line 50
    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    .line 52
    iget-boolean v4, v4, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    .line 54
    if-nez v4, :cond_39

    .line 56
    :goto_37
    move v3, v0

    .line 57
    goto :goto_b

    .line 58
    :cond_39
    instance-of v4, v5, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 60
    if-eqz v4, :cond_b

    .line 62
    check-cast v5, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 64
    iget-boolean v4, v5, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    .line 66
    if-nez v4, :cond_b

    .line 68
    goto :goto_37

    .line 69
    :cond_44
    return v3
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

.method private makeImageList(Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;Ljava/util/List;Z)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/model/FileInfo;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TT;>;>;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;Z)I"
        }
    .end annotation

    .line 1
    const-string v0, "GroupMultiChoiceCallback"

    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez p1, :cond_b

    .line 6
    const-string p1, "makeImageList fileInfo is null"

    .line 8
    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return v1

    .line 12
    :cond_b
    const/4 v2, 0x0

    .line 13
    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 16
    move-result v3

    .line 17
    if-ge v2, v3, :cond_5c

    .line 19
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 25
    invoke-virtual {v3}, Lcom/android/fileexplorer/model/group/FileGroupData;->isSingle()Z

    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_59

    .line 31
    if-eqz p4, :cond_25

    .line 33
    iget-object v3, v3, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    .line 35
    check-cast v3, Lcom/android/fileexplorer/model/FileInfo;

    .line 37
    goto :goto_31

    .line 38
    :cond_25
    iget-object v3, v3, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    .line 40
    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 42
    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 49
    move-result-object v3

    .line 50
    :goto_31
    if-nez v3, :cond_34

    .line 52
    goto :goto_59

    .line 53
    :cond_34
    iget-object v4, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 55
    iget-object v5, v3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 57
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_56

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    const-string v5, "makeImageList position = "

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 86
    move-result v1

    .line 87
    :cond_56
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_59
    :goto_59
    add-int/lit8 v2, v2, 0x1

    .line 92
    goto :goto_c

    .line 93
    :cond_5c
    return v1
.end method


# virtual methods
.method public checkGroupItems(ZILcom/android/fileexplorer/model/group/FileGroupParent;)V
    .registers 6

    .line 1
    if-eqz p3, :cond_13

    .line 3
    iget-object v0, p3, Lcom/android/fileexplorer/model/group/FileGroupParent;->mChildren:Ljava/util/List;

    .line 5
    if-nez v0, :cond_7

    .line 7
    goto :goto_13

    .line 8
    :cond_7
    iget p3, p3, Lcom/android/fileexplorer/model/group/FileGroupParent;->showFileCount:I

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    .line 12
    if-eqz v0, :cond_13

    .line 14
    add-int/lit8 v1, p2, 0x1

    .line 16
    add-int/2addr p2, p3

    .line 17
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setGroupItemsChecked(ZII)V

    .line 20
    :cond_13
    :goto_13
    return-void
.end method

.method public convert2RealCheckedItems()V
    .registers 5

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
    if-eqz v1, :cond_50

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 19
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isSingle()Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_26

    .line 25
    iget-object v1, v1, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    .line 27
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;

    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_6

    .line 33
    iget-object v2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    goto :goto_6

    .line 39
    :cond_26
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isMulti()Z

    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_6

    .line 45
    iget-object v1, v1, Lcom/android/fileexplorer/model/group/FileGroupData;->mMultiData:Ljava/util/List;

    .line 47
    if-eqz v1, :cond_6

    .line 49
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_6

    .line 55
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v1

    .line 59
    :cond_3a
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_6

    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v2

    .line 69
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;

    .line 72
    move-result-object v2

    .line 73
    if-eqz v2, :cond_3a

    .line 75
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_3a

    .line 81
    :cond_50
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
    const/16 v1, 0xd

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

.method public onOperationClick(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_6e

    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_6e

    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    if-lt p1, v0, :cond_f

    .line 15
    goto :goto_6e

    .line 16
    :cond_f
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 22
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isMulti()Z

    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_1c

    .line 28
    goto :goto_6e

    .line 29
    :cond_1c
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isSingle()Z

    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_6e

    .line 35
    iget-object p2, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    .line 37
    const/4 v0, 0x0

    .line 38
    instance-of v1, p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 40
    if-eqz v1, :cond_2d

    .line 42
    move-object v0, p2

    .line 43
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 45
    goto :goto_4d

    .line 46
    :cond_2d
    instance-of v1, p2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 48
    if-eqz v1, :cond_4d

    .line 50
    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 52
    iget-boolean v0, p2, Lcom/android/fileexplorer/dao/file/FileItem;->mJumpToVideo:Z

    .line 54
    if-eqz v0, :cond_45

    .line 56
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 58
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupChild;

    .line 60
    iget-object p1, p1, Lcom/android/fileexplorer/model/group/FileGroupChild;->mParent:Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 62
    iget-object p1, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mFileItemGroup:Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 64
    check-cast p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 66
    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->jumpToMiVideo(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/apptag/FileItemAppGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V

    .line 69
    return-void

    .line 70
    :cond_45
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 77
    move-result-object v0

    .line 78
    :cond_4d
    :goto_4d
    const-string p1, "GroupMultiChoiceCallback"

    .line 80
    if-nez v0, :cond_57

    .line 82
    const-string p2, "onOperationClick, click fileInfo is null, return."

    .line 84
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void

    .line 88
    :cond_57
    const-string p2, "onOperationClick info.path = "

    .line 90
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    move-result-object p2

    .line 94
    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 96
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p2

    .line 103
    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    .line 108
    invoke-static {p1, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;)V

    .line 111
    :cond_6e
    :goto_6e
    return-void
.end method

.method public onPrepare(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->isAddFavorite()Z

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
    if-le v1, v2, :cond_13

    .line 18
    move v1, v2

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v1, v3

    .line 21
    :goto_14
    if-eqz v1, :cond_28

    .line 23
    const v1, 0x7f0a006b

    .line 26
    invoke-virtual {p1, v1, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 29
    const v1, 0x7f0a0061

    .line 32
    invoke-virtual {p1, v1, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 35
    const v1, 0x7f0a0072

    .line 38
    invoke-virtual {p1, v1, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 41
    :cond_28
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_38

    .line 49
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 51
    invoke-static {v1}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->hasDir(Ljava/util/ArrayList;)Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3e

    .line 57
    :cond_38
    const v1, 0x7f0a0076

    .line 60
    invoke-virtual {p1, v1, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 63
    :cond_3e
    const v1, 0x7f0a005e

    .line 66
    iget v4, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mTabIndex:I

    .line 68
    const/16 v5, 0x8

    .line 70
    if-eq v4, v5, :cond_4f

    .line 72
    iget-boolean v4, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->shouldShowFav:Z

    .line 74
    if-eqz v4, :cond_4f

    .line 76
    if-eqz v0, :cond_4f

    .line 78
    move v4, v2

    .line 79
    goto :goto_50

    .line 80
    :cond_4f
    move v4, v3

    .line 81
    :goto_50
    invoke-virtual {p1, v1, v4}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 84
    const v1, 0x7f0a0079

    .line 87
    iget v4, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mTabIndex:I

    .line 89
    if-eq v4, v5, :cond_61

    .line 91
    iget-boolean v4, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->shouldShowFav:Z

    .line 93
    if-eqz v4, :cond_61

    .line 95
    if-nez v0, :cond_61

    .line 97
    goto :goto_62

    .line 98
    :cond_61
    move v2, v3

    .line 99
    :goto_62
    invoke-virtual {p1, v1, v2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 102
    const v0, 0x7f0a006a

    .line 105
    invoke-virtual {p1, v0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 108
    const v0, 0x7f0a0075

    .line 111
    invoke-virtual {p1, v0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 114
    const v0, 0x7f0a0307

    .line 117
    invoke-virtual {p1, v0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    .line 120
    return-void
.end method
