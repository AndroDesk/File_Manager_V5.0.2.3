.class public Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;
.super Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;
.source "CloudOpMultiChoiceListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudOpMultiChoiceListener"


# instance fields
.field private mCloudFileOperationManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;)V
    .registers 4

    const-string v0, "最近tab页"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;Ljava/lang/String;)V

    new-instance p2, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-direct {p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iput-object p2, p0, Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;->mCloudFileOperationManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    return-void
.end method

.method private checkedContainDirectory(I)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p1, :cond_17

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->getCheckedItem(I)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->getCheckedItem(I)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v2, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_17
    return v0
.end method

.method private clearCloudLocalFiles(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/dao/file/FileItem;

    instance-of v1, v0, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    goto :goto_4

    :cond_24
    return-void
.end method

.method private dealMenu(Landroid/view/Menu;)V
    .registers 12

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    move v3, v2

    goto :goto_d

    :cond_c
    move v3, v1

    :goto_d
    if-ne v0, v2, :cond_11

    move v4, v2

    goto :goto_12

    :cond_11
    move v4, v1

    :goto_12
    invoke-virtual {p0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->showFavOrUnFav()Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->showWallpaper()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->disableVideoWallpaper()Z

    move-result v6

    if-nez v6, :cond_24

    move v6, v2

    goto :goto_25

    :cond_24
    move v6, v1

    :goto_25
    iget-object v7, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    invoke-interface {v7}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItems()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/android/cloud/util/CloudFileUtils;->getCheckedFileStatus(Ljava/util/List;)Lcom/android/cloud/listener/choice/CheckedFileStatus;

    move-result-object v7

    const v8, 0x7f0a0075

    if-nez v3, :cond_3c

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile()Z

    move-result v9

    if-nez v9, :cond_3c

    move v9, v2

    goto :goto_3d

    :cond_3c
    move v9, v1

    :goto_3d
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v8, 0x7f0a006a

    if-nez v3, :cond_53

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile()Z

    move-result v9

    if-eqz v9, :cond_51

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    move-result v9

    if-nez v9, :cond_53

    :cond_51
    move v9, v2

    goto :goto_54

    :cond_53
    move v9, v1

    :goto_54
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v8, 0x7f0a005a

    xor-int/lit8 v9, v3, 0x1

    invoke-virtual {p0, p1, v8, v9}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v8, 0x7f0a0054

    if-nez v3, :cond_72

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile()Z

    move-result v9

    if-eqz v9, :cond_70

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    move-result v9

    if-nez v9, :cond_72

    :cond_70
    move v9, v2

    goto :goto_73

    :cond_72
    move v9, v1

    :goto_73
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v8, 0x7f0a0055

    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSuperClipboard()Z

    move-result v9

    if-eqz v9, :cond_89

    if-ne v0, v2, :cond_89

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->canCopySideFile()Z

    move-result v9

    if-eqz v9, :cond_89

    move v9, v2

    goto :goto_8a

    :cond_89
    move v9, v1

    :goto_8a
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v8, 0x7f0a0039

    if-ne v0, v2, :cond_a0

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->hasWidgetOperation()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    move-result v0

    if-nez v0, :cond_a0

    move v0, v2

    goto :goto_a1

    :cond_a0
    move v0, v1

    :goto_a1
    invoke-virtual {p0, p1, v8, v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a0071

    if-nez v3, :cond_b1

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->onlyContainCacheCloudFile()Z

    move-result v8

    if-eqz v8, :cond_b1

    move v8, v2

    goto :goto_b2

    :cond_b1
    move v8, v1

    :goto_b2
    invoke-virtual {p0, p1, v0, v8}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a004d

    if-nez v3, :cond_c8

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCachedCloudFile()Z

    move-result v8

    if-nez v8, :cond_c8

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile()Z

    move-result v8

    if-nez v8, :cond_c8

    move v8, v2

    goto :goto_c9

    :cond_c8
    move v8, v1

    :goto_c9
    invoke-virtual {p0, p1, v0, v8}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a006e

    if-nez v3, :cond_e3

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    move-result v8

    if-nez v8, :cond_e3

    invoke-static {}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->getInstance()Lcom/android/fileexplorer/util/SupportPrivateFolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupported()Z

    move-result v8

    if-eqz v8, :cond_e3

    move v8, v2

    goto :goto_e4

    :cond_e3
    move v8, v1

    :goto_e4
    invoke-virtual {p0, p1, v0, v8}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a005e

    if-nez v3, :cond_f6

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    move-result v8

    if-nez v8, :cond_f6

    if-eqz v5, :cond_f6

    move v8, v2

    goto :goto_f7

    :cond_f6
    move v8, v1

    :goto_f7
    invoke-virtual {p0, p1, v0, v8}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a0079

    if-nez v3, :cond_109

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    move-result v8

    if-nez v8, :cond_109

    if-nez v5, :cond_109

    move v5, v2

    goto :goto_10a

    :cond_109
    move v5, v1

    :goto_10a
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a0056

    if-nez v3, :cond_11a

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->onlyContainCacheCloudFile()Z

    move-result v3

    if-eqz v3, :cond_11a

    move v3, v2

    goto :goto_11b

    :cond_11a
    move v3, v1

    :goto_11b
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a0072

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a0050

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a006d

    if-eqz v4, :cond_137

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile()Z

    move-result v3

    if-nez v3, :cond_137

    move v3, v2

    goto :goto_138

    :cond_137
    move v3, v1

    :goto_138
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a0077

    if-eqz v6, :cond_147

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile()Z

    move-result v3

    if-nez v3, :cond_147

    move v1, v2

    :cond_147
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a0061

    invoke-virtual {p0, p1, v0, v4}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    return-void
.end method

.method private getLocalFiles(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    if-nez v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 16

    invoke-virtual {p0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->getCheckedItem()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Lcom/android/fileexplorer/statistics/StatHelper;->getFuncNameByFuncId(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "最近tab页"

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_9e

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_1c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2d

    iget-object p2, p0, Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;->mCloudFileOperationManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p2, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->renameFile(Lcom/android/fileexplorer/model/FileInfo;)V

    :cond_2d
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    invoke-static {v4, v1}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :sswitch_34
    invoke-static {v0}, Lcom/android/cloud/util/CloudFileUtils;->getCheckedCloudLocalFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_43

    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v0, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDeleteLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    :cond_43
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    invoke-static {v4, v1}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :sswitch_4a
    iget-object p2, p0, Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;->mCloudFileOperationManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-direct {p0, v0}, Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;->getLocalFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lcom/android/cloud/util/CloudFileUtils;->getCheckedCloudFileInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mPageName:Ljava/lang/String;

    invoke-virtual {p2, v1, v0, v5, v2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->deleteFiles(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v5

    :sswitch_5d
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    invoke-static {v4, v1}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8a

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/android/fileexplorer/model/PasteFileInstance;->setFromCloudToLocal(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v6

    const v7, 0x7f1100d2

    const v8, 0x7f1102ed

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    :cond_8a
    return v5

    :sswitch_8b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_96

    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {p2, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    :cond_96
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    invoke-static {v4, v1}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    nop

    :sswitch_data_9e
    .sparse-switch
        0x7f0a004d -> :sswitch_8b
        0x7f0a0056 -> :sswitch_5d
        0x7f0a005a -> :sswitch_4a
        0x7f0a0071 -> :sswitch_34
        0x7f0a0072 -> :sswitch_1c
    .end sparse-switch
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 3

    invoke-direct {p0, p2}, Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;->dealMenu(Landroid/view/Menu;)V

    const/4 p1, 0x0

    return p1
.end method
