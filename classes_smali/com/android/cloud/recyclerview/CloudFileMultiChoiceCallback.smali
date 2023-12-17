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
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;)V
    .registers 4

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 5
    new-instance p1, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 7
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 9
    invoke-direct {p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 12
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 14
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_29

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 22
    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 24
    if-eqz v2, :cond_9

    .line 26
    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 28
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_9

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    goto :goto_9

    .line 42
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2d

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 22
    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 24
    if-eqz v2, :cond_9

    .line 26
    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 28
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_9

    .line 38
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_9

    .line 46
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2b

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 22
    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 24
    if-eqz v2, :cond_9

    .line 26
    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 28
    iget-object v2, v1, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_9

    .line 36
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_9

    .line 44
    :cond_2b
    return-object v0
.end method

.method private getCheckedFileStatus()Lcom/android/cloud/listener/choice/CheckedFileStatus;
    .registers 6

    .line 1
    new-instance v0, Lcom/android/cloud/listener/choice/CheckedFileStatus;

    .line 3
    invoke-direct {v0}, Lcom/android/cloud/listener/choice/CheckedFileStatus;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_3c

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    instance-of v3, v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 24
    if-eqz v3, :cond_34

    .line 26
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 28
    invoke-static {v2}, Lcom/android/cloud/util/CloudFileUtils;->getFileStatusByFileInfo(Lcom/android/fileexplorer/model/FileInfo;)Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 31
    move-result-object v2

    .line 32
    sget-object v3, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 34
    const/4 v4, 0x1

    .line 35
    if-ne v2, v3, :cond_28

    .line 37
    invoke-virtual {v0, v4}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->setContainOnlyCloudFile(Z)V

    .line 40
    goto :goto_b

    .line 41
    :cond_28
    sget-object v3, Lcom/android/cloud/util/CloudFileUtils$FileStatus;->LOCAL_AND_CLOUD:Lcom/android/cloud/util/CloudFileUtils$FileStatus;

    .line 43
    if-ne v2, v3, :cond_30

    .line 45
    invoke-virtual {v0, v4}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->setContainCachedCloudFile(Z)V

    .line 48
    goto :goto_b

    .line 49
    :cond_30
    invoke-virtual {v0, v4}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->setContainLocalFile(Z)V

    .line 52
    goto :goto_b

    .line 53
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 55
    const-string v1, "Unknown type"

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    throw v0

    .line 61
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1d

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 22
    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 24
    if-nez v2, :cond_9

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    goto :goto_9

    .line 30
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

    .line 1
    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 13

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 8
    invoke-static {v1}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->restoreFileInfoList(Ljava/util/List;)Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    iput-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v0, v2, :cond_1a

    .line 25
    move v0, v2

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v0, v1

    .line 28
    :goto_1b
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 31
    move-result v3

    .line 32
    invoke-static {v3}, Lcom/android/fileexplorer/statistics/StatHelper;->getFuncNameByFuncId(I)Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v4

    .line 40
    const-string v5, "云盘tab页"

    .line 42
    if-nez v4, :cond_2e

    .line 44
    invoke-static {v5, v3}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_2e
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 50
    move-result v3

    .line 51
    sparse-switch v3, :sswitch_data_14a

    .line 54
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 57
    move-result p1

    .line 58
    return p1

    .line 59
    :sswitch_3a
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 61
    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p2, v0, v5}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->send(Ljava/util/List;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 69
    return v2

    .line 70
    :sswitch_45
    iget-object p2, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 75
    move-result p2

    .line 76
    if-nez p2, :cond_5a

    .line 78
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 80
    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 88
    invoke-virtual {p2, v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->renameFile(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 91
    :cond_5a
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 94
    return v2

    .line 95
    :sswitch_5e
    iget-object p2, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 97
    invoke-direct {p0, p2}, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->getCheckedCloudLocalFiles(Ljava/util/List;)Ljava/util/List;

    .line 100
    move-result-object p2

    .line 101
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 104
    move-result v0

    .line 105
    if-lez v0, :cond_6f

    .line 107
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 109
    invoke-static {v0, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDeleteLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 112
    :cond_6f
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 115
    return v2

    .line 116
    :sswitch_73
    if-eqz v0, :cond_83

    .line 118
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 120
    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 128
    const/4 v1, 0x0

    .line 129
    invoke-static {p2, v0, v1}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationOpenByOtherApp(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 132
    :cond_83
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 135
    return v2

    .line 136
    :sswitch_87
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 139
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 142
    move-result-object p1

    .line 143
    iget-object p2, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {p1, p2, v2, v5}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;ZLjava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 150
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 153
    move-result-object v3

    .line 154
    const v4, 0x7f11029a

    .line 157
    const v5, 0x7f11030c

    .line 160
    const/4 v6, 0x1

    .line 161
    const/4 v7, 0x1

    .line 162
    const/4 v8, 0x1

    .line 163
    const/4 v9, 0x0

    .line 164
    invoke-static/range {v3 .. v9}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    .line 167
    return v2

    .line 168
    :sswitch_a7
    if-eqz v0, :cond_b8

    .line 170
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 172
    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 174
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 180
    const-string v1, "path"

    .line 182
    invoke-virtual {p2, v0, v1}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->showFileInfo(Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 185
    :cond_b8
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 188
    return v2

    .line 189
    :sswitch_bc
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 192
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 194
    check-cast p1, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 196
    iget-object p2, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 198
    invoke-direct {p0, p2}, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->getLocalFiles(Ljava/util/List;)Ljava/util/List;

    .line 201
    move-result-object p2

    .line 202
    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 204
    invoke-direct {p0, v0}, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->getCheckedCloudFileInfos(Ljava/util/List;)Ljava/util/List;

    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {p1, p2, v0, v2, v5}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->deleteFiles(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V

    .line 211
    return v2

    .line 212
    :sswitch_d3
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 215
    iget-object p1, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 217
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 220
    move-result p1

    .line 221
    if-nez p1, :cond_101

    .line 223
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 226
    move-result-object p1

    .line 227
    iget-object p2, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 229
    invoke-virtual {p1, p2, v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    .line 232
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p1, v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setFromCloudToLocal(Z)V

    .line 239
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 241
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 244
    move-result-object v3

    .line 245
    const v4, 0x7f1100d2

    .line 248
    const v5, 0x7f1102ed

    .line 251
    const/4 v6, 0x1

    .line 252
    const/4 v7, 0x0

    .line 253
    const/4 v8, 0x1

    .line 254
    const/4 v9, 0x0

    .line 255
    invoke-static/range {v3 .. v9}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    .line 258
    :cond_101
    return v2

    .line 259
    :sswitch_102
    iget-object p2, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 261
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 263
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 266
    move-result-object v0

    .line 267
    invoke-static {p2, v0}, Lcom/android/fileexplorer/model/Util;->copySideFile(Ljava/util/List;Landroid/content/Context;)V

    .line 270
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 273
    return v2

    .line 274
    :sswitch_111
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 277
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 280
    move-result-object p1

    .line 281
    iget-object p2, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 283
    invoke-virtual {p1, p2, v1, v5}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;ZLjava/lang/String;)V

    .line 286
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 288
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 291
    move-result-object v3

    .line 292
    const v4, 0x7f1100f3

    .line 295
    const v5, 0x7f1102ed

    .line 298
    const/4 v6, 0x1

    .line 299
    const/4 v7, 0x1

    .line 300
    const/4 v8, 0x1

    .line 301
    const/4 v9, 0x0

    .line 302
    invoke-static/range {v3 .. v9}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    .line 305
    return v2

    .line 306
    :sswitch_131
    iget-object p2, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 308
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 311
    move-result p2

    .line 312
    if-lez p2, :cond_140

    .line 314
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 316
    iget-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 318
    invoke-static {p2, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 321
    :cond_140
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 324
    iget-object p1, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 326
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFileCache(Ljava/util/ArrayList;)V

    .line 329
    return v2

    .line 330
    nop

    .line 331
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

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 11

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedItems:Ljava/util/ArrayList;

    .line 8
    invoke-static {v1}, Lcom/android/fileexplorer/view/fileitem/ItemVOHelper;->restoreFileInfoList(Ljava/util/List;)Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    iput-object v0, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-nez v0, :cond_1a

    .line 25
    move v3, v2

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v3, v1

    .line 28
    :goto_1b
    iget-object v4, p0, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->mFileInfoList:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v4

    .line 34
    :cond_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_33

    .line 40
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Lcom/android/fileexplorer/model/FileInfo;

    .line 46
    iget-boolean v5, v5, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 48
    if-eqz v5, :cond_21

    .line 50
    move v4, v2

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    move v4, v1

    .line 53
    :goto_34
    invoke-direct {p0}, Lcom/android/cloud/recyclerview/CloudFileMultiChoiceCallback;->getCheckedFileStatus()Lcom/android/cloud/listener/choice/CheckedFileStatus;

    .line 56
    move-result-object v5

    .line 57
    const v6, 0x7f0a0075

    .line 60
    if-nez v3, :cond_47

    .line 62
    if-nez v4, :cond_47

    .line 64
    invoke-virtual {v5}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile()Z

    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_47

    .line 70
    move v7, v2

    .line 71
    goto :goto_48

    .line 72
    :cond_47
    move v7, v1

    .line 73
    :goto_48
    invoke-virtual {p0, p2, v6, v7}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 76
    const v6, 0x7f0a006a

    .line 79
    xor-int/lit8 v7, v3, 0x1

    .line 81
    invoke-virtual {p0, p2, v6, v7}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 84
    const v6, 0x7f0a0054

    .line 87
    xor-int/lit8 v7, v3, 0x1

    .line 89
    invoke-virtual {p0, p2, v6, v7}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 92
    const v6, 0x7f0a005a

    .line 95
    xor-int/lit8 v7, v3, 0x1

    .line 97
    invoke-virtual {p0, p2, v6, v7}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 100
    const v6, 0x7f0a0072

    .line 103
    if-ne v0, v2, :cond_6a

    .line 105
    move v7, v2

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    move v7, v1

    .line 108
    :goto_6b
    invoke-virtual {p0, p2, v6, v7}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 111
    const v6, 0x7f0a0061

    .line 114
    if-ne v0, v2, :cond_75

    .line 116
    move v7, v2

    .line 117
    goto :goto_76

    .line 118
    :cond_75
    move v7, v1

    .line 119
    :goto_76
    invoke-virtual {p0, p2, v6, v7}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 122
    const v6, 0x7f0a004d

    .line 125
    if-nez v3, :cond_8e

    .line 127
    if-nez v4, :cond_8e

    .line 129
    invoke-virtual {v5}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCachedCloudFile()Z

    .line 132
    move-result v7

    .line 133
    if-nez v7, :cond_8e

    .line 135
    invoke-virtual {v5}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile()Z

    .line 138
    move-result v7

    .line 139
    if-nez v7, :cond_8e

    .line 141
    move v7, v2

    .line 142
    goto :goto_8f

    .line 143
    :cond_8e
    move v7, v1

    .line 144
    :goto_8f
    invoke-virtual {p0, p2, v6, v7}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 147
    const v6, 0x7f0a0071

    .line 150
    if-nez v3, :cond_a1

    .line 152
    if-nez v4, :cond_a1

    .line 154
    invoke-virtual {v5}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->onlyContainCacheCloudFile()Z

    .line 157
    move-result v7

    .line 158
    if-eqz v7, :cond_a1

    .line 160
    move v7, v2

    .line 161
    goto :goto_a2

    .line 162
    :cond_a1
    move v7, v1

    .line 163
    :goto_a2
    invoke-virtual {p0, p2, v6, v7}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 166
    const v6, 0x7f0a0056

    .line 169
    if-nez v3, :cond_b4

    .line 171
    if-nez v4, :cond_b4

    .line 173
    invoke-virtual {v5}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->onlyContainCacheCloudFile()Z

    .line 176
    move-result v3

    .line 177
    if-eqz v3, :cond_b4

    .line 179
    move v3, v2

    .line 180
    goto :goto_b5

    .line 181
    :cond_b4
    move v3, v1

    .line 182
    :goto_b5
    invoke-virtual {p0, p2, v6, v3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 185
    const v3, 0x7f0a006e

    .line 188
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 191
    const v3, 0x7f0a005e

    .line 194
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 197
    const v3, 0x7f0a0079

    .line 200
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 203
    const v3, 0x7f0a0050

    .line 206
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 209
    const v3, 0x7f0a006d

    .line 212
    if-ne v0, v2, :cond_dd

    .line 214
    invoke-virtual {v5}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile()Z

    .line 217
    move-result v6

    .line 218
    if-nez v6, :cond_dd

    .line 220
    move v6, v2

    .line 221
    goto :goto_de

    .line 222
    :cond_dd
    move v6, v1

    .line 223
    :goto_de
    invoke-virtual {p0, p2, v3, v6}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 226
    const v3, 0x7f0a0077

    .line 229
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 232
    const v3, 0x7f0a0039

    .line 235
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 238
    const v3, 0x7f0a0055

    .line 241
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSuperClipboard()Z

    .line 244
    move-result v6

    .line 245
    if-eqz v6, :cond_101

    .line 247
    if-ne v0, v2, :cond_101

    .line 249
    if-nez v4, :cond_101

    .line 251
    invoke-virtual {v5}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->canCopySideFile()Z

    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_101

    .line 257
    move v1, v2

    .line 258
    :cond_101
    invoke-virtual {p0, p2, v3, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 261
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 264
    move-result p1

    .line 265
    return p1
.end method
