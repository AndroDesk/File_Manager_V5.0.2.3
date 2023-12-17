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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iput-object p2, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iput-object p2, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    iput-object p3, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mPageName:Ljava/lang/String;

    return-void
.end method

.method private isDownloadingOrList(Ljava/lang/String;)Z
    .registers 6

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v0

    sget-object v1, Lcom/android/cloud/bean/TransferState$Status;->Download_Loading:Lcom/android/cloud/bean/TransferState$Status;

    invoke-virtual {v0, v1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    return v2

    :cond_12
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object v1

    sget-object v3, Lcom/android/cloud/bean/TransferState$Status;->Download_Waiting:Lcom/android/cloud/bean/TransferState$Status;

    invoke-virtual {v1, v3}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getTransferInfo(Lcom/android/cloud/bean/TransferState$Status;)Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_22

    return v2

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method private performChildClick(II)V
    .registers 14

    iget-object v0, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mAdapter:Lcom/android/fileexplorer/recyclerview/adapter/expandable/ExpandableRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/android/fileexplorer/recyclerview/base/MultiTypeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;

    invoke-virtual {p1}, Lcom/android/fileexplorer/recyclerview/adapter/expandable/models/ExpandableGroup;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1a7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_1a7

    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-static {v0, p1}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of v1, p2, Lcom/android/fileexplorer/model/FileInfo;

    if-eqz v1, :cond_3c

    check-cast p2, Lcom/android/fileexplorer/model/FileInfo;

    goto/16 :goto_16b

    :cond_3c
    instance-of v1, p2, Lcom/android/cloud/bean/CloudFileItem;

    if-eqz v1, :cond_15d

    move-object v1, p2

    check-cast v1, Lcom/android/cloud/bean/CloudFileItem;

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getType()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getCloudId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d7

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getCloudLocalFileId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d7

    const-string p1, "releaseFileCache:"

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MiDrive_LOG"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p1

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getTransferId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getDownloadFileTransState(Ljava/lang/String;)Lcom/android/cloud/bean/TransferState;

    move-result-object p1

    if-eqz p1, :cond_ad

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object p2

    sget-object v0, Lcom/android/cloud/bean/TransferState$Status;->Download_error:Lcom/android/cloud/bean/TransferState$Status;

    if-ne p2, v0, :cond_ad

    iget-object p2, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-interface {p2}, Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;->getRealActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showMiDriveUnavailableDialogIfNeeded(Landroid/app/Activity;Lcom/micloud/midrive/infos/ErrInfo;)Z

    move-result p2

    if-nez p2, :cond_d6

    iget-object p2, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getErrInfo()Lcom/micloud/midrive/infos/ErrInfo;

    move-result-object p1

    invoke-static {p2, p1, v3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->showDownloadErrorDialog(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/micloud/midrive/infos/ErrInfo;Ljava/util/List;)V

    goto :goto_d6

    :cond_ad
    if-eqz p1, :cond_d1

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object p2

    sget-object v0, Lcom/android/cloud/bean/TransferState$Status;->Pause:Lcom/android/cloud/bean/TransferState$Status;

    if-eq p2, v0, :cond_bf

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getStatus()Lcom/android/cloud/bean/TransferState$Status;

    move-result-object p2

    sget-object v0, Lcom/android/cloud/bean/TransferState$Status;->Wait_network:Lcom/android/cloud/bean/TransferState$Status;

    if-ne p2, v0, :cond_d1

    :cond_bf
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-virtual {p1}, Lcom/android/cloud/bean/TransferState;->getCurrentSize()J

    move-result-wide v1

    invoke-static {v0, p2, v1, v2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V

    goto :goto_d6

    :cond_d1
    iget-object p1, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {p1, v3}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDeleteLocal(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    :cond_d6
    :goto_d6
    return-void

    :cond_d7
    const-string v3, "pic"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "最近tab页"

    if-eqz v3, :cond_ec

    const-string v0, "图片"

    invoke-static {v0, v4}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFilePreview(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {v0, p1, p2}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickPic(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Ljava/lang/Object;)V

    return-void

    :cond_ec
    const-string p1, "video"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12e

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getFileSize()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/32 v2, 0x5f5e100

    cmp-long p1, p1, v2

    if-gez p1, :cond_12e

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_129

    const-string p1, "视频"

    invoke-static {p1, v4}, Lcom/android/fileexplorer/statistics/StatHelper;->cloudFilePreview(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getCloudId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getFileName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileItem;->getFileSize()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static/range {v5 .. v10}, Lcom/android/fileexplorer/controller/IntentBuilder;->viewCloudVideo(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;ZJ)V

    return-void

    :cond_129
    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    goto :goto_14f

    :cond_12e
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_157

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/fileexplorer/model/Util;->existsCompat(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_151

    invoke-static {v1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Lcom/android/fileexplorer/dao/file/FileItem;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p1

    :goto_14f
    move-object p2, p1

    goto :goto_16b

    :cond_151
    iget-object p1, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    return-void

    :cond_157
    iget-object p1, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->requestDownload(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;)V

    return-void

    :cond_15d
    instance-of p1, p2, Lcom/android/fileexplorer/dao/file/FileItem;

    if-eqz p1, :cond_19f

    check-cast p2, Lcom/android/fileexplorer/dao/file/FileItem;

    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/FileItem;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getFileInfo(Ljava/lang/String;)Lcom/android/fileexplorer/model/FileInfo;

    move-result-object p2

    :goto_16b
    iget-object p1, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_174

    return-void

    :cond_174
    iget-object p1, p2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/fileexplorer/util/MimeUtils;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_197

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->getLocalFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-wide v1, p2, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    iget-object v3, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mPageName:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/android/fileexplorer/statistics/StatHelper;->localFileOpen(Ljava/lang/String;JLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    invoke-static {p1, v0, p2}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickPic(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_19e

    :cond_197
    iget-object p1, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mActivity:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v0, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mPageName:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/android/fileexplorer/filemanager/FileClickOperationUtils;->onOperationClickFile(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Lcom/android/fileexplorer/model/FileInfo;Ljava/lang/String;)V

    :goto_19e
    return-void

    :cond_19f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a7
    :goto_1a7
    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/view/View;III)V
    .registers 5

    invoke-direct {p0, p3, p4}, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->performChildClick(II)V

    return-void
.end method

.method public onChildLongClick(Landroid/view/View;III)Z
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/listener/click/ExpandableChildClickListener;->mPageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/fileexplorer/statistics/StatHelper;->bottomFunctionExpose(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
