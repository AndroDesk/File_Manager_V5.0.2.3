.class public Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;
.super Lcom/android/fileexplorer/adapter/recycle/modecallback/MultiChoiceCallback;
.source "SearchMultiChoiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/modecallback/MultiChoiceCallback<",
        "Lcom/android/fileexplorer/adapter/search/SearchResultData<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mCloudFileOperationManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/MultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    new-instance p2, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    invoke-direct {p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;->mCloudFileOperationManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    return-void
.end method


# virtual methods
.method public convert2RealCheckedItems()V
    .registers 4

    invoke-super {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->convert2RealCheckedItems()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    iget-object v1, v1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-void
.end method

.method public encrypt()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->encryptReal(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 15

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Lcom/android/fileexplorer/statistics/StatHelper;->getFuncNameByFuncId(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "搜索结果页"

    if-nez v1, :cond_16

    invoke-static {v2, v0}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_104

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/MultiChoiceCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_24
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->send(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    return v4

    :sswitch_2f
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_44

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;->mCloudFileOperationManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p2, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->renameFile(Lcom/android/fileexplorer/model/FileInfo;)V

    :cond_44
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v4

    :sswitch_48
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/android/cloud/util/CloudFileUtils;->getCheckedCloudLocalFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_59

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDeleteLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    :cond_59
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const-string p1, "最近tab页"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :sswitch_62
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v4, v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v5

    const v6, 0x7f11029a

    const v7, 0x7f11030c

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    return v4

    :sswitch_82
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;->mCloudFileOperationManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/cloud/util/CloudFileUtils;->getLocalFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/cloud/util/CloudFileUtils;->getCheckedCloudFileInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v0, v1, v4, v2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->deleteFiles(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v4

    :sswitch_97
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v3}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/fileexplorer/model/PasteFileInstance;->setFromCloudToLocal(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v5

    const v6, 0x7f1100d2

    const v7, 0x7f1102ed

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    return v4

    :sswitch_be
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/fileexplorer/model/Util;->copySideFile(Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v4

    :sswitch_cd
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v3, v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v5

    const v6, 0x7f1100f3

    const v7, 0x7f1102ed

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    return v4

    :sswitch_ed
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_fc

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-static {p2, v1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    :cond_fc
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    invoke-static {v2, v0}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    nop

    :sswitch_data_104
    .sparse-switch
        0x7f0a004d -> :sswitch_ed
        0x7f0a0054 -> :sswitch_cd
        0x7f0a0055 -> :sswitch_be
        0x7f0a0056 -> :sswitch_97
        0x7f0a005a -> :sswitch_82
        0x7f0a006a -> :sswitch_62
        0x7f0a0071 -> :sswitch_48
        0x7f0a0072 -> :sswitch_2f
        0x7f0a0075 -> :sswitch_24
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 13

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    move v3, v1

    goto :goto_10

    :cond_f
    move v3, v2

    :goto_10
    if-ne v0, v1, :cond_20

    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v4, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-nez v4, :cond_20

    move v4, v1

    goto :goto_21

    :cond_20
    move v4, v2

    :goto_21
    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v6, v6, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v6, :cond_27

    move v5, v1

    goto :goto_3a

    :cond_39
    move v5, v2

    :goto_3a
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSetVideoWallpaper()Z

    move-result v6

    if-eqz v6, :cond_54

    if-eqz v4, :cond_54

    iget-object v6, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v6, v6, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/fileexplorer/apptag/FileUtils;->isMP4File(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    move v6, v1

    goto :goto_55

    :cond_54
    move v6, v2

    :goto_55
    iget-object v7, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/android/cloud/util/CloudFileUtils;->getCheckedFileStatus(Ljava/util/List;)Lcom/android/cloud/listener/choice/CheckedFileStatus;

    move-result-object v7

    const v8, 0x7f0a0075

    if-nez v3, :cond_6a

    if-nez v5, :cond_6a

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile()Z

    move-result v9

    if-nez v9, :cond_6a

    move v9, v1

    goto :goto_6b

    :cond_6a
    move v9, v2

    :goto_6b
    invoke-virtual {p0, p2, v8, v9}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v8, 0x7f0a006a

    if-nez v3, :cond_81

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile()Z

    move-result v9

    if-eqz v9, :cond_7f

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    move-result v9

    if-nez v9, :cond_81

    :cond_7f
    move v9, v1

    goto :goto_82

    :cond_81
    move v9, v2

    :goto_82
    invoke-virtual {p0, p2, v8, v9}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v8, 0x7f0a005a

    xor-int/lit8 v9, v3, 0x1

    invoke-virtual {p0, p2, v8, v9}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v8, 0x7f0a0054

    if-nez v3, :cond_a0

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile()Z

    move-result v9

    if-eqz v9, :cond_9e

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    move-result v9

    if-nez v9, :cond_a0

    :cond_9e
    move v9, v1

    goto :goto_a1

    :cond_a0
    move v9, v2

    :goto_a1
    invoke-virtual {p0, p2, v8, v9}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v8, 0x7f0a0055

    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSuperClipboard()Z

    move-result v9

    if-eqz v9, :cond_b9

    if-ne v0, v1, :cond_b9

    if-nez v5, :cond_b9

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->canCopySideFile()Z

    move-result v9

    if-eqz v9, :cond_b9

    move v9, v1

    goto :goto_ba

    :cond_b9
    move v9, v2

    :goto_ba
    invoke-virtual {p0, p2, v8, v9}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    if-ne v0, v1, :cond_cf

    if-nez v5, :cond_cf

    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->hasWidgetOperation()Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    move-result v0

    if-nez v0, :cond_cf

    move v0, v1

    goto :goto_d0

    :cond_cf
    move v0, v2

    :goto_d0
    const v8, 0x7f0a0039

    invoke-virtual {p0, p2, v8, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a0071

    if-nez v3, :cond_e5

    if-nez v5, :cond_e5

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->onlyContainCacheCloudFile()Z

    move-result v9

    if-eqz v9, :cond_e5

    move v9, v1

    goto :goto_e6

    :cond_e5
    move v9, v2

    :goto_e6
    invoke-virtual {p0, p2, v0, v9}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a004d

    if-nez v3, :cond_fe

    if-nez v5, :cond_fe

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCachedCloudFile()Z

    move-result v5

    if-nez v5, :cond_fe

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile()Z

    move-result v5

    if-nez v5, :cond_fe

    move v5, v1

    goto :goto_ff

    :cond_fe
    move v5, v2

    :goto_ff
    invoke-virtual {p0, p2, v0, v5}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a006e

    if-nez v3, :cond_119

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    move-result v3

    if-nez v3, :cond_119

    invoke-static {}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->getInstance()Lcom/android/fileexplorer/util/SupportPrivateFolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupported()Z

    move-result v3

    if-eqz v3, :cond_119

    move v3, v1

    goto :goto_11a

    :cond_119
    move v3, v2

    :goto_11a
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a005e

    invoke-virtual {p0, p2, v0, v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a0079

    invoke-virtual {p0, p2, v0, v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a0072

    invoke-virtual {p0, p2, v0, v4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a0050

    invoke-virtual {p0, p2, v0, v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    invoke-virtual {p0, p2, v8, v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a006d

    if-eqz v4, :cond_145

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile()Z

    move-result v3

    if-nez v3, :cond_145

    move v3, v1

    goto :goto_146

    :cond_145
    move v3, v2

    :goto_146
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a0077

    if-eqz v6, :cond_155

    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile()Z

    move-result v3

    if-nez v3, :cond_155

    goto :goto_156

    :cond_155
    move v1, v2

    :goto_156
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a0061

    invoke-virtual {p0, p2, v0, v4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v0, 0x7f0a0056

    invoke-virtual {p0, p2, v0, v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
