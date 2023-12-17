.class public Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;
.super Ljava/lang/Object;
.source "ExpandableChildClickListener.java"

# interfaces
.implements Lcom/android/fileexplorer/recyclerview/adapter/expandable/listeners/OnChildClickListener;


# instance fields
.field public mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter<",
            "*+",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;",
            ">;"
        }
    .end annotation
.end field

.field public mPageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter<",
            "*+",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;",
            ">;",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 4
    invoke-static {p3}, Lcom/android/fileexplorer/statistics/StatHelper;->getPageNameByCategory(Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mPageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter<",
            "*+",
            "Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 7
    iput-object p2, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 8
    iput-object p3, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mPageName:Ljava/lang/String;

    return-void
.end method

.method private isDownloadingOrList(Ljava/lang/String;)Z
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Download_Loading:Lcom/android/cloud/bean/TransferState$Status;

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)Ljava/util/Map;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_12

    .line 18
    return v2

    .line 19
    :cond_12
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 22
    move-result-object v1

    .line 23
    sget-object v3, Lcom/android/cloud/bean/TransferState$Status;->Download_Waiting:Lcom/android/cloud/bean/TransferState$Status;

    .line 25
    invoke-virtual {v1, v3}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)Ljava/util/Map;

    .line 28
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_22

    .line 34
    return v2

    .line 35
    :cond_22
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method private performChildClick(II)V
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    .line 3
    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    .line 13
    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_1a7

    .line 19
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1a

    .line 25
    goto/16 :goto_1a7

    .line 27
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 35
    move-result v1

    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 41
    invoke-static {v0, p1}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    move-result-object p2

    .line 53
    instance-of v1, p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 55
    if-eqz v1, :cond_3c

    .line 57
    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    .line 59
    goto/16 :goto_16b

    .line 61
    :cond_3c
    instance-of v1, p2, Lcom/android/cloud/bean/CloudFileItem;

    .line 63
    if-eqz v1, :cond_15d

    .line 65
    move-object v1, p2

    .line 66
    check-cast v1, Lcom/android/cloud/bean/CloudFileItem;

    .line 68
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getType()Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 72
    new-instance v3, Ljava/util/ArrayList;

    .line 74
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getCloudId()Ljava/lang/String;

    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 87
    move-result-object v4

    .line 88
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_d7

    .line 94
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getCloudLocalFileId()Ljava/lang/String;

    .line 97
    move-result-object v4

    .line 98
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    move-result v4

    .line 102
    if-nez v4, :cond_d7

    .line 104
    const-string p1, "releaseFileCache:"

    .line 106
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getFileName()Ljava/lang/String;

    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    const-string p2, "MiDrive_LOG"

    .line 123
    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getTransferId()Ljava/lang/String;

    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p1, p2}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getDownloadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    .line 137
    move-result-object p1

    .line 138
    if-eqz p1, :cond_ad

    .line 140
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 143
    move-result-object p2

    .line 144
    sget-object v0, Lcom/android/cloud/bean/TransferState$Status;->Download_error:Lcom/android/cloud/bean/TransferState$Status;

    .line 146
    if-ne p2, v0, :cond_ad

    .line 148
    iget-object p2, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 150
    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    .line 157
    move-result-object v0

    .line 158
    invoke-static {p2, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showMiDriveUnavailableDialogIfNeeded(Landroid/app/Activity;Lcom/micloud/midrive/infos/ErrInfo;)Z

    .line 161
    move-result p2

    .line 162
    if-nez p2, :cond_d6

    .line 164
    iget-object p2, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 166
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    .line 169
    move-result-object p1

    .line 170
    invoke-static {p2, p1, v3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showDownloadErrorDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Ljava/util/List;)V

    .line 173
    goto :goto_d6

    .line 174
    :cond_ad
    if-eqz p1, :cond_d1

    .line 176
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 179
    move-result-object p2

    .line 180
    sget-object v0, Lcom/android/cloud/bean/TransferState$Status;->Pause:Lcom/android/cloud/bean/TransferState$Status;

    .line 182
    if-eq p2, v0, :cond_bf

    .line 184
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    .line 187
    move-result-object p2

    .line 188
    sget-object v0, Lcom/android/cloud/bean/TransferState$Status;->Wait_network:Lcom/android/cloud/bean/TransferState$Status;

    .line 190
    if-ne p2, v0, :cond_d1

    .line 192
    :cond_bf
    new-instance p2, Ljava/util/ArrayList;

    .line 194
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 202
    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getCurrentSize()J

    .line 205
    move-result-wide v1

    .line 206
    invoke-static {v0, p2, v1, v2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V

    .line 209
    goto :goto_d6

    .line 210
    :cond_d1
    iget-object p1, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 212
    invoke-static {p1, v3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDeleteLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 215
    :cond_d6
    :goto_d6
    return-void

    .line 216
    :cond_d7
    const-string v3, "pic"

    .line 218
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    move-result v3

    .line 222
    const-string v4, "最近tab页"

    .line 224
    if-eqz v3, :cond_ec

    .line 226
    const-string v0, "图片"

    .line 228
    invoke-static {v0, v4}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFilePreview(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 233
    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickPic(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Ljava/lang/Object;)V

    .line 236
    return-void

    .line 237
    :cond_ec
    const-string p1, "video"

    .line 239
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    move-result p1

    .line 243
    if-eqz p1, :cond_12e

    .line 245
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getFileSize()Ljava/lang/Long;

    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 252
    move-result-wide p1

    .line 253
    const-wide/32 v2, 0x5f5e100

    .line 256
    cmp-long p1, p1, v2

    .line 258
    if-gez p1, :cond_12e

    .line 260
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 263
    move-result-object p1

    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 267
    move-result p1

    .line 268
    if-eqz p1, :cond_129

    .line 270
    const-string p1, "视频"

    .line 272
    invoke-static {p1, v4}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFilePreview(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v5, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 277
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getCloudId()Ljava/lang/String;

    .line 280
    move-result-object v6

    .line 281
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getFileName()Ljava/lang/String;

    .line 284
    move-result-object v7

    .line 285
    const/4 v8, 0x1

    .line 286
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getFileSize()Ljava/lang/Long;

    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 293
    move-result-wide v9

    .line 294
    invoke-static/range {v5 .. v10}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewCloudVideo(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 297
    return-void

    .line 298
    :cond_129
    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    .line 301
    move-result-object p1

    .line 302
    goto :goto_14f

    .line 303
    :cond_12e
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 306
    move-result-object p1

    .line 307
    new-instance p2, Ljava/util/ArrayList;

    .line 309
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 312
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 318
    move-result v2

    .line 319
    if-nez v2, :cond_157

    .line 321
    new-instance v2, Ljava/io/File;

    .line 323
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-static {v2}, Lcom/android/fileexplorer/model/Util;->existsCompat(Ljava/io/File;)Z

    .line 329
    move-result p1

    .line 330
    if-eqz p1, :cond_151

    .line 332
    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    .line 335
    move-result-object p1

    .line 336
    :goto_14f
    move-object p2, p1

    .line 337
    goto :goto_16b

    .line 338
    :cond_151
    iget-object p1, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 340
    invoke-static {p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 343
    return-void

    .line 344
    :cond_157
    iget-object p1, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 346
    invoke-static {p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    .line 349
    return-void

    .line 350
    :cond_15d
    instance-of p1, p2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 352
    if-eqz p1, :cond_19f

    .line 354
    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 356
    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    .line 359
    move-result-object p1

    .line 360
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    .line 363
    move-result-object p2

    .line 364
    :goto_16b
    iget-object p1, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 369
    move-result p1

    .line 370
    if-eqz p1, :cond_174

    .line 372
    return-void

    .line 373
    :cond_174
    iget-object p1, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 375
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 378
    move-result-object p1

    .line 379
    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    .line 382
    move-result-object v1

    .line 383
    const-string v2, "image/"

    .line 385
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 388
    move-result v1

    .line 389
    if-eqz v1, :cond_197

    .line 391
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->getLocalFileType(Ljava/lang/String;)Ljava/lang/String;

    .line 394
    move-result-object p1

    .line 395
    iget-wide v1, p2, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 397
    iget-object v3, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mPageName:Ljava/lang/String;

    .line 399
    invoke-static {p1, v1, v2, v3}, Lcom/android/fileexplorer/statistics/StatHelper;->localFileOpen(Ljava/lang/String;JLjava/lang/String;)V

    .line 402
    iget-object p1, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 404
    invoke-static {p1, v0, p2}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickPic(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Ljava/lang/Object;)V

    .line 407
    goto :goto_19e

    .line 408
    :cond_197
    iget-object p1, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    .line 410
    iget-object v0, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mPageName:Ljava/lang/String;

    .line 412
    invoke-static {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    .line 415
    :goto_19e
    return-void

    .line 416
    :cond_19f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 418
    const-string p2, "Unknown type"

    .line 420
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 423
    throw p1

    .line 424
    :cond_1a7
    :goto_1a7
    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/view/View;III)V
    .registers 5

    .line 1
    invoke-direct {p0, p3, p4}, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->performChildClick(II)V

    .line 4
    return-void
.end method

.method public onChildLongClick(Landroid/view/View;III)Z
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mPageName:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionExpose(Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method
