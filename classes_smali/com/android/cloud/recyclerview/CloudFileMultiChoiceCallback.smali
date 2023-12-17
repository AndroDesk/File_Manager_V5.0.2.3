.class public Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;
.super Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;
.source "CloudFileMultiChoiceCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback<",
        "Lcom/android/fileexplorer/view/fileitem/FileListItemVO;",
        ">;"
    }
.end annotation


# instance fields
.field private mFileInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    new-instance p1, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-direct {p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    return-void
.end method

.method private getCheckedCloudFileInfos(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/cloud/bean/CloudFileInfo;",
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

    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_29
    return-object v0
.end method

.method private getCheckedCloudIds(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

    if-eqz v1, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2d
    return-object v0
.end method

.method private getCheckedCloudLocalFiles(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

    if-eqz v1, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v2, :cond_9

    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2b
    return-object v0
.end method

.method private getCheckedFileStatus()Lcom/android/cloud/listener/choice/CheckedFileStatus;
    .registers 6

    new-instance v0, Lcom/android/cloud/listener/choice/CheckedFileStatus;

    invoke-direct {v0}, Lcom/android/cloud/listener/choice/CheckedFileStatus;-><init>()V

    iget-object v1, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v3, :cond_34

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-static {v2}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileInfo(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    move-result-object v2

    sget-object v3, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_28

    invoke-virtual {v0, v4}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->setContainOnlyCloudFile(Z)V

    goto :goto_b

    :cond_28
    sget-object v3, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL_AND_CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    if-ne v2, v3, :cond_30

    invoke-virtual {v0, v4}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->setContainCachedCloudFile(Z)V

    goto :goto_b

    :cond_30
    invoke-virtual {v0, v4}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->setContainLocalFile(Z)V

    goto :goto_b

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    return-object v0
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
.method public getCheckedFileInfos()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 13

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->restoreFileInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    move v0, v2

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Lcom/android/fileexplorer/statistics/StatHelper;->getFuncNameByFuncId(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "云盘tab页"

    if-nez v4, :cond_2e

    invoke-static {v5, v3}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_14a

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_3a
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v5}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->send(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v2

    :sswitch_45
    iget-object p2, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5a

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->renameFile(Lcom/android/fileexplorer/model/FileInfo;)V

    :cond_5a
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v2

    :sswitch_5e
    iget-object p2, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->getCheckedCloudLocalFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6f

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v0, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDeleteLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    :cond_6f
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v2

    :sswitch_73
    if-eqz v0, :cond_83

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationOpenByOtherApp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    :cond_83
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v2

    :sswitch_87
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    iget-object p2, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v2, v5}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v3

    const v4, 0x7f11029a

    const v5, 0x7f11030c

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    return v2

    :sswitch_a7
    if-eqz v0, :cond_b8

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    const-string v1, "path"

    invoke-virtual {p2, v0, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->showFileInfo(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    :cond_b8
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v2

    :sswitch_bc
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    check-cast p1, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-object p2, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->getLocalFiles(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->getCheckedCloudFileInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v2, v5}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->deleteFiles(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V

    return v2

    :sswitch_d3
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    iget-object p1, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_101

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    iget-object p2, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setFromCloudToLocal(Z)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v3

    const v4, 0x7f1100d2

    const v5, 0x7f1102ed

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    :cond_101
    return v2

    :sswitch_102
    iget-object p2, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/fileexplorer/model/Util;->copySideFile(Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return v2

    :sswitch_111
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    iget-object p2, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v1, v5}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v3

    const v4, 0x7f1100f3

    const v5, 0x7f1102ed

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    return v2

    :sswitch_131
    iget-object p2, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_140

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-static {p2, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    :cond_140
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    iget-object p1, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFileCache(Ljava/util/ArrayList;)V

    return v2

    nop

    :sswitch_data_14a
    .sparse-switch
        0x7f0a004d -> :sswitch_131
        0x7f0a0054 -> :sswitch_111
        0x7f0a0055 -> :sswitch_102
        0x7f0a0056 -> :sswitch_d3
        0x7f0a005a -> :sswitch_bc
        0x7f0a0061 -> :sswitch_a7
        0x7f0a006a -> :sswitch_87
        0x7f0a006d -> :sswitch_73
        0x7f0a0071 -> :sswitch_5e
        0x7f0a0072 -> :sswitch_45
        0x7f0a0075 -> :sswitch_3a
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
    .registers 11

    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->restoreFileInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1a

    move v3, v2

    goto :goto_1b

    :cond_1a
    move v3, v1

    :goto_1b
    iget-object v4, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/fileexplorer/model/FileInfo;

    iget-boolean v5, v5, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    if-eqz v5, :cond_21

    move v4, v2

    goto :goto_34

    :cond_33
    move v4, v1

    :goto_34
    invoke-direct {p0}, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->getCheckedFileStatus()Lcom/android/cloud/listener/choice/CheckedFileStatus;

    move-result-object v5

    const v6, 0x7f0a0075

    if-nez v3, :cond_47

    if-nez v4, :cond_47

    invoke-virtual {v5}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile()Z

    move-result v7

    if-nez v7, :cond_47

    move v7, v2

    goto :goto_48

    :cond_47
    move v7, v1

    :goto_48
    invoke-virtual {p0, p2, v6, v7}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v6, 0x7f0a006a

    xor-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, p2, v6, v7}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v6, 0x7f0a0054

    xor-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, p2, v6, v7}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v6, 0x7f0a005a

    xor-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, p2, v6, v7}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    const v6, 0x7f0a0072

    if-ne v0, v2, :cond_6a

    move v7, v2

    goto :goto_6b

    :cond_6a
    move v7, v1

    :goto_6b
    invoke-virtual {p0, p2, v6, v7}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v6, 0x7f0a0061

    if-ne v0, v2, :cond_75

    move v7, v2

    goto :goto_76

    :cond_75
    move v7, v1

    :goto_76
    invoke-virtual {p0, p2, v6, v7}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v6, 0x7f0a004d

    if-nez v3, :cond_8e

    if-nez v4, :cond_8e

    invoke-virtual {v5}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCachedCloudFile()Z

    move-result v7

    if-nez v7, :cond_8e

    invoke-virtual {v5}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile()Z

    move-result v7

    if-nez v7, :cond_8e

    move v7, v2

    goto :goto_8f

    :cond_8e
    move v7, v1

    :goto_8f
    invoke-virtual {p0, p2, v6, v7}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v6, 0x7f0a0071

    if-nez v3, :cond_a1

    if-nez v4, :cond_a1

    invoke-virtual {v5}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->onlyContainCacheCloudFile()Z

    move-result v7

    if-eqz v7, :cond_a1

    move v7, v2

    goto :goto_a2

    :cond_a1
    move v7, v1

    :goto_a2
    invoke-virtual {p0, p2, v6, v7}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v6, 0x7f0a0056

    if-nez v3, :cond_b4

    if-nez v4, :cond_b4

    invoke-virtual {v5}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->onlyContainCacheCloudFile()Z

    move-result v3

    if-eqz v3, :cond_b4

    move v3, v2

    goto :goto_b5

    :cond_b4
    move v3, v1

    :goto_b5
    invoke-virtual {p0, p2, v6, v3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a006e

    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a005e

    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0079

    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0050

    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a006d

    if-ne v0, v2, :cond_dd

    invoke-virtual {v5}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile()Z

    move-result v6

    if-nez v6, :cond_dd

    move v6, v2

    goto :goto_de

    :cond_dd
    move v6, v1

    :goto_de
    invoke-virtual {p0, p2, v3, v6}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0077

    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0039

    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    const v3, 0x7f0a0055

    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSuperClipboard()Z

    move-result v6

    if-eqz v6, :cond_101

    if-ne v0, v2, :cond_101

    if-nez v4, :cond_101

    invoke-virtual {v5}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->canCopySideFile()Z

    move-result v0

    if-eqz v0, :cond_101

    move v1, v2

    :cond_101
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
