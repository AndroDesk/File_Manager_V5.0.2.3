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
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileOperationList:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileIdsList:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mLocalFileOperationList:Ljava/util/ArrayList;

    .line 32
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

    .line 1
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/android/cloud/CloudDriveManager;->requestContinueUpload(Ljava/util/List;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p2, p0}, Li2/b;->onNext(Ljava/lang/Object;)V

    .line 12
    invoke-interface {p2}, Li2/b;->onComplete()V

    .line 15
    return-void
.end method

.method private synthetic lambda$requestCopyOrMove$0(Landroid/content/Context;Ljava/lang/String;ZLi2/f;)V
    .registers 12

    .line 1
    invoke-virtual {p0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->getUploadFilePaths()Ljava/util/List;

    .line 4
    move-result-object v6

    .line 5
    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileIdsList:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_14

    .line 13
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_14

    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_3b

    .line 21
    :cond_14
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2d

    .line 31
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 34
    move-result-object v0

    .line 35
    iget-object v2, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileIdsList:Ljava/util/ArrayList;

    .line 37
    move-object v1, p1

    .line 38
    move-object v3, v6

    .line 39
    move-object v4, p2

    .line 40
    move v5, p3

    .line 41
    invoke-virtual/range {v0 .. v5}, Lcom/android/cloud/CloudDriveManager;->startMoveFile(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 44
    move-result-object p1

    .line 45
    goto :goto_3b

    .line 46
    :cond_2d
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 49
    move-result-object v0

    .line 50
    iget-object v2, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileIdsList:Ljava/util/ArrayList;

    .line 52
    move-object v1, p1

    .line 53
    move-object v3, v6

    .line 54
    move-object v4, p2

    .line 55
    move v5, p3

    .line 56
    invoke-virtual/range {v0 .. v5}, Lcom/android/cloud/CloudDriveManager;->startCopyFile(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 59
    move-result-object p1

    .line 60
    :goto_3b
    if-eqz p1, :cond_89

    .line 62
    invoke-interface {p4, p1}, Li2/b;->onNext(Ljava/lang/Object;)V

    .line 65
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 68
    move-result p2

    .line 69
    if-nez p2, :cond_66

    .line 71
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object p2

    .line 75
    :goto_4a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result p3

    .line 79
    if-eqz p3, :cond_66

    .line 81
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object p3

    .line 85
    check-cast p3, Ljava/lang/String;

    .line 87
    invoke-static {p3}, Lcom/android/fileexplorer/apptag/FileUtils;->getFileExt(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    move-result-object p3

    .line 91
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->isSuccess()Z

    .line 94
    move-result v0

    .line 95
    invoke-virtual {p1}, Lcom/micloud/midrive/session/action/SyncFileOperationResponse;->getError()Lcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;

    .line 98
    move-result-object v1

    .line 99
    invoke-static {p3, v0, v1}, Lcom/android/fileexplorer/statistics/StatHelper;->uploadToCloud(Ljava/lang/String;ZLcom/micloud/midrive/session/action/SyncFileOperationResponse$ErrorType;)V

    .line 102
    goto :goto_4a

    .line 103
    :cond_66
    iget-object p1, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_85

    .line 111
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getFromPage()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 122
    move-result-object p2

    .line 123
    invoke-virtual {p2}, Lcom/android/fileexplorer/model/PasteFileInstance;->isMoving()Z

    .line 126
    move-result p2

    .line 127
    iget-object p3, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 129
    const-string v0, "云盘"

    .line 131
    invoke-static {p1, v0, p2, p3}, Lcom/android/fileexplorer/statistics/StatHelper;->fileMoveOrCopy(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 134
    :cond_85
    invoke-interface {p4}, Li2/b;->onComplete()V

    .line 137
    goto :goto_93

    .line 138
    :cond_89
    new-instance p1, Ljava/lang/NullPointerException;

    .line 140
    const-string p2, "requestCopyOrMove return null"

    .line 142
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-interface {p4, p1}, Li2/b;->onError(Ljava/lang/Throwable;)V

    .line 148
    :goto_93
    return-void
.end method

.method private static synthetic lambda$requestCreateFolder$2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Li2/f;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/cloud/CloudDriveManager;->createFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p3, p0}, Li2/b;->onNext(Ljava/lang/Object;)V

    .line 12
    invoke-interface {p3}, Li2/b;->onComplete()V

    .line 15
    return-void
.end method

.method private static synthetic lambda$requestDelete$4(Landroid/content/Context;Ljava/util/List;Li2/f;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/android/cloud/CloudDriveManager;->deleteCloudFile(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p2, p0}, Li2/b;->onNext(Ljava/lang/Object;)V

    .line 12
    invoke-interface {p2}, Li2/b;->onComplete()V

    .line 15
    return-void
.end method

.method private static synthetic lambda$requestDeleteLocal$5(Landroid/content/Context;Ljava/util/List;Li2/f;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/android/cloud/CloudDriveManager;->releaseFileCache(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p2, p0}, Li2/b;->onNext(Ljava/lang/Object;)V

    .line 12
    invoke-interface {p2}, Li2/b;->onComplete()V

    .line 15
    return-void
.end method

.method private static synthetic lambda$requestDownload$3(Landroid/content/Context;Ljava/util/List;ZLi2/f;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/cloud/CloudDriveManager;->startDownload(Landroid/content/Context;Ljava/util/List;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p3, p0}, Li2/b;->onNext(Ljava/lang/Object;)V

    .line 12
    invoke-interface {p3}, Li2/b;->onComplete()V

    .line 15
    return-void
.end method

.method private static synthetic lambda$requestModifyFile$6(Landroid/content/Context;Ljava/util/List;Li2/f;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/cloud/CloudDriveManager;->getInstance()Lcom/android/cloud/CloudDriveManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/android/cloud/CloudDriveManager;->modifyFileContent(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p2, p0}, Li2/b;->onNext(Ljava/lang/Object;)V

    .line 12
    invoke-interface {p2}, Li2/b;->onComplete()V

    .line 15
    return-void
.end method

.method private static synthetic lambda$requestQuotaInfo$7(Li2/f;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->getMiDriveQuotaInfo()Lcom/micloud/midrive/infos/MiDriveQuotaInfo;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0, v0}, Li2/b;->onNext(Ljava/lang/Object;)V

    .line 8
    invoke-interface {p0}, Li2/b;->onComplete()V

    .line 11
    return-void
.end method


# virtual methods
.method public getConsumeUploadDataSize()J
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getPasteFileInfos()Ljava/util/ArrayList;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v0

    .line 25
    const-wide/16 v1, 0x0

    .line 27
    if-nez v0, :cond_1d

    .line 29
    return-wide v1

    .line 30
    :cond_1d
    invoke-virtual {p0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->splitCurrentOperationList()V

    .line 33
    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mLocalFileOperationList:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_29

    .line 41
    return-wide v1

    .line 42
    :cond_29
    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mLocalFileOperationList:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    move-result-object v0

    .line 48
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_3f

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/android/fileexplorer/model/FileInfo;

    .line 60
    iget-wide v3, v3, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 62
    add-long/2addr v1, v3

    .line 63
    goto :goto_2f

    .line 64
    :cond_3f
    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileOperationList:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileIdsList:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mLocalFileOperationList:Ljava/util/ArrayList;

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
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

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mLocalFileOperationList:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_25

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 24
    iget-object v3, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 26
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_b

    .line 32
    iget-object v2, v2, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_b

    .line 38
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

    .line 1
    new-instance v0, Lcom/android/cloud/fragment/model/c;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lcom/android/cloud/fragment/model/c;-><init>(Ljava/lang/Object;ZI)V

    .line 7
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    .line 9
    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    .line 12
    sget-object p2, Lw2/a;->b:Li2/i;

    .line 14
    invoke-virtual {p1, p2}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {}, Lj2/a;->a()Lj2/b;

    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    .line 25
    move-result-object p1

    .line 26
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

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/android/fileexplorer/model/PasteFileInstance;->getPasteFileInfos()Ljava/util/ArrayList;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 19
    invoke-static {}, Lcom/android/fileexplorer/model/PasteFileInstance;->getInstance()Lcom/android/fileexplorer/model/PasteFileInstance;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/android/fileexplorer/model/PasteFileInstance;->clearPasteFiles()V

    .line 26
    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2a

    .line 34
    const-string p1, "CloudFileOperateModel"

    .line 36
    const-string p2, "copyOrMoveFiles mCurrentOperationList is Empty"

    .line 38
    invoke-static {p1, p2}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 p1, 0x0

    .line 42
    return-object p1

    .line 43
    :cond_2a
    invoke-virtual {p0}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->splitCurrentOperationList()V

    .line 46
    new-instance v0, Lcom/android/cloud/fragment/model/h;

    .line 48
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/cloud/fragment/model/h;-><init>(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 51
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    .line 53
    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    .line 56
    sget-object p2, Lw2/a;->b:Li2/i;

    .line 58
    invoke-virtual {p1, p2}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    .line 61
    move-result-object p1

    .line 62
    invoke-static {}, Lj2/a;->a()Lj2/b;

    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    .line 69
    move-result-object p1

    .line 70
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

    .line 1
    new-instance v0, Lcom/android/cloud/fragment/model/f;

    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/android/cloud/fragment/model/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    .line 8
    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    .line 11
    sget-object p2, Lw2/a;->b:Li2/i;

    .line 13
    invoke-virtual {p1, p2}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    .line 16
    move-result-object p1

    .line 17
    invoke-static {}, Lj2/a;->a()Lj2/b;

    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    .line 24
    move-result-object p1

    .line 25
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

    .line 1
    new-instance v0, Lcom/android/cloud/fragment/model/d;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lcom/android/cloud/fragment/model/d;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 7
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    .line 9
    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    .line 12
    sget-object p2, Lw2/a;->b:Li2/i;

    .line 14
    invoke-virtual {p1, p2}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {}, Lj2/a;->a()Lj2/b;

    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    .line 25
    move-result-object p1

    .line 26
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

    .line 1
    new-instance v0, Lcom/android/cloud/fragment/model/d;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lcom/android/cloud/fragment/model/d;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 7
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    .line 9
    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    .line 12
    sget-object p2, Lw2/a;->b:Li2/i;

    .line 14
    invoke-virtual {p1, p2}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {}, Lj2/a;->a()Lj2/b;

    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    .line 25
    move-result-object p1

    .line 26
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

    .line 1
    new-instance v0, Lcom/android/cloud/fragment/model/e;

    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/android/cloud/fragment/model/e;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    .line 6
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    .line 8
    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    .line 11
    sget-object p2, Lw2/a;->b:Li2/i;

    .line 13
    invoke-virtual {p1, p2}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    .line 16
    move-result-object p1

    .line 17
    invoke-static {}, Lj2/a;->a()Lj2/b;

    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    .line 24
    move-result-object p1

    .line 25
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

    .line 1
    new-instance v0, Lcom/android/cloud/fragment/model/d;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lcom/android/cloud/fragment/model/d;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 7
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    .line 9
    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    .line 12
    sget-object p2, Lw2/a;->b:Li2/i;

    .line 14
    invoke-virtual {p1, p2}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {}, Lj2/a;->a()Lj2/b;

    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    .line 25
    move-result-object p1

    .line 26
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

    .line 1
    new-instance v0, Lcom/android/cloud/fragment/model/g;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/cloud/fragment/model/g;-><init>(I)V

    .line 7
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    .line 9
    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Li2/g;)V

    .line 12
    sget-object v0, Lw2/a;->b:Li2/i;

    .line 14
    invoke-virtual {v1, v0}, Li2/e;->e(Li2/i;)Lio/reactivex/internal/operators/observable/ObservableSubscribeOn;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Lj2/a;->a()Lj2/b;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Li2/e;->a(Lj2/b;)Lio/reactivex/internal/operators/observable/ObservableObserveOn;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public splitCurrentOperationList()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileOperationList:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileIdsList:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mLocalFileOperationList:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    iget-object v0, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCurrentOperationList:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_3c

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/fileexplorer/model/FileInfo;

    .line 34
    instance-of v2, v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 36
    if-eqz v2, :cond_36

    .line 38
    iget-object v2, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileOperationList:Ljava/util/ArrayList;

    .line 40
    check-cast v1, Lcom/android/cloud/bean/CloudFileInfo;

    .line 42
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v2, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mCloudFileIdsList:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v1}, Lcom/android/cloud/bean/CloudFileInfo;->getCloudId()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_15

    .line 55
    :cond_36
    iget-object v2, p0, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->mLocalFileOperationList:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    goto :goto_15

    .line 61
    :cond_3c
    return-void
.end method
