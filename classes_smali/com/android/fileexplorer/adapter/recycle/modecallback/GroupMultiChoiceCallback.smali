.class public Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;
.super Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
.source "GroupMultiChoiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback<",
        "Lcom/android/fileexplorer/model/group/FileGroupData<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GroupMultiChoiceCallback"


# instance fields
.field private shouldShowFav:Z


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 4
    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->shouldShowFav:Z

    .line 7
    new-instance p2, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 9
    invoke-direct {p2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 12
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 14
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

.method private showFavOrUnFav()Z
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->shouldShowFav:Z

    .line 4
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

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
    iput-boolean v2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->shouldShowFav:Z

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
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;

    .line 12
    if-eqz v0, :cond_13

    .line 14
    add-int/lit8 v1, p2, 0x1

    .line 16
    add-int/2addr p2, p3

    .line 17
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/fileexplorer/adapter/recycle/EditableRecyclerViewWrapper;->setGroupItemsChecked(ZII)V

    .line 20
    :cond_13
    :goto_13
    return-void
.end method

.method public convert2RealCheckedItems()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->convert2RealCheckedItems()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_53

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 22
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isSingle()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_29

    .line 28
    iget-object v1, v1, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    .line 30
    invoke-direct {p0, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;

    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_9

    .line 36
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_9

    .line 42
    :cond_29
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isMulti()Z

    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_9

    .line 48
    iget-object v1, v1, Lcom/android/fileexplorer/model/group/FileGroupData;->mMultiData:Ljava/util/List;

    .line 50
    if-eqz v1, :cond_9

    .line 52
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_9

    .line 58
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v1

    .line 62
    :cond_3d
    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_9

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v2

    .line 72
    invoke-direct {p0, v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;

    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_3d

    .line 78
    iget-object v3, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_3d

    .line 84
    :cond_53
    return-void
.end method

.method public encrypt()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->encryptReal(Ljava/util/ArrayList;)V

    .line 6
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v2, :cond_f

    .line 14
    move v0, v2

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v0, v1

    .line 17
    :goto_10
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 20
    move-result v3

    .line 21
    sparse-switch v3, :sswitch_data_e6

    .line 24
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :sswitch_1c
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 31
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p1, p2, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    .line 36
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 39
    return v2

    .line 40
    :sswitch_27
    if-eqz v0, :cond_3c

    .line 42
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 44
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 47
    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 56
    iget-object p2, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 58
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Util;->setVideoWallpaper(Landroid/app/Activity;Ljava/lang/String;)V

    .line 61
    :cond_3c
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 64
    return v2

    .line 65
    :sswitch_40
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 67
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->send(Ljava/util/List;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 75
    return v2

    .line 76
    :sswitch_4b
    if-eqz v0, :cond_5a

    .line 78
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 80
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 88
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->renameFile(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 91
    :cond_5a
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 94
    return v2

    .line 95
    :sswitch_5e
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 98
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->doEncrypt(Ljava/util/ArrayList;)V

    .line 103
    return v2

    .line 104
    :sswitch_67
    if-eqz v0, :cond_77

    .line 106
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 108
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 116
    const/4 v0, 0x0

    .line 117
    invoke-static {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationOpenByOtherApp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 120
    :cond_77
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 123
    return v2

    .line 124
    :sswitch_7b
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 127
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 130
    move-result-object p1

    .line 131
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    .line 136
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 138
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 141
    move-result-object v3

    .line 142
    const v4, 0x7f11029a

    .line 145
    const v5, 0x7f11030c

    .line 148
    const/4 v6, 0x1

    .line 149
    const/4 v7, 0x1

    .line 150
    const/4 v8, 0x1

    .line 151
    const/4 v9, 0x0

    .line 152
    invoke-static/range {v3 .. v9}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    .line 155
    return v2

    .line 156
    :sswitch_9b
    if-eqz v0, :cond_ac

    .line 158
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 160
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 165
    move-result-object p2

    .line 166
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 168
    const-string v0, ""

    .line 170
    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->showFileInfo(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 173
    :cond_ac
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 176
    return v2

    .line 177
    :sswitch_b0
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 179
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    .line 184
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 187
    return v2

    .line 188
    :sswitch_bb
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 190
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {p1, p2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->deleteFiles(Ljava/util/List;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 198
    return v2

    .line 199
    :sswitch_c6
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 202
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 205
    move-result-object p1

    .line 206
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 208
    invoke-virtual {p1, p2, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    .line 211
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 213
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 216
    move-result-object v3

    .line 217
    const v4, 0x7f1100f3

    .line 220
    const v5, 0x7f1102ed

    .line 223
    const/4 v6, 0x1

    .line 224
    const/4 v7, 0x1

    .line 225
    const/4 v8, 0x1

    .line 226
    const/4 v9, 0x0

    .line 227
    invoke-static/range {v3 .. v9}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    .line 230
    return v2

    .line 231
    :sswitch_data_e6
    .sparse-switch
        0x7f0a0054 -> :sswitch_c6
        0x7f0a005a -> :sswitch_bb
        0x7f0a005e -> :sswitch_b0
        0x7f0a0061 -> :sswitch_9b
        0x7f0a006a -> :sswitch_7b
        0x7f0a006d -> :sswitch_67
        0x7f0a006e -> :sswitch_5e
        0x7f0a0072 -> :sswitch_4b
        0x7f0a0075 -> :sswitch_40
        0x7f0a0077 -> :sswitch_27
        0x7f0a0079 -> :sswitch_1c
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    .line 10
    move-result-object v0

    .line 11
    const v1, 0x7f0e000b

    .line 14
    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 17
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public onOperationClick(ILjava/util/List;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/group/FileGroupData<",
            "TT;>;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_f9

    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_f9

    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    if-lt p1, v0, :cond_10

    .line 15
    goto/16 :goto_f9

    .line 17
    :cond_10
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 23
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isMulti()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1e

    .line 29
    goto/16 :goto_f9

    .line 31
    :cond_1e
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isSingle()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_f9

    .line 37
    iget-object v0, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    .line 39
    const/4 v1, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    instance-of v3, v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 43
    if-eqz v3, :cond_34

    .line 45
    move-object v2, v0

    .line 46
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 48
    iget-object v0, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 50
    const/4 v1, 0x1

    .line 51
    :goto_32
    move-object v3, v2

    .line 52
    goto :goto_58

    .line 53
    :cond_34
    instance-of v3, v0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 55
    if-eqz v3, :cond_55

    .line 57
    check-cast v0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 59
    iget-boolean v2, v0, Lcom/android/fileexplorer/dao/file/FileItem;->mJumpToVideo:Z

    .line 61
    if-eqz v2, :cond_4c

    .line 63
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 65
    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupChild;

    .line 67
    iget-object p1, p1, Lcom/android/fileexplorer/model/group/FileGroupChild;->mParent:Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 69
    iget-object p1, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mFileItemGroup:Lcom/android/fileexplorer/apptag/FileItemGroup;

    .line 71
    check-cast p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    .line 73
    invoke-static {p2, p1, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->jumpToMiVideo(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/apptag/FileItemAppGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V

    .line 76
    return-void

    .line 77
    :cond_4c
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 84
    move-result-object v2

    .line 85
    goto :goto_32

    .line 86
    :cond_55
    const-string v0, ""

    .line 88
    goto :goto_32

    .line 89
    :goto_58
    const-string v2, "GroupMultiChoiceCallback"

    .line 91
    if-nez v3, :cond_79

    .line 93
    const-string p1, "onOperationClick, click fileInfo is null, return."

    .line 95
    invoke-static {v2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance p1, Ljava/io/File;

    .line 100
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_78

    .line 109
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 112
    move-result-object p1

    .line 113
    new-instance p2, Lcom/android/fileexplorer/event/FileRemovedEvent;

    .line 115
    invoke-direct {p2, v0}, Lcom/android/fileexplorer/event/FileRemovedEvent;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 121
    :cond_78
    return-void

    .line 122
    :cond_79
    const-string v0, "onOperationClick info.path = "

    .line 124
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    move-result-object v0

    .line 128
    iget-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 137
    invoke-static {v2, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/android/fileexplorer/model/FileWithExt;

    .line 142
    iget-object v4, v3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 144
    invoke-static {v4}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v5

    .line 148
    invoke-direct {v0, v4, v5}, Lcom/android/fileexplorer/model/FileWithExt;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/FileWithExt;->getExtension()Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    move-result-object v0

    .line 159
    const-string v4, "image/"

    .line 161
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_f4

    .line 167
    new-instance v4, Ljava/util/ArrayList;

    .line 169
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 172
    const/4 v0, -0x1

    .line 173
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/group/FileGroupData;->belongSomeGroup()Z

    .line 176
    move-result v5

    .line 177
    if-eqz v5, :cond_e7

    .line 179
    iget v5, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    .line 181
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 184
    move-result v6

    .line 185
    if-ge v5, v6, :cond_e7

    .line 187
    const-string v5, "click currentParent"

    .line 189
    invoke-static {v2, v5}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget v5, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    .line 194
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 197
    move-result-object p2

    .line 198
    check-cast p2, Lcom/android/fileexplorer/model/group/FileGroupData;

    .line 200
    instance-of v5, p2, Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 202
    if-eqz v5, :cond_e5

    .line 204
    const-string v0, "click currentParent1 section = "

    .line 206
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    move-result-object v0

    .line 210
    iget p1, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->section:I

    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object p1

    .line 219
    invoke-static {v2, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    check-cast p2, Lcom/android/fileexplorer/model/group/FileGroupParent;

    .line 224
    iget-object p1, p2, Lcom/android/fileexplorer/model/group/FileGroupParent;->mChildren:Ljava/util/List;

    .line 226
    invoke-direct {p0, v3, p1, v4, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->makeImageList(Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;Ljava/util/List;Z)I

    .line 229
    move-result v0

    .line 230
    :cond_e5
    move v5, v0

    .line 231
    goto :goto_ec

    .line 232
    :cond_e7
    invoke-direct {p0, v3, p2, v4, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->makeImageList(Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;Ljava/util/List;Z)I

    .line 235
    move-result p1

    .line 236
    move v5, p1

    .line 237
    :goto_ec
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 239
    const/4 v6, 0x0

    .line 240
    move-object v7, p3

    .line 241
    invoke-static/range {v2 .. v7}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    .line 244
    goto :goto_f9

    .line 245
    :cond_f4
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 247
    invoke-static {p1, v3, p3}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 250
    :cond_f9
    :goto_f9
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v1

    .line 16
    const-string v2, "onPrepareActionMode: checkedCount = "

    .line 18
    const-string v3, "GroupMultiChoiceCallback"

    .line 20
    invoke-static {v2, v0, v3}, La/a;->C(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v4, 0x1

    .line 25
    if-nez v0, :cond_1c

    .line 27
    move v0, v4

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    move v0, v2

    .line 30
    :goto_1d
    if-ne v1, v4, :cond_21

    .line 32
    move v5, v4

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v5, v2

    .line 35
    :goto_22
    invoke-direct {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->showFavOrUnFav()Z

    .line 38
    move-result v6

    .line 39
    const/4 v7, 0x0

    .line 40
    if-eqz v1, :cond_32

    .line 42
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 48
    move-object v7, v1

    .line 49
    check-cast v7, Lcom/android/fileexplorer/model/FileInfo;

    .line 51
    :cond_32
    if-eqz v5, :cond_46

    .line 53
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSetVideoWallpaper()Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_46

    .line 59
    if-eqz v7, :cond_46

    .line 61
    iget-object v1, v7, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 63
    invoke-static {v1}, Lcom/android/fileexplorer/apptag/FileUtils;->isMP4File(Ljava/lang/String;)Z

    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_46

    .line 69
    move v1, v4

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move v1, v2

    .line 72
    :goto_47
    const v7, 0x7f0a0075

    .line 75
    xor-int/lit8 v8, v0, 0x1

    .line 77
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 80
    const v7, 0x7f0a006a

    .line 83
    xor-int/lit8 v8, v0, 0x1

    .line 85
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 88
    const v7, 0x7f0a005a

    .line 91
    xor-int/lit8 v8, v0, 0x1

    .line 93
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 96
    const v7, 0x7f0a0054

    .line 99
    xor-int/lit8 v8, v0, 0x1

    .line 101
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 104
    const v7, 0x7f0a006e

    .line 107
    if-nez v0, :cond_78

    .line 109
    invoke-static {}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->getInstance()Lcom/android/fileexplorer/util/SupportPrivateFolder;

    .line 112
    move-result-object v8

    .line 113
    invoke-virtual {v8}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupported()Z

    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_78

    .line 119
    move v8, v4

    .line 120
    goto :goto_79

    .line 121
    :cond_78
    move v8, v2

    .line 122
    :goto_79
    invoke-virtual {p0, p2, v7, v8}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 125
    const v7, 0x7f0a005e

    .line 128
    const/16 v8, 0x8

    .line 130
    if-nez v0, :cond_8f

    .line 132
    iget v9, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mTabIndex:I

    .line 134
    if-eq v9, v8, :cond_8f

    .line 136
    iget-boolean v9, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->shouldShowFav:Z

    .line 138
    if-eqz v9, :cond_8f

    .line 140
    if-eqz v6, :cond_8f

    .line 142
    move v9, v4

    .line 143
    goto :goto_90

    .line 144
    :cond_8f
    move v9, v2

    .line 145
    :goto_90
    invoke-virtual {p0, p2, v7, v9}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 148
    const v7, 0x7f0a0079

    .line 151
    if-nez v0, :cond_a3

    .line 153
    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mTabIndex:I

    .line 155
    if-eq v0, v8, :cond_a3

    .line 157
    iget-boolean v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/GroupMultiChoiceCallback;->shouldShowFav:Z

    .line 159
    if-eqz v0, :cond_a3

    .line 161
    if-nez v6, :cond_a3

    .line 163
    goto :goto_a4

    .line 164
    :cond_a3
    move v4, v2

    .line 165
    :goto_a4
    invoke-virtual {p0, p2, v7, v4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 168
    const v0, 0x7f0a0072

    .line 171
    invoke-virtual {p0, p2, v0, v5}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 174
    const v0, 0x7f0a0050

    .line 177
    invoke-virtual {p0, p2, v0, v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 180
    const v0, 0x7f0a006d

    .line 183
    invoke-virtual {p0, p2, v0, v5}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 186
    const v0, 0x7f0a0077

    .line 189
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 192
    const v0, 0x7f0a0061

    .line 195
    invoke-virtual {p0, p2, v0, v5}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    .line 200
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    const-string v1, "onPrepareActionMode mTabIndex = "

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mTabIndex:I

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object v0

    .line 217
    invoke-static {v3, v0}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 223
    move-result p1

    .line 224
    return p1
.end method
