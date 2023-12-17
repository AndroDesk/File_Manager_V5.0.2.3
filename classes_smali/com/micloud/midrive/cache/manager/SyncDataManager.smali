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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-direct {v0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mHandler:Landroid/os/Handler;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mListeners:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->lambda$postSyncDataChangedMsg$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/util/List;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->postSyncDataChangedMsg()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1100(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryCloudFilePathByCloudFileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;I)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryGroupId(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryTotalFileInfoByGroupId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryTotalFileCountByParentId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1800(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryTotalFileInfoByTransferId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->insertLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2000(Lcom/micloud/midrive/cache/manager/SyncDataManager;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryAllModifiedLocalFiles()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryLocalFilesByAncestorId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->searchKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->addSyncDataChangedListener(Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/micloud/midrive/cache/manager/SyncDataManager;Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->removeSyncDataChangedListener(Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/micloud/midrive/cache/manager/SyncDataManager;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->clearData(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/micloud/midrive/cache/manager/SyncDataManager;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryAllSyncFiles()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txUpdateDownloadFinishedInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2800(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txUpdateUploadFinishedInfo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2900(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txRename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->firstDownload(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3000(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3100(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txParentMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txDelete(Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;J)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txFileContentChanged(Ljava/lang/String;Ljava/lang/String;J)Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3400(Lcom/micloud/midrive/cache/manager/SyncDataManager;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txUploadFile(Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3500(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txChangeSyncingToTransfer(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3600(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->syncDown(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3700(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->syncUp(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3800(Lcom/micloud/midrive/cache/manager/SyncDataManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->syncConflict(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3900(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->clearInvalidLocalFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->firstUpload(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$4000(Lcom/micloud/midrive/cache/manager/SyncDataManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->tryUpdateSyncedStatus()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$4100(Lcom/micloud/midrive/cache/manager/SyncDataManager;Landroid/content/Context;Ljava/util/List;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkIfFolderChangeAndSync(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$4200(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->insertLocalAndTargetFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$4300(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryParentInfoFromRoot(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$4400(Lcom/micloud/midrive/cache/manager/SyncDataManager;)I
    .registers 1

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryAllFileCount()I

    move-result p0

    return p0
.end method

.method public static synthetic access$4500(Lcom/micloud/midrive/cache/manager/SyncDataManager;IZ)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryLatestCountFiles(IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->updateLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->updateTargetInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;Ljava/lang/Long;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->updateLocalStatus(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->updateTargetRevision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Lcom/micloud/midrive/cache/manager/SyncDataManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->updateTransferId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method private addSyncDataChangedListener(Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method private checkAndClearIfAccountChangedLocked()V
    .registers 3

    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    if-nez v0, :cond_11

    return-void

    :cond_11
    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, v0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateAccount(Landroid/accounts/Account;)V

    goto :goto_29

    :cond_19
    invoke-virtual {v0, v1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->clearData()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, v0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateAccount(Landroid/accounts/Account;)V

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

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->type:Ljava/lang/String;

    const-string v3, "folder"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    if-nez v3, :cond_28

    goto :goto_5

    :cond_28
    iget-object v4, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    iget-object v3, v3, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->parentId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v2, v2, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3e
    const/4 v0, 0x1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->insertOrUpdateCloudFiles(Ljava/util/List;)Z

    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;->id:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryLocalFilesByAncestorId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_50
    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    iget-object v3, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    if-eqz v3, :cond_50

    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_50

    iget-object v3, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/micloud/midrive/utils/DiskFileOperator;->ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->queryCloudFilePathByCloudFileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    iget-object v6, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    invoke-virtual {v6}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileId:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    iget-wide v8, v8, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->localVersion:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v4, v7}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->txParentMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object v6

    iget-boolean v7, v6, Lcom/micloud/midrive/session/action/DBOperationResponse;->isSuccess:Z

    if-eqz v7, :cond_50

    invoke-virtual {v6}, Lcom/micloud/midrive/session/action/DBOperationResponse;->getTransferId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d0

    invoke-virtual {v2}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object v2

    sget-object v7, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    if-ne v2, v7, :cond_c6

    sget-object v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    goto :goto_c8

    :cond_c6
    sget-object v2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    :goto_c8
    invoke-virtual {v6}, Lcom/micloud/midrive/session/action/DBOperationResponse;->getTransferId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p1, v2, v6, v7}, Lcom/micloud/midrive/session/helper/SessionHelper;->removeAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    :cond_d0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-static {v3, v4}, Lcom/micloud/midrive/utils/DiskFileOperator;->move(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_50

    :cond_db
    invoke-static {}, Lcom/micloud/midrive/utils/DiskFileOperator;->clearDownloadEmptyFolders()Z

    goto/16 :goto_5

    :cond_e0
    return v0
.end method

.method private clearData(Landroid/content/Context;)V
    .registers 4

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->clearData()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V

    invoke-static {}, Lcom/micloud/midrive/utils/DiskFileOperator;->clearAllDownloadFiles()Z

    invoke-static {p1}, Lcom/micloud/midrive/helper/SyncConfigHelper;->clearSyncToken(Landroid/content/Context;)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1f

    :try_start_18
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p1

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    throw p1

    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_26

    throw p1
.end method

.method private clearInvalidLocalFile(Ljava/lang/String;)Z
    .registers 9

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_3b

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    :try_start_14
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_42

    return v2

    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->clearAllLocalFilePart(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_3b

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gtz p1, :cond_2e

    :try_start_27
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_42

    return v2

    :cond_2e
    :try_start_2e
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_3b

    const/4 p1, 0x1

    :try_start_34
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_3b
    move-exception p1

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    throw p1

    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_34 .. :try_end_44} :catchall_42

    throw p1
.end method

.method private firstDownload(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z
    .registers 7

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1, p2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->firstDownloadFile(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)J

    move-result-wide p1

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

    throw p1

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method private firstUpload(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/lang/String;)Z
    .registers 7

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1, p2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->firstUploadFile(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Ljava/lang/String;)J

    move-result-wide p1

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

    throw p1

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public static getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;
    .registers 2

    new-instance v0, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;

    sget-object v1, Lcom/micloud/midrive/cache/manager/SyncDataManager;->sInstance:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-direct {v0, v1}, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataManagerProxy;-><init>(Lcom/micloud/midrive/cache/manager/SyncDataManager;)V

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->sInstance:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/micloud/midrive/cache/manager/SyncDataManager;->sInstance:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    invoke-direct {v1, p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/micloud/midrive/cache/manager/SyncDataManager;->sInstance:Lcom/micloud/midrive/cache/manager/SyncDataManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    return-void
.end method

.method private insertLocalAndTargetFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)Z
    .registers 7

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->insertLocalAndTargetFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/String;)J

    move-result-wide p1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_2c

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-gtz p1, :cond_1f

    const/4 p1, 0x0

    :try_start_18
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_33

    return p1

    :cond_1f
    :try_start_1f
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2c

    const/4 p1, 0x1

    :try_start_25
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_2c
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    throw p1

    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_33

    throw p1
.end method

.method private insertLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 6

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->insertLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J

    move-result-wide p1

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

    throw p1

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

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

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v2, v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->insertOrUpdateCloudFileInfo(Lcom/micloud/midrive/infos/SyncCloudFileInfo;)J

    goto :goto_f

    :cond_21
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2e

    const/4 p1, 0x1

    :try_start_27
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_2e
    move-exception p1

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    throw p1

    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_35

    throw p1
.end method

.method private synthetic lambda$postSyncDataChangedMsg$0()V
    .registers 3

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;

    invoke-interface {v1}, Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;->onSyncDataChanged()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private postSyncDataChangedMsg()V
    .registers 4

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/activity/b;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Landroidx/activity/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private queryAllFileCount()I
    .registers 3

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryAllFileCount()I

    move-result v0

    return v0

    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

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

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryAllModifiedLocalFiles()Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

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

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v0}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryAllLocalFiles()Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method private queryCloudFilePathByCloudFileId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryCloudFilePathByCloudFileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method private queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryCloudFilePathByParentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

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

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryGroupId(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

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

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryLatestCountFiles(IZ)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

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

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryLocalFilesByAncestorId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

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

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryFolderParentInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method private queryTotalFileCountByParentId(Ljava/lang/String;)I
    .registers 3

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileCountByParentId(Ljava/lang/String;)I

    move-result p1

    return p1

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method private queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object p1

    return-object p1

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

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

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByGroupId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

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

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByParentId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method private queryTotalFileInfoByTransferId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;
    .registers 3

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v0, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByTransferId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object p1

    return-object p1

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method private removeSyncDataChangedListener(Lcom/micloud/midrive/cache/manager/SyncDataManager$SyncDataChangedListener;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

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

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_e

    iget-object v0, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->searchKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method private syncConflict(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 14

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_92

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    :try_start_14
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_99

    return v2

    :cond_1b
    :try_start_1b
    iget-object v3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v3, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->clearLocalAndTargetFileInfo(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_92

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-gtz p2, :cond_2e

    :try_start_27
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_99

    return v2

    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4d

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getStatus()Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    move-result-object p2

    sget-object v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    if-ne p2, v3, :cond_43

    sget-object p2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    goto :goto_45

    :cond_43
    sget-object p2, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    :goto_45
    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {p1, p2, v1, v3}, Lcom/micloud/midrive/session/helper/SessionHelper;->removeAndNotify(Landroid/content/Context;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;Lcom/micloud/midrive/session/helper/ActionResultCallback;)Landroid/os/AsyncTask;

    :cond_4d
    invoke-virtual {p4}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->getParentId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/micloud/midrive/utils/FileSystemUtils;->getUniquePathIfFileExisted(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, p2}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->setPath(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->setName(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {p4, v7, v8}, Lcom/micloud/midrive/infos/SyncLocalFileInfo;->setModifyTime(J)V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p3, p4}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->insertLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J

    move-result-wide p3
    :try_end_78
    .catchall {:try_start_2e .. :try_end_78} :catchall_92

    cmp-long p3, p3, v5

    if-gtz p3, :cond_83

    :try_start_7c
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_99

    return v2

    :cond_83
    :try_start_83
    invoke-static {p1, p2}, Lcom/micloud/midrive/utils/DiskFileOperator;->move(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_8b
    .catchall {:try_start_83 .. :try_end_8b} :catchall_92

    :try_start_8b
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0

    return v3

    :catchall_92
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    throw p1

    :catchall_99
    move-exception p1

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_8b .. :try_end_9b} :catchall_99

    throw p1
.end method

.method private syncDown(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z
    .registers 11

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_4d

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    :try_start_14
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_54

    return v2

    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J

    move-result-wide v3
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_4d

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-gtz p2, :cond_2e

    :try_start_27
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_54

    return v2

    :cond_2e
    :try_start_2e
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, p3, v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateTargetInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)J

    move-result-wide p1
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_4d

    cmp-long p1, p1, v5

    if-gtz p1, :cond_40

    :try_start_39
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_54

    return v2

    :cond_40
    :try_start_40
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_4d

    const/4 p1, 0x1

    :try_start_46
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_4d
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    throw p1

    :catchall_54
    move-exception p1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_46 .. :try_end_56} :catchall_54

    throw p1
.end method

.method private syncUp(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;)Z
    .registers 8

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_3c

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    :try_start_14
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_43

    return v2

    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateTargetInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)J

    move-result-wide p1
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_3c

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-gtz p1, :cond_2f

    :try_start_28
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_43

    return v2

    :cond_2f
    :try_start_2f
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_3c

    const/4 p1, 0x1

    :try_start_35
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_3c
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    throw p1

    :catchall_43
    move-exception p1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_43

    throw p1
.end method

.method private tryUpdateSyncedStatus()Z
    .registers 6

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateInfoWhenSyncComplete()J

    move-result-wide v1

    iget-object v3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_26

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    :try_start_1f
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0

    return v1

    :catchall_26
    move-exception v1

    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    throw v1

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private txChangeSyncingToTransfer(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;Ljava/lang/String;)Z
    .registers 12

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_6d

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    :try_start_14
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_74

    return v2

    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateTargetInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)J

    move-result-wide v3
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_6d

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-gtz p2, :cond_2f

    :try_start_28
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_74

    return v2

    :cond_2f
    :try_start_2f
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "local_status"

    sget-object v3, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    if-ne p3, v3, :cond_41

    sget-object p3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DOWNLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_47

    :cond_41
    sget-object p3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->UPLOAD:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_47
    invoke-virtual {p2, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "transfer_id"

    invoke-virtual {p2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p3, p1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide p1
    :try_end_55
    .catchall {:try_start_2f .. :try_end_55} :catchall_6d

    cmp-long p1, p1, v5

    if-gtz p1, :cond_60

    :try_start_59
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_74

    return v2

    :cond_60
    :try_start_60
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_6d

    const/4 p1, 0x1

    :try_start_66
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_6d
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    throw p1

    :catchall_74
    move-exception p1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_74

    throw p1
.end method

.method private txDelete(Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 8

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v1

    if-nez v1, :cond_1e

    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_6f

    :try_start_17
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_76

    return-object p1

    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "local_status"

    sget-object v4, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->DELETE:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v4}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "local_modify_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "transfer_id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v3, p1, v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide v2

    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_5d

    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1
    :try_end_56
    .catchall {:try_start_1e .. :try_end_56} :catchall_6f

    :try_start_56
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_76

    return-object p1

    :cond_5d
    :try_start_5d
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/micloud/midrive/session/action/DBOperationResponse;->setTransferId(Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_5d .. :try_end_68} :catchall_6f

    :try_start_68
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0

    return-object p1

    :catchall_6f
    move-exception p1

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    throw p1

    :catchall_76
    move-exception p1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_68 .. :try_end_78} :catchall_76

    throw p1
.end method

.method private txFileContentChanged(Ljava/lang/String;Ljava/lang/String;J)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 9

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_8a

    :try_start_12
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_91

    return-object p1

    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "local_sha1"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "local_file_size"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "local_status"

    sget-object p3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "local_modify_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "transfer_id"

    const/4 p3, 0x0

    invoke-virtual {v2, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2, p1, v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-gtz p1, :cond_78

    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1
    :try_end_71
    .catchall {:try_start_19 .. :try_end_71} :catchall_8a

    :try_start_71
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_91

    return-object p1

    :cond_78
    :try_start_78
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/micloud/midrive/session/action/DBOperationResponse;->setTransferId(Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_78 .. :try_end_83} :catchall_8a

    :try_start_83
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0

    return-object p1

    :catchall_8a
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    throw p1

    :catchall_91
    move-exception p1

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_83 .. :try_end_93} :catchall_91

    throw p1
.end method

.method private txMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 10

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_83

    :try_start_12
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_8a

    return-object p1

    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "local_version"

    invoke-virtual {v2, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const-string v3, "local_parent_id"

    invoke-virtual {p4, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "local_file_path"

    invoke-virtual {p4, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "local_status"

    sget-object p3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "local_modify_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "transfer_id"

    const/4 p3, 0x0

    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2, p1, v2, p4}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-gtz p1, :cond_71

    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1
    :try_end_6a
    .catchall {:try_start_19 .. :try_end_6a} :catchall_83

    :try_start_6a
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_8a

    return-object p1

    :cond_71
    :try_start_71
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/micloud/midrive/session/action/DBOperationResponse;->setTransferId(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_83

    :try_start_7c
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0

    return-object p1

    :catchall_83
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    throw p1

    :catchall_8a
    move-exception p1

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_7c .. :try_end_8c} :catchall_8a

    throw p1
.end method

.method private txParentMove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 9

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_7e

    :try_start_12
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_85

    return-object p1

    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "local_version"

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v3, "local_file_path"

    invoke-virtual {p3, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "local_modify_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "local_status"

    sget-object v3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->INIT:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {v3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "transfer_id"

    const/4 v3, 0x0

    invoke-virtual {p3, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2, p1, v2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-gtz p1, :cond_6c

    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1
    :try_end_65
    .catchall {:try_start_19 .. :try_end_65} :catchall_7e

    :try_start_65
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_65 .. :try_end_6b} :catchall_85

    return-object p1

    :cond_6c
    :try_start_6c
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/micloud/midrive/session/action/DBOperationResponse;->setTransferId(Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_7e

    :try_start_77
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0

    return-object p1

    :catchall_7e
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    throw p1

    :catchall_85
    move-exception p1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_77 .. :try_end_87} :catchall_85

    throw p1
.end method

.method private txRename(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/DBOperationResponse;
    .registers 10

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByLocalFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_83

    :try_start_12
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_8a

    return-object p1

    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "local_version"

    invoke-virtual {v2, v3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const-string v3, "local_file_name"

    invoke-virtual {p4, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "local_file_path"

    invoke-virtual {p4, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "local_status"

    sget-object p3, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->SYNCING:Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;

    invoke-virtual {p3}, Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "local_modify_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "transfer_id"

    const/4 p3, 0x0

    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2, p1, v2, p4}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-gtz p1, :cond_71

    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildFailedResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1
    :try_end_6a
    .catchall {:try_start_19 .. :try_end_6a} :catchall_83

    :try_start_6a
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_8a

    return-object p1

    :cond_71
    :try_start_71
    invoke-static {}, Lcom/micloud/midrive/session/action/DBOperationResponse;->buildSuccessfulResponse()Lcom/micloud/midrive/session/action/DBOperationResponse;

    move-result-object p1

    invoke-virtual {v1}, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->getTransferId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/micloud/midrive/session/action/DBOperationResponse;->setTransferId(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_83

    :try_start_7c
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0

    return-object p1

    :catchall_83
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    throw p1

    :catchall_8a
    move-exception p1

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_7c .. :try_end_8c} :catchall_8a

    throw p1
.end method

.method private txUpdateDownloadFinishedInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 6

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateDownloadFinishedInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J

    move-result-wide p1

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

    throw p1

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method private txUpdateUploadFinishedInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByTransferId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->localFileInfo:Lcom/micloud/midrive/infos/SyncLocalFileInfo;

    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v2, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->queryTotalFileInfoByFileId(Ljava/lang/String;)Lcom/micloud/midrive/infos/SyncTotalFileInfo;

    move-result-object p2

    iget-object p2, p2, Lcom/micloud/midrive/infos/SyncTotalFileInfo;->cloudFileInfo:Lcom/micloud/midrive/infos/SyncCloudFileInfo;

    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v2, p1, p2, v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateUploadFinishedInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncCloudFileInfo;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J

    move-result-wide p1

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_36

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    :try_start_2f
    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :catchall_36
    move-exception p1

    iget-object p2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    throw p1

    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method private txUploadFile(Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Ljava/lang/String;
    .registers 8

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v2, v1, p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->insertLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J

    move-result-wide v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_33

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_27

    const/4 p1, 0x0

    :try_start_20
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_3a

    return-object p1

    :cond_27
    :try_start_27
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->setTransactionSuccessful()V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_33

    :try_start_2c
    iget-object p1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {p1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    monitor-exit v0

    return-object v1

    :catchall_33
    move-exception p1

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->endTransaction()V

    throw p1

    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method private updateLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)Z
    .registers 6

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncLocalFileInfo;)J

    move-result-wide p1

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

    throw p1

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

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

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1, p2}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;)J

    move-result-wide p1

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

    throw p1

    :catchall_2d
    move-exception p1

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

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1, p2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalFileInfoByLocalId(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)J

    move-result-wide p1

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

    throw p1

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method private updateLocalStatus(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;Ljava/lang/Long;)Z
    .registers 7

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1, p2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateLocalStatus(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTotalFileInfo$LocalStatus;Ljava/lang/Long;)J

    move-result-wide p1

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

    throw p1

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method private updateTargetInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)Z
    .registers 7

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1, p2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateTargetInfo(Ljava/lang/String;Lcom/micloud/midrive/infos/SyncTargetInfo;Ljava/lang/Long;)J

    move-result-wide p1

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

    throw p1

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method private updateTargetRevision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
    .registers 7

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1, p2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateTargetRevision(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide p1

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

    throw p1

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method private updateTransferId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
    .registers 7

    const-class v0, Lcom/micloud/midrive/cache/manager/SyncDataManager;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->beginTransaction()V

    invoke-direct {p0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->checkAndClearIfAccountChangedLocked()V

    iget-object v1, p0, Lcom/micloud/midrive/cache/manager/SyncDataManager;->mSyncFileDatabase:Lcom/micloud/midrive/cache/db/SyncFileDatabase;

    invoke-virtual {v1, p1, p2, p3}, Lcom/micloud/midrive/cache/db/SyncFileDatabase;->updateTransferId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide p1

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

    throw p1

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    throw p1
.end method
