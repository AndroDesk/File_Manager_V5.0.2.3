.class public Lcom/micloud/midrive/cache/manager/SyncDataManager;
.super Ljava/lang/Object;
.source "SyncDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;,
        Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/micloud/midrive/cache/manager/SyncDataManager;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 6
    invoke-direct {v0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 11
    new-instance p1, Landroid/os/Handler;

    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    iput-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mHandler:Landroid/os/Handler;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mListeners:Ljava/util/List;

    .line 29
    return-void
.end method

.method public static synthetic a(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->lambda$postSyncDataChangedMsg$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/util/List;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->postSyncDataChangedMsg()V

    .line 4
    return-void
.end method

.method public static synthetic access$1000(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1100(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryCloudFilePathByCloudFileId(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1400(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;I)Ljava/util/List;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryGroupId(Ljava/lang/String;I)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1500(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryTotalFileInfoByGroupId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1600(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1700(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryTotalFileCountByParentId(Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$1800(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryTotalFileInfoByTransferId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1900(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->insertLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$2000(Lcom/micloud/midrive/cache/manager/SyncDataManager;)Ljava/util/List;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryAllModifiedLocalFiles()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$2100(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryLocalFilesByAncestorId(Ljava/lang/String;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$2200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->searchKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$2300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->addSyncDataChangedListener(Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2400(Lcom/micloud/midrive/cache/manager/SyncDataManager;Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->removeSyncDataChangedListener(Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2500(Lcom/micloud/midrive/cache/manager/SyncDataManager;Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->clearData(Landroid/content/Context;)V

    .line 4
    return-void
.end method

.method public static synthetic access$2600(Lcom/micloud/midrive/cache/manager/SyncDataManager;)Ljava/util/List;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryAllSyncFiles()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$2700(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txUpdateDownloadFinishedInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$2800(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txUpdateUploadFinishedInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$2900(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txRename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->firstDownload(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$3000(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$3100(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txParentMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$3200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txDelete(Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$3300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;J)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txFileContentChanged(Ljava/lang/String;Ljava/lang/String;J)Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$3400(Lcom/micloud/midrive/cache/manager/SyncDataManager;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txUploadFile(Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$3500(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txChangeSyncingToTransfer(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$3600(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->syncDown(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$3700(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->syncUp(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$3800(Lcom/micloud/midrive/cache/manager/SyncDataManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->syncConflict(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$3900(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->clearInvalidLocalFile(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->firstUpload(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$4000(Lcom/micloud/midrive/cache/manager/SyncDataManager;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->tryUpdateSyncedStatus()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$4100(Lcom/micloud/midrive/cache/manager/SyncDataManager;Landroid/content/Context;Ljava/util/List;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkIfFolderChangeAndSync(Landroid/content/Context;Ljava/util/List;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$4200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->insertLocalAndTargetFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$4300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryParentInfoFromRoot(Ljava/lang/String;)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$4400(Lcom/micloud/midrive/cache/manager/SyncDataManager;)I
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryAllFileCount()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$4500(Lcom/micloud/midrive/cache/manager/SyncDataManager;IZ)Ljava/util/List;
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryLatestCountFiles(IZ)Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$500(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->updateLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$600(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->updateTargetInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$700(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;Ljava/lang/Long;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->updateLocalStatus(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;Ljava/lang/Long;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$800(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->updateTargetRevision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$900(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->updateTransferId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private addSyncDataChangedListener(Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_7

    .line 3
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mListeners:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_7
    return-void
.end method

.method private checkAndClearIfAccountChangedLocked()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->getAccount()Landroid/accounts/Account;

    .line 14
    move-result-object v1

    .line 15
    if-nez v0, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    if-nez v1, :cond_19

    .line 20
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 22
    invoke-virtual {v1, v0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateAccount(Landroid/accounts/Account;)V

    .line 25
    goto :goto_29

    .line 26
    :cond_19
    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_29

    .line 32
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 34
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->clearData()V

    .line 37
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 39
    invoke-virtual {v1, v0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateAccount(Landroid/accounts/Account;)V

    .line 42
    :cond_29
    :goto_29
    return-void
.end method

.method private checkIfFolderChangeAndSync(Landroid/content/Context;Ljava/util/List;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncCloudFileInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_5
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_e0

    .line 12
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 18
    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    .line 20
    const-string v3, "folder"

    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_5

    .line 28
    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 30
    invoke-direct {p0, v2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_5

    .line 36
    iget-object v3, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 38
    if-nez v3, :cond_28

    .line 40
    goto :goto_5

    .line 41
    :cond_28
    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    .line 43
    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_3e

    .line 51
    iget-object v3, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    .line 53
    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 55
    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_5

    .line 63
    :cond_3e
    const/4 v0, 0x1

    .line 64
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 67
    move-result-object v2

    .line 68
    invoke-direct {p0, v2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    .line 71
    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    .line 73
    invoke-direct {p0, v1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryLocalFilesByAncestorId(Ljava/lang/String;)Ljava/util/List;

    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object v1

    .line 81
    :cond_50
    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_db

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 93
    iget-object v3, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 95
    if-eqz v3, :cond_50

    .line 97
    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 100
    move-result-object v3

    .line 101
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    move-result v3

    .line 105
    if-nez v3, :cond_50

    .line 107
    iget-object v3, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 109
    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 112
    move-result-object v3

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    sget-object v5, Lcom/micloud/midrive/utils/DiskFileOperator;->ROOT_PATH:Ljava/lang/String;

    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v5, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 125
    invoke-direct {p0, v5}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryCloudFilePathByCloudFileId(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v4

    .line 136
    new-instance v5, Ljava/io/File;

    .line 138
    iget-object v6, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 140
    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 143
    move-result-object v6

    .line 144
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    iget-object v6, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    .line 151
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    iget-object v8, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 156
    iget-wide v8, v8, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    .line 158
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    const-string v8, ""

    .line 163
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v7

    .line 170
    invoke-direct {p0, v6, v4, v7}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txParentMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 173
    move-result-object v6

    .line 174
    iget-boolean v7, v6, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    .line 176
    if-eqz v7, :cond_50

    .line 178
    invoke-virtual {v6}, Lcom/micloud/midrive/session/action/DBOperationResponse;->getTransferId()Ljava/lang/String;

    .line 181
    move-result-object v7

    .line 182
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 185
    move-result v7

    .line 186
    if-nez v7, :cond_d0

    .line 188
    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 191
    move-result-object v2

    .line 192
    sget-object v7, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 194
    if-ne v2, v7, :cond_c6

    .line 196
    sget-object v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 198
    goto :goto_c8

    .line 199
    :cond_c6
    sget-object v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 201
    :goto_c8
    invoke-virtual {v6}, Lcom/micloud/midrive/session/action/DBOperationResponse;->getTransferId()Ljava/lang/String;

    .line 204
    move-result-object v6

    .line 205
    const/4 v7, 0x0

    .line 206
    invoke-static {p1, v2, v6, v7}, Lcom/micloud/midrive/session/helper/SessionHelper;->removeAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    .line 209
    :cond_d0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 212
    move-result v2

    .line 213
    if-eqz v2, :cond_50

    .line 215
    invoke-static {v3, v4}, Lcom/micloud/midrive/utils/DiskFileOperator;->move(Ljava/lang/String;Ljava/lang/String;)Z

    .line 218
    goto/16 :goto_50

    .line 220
    :cond_db
    invoke-static {}, Lcom/micloud/midrive/utils/DiskFileOperator;->clearDownloadEmptyFolders()Z

    .line 223
    goto/16 :goto_5

    .line 225
    :cond_e0
    return v0
.end method

.method private clearData(Landroid/content/Context;)V
    .registers 4

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 6
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 9
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 11
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->clearData()V

    .line 14
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 16
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V

    .line 19
    invoke-static {}, Lcom/micloud/midrive/utils/DiskFileOperator;->clearAllDownloadFiles()Z

    .line 22
    invoke-static {p1}, Lcom/micloud/midrive/helper/SyncConfigHelper;->clearSyncToken(Landroid/content/Context;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1f

    .line 25
    :try_start_18
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 27
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_1f
    move-exception p1

    .line 33
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 35
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 38
    throw p1

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_26

    .line 41
    throw p1
.end method

.method private clearInvalidLocalFile(Ljava/lang/String;)Z
    .registers 9

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 9
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 14
    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 17
    move-result-object v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_3b

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_1b

    .line 21
    :try_start_14
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 23
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 26
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_42

    .line 27
    return v2

    .line 28
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 30
    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->clearAllLocalFilePart(Ljava/lang/String;)J

    .line 33
    move-result-wide v3
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_3b

    .line 34
    const-wide/16 v5, 0x0

    .line 36
    cmp-long p1, v3, v5

    .line 38
    if-gtz p1, :cond_2e

    .line 40
    :try_start_27
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 42
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 45
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_42

    .line 46
    return v2

    .line 47
    :cond_2e
    :try_start_2e
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 49
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_3b

    .line 52
    const/4 p1, 0x1

    .line 53
    :try_start_34
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 55
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 58
    monitor-exit v0

    .line 59
    return p1

    .line 60
    :catchall_3b
    move-exception p1

    .line 61
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 63
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 66
    throw p1

    .line 67
    :catchall_42
    move-exception p1

    .line 68
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_34 .. :try_end_44} :catchall_42

    .line 69
    throw p1
.end method

.method private firstDownload(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z
    .registers 7

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 6
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 9
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 14
    invoke-virtual {v1, p1, p2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->firstDownloadFile(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)J

    .line 17
    move-result-wide p1

    .line 18
    iget-object p3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 20
    invoke-virtual {p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_26

    .line 23
    const-wide/16 v1, 0x0

    .line 25
    cmp-long p1, p1, v1

    .line 27
    if-lez p1, :cond_1e

    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    :goto_1f
    :try_start_1f
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 34
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 37
    monitor-exit v0

    .line 38
    return p1

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 42
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 45
    throw p1

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    .line 48
    throw p1
.end method

.method private firstUpload(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/lang/String;)Z
    .registers 7

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 6
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 9
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 14
    invoke-virtual {v1, p1, p2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->firstUploadFile(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/lang/String;)J

    .line 17
    move-result-wide p1

    .line 18
    iget-object p3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 20
    invoke-virtual {p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_26

    .line 23
    const-wide/16 v1, 0x0

    .line 25
    cmp-long p1, p1, v1

    .line 27
    if-lez p1, :cond_1e

    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    :goto_1f
    :try_start_1f
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 34
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 37
    monitor-exit v0

    .line 38
    return p1

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 42
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 45
    throw p1

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    .line 48
    throw p1
.end method

.method public static getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;
    .registers 2

    .line 1
    new-instance v0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;

    .line 3
    sget-object v1, Lcom/micloud/midrive/cache/manager/SyncDataManager;->sInstance:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 5
    invoke-direct {v0, v1}, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;-><init>(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    .line 8
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->sInstance:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    if-nez v0, :cond_17

    .line 5
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/micloud/midrive/cache/manager/SyncDataManager;->sInstance:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 10
    if-nez v1, :cond_12

    .line 12
    new-instance v1, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 14
    invoke-direct {v1, p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;-><init>(Landroid/content/Context;)V

    .line 17
    sput-object v1, Lcom/micloud/midrive/cache/manager/SyncDataManager;->sInstance:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    goto :goto_17

    .line 21
    :catchall_14
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    .line 23
    throw p0

    .line 24
    :cond_17
    :goto_17
    return-void
.end method

.method private insertLocalAndTargetFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z
    .registers 7

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 9
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 14
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->insertLocalAndTargetFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)J

    .line 17
    move-result-wide p1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_2c

    .line 18
    const-wide/16 p3, 0x0

    .line 20
    cmp-long p1, p1, p3

    .line 22
    if-gtz p1, :cond_1f

    .line 24
    const/4 p1, 0x0

    .line 25
    :try_start_18
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 27
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 30
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_33

    .line 31
    return p1

    .line 32
    :cond_1f
    :try_start_1f
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 34
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2c

    .line 37
    const/4 p1, 0x1

    .line 38
    :try_start_25
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 40
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 43
    monitor-exit v0

    .line 44
    return p1

    .line 45
    :catchall_2c
    move-exception p1

    .line 46
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 48
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 51
    throw p1

    .line 52
    :catchall_33
    move-exception p1

    .line 53
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_33

    .line 54
    throw p1
.end method

.method private insertLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 6

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 6
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 9
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 14
    invoke-virtual {v1, p1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->insertLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J

    .line 17
    move-result-wide p1

    .line 18
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 20
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_26

    .line 23
    const-wide/16 v1, 0x0

    .line 25
    cmp-long p1, p1, v1

    .line 27
    if-lez p1, :cond_1e

    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    :goto_1f
    :try_start_1f
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 34
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 37
    monitor-exit v0

    .line 38
    return p1

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 42
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 45
    throw p1

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    .line 48
    throw p1
.end method

.method private insertOrUpdateCloudFiles(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncCloudFileInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 6
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 9
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p1

    .line 16
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_21

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 28
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 30
    invoke-virtual {v2, v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->insertOrUpdateCloudFileInfo(Lcom/micloud/midrive/infos/SyncCloudFileInfo;)J

    .line 33
    goto :goto_f

    .line 34
    :cond_21
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 36
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2e

    .line 39
    const/4 p1, 0x1

    .line 40
    :try_start_27
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 42
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 45
    monitor-exit v0

    .line 46
    return p1

    .line 47
    :catchall_2e
    move-exception p1

    .line 48
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 50
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 53
    throw p1

    .line 54
    :catchall_35
    move-exception p1

    .line 55
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_35

    .line 56
    throw p1
.end method

.method private synthetic lambda$postSyncDataChangedMsg$0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mListeners:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_16

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;

    .line 19
    invoke-interface {v1}, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;->onSyncDataChanged()V

    .line 22
    goto :goto_6

    .line 23
    :cond_16
    return-void
.end method

.method private postSyncDataChangedMsg()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Landroidx/activity/b;

    .line 5
    const/16 v2, 0x13

    .line 7
    invoke-direct {v1, p0, v2}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
.end method

.method private queryAllFileCount()I
    .registers 3

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 8
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 10
    invoke-virtual {v0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryAllFileCount()I

    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :catchall_e
    move-exception v1

    .line 16
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    .line 17
    throw v1
.end method

.method private queryAllModifiedLocalFiles()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 8
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 10
    invoke-virtual {v0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryAllModifiedLocalFiles()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :catchall_e
    move-exception v1

    .line 16
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    .line 17
    throw v1
.end method

.method private queryAllSyncFiles()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 8
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 10
    invoke-virtual {v0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryAllLocalFiles()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :catchall_e
    move-exception v1

    .line 16
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    .line 17
    throw v1
.end method

.method private queryCloudFilePathByCloudFileId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 8
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 10
    invoke-virtual {v0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryCloudFilePathByCloudFileId(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    .line 17
    throw p1
.end method

.method private queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 8
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 10
    invoke-virtual {v0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    .line 17
    throw p1
.end method

.method private queryGroupId(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 8
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryGroupId(Ljava/lang/String;I)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    .line 17
    throw p1
.end method

.method private queryLatestCountFiles(IZ)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 8
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryLatestCountFiles(IZ)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    .line 17
    throw p1
.end method

.method private queryLocalFilesByAncestorId(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    .line 6
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 8
    invoke-virtual {v0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryLocalFilesByAncestorId(Ljava/lang/String;)Ljava/util/List;

    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :catchall_c
    move-exception p1

    .line 14
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    .line 15
    throw p1
.end method

.method private queryParentInfoFromRoot(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/FolderParentInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 8
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 10
    invoke-virtual {v0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryFolderParentInfo(Ljava/lang/String;)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    .line 17
    throw p1
.end method

.method private queryTotalFileCountByParentId(Ljava/lang/String;)I
    .registers 3

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 8
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 10
    invoke-virtual {v0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileCountByParentId(Ljava/lang/String;)I

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    .line 17
    throw p1
.end method

.method private queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    .line 6
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 8
    invoke-virtual {v0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :catchall_c
    move-exception p1

    .line 14
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    .line 15
    throw p1
.end method

.method private queryTotalFileInfoByGroupId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 8
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 10
    invoke-virtual {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByGroupId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    .line 17
    throw p1
.end method

.method private queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 8
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 10
    invoke-virtual {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    .line 17
    throw p1
.end method

.method private queryTotalFileInfoByTransferId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 3

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 8
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 10
    invoke-virtual {v0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByTransferId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    .line 17
    throw p1
.end method

.method private removeSyncDataChangedListener(Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V
    .registers 3

    .line 1
    if-eqz p1, :cond_7

    .line 3
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mListeners:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_7
    return-void
.end method

.method private searchKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    .line 8
    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->searchKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :catchall_e
    move-exception p1

    .line 16
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    .line 17
    throw p1
.end method

.method private syncConflict(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 14

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 9
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 14
    invoke-virtual {v1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 17
    move-result-object v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_92

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_1b

    .line 21
    :try_start_14
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 23
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 26
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_99

    .line 27
    return v2

    .line 28
    :cond_1b
    :try_start_1b
    iget-object v3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 30
    invoke-virtual {v3, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->clearLocalAndTargetFileInfo(Ljava/lang/String;)J

    .line 33
    move-result-wide v3
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_92

    .line 34
    const-wide/16 v5, 0x0

    .line 36
    cmp-long p2, v3, v5

    .line 38
    if-gtz p2, :cond_2e

    .line 40
    :try_start_27
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 42
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 45
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_99

    .line 46
    return v2

    .line 47
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    .line 50
    move-result-object p2

    .line 51
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_4d

    .line 57
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 60
    move-result-object p2

    .line 61
    sget-object v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 63
    if-ne p2, v3, :cond_43

    .line 65
    sget-object p2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 67
    goto :goto_45

    .line 68
    :cond_43
    sget-object p2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 70
    :goto_45
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    const/4 v3, 0x0

    .line 75
    invoke-static {p1, p2, v1, v3}, Lcom/micloud/midrive/session/helper/SessionHelper;->removeAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    .line 78
    :cond_4d
    invoke-virtual {p4}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p4}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    .line 85
    move-result-object p2

    .line 86
    invoke-static {p1, p2}, Lcom/micloud/midrive/utils/FileSystemUtils;->getUniquePathIfFileExisted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    const/16 v1, 0x2f

    .line 92
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 95
    move-result v1

    .line 96
    const/4 v3, 0x1

    .line 97
    add-int/2addr v1, v3

    .line 98
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p4, p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->setPath(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p4, v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->setName(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 111
    move-result-wide v7

    .line 112
    invoke-virtual {p4, v7, v8}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->setModifyTime(J)V

    .line 115
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 117
    invoke-virtual {v1, p3, p4}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->insertLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J

    .line 120
    move-result-wide p3
    :try_end_78
    .catchall {:try_start_2e .. :try_end_78} :catchall_92

    .line 121
    cmp-long p3, p3, v5

    .line 123
    if-gtz p3, :cond_83

    .line 125
    :try_start_7c
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 127
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 130
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_99

    .line 131
    return v2

    .line 132
    :cond_83
    :try_start_83
    invoke-static {p1, p2}, Lcom/micloud/midrive/utils/DiskFileOperator;->move(Ljava/lang/String;Ljava/lang/String;)Z

    .line 135
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 137
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_8b
    .catchall {:try_start_83 .. :try_end_8b} :catchall_92

    .line 140
    :try_start_8b
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 142
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 145
    monitor-exit v0

    .line 146
    return v3

    .line 147
    :catchall_92
    move-exception p1

    .line 148
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 150
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 153
    throw p1

    .line 154
    :catchall_99
    move-exception p1

    .line 155
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_8b .. :try_end_9b} :catchall_99

    .line 156
    throw p1
.end method

.method private syncDown(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z
    .registers 11

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 9
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 14
    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 17
    move-result-object v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_4d

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_1b

    .line 21
    :try_start_14
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 23
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 26
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_54

    .line 27
    return v2

    .line 28
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 30
    invoke-virtual {v1, p1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J

    .line 33
    move-result-wide v3
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_4d

    .line 34
    const-wide/16 v5, 0x0

    .line 36
    cmp-long p2, v3, v5

    .line 38
    if-gtz p2, :cond_2e

    .line 40
    :try_start_27
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 42
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 45
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_54

    .line 46
    return v2

    .line 47
    :cond_2e
    :try_start_2e
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {p2, p1, p3, v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateTargetInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)J

    .line 53
    move-result-wide p1
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_4d

    .line 54
    cmp-long p1, p1, v5

    .line 56
    if-gtz p1, :cond_40

    .line 58
    :try_start_39
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 60
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 63
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_54

    .line 64
    return v2

    .line 65
    :cond_40
    :try_start_40
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 67
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_4d

    .line 70
    const/4 p1, 0x1

    .line 71
    :try_start_46
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 73
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 76
    monitor-exit v0

    .line 77
    return p1

    .line 78
    :catchall_4d
    move-exception p1

    .line 79
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 81
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 84
    throw p1

    .line 85
    :catchall_54
    move-exception p1

    .line 86
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_46 .. :try_end_56} :catchall_54

    .line 87
    throw p1
.end method

.method private syncUp(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z
    .registers 8

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 9
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 14
    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 17
    move-result-object v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_3c

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_1b

    .line 21
    :try_start_14
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 23
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 26
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_43

    .line 27
    return v2

    .line 28
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v1, p1, p2, v3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateTargetInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)J

    .line 34
    move-result-wide p1
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_3c

    .line 35
    const-wide/16 v3, 0x0

    .line 37
    cmp-long p1, p1, v3

    .line 39
    if-gtz p1, :cond_2f

    .line 41
    :try_start_28
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 43
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 46
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_43

    .line 47
    return v2

    .line 48
    :cond_2f
    :try_start_2f
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 50
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_3c

    .line 53
    const/4 p1, 0x1

    .line 54
    :try_start_35
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 56
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 59
    monitor-exit v0

    .line 60
    return p1

    .line 61
    :catchall_3c
    move-exception p1

    .line 62
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 64
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 67
    throw p1

    .line 68
    :catchall_43
    move-exception p1

    .line 69
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_43

    .line 70
    throw p1
.end method

.method private tryUpdateSyncedStatus()Z
    .registers 6

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 9
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 14
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateInfoWhenSyncComplete()J

    .line 17
    move-result-wide v1

    .line 18
    iget-object v3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 20
    invoke-virtual {v3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_26

    .line 23
    const-wide/16 v3, 0x0

    .line 25
    cmp-long v1, v1, v3

    .line 27
    if-lez v1, :cond_1e

    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 v1, 0x0

    .line 32
    :goto_1f
    :try_start_1f
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 34
    invoke-virtual {v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 37
    monitor-exit v0

    .line 38
    return v1

    .line 39
    :catchall_26
    move-exception v1

    .line 40
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 42
    invoke-virtual {v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 45
    throw v1

    .line 46
    :catchall_2d
    move-exception v1

    .line 47
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    .line 48
    throw v1
.end method

.method private txChangeSyncingToTransfer(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z
    .registers 12

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 9
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 14
    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 17
    move-result-object v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_6d

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_1b

    .line 21
    :try_start_14
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 23
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 26
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_74

    .line 27
    return v2

    .line 28
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v1, p1, p2, v3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateTargetInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)J

    .line 34
    move-result-wide v3
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_6d

    .line 35
    const-wide/16 v5, 0x0

    .line 37
    cmp-long p2, v3, v5

    .line 39
    if-gtz p2, :cond_2f

    .line 41
    :try_start_28
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 43
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 46
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_74

    .line 47
    return v2

    .line 48
    :cond_2f
    :try_start_2f
    new-instance p2, Ljava/util/HashMap;

    .line 50
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 53
    const-string v1, "local_status"

    .line 55
    sget-object v3, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 57
    if-ne p3, v3, :cond_41

    .line 59
    sget-object p3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 61
    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 64
    move-result-object p3

    .line 65
    goto :goto_47

    .line 66
    :cond_41
    sget-object p3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->UPLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 68
    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 71
    move-result-object p3

    .line 72
    :goto_47
    invoke-virtual {p2, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string p3, "transfer_id"

    .line 77
    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 82
    invoke-virtual {p3, p1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;)J

    .line 85
    move-result-wide p1
    :try_end_55
    .catchall {:try_start_2f .. :try_end_55} :catchall_6d

    .line 86
    cmp-long p1, p1, v5

    .line 88
    if-gtz p1, :cond_60

    .line 90
    :try_start_59
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 92
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 95
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_74

    .line 96
    return v2

    .line 97
    :cond_60
    :try_start_60
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 99
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_6d

    .line 102
    const/4 p1, 0x1

    .line 103
    :try_start_66
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 105
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 108
    monitor-exit v0

    .line 109
    return p1

    .line 110
    :catchall_6d
    move-exception p1

    .line 111
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 113
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 116
    throw p1

    .line 117
    :catchall_74
    move-exception p1

    .line 118
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_74

    .line 119
    throw p1
.end method

.method private txDelete(Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 8

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 9
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 14
    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_1e

    .line 20
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 23
    move-result-object p1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_6f

    .line 24
    :try_start_17
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 26
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 29
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_76

    .line 30
    return-object p1

    .line 31
    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/util/HashMap;

    .line 33
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 36
    const-string v3, "local_status"

    .line 38
    sget-object v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 40
    invoke-virtual {v4}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v3, "local_modify_time"

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    move-result-wide v4

    .line 53
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v3, "transfer_id"

    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 68
    invoke-virtual {v3, p1, v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;)J

    .line 71
    move-result-wide v2

    .line 72
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 74
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V

    .line 77
    const-wide/16 v4, 0x0

    .line 79
    cmp-long p1, v2, v4

    .line 81
    if-gtz p1, :cond_5d

    .line 83
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 86
    move-result-object p1
    :try_end_56
    .catchall {:try_start_1e .. :try_end_56} :catchall_6f

    .line 87
    :try_start_56
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 89
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 92
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_76

    .line 93
    return-object p1

    .line 94
    :cond_5d
    :try_start_5d
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p1, v1}, Lcom/micloud/midrive/session/action/DBOperationResponse;->setTransferId(Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_5d .. :try_end_68} :catchall_6f

    .line 105
    :try_start_68
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 107
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 110
    monitor-exit v0

    .line 111
    return-object p1

    .line 112
    :catchall_6f
    move-exception p1

    .line 113
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 115
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 118
    throw p1

    .line 119
    :catchall_76
    move-exception p1

    .line 120
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_76

    .line 121
    throw p1
.end method

.method private txFileContentChanged(Ljava/lang/String;Ljava/lang/String;J)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 9

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 9
    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_19

    .line 15
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 18
    move-result-object p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_8a

    .line 19
    :try_start_12
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 21
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 24
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_91

    .line 25
    return-object p1

    .line 26
    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 28
    invoke-virtual {v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 31
    new-instance v2, Ljava/util/HashMap;

    .line 33
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 36
    const-string v3, "local_sha1"

    .line 38
    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string p2, "local_file_size"

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    const-string p3, ""

    .line 53
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {v2, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string p2, "local_status"

    .line 65
    sget-object p3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 67
    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 70
    move-result-object p3

    .line 71
    invoke-virtual {v2, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string p2, "local_modify_time"

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    move-result-wide p3

    .line 80
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 83
    move-result-object p3

    .line 84
    invoke-virtual {v2, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string p2, "transfer_id"

    .line 89
    const/4 p3, 0x0

    .line 90
    invoke-virtual {v2, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 95
    invoke-virtual {p2, p1, v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;)J

    .line 98
    move-result-wide p1

    .line 99
    iget-object p3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 101
    invoke-virtual {p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V

    .line 104
    const-wide/16 p3, 0x0

    .line 106
    cmp-long p1, p1, p3

    .line 108
    if-gtz p1, :cond_78

    .line 110
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 113
    move-result-object p1
    :try_end_71
    .catchall {:try_start_19 .. :try_end_71} :catchall_8a

    .line 114
    :try_start_71
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 116
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 119
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_91

    .line 120
    return-object p1

    .line 121
    :cond_78
    :try_start_78
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {p1, p2}, Lcom/micloud/midrive/session/action/DBOperationResponse;->setTransferId(Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_78 .. :try_end_83} :catchall_8a

    .line 132
    :try_start_83
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 134
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 137
    monitor-exit v0

    .line 138
    return-object p1

    .line 139
    :catchall_8a
    move-exception p1

    .line 140
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 142
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 145
    throw p1

    .line 146
    :catchall_91
    move-exception p1

    .line 147
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_83 .. :try_end_93} :catchall_91

    .line 148
    throw p1
.end method

.method private txMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 10

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 9
    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_19

    .line 15
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 18
    move-result-object p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_83

    .line 19
    :try_start_12
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 21
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 24
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_8a

    .line 25
    return-object p1

    .line 26
    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 28
    invoke-virtual {v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 31
    new-instance v2, Ljava/util/HashMap;

    .line 33
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 36
    const-string v3, "local_version"

    .line 38
    invoke-virtual {v2, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance p4, Ljava/util/HashMap;

    .line 43
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 46
    const-string v3, "local_parent_id"

    .line 48
    invoke-virtual {p4, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string p3, "local_file_path"

    .line 53
    invoke-virtual {p4, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string p2, "local_status"

    .line 58
    sget-object p3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 60
    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string p2, "local_modify_time"

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    move-result-wide v3

    .line 73
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string p2, "transfer_id"

    .line 82
    const/4 p3, 0x0

    .line 83
    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 88
    invoke-virtual {p2, p1, v2, p4}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)J

    .line 91
    move-result-wide p1

    .line 92
    iget-object p3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 94
    invoke-virtual {p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V

    .line 97
    const-wide/16 p3, 0x0

    .line 99
    cmp-long p1, p1, p3

    .line 101
    if-gtz p1, :cond_71

    .line 103
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 106
    move-result-object p1
    :try_end_6a
    .catchall {:try_start_19 .. :try_end_6a} :catchall_83

    .line 107
    :try_start_6a
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 109
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 112
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_8a

    .line 113
    return-object p1

    .line 114
    :cond_71
    :try_start_71
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p1, p2}, Lcom/micloud/midrive/session/action/DBOperationResponse;->setTransferId(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_83

    .line 125
    :try_start_7c
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 127
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 130
    monitor-exit v0

    .line 131
    return-object p1

    .line 132
    :catchall_83
    move-exception p1

    .line 133
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 135
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 138
    throw p1

    .line 139
    :catchall_8a
    move-exception p1

    .line 140
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_7c .. :try_end_8c} :catchall_8a

    .line 141
    throw p1
.end method

.method private txParentMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 9

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 9
    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_19

    .line 15
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 18
    move-result-object p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_7e

    .line 19
    :try_start_12
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 21
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 24
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_85

    .line 25
    return-object p1

    .line 26
    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 28
    invoke-virtual {v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 31
    new-instance v2, Ljava/util/HashMap;

    .line 33
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 36
    const-string v3, "local_version"

    .line 38
    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance p3, Ljava/util/HashMap;

    .line 43
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 46
    const-string v3, "local_file_path"

    .line 48
    invoke-virtual {p3, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string p2, "local_modify_time"

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    move-result-wide v3

    .line 57
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {p3, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string p2, "local_status"

    .line 66
    sget-object v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->INIT:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 68
    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {p3, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string p2, "transfer_id"

    .line 77
    const/4 v3, 0x0

    .line 78
    invoke-virtual {p3, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 83
    invoke-virtual {p2, p1, v2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)J

    .line 86
    move-result-wide p1

    .line 87
    iget-object p3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 89
    invoke-virtual {p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V

    .line 92
    const-wide/16 v2, 0x0

    .line 94
    cmp-long p1, p1, v2

    .line 96
    if-gtz p1, :cond_6c

    .line 98
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 101
    move-result-object p1
    :try_end_65
    .catchall {:try_start_19 .. :try_end_65} :catchall_7e

    .line 102
    :try_start_65
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 104
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 107
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_65 .. :try_end_6b} :catchall_85

    .line 108
    return-object p1

    .line 109
    :cond_6c
    :try_start_6c
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Lcom/micloud/midrive/session/action/DBOperationResponse;->setTransferId(Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_7e

    .line 120
    :try_start_77
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 122
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 125
    monitor-exit v0

    .line 126
    return-object p1

    .line 127
    :catchall_7e
    move-exception p1

    .line 128
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 130
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 133
    throw p1

    .line 134
    :catchall_85
    move-exception p1

    .line 135
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_77 .. :try_end_87} :catchall_85

    .line 136
    throw p1
.end method

.method private txRename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 10

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 9
    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_19

    .line 15
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 18
    move-result-object p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_83

    .line 19
    :try_start_12
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 21
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 24
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_8a

    .line 25
    return-object p1

    .line 26
    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 28
    invoke-virtual {v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 31
    new-instance v2, Ljava/util/HashMap;

    .line 33
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 36
    const-string v3, "local_version"

    .line 38
    invoke-virtual {v2, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance p4, Ljava/util/HashMap;

    .line 43
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 46
    const-string v3, "local_file_name"

    .line 48
    invoke-virtual {p4, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string p3, "local_file_path"

    .line 53
    invoke-virtual {p4, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string p2, "local_status"

    .line 58
    sget-object p3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    .line 60
    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string p2, "local_modify_time"

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    move-result-wide v3

    .line 73
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string p2, "transfer_id"

    .line 82
    const/4 p3, 0x0

    .line 83
    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 88
    invoke-virtual {p2, p1, v2, p4}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)J

    .line 91
    move-result-wide p1

    .line 92
    iget-object p3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 94
    invoke-virtual {p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V

    .line 97
    const-wide/16 p3, 0x0

    .line 99
    cmp-long p1, p1, p3

    .line 101
    if-gtz p1, :cond_71

    .line 103
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 106
    move-result-object p1
    :try_end_6a
    .catchall {:try_start_19 .. :try_end_6a} :catchall_83

    .line 107
    :try_start_6a
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 109
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 112
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_8a

    .line 113
    return-object p1

    .line 114
    :cond_71
    :try_start_71
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p1, p2}, Lcom/micloud/midrive/session/action/DBOperationResponse;->setTransferId(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_83

    .line 125
    :try_start_7c
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 127
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 130
    monitor-exit v0

    .line 131
    return-object p1

    .line 132
    :catchall_83
    move-exception p1

    .line 133
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 135
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 138
    throw p1

    .line 139
    :catchall_8a
    move-exception p1

    .line 140
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_7c .. :try_end_8c} :catchall_8a

    .line 141
    throw p1
.end method

.method private txUpdateDownloadFinishedInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 6

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 6
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 9
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 14
    invoke-virtual {v1, p1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateDownloadFinishedInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J

    .line 17
    move-result-wide p1

    .line 18
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 20
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_26

    .line 23
    const-wide/16 v1, 0x0

    .line 25
    cmp-long p1, p1, v1

    .line 27
    if-lez p1, :cond_1e

    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    :goto_1f
    :try_start_1f
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 34
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 37
    monitor-exit v0

    .line 38
    return p1

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 42
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 45
    throw p1

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    .line 48
    throw p1
.end method

.method private txUpdateUploadFinishedInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 6
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 9
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 14
    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByTransferId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    .line 20
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 22
    invoke-virtual {v2, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    .line 25
    move-result-object p2

    .line 26
    iget-object p2, p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    .line 28
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 30
    invoke-virtual {v2, p1, p2, v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateUploadFinishedInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncCloudFileInfo;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J

    .line 33
    move-result-wide p1

    .line 34
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 36
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_36

    .line 39
    const-wide/16 v1, 0x0

    .line 41
    cmp-long p1, p1, v1

    .line 43
    if-lez p1, :cond_2e

    .line 45
    const/4 p1, 0x1

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    const/4 p1, 0x0

    .line 48
    :goto_2f
    :try_start_2f
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 50
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 53
    monitor-exit v0

    .line 54
    return p1

    .line 55
    :catchall_36
    move-exception p1

    .line 56
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 58
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 61
    throw p1

    .line 62
    :catchall_3d
    move-exception p1

    .line 63
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_3d

    .line 64
    throw p1
.end method

.method private txUploadFile(Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Ljava/lang/String;
    .registers 8

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 7
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 9
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 22
    invoke-virtual {v2, v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->insertLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J

    .line 25
    move-result-wide v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_33

    .line 26
    const-wide/16 v4, 0x0

    .line 28
    cmp-long p1, v2, v4

    .line 30
    if-gtz p1, :cond_27

    .line 32
    const/4 p1, 0x0

    .line 33
    :try_start_20
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 35
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 38
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_3a

    .line 39
    return-object p1

    .line 40
    :cond_27
    :try_start_27
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 42
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_33

    .line 45
    :try_start_2c
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 47
    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 50
    monitor-exit v0

    .line 51
    return-object v1

    .line 52
    :catchall_33
    move-exception p1

    .line 53
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 55
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 58
    throw p1

    .line 59
    :catchall_3a
    move-exception p1

    .line 60
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_3a

    .line 61
    throw p1
.end method

.method private updateLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 6

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 6
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 9
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 14
    invoke-virtual {v1, p1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J

    .line 17
    move-result-wide p1

    .line 18
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 20
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_26

    .line 23
    const-wide/16 v1, 0x0

    .line 25
    cmp-long p1, p1, v1

    .line 27
    if-lez p1, :cond_1e

    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    :goto_1f
    :try_start_1f
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 34
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 37
    monitor-exit v0

    .line 38
    return p1

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 42
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 45
    throw p1

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    .line 48
    throw p1
.end method

.method private updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 4
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide p1

    .line 5
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_26

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    .line 6
    :goto_1f
    :try_start_1f
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_26
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 7
    throw p1

    :catchall_2d
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method private updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 9
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    .line 10
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 11
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1, p2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)J

    move-result-wide p1

    .line 13
    iget-object p3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_26

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    .line 14
    :goto_1f
    :try_start_1f
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_26
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 15
    throw p1

    :catchall_2d
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method private updateLocalStatus(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;Ljava/lang/Long;)Z
    .registers 7

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 6
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 9
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 14
    invoke-virtual {v1, p1, p2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalStatus(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;Ljava/lang/Long;)J

    .line 17
    move-result-wide p1

    .line 18
    iget-object p3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 20
    invoke-virtual {p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_26

    .line 23
    const-wide/16 v1, 0x0

    .line 25
    cmp-long p1, p1, v1

    .line 27
    if-lez p1, :cond_1e

    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    :goto_1f
    :try_start_1f
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 34
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 37
    monitor-exit v0

    .line 38
    return p1

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 42
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 45
    throw p1

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    .line 48
    throw p1
.end method

.method private updateTargetInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)Z
    .registers 7

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 6
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 9
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 14
    invoke-virtual {v1, p1, p2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateTargetInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)J

    .line 17
    move-result-wide p1

    .line 18
    iget-object p3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 20
    invoke-virtual {p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_26

    .line 23
    const-wide/16 v1, 0x0

    .line 25
    cmp-long p1, p1, v1

    .line 27
    if-lez p1, :cond_1e

    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    :goto_1f
    :try_start_1f
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 34
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 37
    monitor-exit v0

    .line 38
    return p1

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 42
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 45
    throw p1

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    .line 48
    throw p1
.end method

.method private updateTargetRevision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
    .registers 7

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 6
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 9
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 14
    invoke-virtual {v1, p1, p2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateTargetRevision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)J

    .line 17
    move-result-wide p1

    .line 18
    iget-object p3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 20
    invoke-virtual {p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_26

    .line 23
    const-wide/16 v1, 0x0

    .line 25
    cmp-long p1, p1, v1

    .line 27
    if-lez p1, :cond_1e

    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    :goto_1f
    :try_start_1f
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 34
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 37
    monitor-exit v0

    .line 38
    return p1

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 42
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 45
    throw p1

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    .line 48
    throw p1
.end method

.method private updateTransferId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
    .registers 7

    .line 1
    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 6
    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    .line 9
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    .line 12
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 14
    invoke-virtual {v1, p1, p2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateTransferId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)J

    .line 17
    move-result-wide p1

    .line 18
    iget-object p3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 20
    invoke-virtual {p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_26

    .line 23
    const-wide/16 v1, 0x0

    .line 25
    cmp-long p1, p1, v1

    .line 27
    if-lez p1, :cond_1e

    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p1, 0x0

    .line 32
    :goto_1f
    :try_start_1f
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 34
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 37
    monitor-exit v0

    .line 38
    return p1

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    .line 42
    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    .line 45
    throw p1

    .line 46
    :catchall_2d
    move-exception p1

    .line 47
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    .line 48
    throw p1
.end method
