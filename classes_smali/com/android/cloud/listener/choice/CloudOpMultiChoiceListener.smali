.class public Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;
.super Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;
.source "CloudOpMultiChoiceListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudOpMultiChoiceListener"


# instance fields
.field private mCloudFileOperationManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;)V
    .registers 4

    .line 1
    const-string v0, "最近tab页"

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;Ljava/lang/String;)V

    .line 6
    new-instance p2, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 8
    invoke-direct {p2, p1}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;-><init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;)V

    .line 11
    iput-object p2, p0, Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;->mCloudFileOperationManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 13
    return-void
.end method

.method private checkedContainDirectory(I)Z
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    if-ge v1, p1, :cond_17

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->getCheckedItem(I)Lcom/android/fileexplorer/model/FileInfo;

    .line 8
    move-result-object v2

    .line 9
    if-eqz v2, :cond_14

    .line 11
    invoke-virtual {p0, v1}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->getCheckedItem(I)Lcom/android/fileexplorer/model/FileInfo;

    .line 14
    move-result-object v2

    .line 15
    iget-boolean v2, v2, Lcom/android/fileexplorer/model/FileInfo;->isDirectory:Z

    .line 17
    if-eqz v2, :cond_14

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 23
    goto :goto_2

    .line 24
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

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_24

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 17
    instance-of v1, v0, Lcom/android/cloud/bean/CloudFileItem;

    .line 19
    if-eqz v1, :cond_4

    .line 21
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_4

    .line 31
    const-string v1, ""

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/FileItem;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 36
    goto :goto_4

    .line 37
    :cond_24
    return-void
.end method

.method private dealMenu(Landroid/view/Menu;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItemCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_c

    .line 11
    move v3, v2

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    move v3, v1

    .line 14
    :goto_d
    if-ne v0, v2, :cond_11

    .line 16
    move v4, v2

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    move v4, v1

    .line 19
    :goto_12
    invoke-virtual {p0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->showFavOrUnFav()Z

    .line 22
    move-result v5

    .line 23
    invoke-virtual {p0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->showWallpaper()Z

    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_24

    .line 29
    invoke-static {}, Lcom/android/fileexplorer/util/AppUtils;->disableVideoWallpaper()Z

    .line 32
    move-result v6

    .line 33
    if-nez v6, :cond_24

    .line 35
    move v6, v2

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v6, v1

    .line 38
    :goto_25
    iget-object v7, p0, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->mCheckableAdapter:Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;

    .line 40
    invoke-interface {v7}, Lcom/android/fileexplorer/recyclerview/adapter/checkable/AllCheckable;->getCheckedItems()Ljava/util/List;

    .line 43
    move-result-object v7

    .line 44
    invoke-static {v7}, Lcom/android/cloud/util/CloudFileUtils;->getCheckedFileStatus(Ljava/util/List;)Lcom/android/cloud/listener/choice/CheckedFileStatus;

    .line 47
    move-result-object v7

    .line 48
    const v8, 0x7f0a0075

    .line 51
    if-nez v3, :cond_3c

    .line 53
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile()Z

    .line 56
    move-result v9

    .line 57
    if-nez v9, :cond_3c

    .line 59
    move v9, v2

    .line 60
    goto :goto_3d

    .line 61
    :cond_3c
    move v9, v1

    .line 62
    :goto_3d
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 65
    const v8, 0x7f0a006a

    .line 68
    if-nez v3, :cond_53

    .line 70
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile()Z

    .line 73
    move-result v9

    .line 74
    if-eqz v9, :cond_51

    .line 76
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    .line 79
    move-result v9

    .line 80
    if-nez v9, :cond_53

    .line 82
    :cond_51
    move v9, v2

    .line 83
    goto :goto_54

    .line 84
    :cond_53
    move v9, v1

    .line 85
    :goto_54
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 88
    const v8, 0x7f0a005a

    .line 91
    xor-int/lit8 v9, v3, 0x1

    .line 93
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 96
    const v8, 0x7f0a0054

    .line 99
    if-nez v3, :cond_72

    .line 101
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile()Z

    .line 104
    move-result v9

    .line 105
    if-eqz v9, :cond_70

    .line 107
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    .line 110
    move-result v9

    .line 111
    if-nez v9, :cond_72

    .line 113
    :cond_70
    move v9, v2

    .line 114
    goto :goto_73

    .line 115
    :cond_72
    move v9, v1

    .line 116
    :goto_73
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuEnabled(Landroid/view/Menu;IZ)V

    .line 119
    const v8, 0x7f0a0055

    .line 122
    invoke-static {}, Lcom/android/fileexplorer/model/Util;->isSupportSuperClipboard()Z

    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_89

    .line 128
    if-ne v0, v2, :cond_89

    .line 130
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->canCopySideFile()Z

    .line 133
    move-result v9

    .line 134
    if-eqz v9, :cond_89

    .line 136
    move v9, v2

    .line 137
    goto :goto_8a

    .line 138
    :cond_89
    move v9, v1

    .line 139
    :goto_8a
    invoke-virtual {p0, p1, v8, v9}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 142
    const v8, 0x7f0a0039

    .line 145
    if-ne v0, v2, :cond_a0

    .line 147
    invoke-static {}, Lcom/android/fileexplorer/util/DeviceUtils;->hasWidgetOperation()Z

    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_a0

    .line 153
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_a0

    .line 159
    move v0, v2

    .line 160
    goto :goto_a1

    .line 161
    :cond_a0
    move v0, v1

    .line 162
    :goto_a1
    invoke-virtual {p0, p1, v8, v0}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 165
    const v0, 0x7f0a0071

    .line 168
    if-nez v3, :cond_b1

    .line 170
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->onlyContainCacheCloudFile()Z

    .line 173
    move-result v8

    .line 174
    if-eqz v8, :cond_b1

    .line 176
    move v8, v2

    .line 177
    goto :goto_b2

    .line 178
    :cond_b1
    move v8, v1

    .line 179
    :goto_b2
    invoke-virtual {p0, p1, v0, v8}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 182
    const v0, 0x7f0a004d

    .line 185
    if-nez v3, :cond_c8

    .line 187
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCachedCloudFile()Z

    .line 190
    move-result v8

    .line 191
    if-nez v8, :cond_c8

    .line 193
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containLocalFile()Z

    .line 196
    move-result v8

    .line 197
    if-nez v8, :cond_c8

    .line 199
    move v8, v2

    .line 200
    goto :goto_c9

    .line 201
    :cond_c8
    move v8, v1

    .line 202
    :goto_c9
    invoke-virtual {p0, p1, v0, v8}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 205
    const v0, 0x7f0a006e

    .line 208
    if-nez v3, :cond_e3

    .line 210
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    .line 213
    move-result v8

    .line 214
    if-nez v8, :cond_e3

    .line 216
    invoke-static {}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->getInstance()Lcom/android/fileexplorer/util/SupportPrivateFolder;

    .line 219
    move-result-object v8

    .line 220
    invoke-virtual {v8}, Lcom/android/fileexplorer/util/SupportPrivateFolder;->isPrivateFolderSupported()Z

    .line 223
    move-result v8

    .line 224
    if-eqz v8, :cond_e3

    .line 226
    move v8, v2

    .line 227
    goto :goto_e4

    .line 228
    :cond_e3
    move v8, v1

    .line 229
    :goto_e4
    invoke-virtual {p0, p1, v0, v8}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 232
    const v0, 0x7f0a005e

    .line 235
    if-nez v3, :cond_f6

    .line 237
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    .line 240
    move-result v8

    .line 241
    if-nez v8, :cond_f6

    .line 243
    if-eqz v5, :cond_f6

    .line 245
    move v8, v2

    .line 246
    goto :goto_f7

    .line 247
    :cond_f6
    move v8, v1

    .line 248
    :goto_f7
    invoke-virtual {p0, p1, v0, v8}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 251
    const v0, 0x7f0a0079

    .line 254
    if-nez v3, :cond_109

    .line 256
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containCloudFile()Z

    .line 259
    move-result v8

    .line 260
    if-nez v8, :cond_109

    .line 262
    if-nez v5, :cond_109

    .line 264
    move v5, v2

    .line 265
    goto :goto_10a

    .line 266
    :cond_109
    move v5, v1

    .line 267
    :goto_10a
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 270
    const v0, 0x7f0a0056

    .line 273
    if-nez v3, :cond_11a

    .line 275
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->onlyContainCacheCloudFile()Z

    .line 278
    move-result v3

    .line 279
    if-eqz v3, :cond_11a

    .line 281
    move v3, v2

    .line 282
    goto :goto_11b

    .line 283
    :cond_11a
    move v3, v1

    .line 284
    :goto_11b
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 287
    const v0, 0x7f0a0072

    .line 290
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 293
    const v0, 0x7f0a0050

    .line 296
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 299
    const v0, 0x7f0a006d

    .line 302
    if-eqz v4, :cond_137

    .line 304
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile()Z

    .line 307
    move-result v3

    .line 308
    if-nez v3, :cond_137

    .line 310
    move v3, v2

    .line 311
    goto :goto_138

    .line 312
    :cond_137
    move v3, v1

    .line 313
    :goto_138
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 316
    const v0, 0x7f0a0077

    .line 319
    if-eqz v6, :cond_147

    .line 321
    invoke-virtual {v7}, Lcom/android/cloud/listener/choice/CheckedFileStatus;->containOnlyCloudFile()Z

    .line 324
    move-result v3

    .line 325
    if-nez v3, :cond_147

    .line 327
    move v1, v2

    .line 328
    :cond_147
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 331
    const v0, 0x7f0a0061

    .line 334
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/fileexplorer/listener/choice/AbsMultiChoiceListener;->setMenuVisible(Landroid/view/Menu;IZ)V

    .line 337
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
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 16

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->getCheckedItem()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Lcom/android/fileexplorer/statistics/StatHelper;->getFuncNameByFuncId(I)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const-string v4, "最近tab页"

    .line 20
    const/4 v5, 0x1

    .line 21
    sparse-switch v2, :sswitch_data_9e

    .line 24
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :sswitch_1c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 32
    move-result p2

    .line 33
    if-nez p2, :cond_2d

    .line 35
    iget-object p2, p0, Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;->mCloudFileOperationManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 37
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/fileexplorer/model/FileInfo;

    .line 43
    invoke-virtual {p2, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->renameFile(Lcom/android/fileexplorer/model/FileInfo;)V

    .line 46
    :cond_2d
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 49
    invoke-static {v4, v1}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return v5

    .line 53
    :sswitch_34
    invoke-static {v0}, Lcom/android/cloud/util/CloudFileUtils;->getCheckedCloudLocalFiles(Ljava/util/List;)Ljava/util/List;

    .line 56
    move-result-object p2

    .line 57
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 60
    move-result v0

    .line 61
    if-lez v0, :cond_43

    .line 63
    iget-object v0, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 65
    invoke-static {v0, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDeleteLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 68
    :cond_43
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 71
    invoke-static {v4, v1}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return v5

    .line 75
    :sswitch_4a
    iget-object p2, p0, Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;->mCloudFileOperationManager:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    .line 77
    invoke-direct {p0, v0}, Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;->getLocalFiles(Ljava/util/List;)Ljava/util/List;

    .line 80
    move-result-object v1

    .line 81
    invoke-static {v0}, Lcom/android/cloud/util/CloudFileUtils;->getCheckedCloudFileInfos(Ljava/util/List;)Ljava/util/List;

    .line 84
    move-result-object v0

    .line 85
    iget-object v2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mPageName:Ljava/lang/String;

    .line 87
    invoke-virtual {p2, v1, v0, v5, v2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->deleteFiles(Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 93
    return v5

    .line 94
    :sswitch_5d
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 97
    invoke-static {v4, v1}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_8a

    .line 106
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1, v0, v3}, Lcom/android/fileexplorer/model/PasteFileInstance;->setPasteFileInfos(Ljava/util/List;Z)V

    .line 113
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1, v5}, Lcom/android/fileexplorer/model/PasteFileInstance;->setFromCloudToLocal(Z)V

    .line 120
    iget-object p1, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 122
    invoke-interface {p1}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 125
    move-result-object v6

    .line 126
    const v7, 0x7f1100d2

    .line 129
    const v8, 0x7f1102ed

    .line 132
    const/4 v9, 0x1

    .line 133
    const/4 v10, 0x0

    .line 134
    const/4 v11, 0x1

    .line 135
    const/4 v12, 0x0

    .line 136
    invoke-static/range {v6 .. v12}, Lcom/android/fileexplorer/model/Util;->copyOrMoveFile(Landroid/app/Activity;IIZZZZ)V

    .line 139
    :cond_8a
    return v5

    .line 140
    :sswitch_8b
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 143
    move-result p2

    .line 144
    if-lez p2, :cond_96

    .line 146
    iget-object p2, p0, Lcom/android/fileexplorer/listener/choice/FileOpMultiChoiceListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 148
    invoke-static {p2, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 151
    :cond_96
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 154
    invoke-static {v4, v1}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return v5

    .line 158
    nop

    .line 159
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

    .line 1
    invoke-direct {p0, p2}, Lcom/android/cloud/listener/choice/CloudOpMultiChoiceListener;->dealMenu(Landroid/view/Menu;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    return p1
.end method
