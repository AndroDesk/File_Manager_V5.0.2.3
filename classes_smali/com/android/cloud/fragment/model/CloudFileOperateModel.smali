.class public Lcom/android/cloud/fragment/model/CloudFileOperateModel;
.super Ljava/lang/Object;
.source "CloudFileOperateModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudFileOperateModel"


# instance fields
.field public final mCloudFileIdsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mCloudFileOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/cloud/bean/CloudFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mCurrentOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mLocalFileOperationList:Ljava/util/ArrayList;
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

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileOperationList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileIdsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mLocalFileOperationList:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Landroid/content/Context;Ljava/lang/String;ZLi2/f;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->lambda$requestCopyOrMove$0(Landroid/content/Context;Ljava/lang/String;ZLi2/f;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Ljava/util/List;Li2/f;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->lambda$requestDeleteLocal$5(Landroid/content/Context;Ljava/util/List;Li2/f;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/List;ZLi2/f;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->lambda$requestContinueUpload$1(Ljava/util/List;ZLi2/f;)V

    return-void
.end method

.method public static synthetic d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Li2/f;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->lambda$requestCreateFolder$2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Li2/f;)V

    return-void
.end method

.method public static synthetic e(Landroid/content/Context;Ljava/util/List;Li2/f;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->lambda$requestModifyFile$6(Landroid/content/Context;Ljava/util/List;Li2/f;)V

    return-void
.end method

.method public static synthetic f(Li2/f;)V
    .registers 1

    invoke-static {p0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->lambda$requestQuotaInfo$7(Li2/f;)V

    return-void
.end method

.method public static synthetic g(Landroid/content/Context;Ljava/util/List;ZLi2/f;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->lambda$requestDownload$3(Landroid/content/Context;Ljava/util/List;ZLi2/f;)V

    return-void
.end method

.method public static synthetic h(Landroid/content/Context;Ljava/util/List;Li2/f;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->lambda$requestDelete$4(Landroid/content/Context;Ljava/util/List;Li2/f;)V

    return-void
.end method

.method private static synthetic lambda$requestContinueUpload$1(Ljava/util/List;ZLi2/f;)V
    .registers 4

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/cloud/CloudDriveManager;->requestContinueUpload(Ljava/util/List;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    invoke-interface {p2, p0}, Li2/b;->onNext(Ljava/lang/Object;)V

    invoke-interface {p2}, Li2/b;->onComplete()V

    return-void
.end method

.method private synthetic lambda$requestCopyOrMove$0(Landroid/content/Context;Ljava/lang/String;ZLi2/f;)V
    .registers 12

    invoke-virtual {p0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->getUploadFilePaths()Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileIdsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p1, 0x0

    goto :goto_3b

    :cond_14
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileIdsList:Ljava/util/ArrayList;

    move-object v1, p1

    move-object v3, v6

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/cloud/CloudDriveManager;->startMoveFile(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p1

    goto :goto_3b

    :cond_2d
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileIdsList:Ljava/util/ArrayList;

    move-object v1, p1

    move-object v3, v6

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/cloud/CloudDriveManager;->startCopyFile(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p1

    :goto_3b
    if-eqz p1, :cond_89

    invoke-interface {p4, p1}, Li2/b;->onNext(Ljava/lang/Object;)V

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_66

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_66

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->isSuccess()Z

    move-result v0

    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/android/fileexplorer/statistics/StatHelper;->uploadToCloud(Ljava/lang/String;ZLcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V

    goto :goto_4a

    :cond_66
    iget-object p1, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_85

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getFromPage()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    move-result p2

    iget-object p3, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    const-string v0, "云盘"

    invoke-static {p1, v0, p2, p3}, Lcom/android/fileexplorer/statistics/StatHelper;->fileMoveOrCopy(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    :cond_85
    invoke-interface {p4}, Li2/b;->onComplete()V

    goto :goto_93

    :cond_89
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "requestCopyOrMove return null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Li2/b;->onError(Ljava/lang/Throwable;)V

    :goto_93
    return-void
.end method

.method private static synthetic lambda$requestCreateFolder$2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Li2/f;)V
    .registers 5

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/cloud/CloudDriveManager;->createFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    move-result-object p0

    invoke-interface {p3, p0}, Li2/b;->onNext(Ljava/lang/Object;)V

    invoke-interface {p3}, Li2/b;->onComplete()V

    return-void
.end method

.method private static synthetic lambda$requestDelete$4(Landroid/content/Context;Ljava/util/List;Li2/f;)V
    .registers 4

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/cloud/CloudDriveManager;->deleteCloudFile(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    invoke-interface {p2, p0}, Li2/b;->onNext(Ljava/lang/Object;)V

    invoke-interface {p2}, Li2/b;->onComplete()V

    return-void
.end method

.method private static synthetic lambda$requestDeleteLocal$5(Landroid/content/Context;Ljava/util/List;Li2/f;)V
    .registers 4

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/cloud/CloudDriveManager;->releaseFileCache(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    invoke-interface {p2, p0}, Li2/b;->onNext(Ljava/lang/Object;)V

    invoke-interface {p2}, Li2/b;->onComplete()V

    return-void
.end method

.method private static synthetic lambda$requestDownload$3(Landroid/content/Context;Ljava/util/List;ZLi2/f;)V
    .registers 5

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/cloud/CloudDriveManager;->startDownload(Landroid/content/Context;Ljava/util/List;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    invoke-interface {p3, p0}, Li2/b;->onNext(Ljava/lang/Object;)V

    invoke-interface {p3}, Li2/b;->onComplete()V

    return-void
.end method

.method private static synthetic lambda$requestModifyFile$6(Landroid/content/Context;Ljava/util/List;Li2/f;)V
    .registers 4

    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/cloud/CloudDriveManager;->modifyFileContent(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p0

    invoke-interface {p2, p0}, Li2/b;->onNext(Ljava/lang/Object;)V

    invoke-interface {p2}, Li2/b;->onComplete()V

    return-void
.end method

.method private static synthetic lambda$requestQuotaInfo$7(Li2/f;)V
    .registers 2

    invoke-static {}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getMiDriveQuotaInfo()Lcom/micloud/midrive/infos/MiDriveQuotaInfo;

    move-result-object v0

    invoke-interface {p0, v0}, Li2/b;->onNext(Ljava/lang/Object;)V

    invoke-interface {p0}, Li2/b;->onComplete()V

    return-void
.end method


# virtual methods
.method public getConsumeUploadDataSize()J
    .registers 6

    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getPasteFileInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1d

    return-wide v1

    :cond_1d
    invoke-virtual {p0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->splitCurrentOperationList()V

    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mLocalFileOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_29

    return-wide v1

    :cond_29
    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mLocalFileOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/model/FileInfo;

    iget-wide v3, v3, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    add-long/2addr v1, v3

    goto :goto_2f

    :cond_3f
    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileIdsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mLocalFileOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-wide v1
.end method

.method public getUploadFilePaths()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mLocalFileOperationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    iget-object v3, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_25
    return-object v0
.end method

.method public requestContinueUpload(Ljava/util/List;Z)Li2/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Li2/e<",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/cloud/fragment/model/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/cloud/fragment/model/c;-><init>(Ljava/lang/Object;ZI)V

    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    sget-object p2, Lw2/a;->b:Li2/i;

    invoke-virtual {p1, p2}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    move-result-object p1

    invoke-static {}, Lj2/a;->a()Lj2/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    move-result-object p1

    return-object p1
.end method

.method public requestCopyOrMove(Landroid/content/Context;Ljava/lang/String;Z)Li2/e;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)",
            "Li2/e<",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getPasteFileInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string p1, "CloudFileOperateModel"

    const-string p2, "copyOrMoveFiles mCurrentOperationList is Empty"

    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_2a
    invoke-virtual {p0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->splitCurrentOperationList()V

    new-instance v0, Lcom/android/cloud/fragment/model/h;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/cloud/fragment/model/h;-><init>(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    sget-object p2, Lw2/a;->b:Li2/i;

    invoke-virtual {p1, p2}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    move-result-object p1

    invoke-static {}, Lj2/a;->a()Lj2/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    move-result-object p1

    return-object p1
.end method

.method public requestCreateFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Li2/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Li2/e<",
            "Lcom/micloud/midrive/server/protocol/CreateFolderResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/cloud/fragment/model/f;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/cloud/fragment/model/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    sget-object p2, Lw2/a;->b:Li2/i;

    invoke-virtual {p1, p2}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    move-result-object p1

    invoke-static {}, Lj2/a;->a()Lj2/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    move-result-object p1

    return-object p1
.end method

.method public requestDelete(Landroid/content/Context;Ljava/util/List;)Li2/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Li2/e<",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/cloud/fragment/model/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/cloud/fragment/model/d;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    sget-object p2, Lw2/a;->b:Li2/i;

    invoke-virtual {p1, p2}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    move-result-object p1

    invoke-static {}, Lj2/a;->a()Lj2/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    move-result-object p1

    return-object p1
.end method

.method public requestDeleteLocal(Landroid/content/Context;Ljava/util/List;)Li2/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Li2/e<",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/cloud/fragment/model/d;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/cloud/fragment/model/d;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    sget-object p2, Lw2/a;->b:Li2/i;

    invoke-virtual {p1, p2}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    move-result-object p1

    invoke-static {}, Lj2/a;->a()Lj2/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    move-result-object p1

    return-object p1
.end method

.method public requestDownload(Landroid/content/Context;Ljava/util/List;Z)Li2/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Li2/e<",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/cloud/fragment/model/e;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/cloud/fragment/model/e;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    sget-object p2, Lw2/a;->b:Li2/i;

    invoke-virtual {p1, p2}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    move-result-object p1

    invoke-static {}, Lj2/a;->a()Lj2/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    move-result-object p1

    return-object p1
.end method

.method public requestModifyFile(Landroid/content/Context;Ljava/util/List;)Li2/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Li2/e<",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/cloud/fragment/model/d;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lcom/android/cloud/fragment/model/d;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    sget-object p2, Lw2/a;->b:Li2/i;

    invoke-virtual {p1, p2}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    move-result-object p1

    invoke-static {}, Lj2/a;->a()Lj2/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    move-result-object p1

    return-object p1
.end method

.method public requestQuotaInfo()Li2/e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li2/e<",
            "Lcom/micloud/midrive/infos/MiDriveQuotaInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/cloud/fragment/model/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/cloud/fragment/model/g;-><init>(I)V

    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    sget-object v0, Lw2/a;->b:Li2/i;

    invoke-virtual {v1, v0}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    move-result-object v0

    invoke-static {}, Lj2/a;->a()Lj2/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    move-result-object v0

    return-object v0
.end method

.method public splitCurrentOperationList()V
    .registers 4

    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileIdsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mLocalFileOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileOperationList:Ljava/util/ArrayList;

    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileIdsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_36
    iget-object v2, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mLocalFileOperationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_3c
    return-void
.end method
