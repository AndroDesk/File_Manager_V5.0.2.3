.class public Lcom/android/cloud/CloudDriveManager;
.super Ljava/lang/Object;
.source "CloudDriveManager.java"

# interfaces
.implements Lcom/android/cloud/ICloudDriveHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cloud/CloudDriveManager$Singleton;,
        Lcom/android/cloud/CloudDriveManager$SyncSessionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudDriveManager"

.field private static sCloudDriveInited:Z


# instance fields
.field private mCurObserveSyncSession:Lcom/micloud/midrive/session/SyncSession;

.field private final mSyncSessionDataObserveSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncSessionListener:Lcom/android/cloud/CloudDriveManager$SyncSessionListener;

.field private final mSyncSessionObserveMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;",
            "Lcom/micloud/midrive/session/SyncSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/cloud/CloudDriveManager$SyncSessionListener;

    invoke-direct {v0, p0}, Lcom/android/cloud/CloudDriveManager$SyncSessionListener;-><init>(Lcom/android/cloud/CloudDriveManager;)V

    iput-object v0, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionListener:Lcom/android/cloud/CloudDriveManager$SyncSessionListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/cloud/CloudDriveManager;->mCurObserveSyncSession:Lcom/micloud/midrive/session/SyncSession;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionObserveMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionDataObserveSet:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/cloud/CloudDriveManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/cloud/CloudDriveManager;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/cloud/CloudDriveManager;Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/cloud/CloudDriveManager;->lambda$showUnavailableAlertDialog$1(Landroid/app/Activity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/cloud/CloudDriveManager;)Lcom/micloud/midrive/session/SyncSession;
    .registers 1

    iget-object p0, p0, Lcom/android/cloud/CloudDriveManager;->mCurObserveSyncSession:Lcom/micloud/midrive/session/SyncSession;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/cloud/CloudDriveManager;Lcom/micloud/midrive/session/SyncSession;)Lcom/micloud/midrive/session/SyncSession;
    .registers 2

    iput-object p1, p0, Lcom/android/cloud/CloudDriveManager;->mCurObserveSyncSession:Lcom/micloud/midrive/session/SyncSession;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/cloud/CloudDriveManager;Lcom/micloud/midrive/session/SyncSession;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/cloud/CloudDriveManager;->notifySyncCompleteIfNeeded(Lcom/micloud/midrive/session/SyncSession;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/cloud/CloudDriveManager;Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/cloud/CloudDriveManager;->lambda$showUnavailableAlertDialog$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static getInstance()Lcom/android/cloud/CloudDriveManager;
    .registers 1

    invoke-static {}, Lcom/android/cloud/CloudDriveManager$Singleton;->access$300()Lcom/android/cloud/CloudDriveManager;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$showUnavailableAlertDialog$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/cloud/CloudDriveManager;->showMiCloudTabPage(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$showUnavailableAlertDialog$1(Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/cloud/CloudDriveManager;->showMiCloudTabPage(Landroid/app/Activity;)V

    return-void
.end method

.method private notifySyncCompleteIfNeeded(Lcom/micloud/midrive/session/SyncSession;)V
    .registers 6

    invoke-static {}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/SyncSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/micloud/midrive/session/manager/SessionManager;->getCurrentSession()Lcom/micloud/midrive/session/BaseSession;

    move-result-object v0

    check-cast v0, Lcom/micloud/midrive/session/SyncSession;

    iget-object v1, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionObserveMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eq v0, v3, :cond_14

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/micloud/midrive/session/SyncSession;

    invoke-virtual {v2}, Lcom/micloud/midrive/session/BaseSession;->getResult()Lcom/micloud/midrive/session/BaseSession$Result;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/cloud/CloudDriveManager;->obtainSyncResult(Lcom/micloud/midrive/session/BaseSession$Result;)Lcom/android/cloud/session/SyncResult;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;->onSyncComplete(Lcom/android/cloud/session/SyncResult;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_14

    :cond_41
    if-eqz p1, :cond_72

    invoke-virtual {p1}, Lcom/micloud/midrive/session/SyncSession;->getSyncParams()Lcom/micloud/midrive/session/params/SyncSessionParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/micloud/midrive/session/params/SyncSessionParams;->isBackground:Z

    if-eqz v0, :cond_72

    invoke-virtual {p1}, Lcom/micloud/midrive/session/BaseSession;->getResult()Lcom/micloud/midrive/session/BaseSession$Result;

    move-result-object p1

    iget-object p1, p1, Lcom/micloud/midrive/session/BaseSession$Result;->resultCode:Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;

    sget-object v0, Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;->RESULT_CODE_SUCCESSED:Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;

    if-ne p1, v0, :cond_72

    const-string p1, "MiDrive_LOG"

    const-string v0, "notify backgroundSyncDataUpdate"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionDataObserveSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_62
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;

    invoke-interface {v0}, Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;->onBackgroundSyncDataUpdate()V

    goto :goto_62

    :cond_72
    return-void
.end method

.method private obtainFailedReason(Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;)Lcom/android/cloud/session/SyncResult$FailedReason;
    .registers 3

    sget-object v0, Lcom/micloud/midrive/session/SyncSession$FailedReason;->NETWORK_IO_ERROR:Lcom/micloud/midrive/session/SyncSession$FailedReason;

    if-ne v0, p1, :cond_7

    sget-object p1, Lcom/android/cloud/session/SyncResult$FailedReason;->NETWORK_IO_ERROR:Lcom/android/cloud/session/SyncResult$FailedReason;

    return-object p1

    :cond_7
    sget-object v0, Lcom/micloud/midrive/session/SyncSession$FailedReason;->SYNC_DATA_ERROR:Lcom/micloud/midrive/session/SyncSession$FailedReason;

    if-ne v0, p1, :cond_e

    sget-object p1, Lcom/android/cloud/session/SyncResult$FailedReason;->SYNC_DATA_ERROR:Lcom/android/cloud/session/SyncResult$FailedReason;

    return-object p1

    :cond_e
    sget-object v0, Lcom/micloud/midrive/session/SyncSession$FailedReason;->NETWORK_NOT_AVAILABLE:Lcom/micloud/midrive/session/SyncSession$FailedReason;

    if-ne v0, p1, :cond_15

    sget-object p1, Lcom/android/cloud/session/SyncResult$FailedReason;->NETWORK_NOT_AVAILABLE:Lcom/android/cloud/session/SyncResult$FailedReason;

    return-object p1

    :cond_15
    sget-object v0, Lcom/micloud/midrive/session/SyncSession$FailedReason;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/SyncSession$FailedReason;

    if-ne v0, p1, :cond_1c

    sget-object p1, Lcom/android/cloud/session/SyncResult$FailedReason;->MI_DRIVE_UNAVAILABLE:Lcom/android/cloud/session/SyncResult$FailedReason;

    return-object p1

    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method private obtainSyncResult(Lcom/micloud/midrive/session/BaseSession$Result;)Lcom/android/cloud/session/SyncResult;
    .registers 5

    sget-object v0, Lcom/android/cloud/CloudDriveManager$1;->$SwitchMap$com$micloud$midrive$session$BaseSession$Result$ResultCode:[I

    iget-object v1, p1, Lcom/micloud/midrive/session/BaseSession$Result;->resultCode:Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_32

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    iget-object p1, p1, Lcom/micloud/midrive/session/BaseSession$Result;->failedReason:Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;

    invoke-direct {p0, p1}, Lcom/android/cloud/CloudDriveManager;->obtainFailedReason(Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;)Lcom/android/cloud/session/SyncResult$FailedReason;

    move-result-object p1

    new-instance v0, Lcom/android/cloud/session/SyncResult;

    sget-object v1, Lcom/android/cloud/session/SyncResult$ResultCode;->RESULT_CODE_FAILED:Lcom/android/cloud/session/SyncResult$ResultCode;

    invoke-direct {v0, v1, p1}, Lcom/android/cloud/session/SyncResult;-><init>(Lcom/android/cloud/session/SyncResult$ResultCode;Lcom/android/cloud/session/SyncResult$FailedReason;)V

    return-object v0

    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "known result code"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    new-instance p1, Lcom/android/cloud/session/SyncResult;

    sget-object v0, Lcom/android/cloud/session/SyncResult$ResultCode;->RESULT_CODE_CANCELED:Lcom/android/cloud/session/SyncResult$ResultCode;

    invoke-direct {p1, v0, v2}, Lcom/android/cloud/session/SyncResult;-><init>(Lcom/android/cloud/session/SyncResult$ResultCode;Lcom/android/cloud/session/SyncResult$FailedReason;)V

    return-object p1

    :cond_32
    new-instance p1, Lcom/android/cloud/session/SyncResult;

    sget-object v0, Lcom/android/cloud/session/SyncResult$ResultCode;->RESULT_CODE_SUCCESSED:Lcom/android/cloud/session/SyncResult$ResultCode;

    invoke-direct {p1, v0, v2}, Lcom/android/cloud/session/SyncResult;-><init>(Lcom/android/cloud/session/SyncResult$ResultCode;Lcom/android/cloud/session/SyncResult$FailedReason;)V

    return-object p1
.end method

.method private showMiCloudTabPage(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fileexplorer.export.VIEW_HOME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extraTabName"

    const-string v2, "cloud"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public checkAccountIfInvalid(Landroid/content/Context;)Z
    .registers 5

    invoke-static {p1}, Lcom/micloud/midrive/utils/CheckAccountHelper;->tryUpdateAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p1

    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->getCloudAccountName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_21

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.xiaomi.unactivated"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    if-eqz v0, :cond_1f

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p1, 0x0

    return p1

    :cond_21
    :goto_21
    const/4 p1, 0x1

    return p1
.end method

.method public clearCloudData(Landroid/content/Context;)V
    .registers 6

    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveInit()Z

    move-result v0

    if-nez v0, :cond_e

    const-string p1, "MiDrive_LOG"

    const-string v0, "clearCloudData cloud not init"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->saveCloudDriveState(Ljava/lang/Boolean;)V

    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->setCloudDataInited(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->getDownloadSession()Lcom/micloud/midrive/session/DownloadSession;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/micloud/midrive/session/BaseSession;->cancel()V

    :cond_1f
    invoke-static {}, Lcom/micloud/midrive/session/manager/DownloadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/DownloadSessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/micloud/midrive/session/manager/SessionManager;->clearSharedPrefs(Landroid/content/Context;)V

    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->getUploadSession()Lcom/micloud/midrive/session/UploadSession;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/micloud/midrive/session/BaseSession;->cancel()V

    :cond_2f
    invoke-static {}, Lcom/micloud/midrive/session/manager/UploadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/UploadSessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/micloud/midrive/session/manager/SessionManager;->clearSharedPrefs(Landroid/content/Context;)V

    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->getSyncSession()Lcom/micloud/midrive/session/SyncSession;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/micloud/midrive/session/BaseSession;->cancel()V

    :cond_3f
    invoke-static {}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/SyncSessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/micloud/midrive/session/manager/SessionManager;->clearSharedPrefs(Landroid/content/Context;)V

    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->clearData(Landroid/content/Context;)V

    invoke-static {}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->values()[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_53
    if-ge v2, v1, :cond_61

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->clearData(Landroid/content/Context;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_61
    invoke-static {p1}, Lcom/micloud/midrive/helper/SyncConfigHelper;->clearSharedPrefs(Landroid/content/Context;)V

    return-void
.end method

.method public createFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/server/protocol/CreateFolderResponse;
    .registers 4

    invoke-static {p1}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->createFolder(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    move-result-object p1

    return-object p1
.end method

.method public deleteCloudFile(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileDelete(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p1

    return-object p1
.end method

.method public getChildren(Ljava/lang/String;Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;",
            ")",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper;->getChildren(Ljava/lang/String;Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCloudFilesCount()I
    .registers 2

    invoke-static {}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper;->getAllFileCount()I

    move-result v0

    return v0
.end method

.method public getCloudFilesLimit(IZ)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper;->getLatestCountFiles(IZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLatestGroupData(ILjava/lang/String;)Ljava/util/LinkedHashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/micloud/midrive/infos/SyncTotalFileInfo;",
            ">;>;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper;->getLatestData(ILjava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.method public initCloudDrive(Landroid/content/Context;)V
    .registers 3

    sget-boolean v0, Lcom/android/cloud/CloudDriveManager;->sCloudDriveInited:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {p1}, Lcom/micloud/midrive/utils/MidriveInitHelper;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/SyncSessionManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionListener:Lcom/android/cloud/CloudDriveManager$SyncSessionListener;

    invoke-virtual {p1, v0}, Lcom/micloud/midrive/session/manager/SessionManager;->addListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V

    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->getSyncSession()Lcom/micloud/midrive/session/SyncSession;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cloud/CloudDriveManager;->mCurObserveSyncSession:Lcom/micloud/midrive/session/SyncSession;

    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->init()V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/cloud/CloudDriveManager;->sCloudDriveInited:Z

    return-void
.end method

.method public initMiDriveOneTrack(Lcom/xiaomi/onetrack/OneTrack;)V
    .registers 2

    invoke-static {p1}, Lcom/micloud/midrive/helper/StatHelper;->initOneTrack(Lcom/xiaomi/onetrack/OneTrack;)V

    return-void
.end method

.method public isMiDriveJobWorking()Z
    .registers 4

    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->getSyncSession()Lcom/micloud/midrive/session/SyncSession;

    move-result-object v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->getDownloadSession()Lcom/micloud/midrive/session/DownloadSession;

    move-result-object v0

    if-nez v0, :cond_15

    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->getUploadSession()Lcom/micloud/midrive/session/UploadSession;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMiDriveJobWorking:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CloudDriveManager"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public modifyFileContent(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileContentModify(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p1

    return-object p1
.end method

.method public releaseFileCache(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileDeleteLocal(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p1

    return-object p1
.end method

.method public renameCloudFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileRename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p1

    return-object p1
.end method

.method public requestContinueUpload(Ljava/util/List;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileUploadChangeFreeNetworkOnly(Ljava/util/List;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p1

    return-object p1
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 3
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

    invoke-static {p1, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper;->search(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public showUnavailableAlertDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/AlertDialog;
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/cloud/CloudDriveManager;->clearCloudData(Landroid/content/Context;)V

    if-eqz p1, :cond_4e

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4e

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110124

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110123

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110122

    new-instance v2, Lcom/android/cloud/a;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, p1}, Lcom/android/cloud/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/cloud/b;

    invoke-direct {v1, p0, p1, v3}, Lcom/android/cloud/b;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_4f

    :cond_4e
    const/4 p1, 0x0

    :goto_4f
    return-object p1
.end method

.method public startCopyFile(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileCopy(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p1

    return-object p1
.end method

.method public startDownload(Landroid/content/Context;Ljava/util/List;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileDownload(Landroid/content/Context;Ljava/util/List;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p1

    return-object p1
.end method

.method public startMoveFile(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/micloud/midrive/session/action/SyncFileOperationResponse;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileMove(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    move-result-object p1

    return-object p1
.end method

.method public startObserveBackgroundSyncDataUpdate(Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;)V
    .registers 3

    const-string v0, "can not called in work thread"

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionDataObserveSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startSync(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V
    .registers 6

    const-string v0, "can not called in work thread"

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    const-string v0, "MiDrive_LOG"

    const-string v1, "notifySyncOrStartSessionAtOnce"

    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionAtOnce(Landroid/content/Context;Landroid/accounts/Account;)Lcom/micloud/midrive/session/SyncSession;

    move-result-object p1

    if-eqz p3, :cond_17

    iget-object p2, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionObserveMap:Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method

.method public stopObserveBackgroundSyncDataUpdate(Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;)V
    .registers 3

    const-string v0, "can not called in work thread"

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionDataObserveSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public stopObserveSyncComplete(Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V
    .registers 3

    const-string v0, "can not called in work thread"

    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionObserveMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
