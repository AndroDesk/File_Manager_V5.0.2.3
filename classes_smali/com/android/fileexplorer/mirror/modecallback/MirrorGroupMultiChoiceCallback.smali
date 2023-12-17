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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;-><init>(Lmiuix/appcompat/app/Fragment;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->shouldShowFav:Z

    new-instance p2, Lcom/android/fileexplorer/filemanager/FileOperationManager;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-direct {p2, p1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

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

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    instance-of v1, p1, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v1, :cond_13

    check-cast p1, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    return-object p1

    :cond_13
    instance-of v1, p1, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v1, :cond_1a

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    return-object p1

    :cond_1a
    return-object v0
.end method

.method private isAddFavorite()Z
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->shouldShowFav:Z

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/model/group/FileGroupData;

    invoke-virtual {v4}, Lcom/android/fileexplorer/model/group/FileGroupData;->isMulti()Z

    move-result v5

    if-eqz v5, :cond_20

    iput-boolean v2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->shouldShowFav:Z

    return v2

    :cond_20
    if-eqz v3, :cond_23

    goto :goto_b

    :cond_23
    const/4 v5, 0x0

    invoke-virtual {v4}, Lcom/android/fileexplorer/model/group/FileGroupData;->isSingle()Z

    move-result v6

    if-eqz v6, :cond_2c

    iget-object v5, v4, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    :cond_2c
    instance-of v4, v5, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v4, :cond_39

    move-object v4, v5

    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v4, v4, Lcom/android/fileexplorer/model/FileInfo;->isFav:Z

    if-nez v4, :cond_39

    :goto_37
    move v3, v0

    goto :goto_b

    :cond_39
    instance-of v4, v5, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v4, :cond_b

    check-cast v5, Lcom/android/fileexplorer/dao/file/FileItem;

    iget-boolean v4, v5, Lcom/android/fileexplorer/dao/file/FileItem;->isFav:Z

    if-nez v4, :cond_b

    goto :goto_37

    :cond_44
    return v3
.end method

.method private synthetic lambda$onMenuItemClick$0()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->setAllChecked(Z)V

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

    const-string v0, "GroupMultiChoiceCallback"

    const/4 v1, -0x1

    if-nez p1, :cond_b

    const-string p1, "makeImageList fileInfo is null"

    invoke-static {v0, p1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_b
    const/4 v2, 0x0

    :goto_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5c

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/model/group/FileGroupData;

    invoke-virtual {v3}, Lcom/android/fileexplorer/model/group/FileGroupData;->isSingle()Z

    move-result v4

    if-eqz v4, :cond_59

    if-eqz p4, :cond_25

    iget-object v3, v3, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    check-cast v3, Lcom/android/fileexplorer/model/FileInfo;

    goto :goto_31

    :cond_25
    iget-object v3, v3, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    check-cast v3, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {v3}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v3

    :goto_31
    if-nez v3, :cond_34

    goto :goto_59

    :cond_34
    iget-object v4, p1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_56

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeImageList position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    :cond_56
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_59
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_5c
    return v1
.end method


# virtual methods
.method public checkGroupItems(ZILcom/android/fileexplorer/model/group/FileGroupParent;)V
    .registers 6

    if-eqz p3, :cond_13

    iget-object v0, p3, Lcom/android/fileexplorer/model/group/FileGroupParent;->mChildren:Ljava/util/List;

    if-nez v0, :cond_7

    goto :goto_13

    :cond_7
    iget p3, p3, Lcom/android/fileexplorer/model/group/FileGroupParent;->showFileCount:I

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mEditableRecyclerViewWrapper:Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;

    if-eqz v0, :cond_13

    add-int/lit8 v1, p2, 0x1

    add-int/2addr p2, p3

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/fileexplorer/mirror/MirrorEditableRecyclerViewWrapper;->setGroupItemsChecked(ZII)V

    :cond_13
    :goto_13
    return-void
.end method

.method public convert2RealCheckedItems()V
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/group/FileGroupData;

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isSingle()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v1, v1, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_26
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isMulti()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, v1, Lcom/android/fileexplorer/model/group/FileGroupData;->mMultiData:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3a
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->getFileInfo(Ljava/lang/Object;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v2

    if-eqz v2, :cond_3a

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_50
    return-void
.end method

.method public encrypt()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->encryptReal(Ljava/util/ArrayList;)V

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

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    sparse-switch p1, :sswitch_data_76

    goto :goto_75

    :sswitch_11
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    goto :goto_75

    :sswitch_19
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickForSave(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    goto :goto_75

    :sswitch_21
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mFragment:Lmiuix/appcompat/app/Fragment;

    instance-of v0, p1, Lcom/android/fileexplorer/mirror/fragments/IRenameInterface;

    if-eqz v0, :cond_75

    check-cast p1, Lcom/android/fileexplorer/mirror/fragments/IRenameInterface;

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    invoke-interface {p1, v0, p2}, Lcom/android/fileexplorer/mirror/fragments/IRenameInterface;->onRename(Lcom/android/fileexplorer/model/FileInfo;I)V

    goto :goto_75

    :sswitch_35
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/FileInfo;

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {p2, p1}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;)V

    goto :goto_75

    :sswitch_43
    if-eqz v0, :cond_75

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->showFileInfoMirror(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    goto :goto_75

    :sswitch_55
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->addOrRemoveFavorite(Ljava/util/List;Z)V

    goto :goto_75

    :sswitch_5d
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    new-instance v0, Landroidx/activity/b;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->deleteFilesMirror(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    goto :goto_75

    :sswitch_6c
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setMirrorPasteFileInfos(Ljava/util/ArrayList;Z)Z

    :cond_75
    :goto_75
    return-void

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

    if-eqz p2, :cond_6e

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_f

    goto :goto_6e

    :cond_f
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupData;

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isMulti()Z

    move-result p2

    if-eqz p2, :cond_1c

    goto :goto_6e

    :cond_1c
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/group/FileGroupData;->isSingle()Z

    move-result p2

    if-eqz p2, :cond_6e

    iget-object p2, p1, Lcom/android/fileexplorer/model/group/FileGroupData;->mSingleData:Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v1, p2, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v1, :cond_2d

    move-object v0, p2

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    goto :goto_4d

    :cond_2d
    instance-of v1, p2, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz v1, :cond_4d

    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    iget-boolean v0, p2, Lcom/android/fileexplorer/dao/file/FileItem;->mJumpToVideo:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    check-cast p1, Lcom/android/fileexplorer/model/group/FileGroupChild;

    iget-object p1, p1, Lcom/android/fileexplorer/model/group/FileGroupChild;->mParent:Lcom/android/fileexplorer/model/group/FileGroupParent;

    iget-object p1, p1, Lcom/android/fileexplorer/model/group/FileGroupParent;->mFileItemGroup:Lcom/android/fileexplorer/apptag/FileItemGroup;

    check-cast p1, Lcom/android/fileexplorer/apptag/FileItemAppGroup;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->jumpToMiVideo(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/apptag/FileItemAppGroup;Lcom/android/fileexplorer/dao/file/FileItem;)V

    return-void

    :cond_45
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v0

    :cond_4d
    :goto_4d
    const-string p1, "GroupMultiChoiceCallback"

    if-nez v0, :cond_57

    const-string p2, "onOperationClick, click fileInfo is null, return."

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_57
    const-string p2, "onOperationClick info.path = "

    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, v0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/fileexplorer/util/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/activity/BaseActivity;

    invoke-static {p1, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onMirrorOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public onPrepare(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->initCheckedItems()V

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->isAddFavorite()Z

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_13

    move v1, v2

    goto :goto_14

    :cond_13
    move v1, v3

    :goto_14
    if-eqz v1, :cond_28

    const v1, 0x7f0a006b

    invoke-virtual {p1, v1, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    const v1, 0x7f0a0061

    invoke-virtual {p1, v1, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    const v1, 0x7f0a0072

    invoke-virtual {p1, v1, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    :cond_28
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/fileexplorer/mirror/MirrorFunctionHelper;->hasDir(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_3e

    :cond_38
    const v1, 0x7f0a0076

    invoke-virtual {p1, v1, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    :cond_3e
    const v1, 0x7f0a005e

    iget v4, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mTabIndex:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4f

    iget-boolean v4, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->shouldShowFav:Z

    if-eqz v4, :cond_4f

    if-eqz v0, :cond_4f

    move v4, v2

    goto :goto_50

    :cond_4f
    move v4, v3

    :goto_50
    invoke-virtual {p1, v1, v4}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    const v1, 0x7f0a0079

    iget v4, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorBaseMultiChoiceCallback;->mTabIndex:I

    if-eq v4, v5, :cond_61

    iget-boolean v4, p0, Lcom/android/fileexplorer/mirror/modecallback/MirrorGroupMultiChoiceCallback;->shouldShowFav:Z

    if-eqz v4, :cond_61

    if-nez v0, :cond_61

    goto :goto_62

    :cond_61
    move v2, v3

    :goto_62
    invoke-virtual {p1, v1, v2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    const v0, 0x7f0a006a

    invoke-virtual {p1, v0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    const v0, 0x7f0a0075

    invoke-virtual {p1, v0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    const v0, 0x7f0a0307

    invoke-virtual {p1, v0, v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->setMenuEnable(IZ)V

    return-void
.end method
