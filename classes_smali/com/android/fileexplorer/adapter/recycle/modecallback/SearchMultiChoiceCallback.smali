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
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/MultiChoiceCallback;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/adapter/recycle/BaseRecyclerView;I)V

    .line 4
    new-instance p2, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 6
    invoke-direct {p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 9
    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;->mCloudFileOperationManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 11
    return-void
.end method


# virtual methods
.method public convert2RealCheckedItems()V
    .registers 4

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
    if-eqz v1, :cond_1f

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/adapter/search/SearchResultData;

    .line 22
    iget-object v1, v1, Lcom/android/fileexplorer/adapter/search/SearchResultData;->fileInfo:Lcom/android/fileexplorer/model/FileInfo;

    .line 24
    if-eqz v1, :cond_9

    .line 26
    iget-object v2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_9

    .line 32
    :cond_1f
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
    .registers 15

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->initCheckedItems()V

    .line 4
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Lcom/android/fileexplorer/statistics/StatHelper;->getFuncNameByFuncId(I)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v1

    .line 16
    const-string v2, "搜索结果页"

    .line 18
    if-nez v1, :cond_16

    .line 20
    invoke-static {v2, v0}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_16
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 26
    move-result v1

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x1

    .line 29
    sparse-switch v1, :sswitch_data_104

    .line 32
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/MultiChoiceCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :sswitch_24
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mOperationManager:Lcom/android/fileexplorer/filemanager/FileOperationManager;

    .line 39
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p1, p2, v2}, Lcom/android/fileexplorer/filemanager/FileOperationManager;->send(Ljava/util/List;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->exitActionMode()V

    .line 47
    return v4

    .line 48
    :sswitch_2f
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_44

    .line 56
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;->mCloudFileOperationManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 58
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 66
    invoke-virtual {p2, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->renameFile(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 69
    :cond_44
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 72
    return v4

    .line 73
    :sswitch_48
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 75
    invoke-static {p2}, Lcom/android/cloud/util/CloudFileUtils;->getCheckedCloudLocalFiles(Ljava/util/List;)Ljava/util/List;

    .line 78
    move-result-object p2

    .line 79
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 82
    move-result v1

    .line 83
    if-lez v1, :cond_59

    .line 85
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 87
    invoke-static {v1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDeleteLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 90
    :cond_59
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 93
    const-string p1, "最近tab页"

    .line 95
    invoke-static {p1, v0}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return v4

    .line 99
    :sswitch_62
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 102
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 105
    move-result-object p1

    .line 106
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {p1, p2, v4, v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;ZLjava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 113
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 116
    move-result-object v5

    .line 117
    const v6, 0x7f11029a

    .line 120
    const v7, 0x7f11030c

    .line 123
    const/4 v8, 0x1

    .line 124
    const/4 v9, 0x1

    .line 125
    const/4 v10, 0x1

    .line 126
    const/4 v11, 0x0

    .line 127
    invoke-static/range {v5 .. v11}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    .line 130
    return v4

    .line 131
    :sswitch_82
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/SearchMultiChoiceCallback;->mCloudFileOperationManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 133
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 135
    invoke-static {v0}, Lcom/android/cloud/util/CloudFileUtils;->getLocalFiles(Ljava/util/List;)Ljava/util/List;

    .line 138
    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 141
    invoke-static {v1}, Lcom/android/cloud/util/CloudFileUtils;->getCheckedCloudFileInfos(Ljava/util/List;)Ljava/util/List;

    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {p2, v0, v1, v4, v2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->deleteFiles(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 151
    return v4

    .line 152
    :sswitch_97
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 155
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 158
    move-result-object p1

    .line 159
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 161
    invoke-virtual {p1, p2, v3}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    .line 164
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1, v4}, Lcom/android/fileexplorer/model/PasteFileInstance;->setFromCloudToLocal(Z)V

    .line 171
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 173
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 176
    move-result-object v5

    .line 177
    const v6, 0x7f1100d2

    .line 180
    const v7, 0x7f1102ed

    .line 183
    const/4 v8, 0x1

    .line 184
    const/4 v9, 0x0

    .line 185
    const/4 v10, 0x1

    .line 186
    const/4 v11, 0x0

    .line 187
    invoke-static/range {v5 .. v11}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    .line 190
    return v4

    .line 191
    :sswitch_be
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 193
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 195
    invoke-interface {v0}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 198
    move-result-object v0

    .line 199
    invoke-static {p2, v0}, Lcom/android/fileexplorer/model/Util;->copySideFile(Ljava/util/List;Landroid/content/Context;)V

    .line 202
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 205
    return v4

    .line 206
    :sswitch_cd
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 209
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 212
    move-result-object p1

    .line 213
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 215
    invoke-virtual {p1, p2, v3, v2}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;ZLjava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 220
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 223
    move-result-object v5

    .line 224
    const v6, 0x7f1100f3

    .line 227
    const v7, 0x7f1102ed

    .line 230
    const/4 v8, 0x1

    .line 231
    const/4 v9, 0x1

    .line 232
    const/4 v10, 0x1

    .line 233
    const/4 v11, 0x0

    .line 234
    invoke-static/range {v5 .. v11}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    .line 237
    return v4

    .line 238
    :sswitch_ed
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 240
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 243
    move-result p2

    .line 244
    if-lez p2, :cond_fc

    .line 246
    iget-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 248
    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 250
    invoke-static {p2, v1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 253
    :cond_fc
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 256
    invoke-static {v2, v0}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return v4

    .line 260
    nop

    .line 261
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
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_f

    .line 14
    move v3, v1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move v3, v2

    .line 17
    :goto_10
    if-ne v0, v1, :cond_20

    .line 19
    iget-object v4, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lcom/android/fileexplorer/model/FileInfo;

    .line 27
    iget-boolean v4, v4, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 29
    if-nez v4, :cond_20

    .line 31
    move v4, v1

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move v4, v2

    .line 34
    :goto_21
    iget-object v5, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v5

    .line 40
    :cond_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_39

    .line 46
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Lcom/android/fileexplorer/model/FileInfo;

    .line 52
    iget-boolean v6, v6, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 54
    if-eqz v6, :cond_27

    .line 56
    move v5, v1

    .line 57
    goto :goto_3a

    .line 58
    :cond_39
    move v5, v2

    .line 59
    :goto_3a
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSetVideoWallpaper()Z

    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_54

    .line 65
    if-eqz v4, :cond_54

    .line 67
    iget-object v6, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Lcom/android/fileexplorer/model/FileInfo;

    .line 75
    iget-object v6, v6, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 77
    invoke-static {v6}, Lcom/android/fileexplorer/apptag/FileUtils;->isMP4File(Ljava/lang/String;)Z

    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_54

    .line 83
    move v6, v1

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    move v6, v2

    .line 86
    :goto_55
    iget-object v7, p0, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->mCheckedRealItems:Ljava/util/ArrayList;

    .line 88
    invoke-static {v7}, Lcom/android/cloud/util/CloudFileUtils;->getCheckedFileStatus(Ljava/util/List;)Lcom/android/cloud/listener/choice/CheckedFileStatus;

    .line 91
    move-result-object v7

    .line 92
    const v8, 0x7f0a0075

    .line 95
    if-nez v3, :cond_6a

    .line 97
    if-nez v5, :cond_6a

    .line 99
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile()Z

    .line 102
    move-result v9

    .line 103
    if-nez v9, :cond_6a

    .line 105
    move v9, v1

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    move v9, v2

    .line 108
    :goto_6b
    invoke-virtual {p0, p2, v8, v9}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 111
    const v8, 0x7f0a006a

    .line 114
    if-nez v3, :cond_81

    .line 116
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile()Z

    .line 119
    move-result v9

    .line 120
    if-eqz v9, :cond_7f

    .line 122
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    .line 125
    move-result v9

    .line 126
    if-nez v9, :cond_81

    .line 128
    :cond_7f
    move v9, v1

    .line 129
    goto :goto_82

    .line 130
    :cond_81
    move v9, v2

    .line 131
    :goto_82
    invoke-virtual {p0, p2, v8, v9}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 134
    const v8, 0x7f0a005a

    .line 137
    xor-int/lit8 v9, v3, 0x1

    .line 139
    invoke-virtual {p0, p2, v8, v9}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 142
    const v8, 0x7f0a0054

    .line 145
    if-nez v3, :cond_a0

    .line 147
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile()Z

    .line 150
    move-result v9

    .line 151
    if-eqz v9, :cond_9e

    .line 153
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    .line 156
    move-result v9

    .line 157
    if-nez v9, :cond_a0

    .line 159
    :cond_9e
    move v9, v1

    .line 160
    goto :goto_a1

    .line 161
    :cond_a0
    move v9, v2

    .line 162
    :goto_a1
    invoke-virtual {p0, p2, v8, v9}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 165
    const v8, 0x7f0a0055

    .line 168
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSuperClipboard()Z

    .line 171
    move-result v9

    .line 172
    if-eqz v9, :cond_b9

    .line 174
    if-ne v0, v1, :cond_b9

    .line 176
    if-nez v5, :cond_b9

    .line 178
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->canCopySideFile()Z

    .line 181
    move-result v9

    .line 182
    if-eqz v9, :cond_b9

    .line 184
    move v9, v1

    .line 185
    goto :goto_ba

    .line 186
    :cond_b9
    move v9, v2

    .line 187
    :goto_ba
    invoke-virtual {p0, p2, v8, v9}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 190
    if-ne v0, v1, :cond_cf

    .line 192
    if-nez v5, :cond_cf

    .line 194
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->hasWidgetOperation()Z

    .line 197
    move-result v0

    .line 198
    if-eqz v0, :cond_cf

    .line 200
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    .line 203
    move-result v0

    .line 204
    if-nez v0, :cond_cf

    .line 206
    move v0, v1

    .line 207
    goto :goto_d0

    .line 208
    :cond_cf
    move v0, v2

    .line 209
    :goto_d0
    const v8, 0x7f0a0039

    .line 212
    invoke-virtual {p0, p2, v8, v0}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 215
    const v0, 0x7f0a0071

    .line 218
    if-nez v3, :cond_e5

    .line 220
    if-nez v5, :cond_e5

    .line 222
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->onlyContainCacheCloudFile()Z

    .line 225
    move-result v9

    .line 226
    if-eqz v9, :cond_e5

    .line 228
    move v9, v1

    .line 229
    goto :goto_e6

    .line 230
    :cond_e5
    move v9, v2

    .line 231
    :goto_e6
    invoke-virtual {p0, p2, v0, v9}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 234
    const v0, 0x7f0a004d

    .line 237
    if-nez v3, :cond_fe

    .line 239
    if-nez v5, :cond_fe

    .line 241
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCachedCloudFile()Z

    .line 244
    move-result v5

    .line 245
    if-nez v5, :cond_fe

    .line 247
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile()Z

    .line 250
    move-result v5

    .line 251
    if-nez v5, :cond_fe

    .line 253
    move v5, v1

    .line 254
    goto :goto_ff

    .line 255
    :cond_fe
    move v5, v2

    .line 256
    :goto_ff
    invoke-virtual {p0, p2, v0, v5}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 259
    const v0, 0x7f0a006e

    .line 262
    if-nez v3, :cond_119

    .line 264
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    .line 267
    move-result v3

    .line 268
    if-nez v3, :cond_119

    .line 270
    invoke-static {}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->getInstance()Lcom/android/fileexplorer/util/SupportPrivateFolder;

    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v3}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupported()Z

    .line 277
    move-result v3

    .line 278
    if-eqz v3, :cond_119

    .line 280
    move v3, v1

    .line 281
    goto :goto_11a

    .line 282
    :cond_119
    move v3, v2

    .line 283
    :goto_11a
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 286
    const v0, 0x7f0a005e

    .line 289
    invoke-virtual {p0, p2, v0, v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 292
    const v0, 0x7f0a0079

    .line 295
    invoke-virtual {p0, p2, v0, v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 298
    const v0, 0x7f0a0072

    .line 301
    invoke-virtual {p0, p2, v0, v4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 304
    const v0, 0x7f0a0050

    .line 307
    invoke-virtual {p0, p2, v0, v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 310
    invoke-virtual {p0, p2, v8, v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 313
    const v0, 0x7f0a006d

    .line 316
    if-eqz v4, :cond_145

    .line 318
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile()Z

    .line 321
    move-result v3

    .line 322
    if-nez v3, :cond_145

    .line 324
    move v3, v1

    .line 325
    goto :goto_146

    .line 326
    :cond_145
    move v3, v2

    .line 327
    :goto_146
    invoke-virtual {p0, p2, v0, v3}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 330
    const v0, 0x7f0a0077

    .line 333
    if-eqz v6, :cond_155

    .line 335
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile()Z

    .line 338
    move-result v3

    .line 339
    if-nez v3, :cond_155

    .line 341
    goto :goto_156

    .line 342
    :cond_155
    move v1, v2

    .line 343
    :goto_156
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 346
    const v0, 0x7f0a0061

    .line 349
    invoke-virtual {p0, p2, v0, v4}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 352
    const v0, 0x7f0a0056

    .line 355
    invoke-virtual {p0, p2, v0, v2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 358
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/adapter/recycle/modecallback/BaseMultiChoiceCallback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 361
    move-result p1

    .line 362
    return p1
.end method
