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

.field private static sCloudDriveInited:Z = false


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
.method private constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/android/cloud/CloudDriveManager$SyncSessionListener;

    invoke-direct {v0, p0}, Lcom/android/cloud/CloudDriveManager$SyncSessionListener;-><init>(Lcom/android/cloud/CloudDriveManager;)V

    iput-object v0, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionListener:Lcom/android/cloud/CloudDriveManager$SyncSessionListener;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/cloud/CloudDriveManager;->mCurObserveSyncSession:Lcom/micloud/midrive/session/SyncSession;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionObserveMap:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionDataObserveSet:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/cloud/CloudDriveManager$1;)V
    .registers 2

    .line 1
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

    .line 1
    iget-object p0, p0, Lcom/android/cloud/CloudDriveManager;->mCurObserveSyncSession:Lcom/micloud/midrive/session/SyncSession;

    .line 3
    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/cloud/CloudDriveManager;Lcom/micloud/midrive/session/SyncSession;)Lcom/micloud/midrive/session/SyncSession;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/cloud/CloudDriveManager;->mCurObserveSyncSession:Lcom/micloud/midrive/session/SyncSession;

    .line 3
    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/cloud/CloudDriveManager;Lcom/micloud/midrive/session/SyncSession;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/CloudDriveManager;->notifySyncCompleteIfNeeded(Lcom/micloud/midrive/session/SyncSession;)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/android/cloud/CloudDriveManager;Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/cloud/CloudDriveManager;->lambda$showUnavailableAlertDialog$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static getInstance()Lcom/android/cloud/CloudDriveManager;
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/cloud/CloudDriveManager$Singleton;->access$300()Lcom/android/cloud/CloudDriveManager;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private synthetic lambda$showUnavailableAlertDialog$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/CloudDriveManager;->showMiCloudTabPage(Landroid/app/Activity;)V

    .line 4
    return-void
.end method

.method private synthetic lambda$showUnavailableAlertDialog$1(Landroid/app/Activity;Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/cloud/CloudDriveManager;->showMiCloudTabPage(Landroid/app/Activity;)V

    .line 4
    return-void
.end method

.method private notifySyncCompleteIfNeeded(Lcom/micloud/midrive/session/SyncSession;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/SyncSessionManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/micloud/midrive/session/manager/SessionManager;->getCurrentSession()Lcom/micloud/midrive/session/BaseSession;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/micloud/midrive/session/SyncSession;

    .line 11
    iget-object v1, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionObserveMap:Ljava/util/Map;

    .line 13
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v1

    .line 21
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_41

    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    if-eq v0, v3, :cond_14

    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;

    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/micloud/midrive/session/SyncSession;

    .line 51
    invoke-virtual {v2}, Lcom/micloud/midrive/session/BaseSession;->getResult()Lcom/micloud/midrive/session/BaseSession$Result;

    .line 54
    move-result-object v2

    .line 55
    invoke-direct {p0, v2}, Lcom/android/cloud/CloudDriveManager;->obtainSyncResult(Lcom/micloud/midrive/session/BaseSession$Result;)Lcom/android/cloud/session/SyncResult;

    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v3, v2}, Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;->onSyncComplete(Lcom/android/cloud/session/SyncResult;)V

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 65
    goto :goto_14

    .line 66
    :cond_41
    if-eqz p1, :cond_72

    .line 68
    invoke-virtual {p1}, Lcom/micloud/midrive/session/SyncSession;->getSyncParams()Lcom/micloud/midrive/session/params/SyncSessionParams;

    .line 71
    move-result-object v0

    .line 72
    iget-boolean v0, v0, Lcom/micloud/midrive/session/params/SyncSessionParams;->isBackground:Z

    .line 74
    if-eqz v0, :cond_72

    .line 76
    invoke-virtual {p1}, Lcom/micloud/midrive/session/BaseSession;->getResult()Lcom/micloud/midrive/session/BaseSession$Result;

    .line 79
    move-result-object p1

    .line 80
    iget-object p1, p1, Lcom/micloud/midrive/session/BaseSession$Result;->resultCode:Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;

    .line 82
    sget-object v0, Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;->RESULT_CODE_SUCCESSED:Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;

    .line 84
    if-ne p1, v0, :cond_72

    .line 86
    const-string p1, "MiDrive_LOG"

    .line 88
    const-string v0, "notify backgroundSyncDataUpdate"

    .line 90
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionDataObserveSet:Ljava/util/Set;

    .line 95
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 98
    move-result-object p1

    .line 99
    :goto_62
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_72

    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;

    .line 111
    invoke-interface {v0}, Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;->onBackgroundSyncDataUpdate()V

    .line 114
    goto :goto_62

    .line 115
    :cond_72
    return-void
.end method

.method private obtainFailedReason(Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;)Lcom/android/cloud/session/SyncResult$FailedReason;
    .registers 3

    .line 1
    sget-object v0, Lcom/micloud/midrive/session/SyncSession$FailedReason;->NETWORK_IO_ERROR:Lcom/micloud/midrive/session/SyncSession$FailedReason;

    .line 3
    if-ne v0, p1, :cond_7

    .line 5
    sget-object p1, Lcom/android/cloud/session/SyncResult$FailedReason;->NETWORK_IO_ERROR:Lcom/android/cloud/session/SyncResult$FailedReason;

    .line 7
    return-object p1

    .line 8
    :cond_7
    sget-object v0, Lcom/micloud/midrive/session/SyncSession$FailedReason;->SYNC_DATA_ERROR:Lcom/micloud/midrive/session/SyncSession$FailedReason;

    .line 10
    if-ne v0, p1, :cond_e

    .line 12
    sget-object p1, Lcom/android/cloud/session/SyncResult$FailedReason;->SYNC_DATA_ERROR:Lcom/android/cloud/session/SyncResult$FailedReason;

    .line 14
    return-object p1

    .line 15
    :cond_e
    sget-object v0, Lcom/micloud/midrive/session/SyncSession$FailedReason;->NETWORK_NOT_AVAILABLE:Lcom/micloud/midrive/session/SyncSession$FailedReason;

    .line 17
    if-ne v0, p1, :cond_15

    .line 19
    sget-object p1, Lcom/android/cloud/session/SyncResult$FailedReason;->NETWORK_NOT_AVAILABLE:Lcom/android/cloud/session/SyncResult$FailedReason;

    .line 21
    return-object p1

    .line 22
    :cond_15
    sget-object v0, Lcom/micloud/midrive/session/SyncSession$FailedReason;->MI_DRIVE_UNAVAILABLE:Lcom/micloud/midrive/session/SyncSession$FailedReason;

    .line 24
    if-ne v0, p1, :cond_1c

    .line 26
    sget-object p1, Lcom/android/cloud/session/SyncResult$FailedReason;->MI_DRIVE_UNAVAILABLE:Lcom/android/cloud/session/SyncResult$FailedReason;

    .line 28
    return-object p1

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    return-object p1
.end method

.method private obtainSyncResult(Lcom/micloud/midrive/session/BaseSession$Result;)Lcom/android/cloud/session/SyncResult;
    .registers 5

    .line 1
    sget-object v0, Lcom/android/cloud/CloudDriveManager$1;->$SwitchMap$com$micloud$midrive$session$BaseSession$Result$ResultCode:[I

    .line 3
    iget-object v1, p1, Lcom/micloud/midrive/session/BaseSession$Result;->resultCode:Lcom/micloud/midrive/session/BaseSession$Result$ResultCode;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eq v0, v1, :cond_32

    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq v0, v1, :cond_2a

    .line 18
    const/4 v1, 0x3

    .line 19
    if-ne v0, v1, :cond_22

    .line 21
    iget-object p1, p1, Lcom/micloud/midrive/session/BaseSession$Result;->failedReason:Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;

    .line 23
    invoke-direct {p0, p1}, Lcom/android/cloud/CloudDriveManager;->obtainFailedReason(Lcom/micloud/midrive/session/BaseSession$Result$FailedReason;)Lcom/android/cloud/session/SyncResult$FailedReason;

    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Lcom/android/cloud/session/SyncResult;

    .line 29
    sget-object v1, Lcom/android/cloud/session/SyncResult$ResultCode;->RESULT_CODE_FAILED:Lcom/android/cloud/session/SyncResult$ResultCode;

    .line 31
    invoke-direct {v0, v1, p1}, Lcom/android/cloud/session/SyncResult;-><init>(Lcom/android/cloud/session/SyncResult$ResultCode;Lcom/android/cloud/session/SyncResult$FailedReason;)V

    .line 34
    return-object v0

    .line 35
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    const-string v0, "known result code"

    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1

    .line 43
    :cond_2a
    new-instance p1, Lcom/android/cloud/session/SyncResult;

    .line 45
    sget-object v0, Lcom/android/cloud/session/SyncResult$ResultCode;->RESULT_CODE_CANCELED:Lcom/android/cloud/session/SyncResult$ResultCode;

    .line 47
    invoke-direct {p1, v0, v2}, Lcom/android/cloud/session/SyncResult;-><init>(Lcom/android/cloud/session/SyncResult$ResultCode;Lcom/android/cloud/session/SyncResult$FailedReason;)V

    .line 50
    return-object p1

    .line 51
    :cond_32
    new-instance p1, Lcom/android/cloud/session/SyncResult;

    .line 53
    sget-object v0, Lcom/android/cloud/session/SyncResult$ResultCode;->RESULT_CODE_SUCCESSED:Lcom/android/cloud/session/SyncResult$ResultCode;

    .line 55
    invoke-direct {p1, v0, v2}, Lcom/android/cloud/session/SyncResult;-><init>(Lcom/android/cloud/session/SyncResult$ResultCode;Lcom/android/cloud/session/SyncResult$FailedReason;)V

    .line 58
    return-object p1
.end method

.method private showMiCloudTabPage(Landroid/app/Activity;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.android.fileexplorer.export.VIEW_HOME"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "extraTabName"

    .line 10
    const-string v2, "cloud"

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    const/high16 v1, 0x34000000

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 23
    return-void
.end method


# virtual methods
.method public checkAccountIfInvalid(Landroid/content/Context;)Z
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/micloud/midrive/utils/CheckAccountHelper;->tryUpdateAccount(Landroid/content/Context;)Landroid/accounts/Account;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->getCloudAccountName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    if-eqz p1, :cond_21

    .line 11
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 13
    const-string v2, "com.xiaomi.unactivated"

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_21

    .line 21
    if-eqz v0, :cond_1f

    .line 23
    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1f

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    const/4 p1, 0x0

    .line 33
    return p1

    .line 34
    :cond_21
    :goto_21
    const/4 p1, 0x1

    .line 35
    return p1
.end method

.method public clearCloudData(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/android/cloud/util/CloudPreferenceUtil;->isCloudDriveInit()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_e

    .line 7
    const-string p1, "MiDrive_LOG"

    .line 9
    const-string v0, "clearCloudData cloud not init"

    .line 11
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void

    .line 15
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 17
    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->saveCloudDriveState(Ljava/lang/Boolean;)V

    .line 20
    invoke-static {v0}, Lcom/android/cloud/util/CloudPreferenceUtil;->setCloudDataInited(Ljava/lang/Boolean;)V

    .line 23
    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->getDownloadSession()Lcom/micloud/midrive/session/DownloadSession;

    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1f

    .line 29
    invoke-virtual {v0}, Lcom/micloud/midrive/session/BaseSession;->cancel()V

    .line 32
    :cond_1f
    invoke-static {}, Lcom/micloud/midrive/session/manager/DownloadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/DownloadSessionManager;

    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Lcom/micloud/midrive/session/manager/SessionManager;->clearSharedPrefs(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->getUploadSession()Lcom/micloud/midrive/session/UploadSession;

    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_2f

    .line 45
    invoke-virtual {v0}, Lcom/micloud/midrive/session/BaseSession;->cancel()V

    .line 48
    :cond_2f
    invoke-static {}, Lcom/micloud/midrive/session/manager/UploadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/UploadSessionManager;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, p1}, Lcom/micloud/midrive/session/manager/SessionManager;->clearSharedPrefs(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->getSyncSession()Lcom/micloud/midrive/session/SyncSession;

    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_3f

    .line 61
    invoke-virtual {v0}, Lcom/micloud/midrive/session/BaseSession;->cancel()V

    .line 64
    :cond_3f
    invoke-static {}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/SyncSessionManager;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, p1}, Lcom/micloud/midrive/session/manager/SessionManager;->clearSharedPrefs(Landroid/content/Context;)V

    .line 71
    invoke-static {}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->getSyncManagerProxy()Lcom/micloud/midrive/cache/manager/ISyncDataManager;

    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0, p1}, Lcom/micloud/midrive/cache/manager/ISyncDataManager;->clearData(Landroid/content/Context;)V

    .line 78
    invoke-static {}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->values()[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    .line 81
    move-result-object v0

    .line 82
    array-length v1, v0

    .line 83
    const/4 v2, 0x0

    .line 84
    :goto_53
    if-ge v2, v1, :cond_61

    .line 86
    aget-object v3, v0, v2

    .line 88
    invoke-static {v3}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->getSessionJobManagerProxy(Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;)Lcom/micloud/midrive/cache/manager/ISessionJobManager;

    .line 91
    move-result-object v3

    .line 92
    invoke-interface {v3, p1}, Lcom/micloud/midrive/cache/manager/ISessionJobManager;->clearData(Landroid/content/Context;)V

    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 97
    goto :goto_53

    .line 98
    :cond_61
    invoke-static {p1}, Lcom/micloud/midrive/helper/SyncConfigHelper;->clearSharedPrefs(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method public createFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/server/protocol/CreateFolderResponse;
    .registers 4

    .line 1
    invoke-static {p1}, Lcom/micloud/midrive/server/transport/Network;->forAllowAnyNetwork(Landroid/content/Context;)Lcom/micloud/midrive/server/transport/Network;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1, p2, p3}, Lcom/micloud/midrive/server/protocol/ManagementProtocol;->createFolder(Lcom/micloud/midrive/server/transport/Network;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/server/protocol/CreateFolderResponse;

    .line 8
    move-result-object p1

    .line 9
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

    .line 1
    invoke-static {p1, p2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileDelete(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 4
    move-result-object p1

    .line 5
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

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, p2, v0}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper;->getChildren(Ljava/lang/String;Lcom/micloud/midrive/database/helper/SyncDataFetchHelper$SortType;Z)Ljava/util/List;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public getCloudFilesCount()I
    .registers 2

    .line 1
    invoke-static {}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper;->getAllFileCount()I

    .line 4
    move-result v0

    .line 5
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

    .line 1
    invoke-static {p1, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper;->getLatestCountFiles(IZ)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
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

    .line 1
    invoke-static {p1, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper;->getLatestData(ILjava/lang/String;)Ljava/util/LinkedHashMap;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initCloudDrive(Landroid/content/Context;)V
    .registers 3

    .line 1
    sget-boolean v0, Lcom/android/cloud/CloudDriveManager;->sCloudDriveInited:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-static {p1}, Lcom/micloud/midrive/utils/MidriveInitHelper;->init(Landroid/content/Context;)V

    .line 9
    invoke-static {}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/SyncSessionManager;

    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionListener:Lcom/android/cloud/CloudDriveManager$SyncSessionListener;

    .line 15
    invoke-virtual {p1, v0}, Lcom/micloud/midrive/session/manager/SessionManager;->addListener(Lcom/micloud/midrive/session/manager/SessionManager$SessionManagerListener;)V

    .line 18
    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->getSyncSession()Lcom/micloud/midrive/session/SyncSession;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/cloud/CloudDriveManager;->mCurObserveSyncSession:Lcom/micloud/midrive/session/SyncSession;

    .line 24
    invoke-static {}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->getInstance()Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/android/cloud/fragment/model/CloudTransferStatusCacheModel;->init()V

    .line 31
    const/4 p1, 0x1

    .line 32
    sput-boolean p1, Lcom/android/cloud/CloudDriveManager;->sCloudDriveInited:Z

    .line 34
    return-void
.end method

.method public initMiDriveOneTrack(Lcom/xiaomi/onetrack/OneTrack;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/micloud/midrive/helper/StatHelper;->initOneTrack(Lcom/xiaomi/onetrack/OneTrack;)V

    .line 4
    return-void
.end method

.method public isMiDriveJobWorking()Z
    .registers 4

    .line 1
    invoke-static {}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->getSyncSession()Lcom/micloud/midrive/session/SyncSession;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_15

    .line 7
    invoke-static {}, Lcom/micloud/midrive/session/helper/DownloadSessionHelper;->getDownloadSession()Lcom/micloud/midrive/session/DownloadSession;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_15

    .line 13
    invoke-static {}, Lcom/micloud/midrive/session/helper/UploadSessionHelper;->getUploadSession()Lcom/micloud/midrive/session/UploadSession;

    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_13

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const/4 v0, 0x0

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 23
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v2, "isMiDriveJobWorking:"

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    const-string v2, "CloudDriveManager"

    .line 42
    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
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

    .line 1
    invoke-static {p1, p2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileContentModify(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 4
    move-result-object p1

    .line 5
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

    .line 1
    invoke-static {p1, p2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileDeleteLocal(Landroid/content/Context;Ljava/util/List;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public renameCloudFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileRename(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 4
    move-result-object p1

    .line 5
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

    .line 1
    invoke-static {p1, p2}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileUploadChangeFreeNetworkOnly(Ljava/util/List;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 4
    move-result-object p1

    .line 5
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

    .line 1
    invoke-static {p1, p2}, Lcom/micloud/midrive/database/helper/SyncDataFetchHelper;->search(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public showUnavailableAlertDialog(Landroid/app/Activity;)Lmiuix/appcompat/app/AlertDialog;
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/cloud/CloudDriveManager;->clearCloudData(Landroid/content/Context;)V

    .line 4
    if-eqz p1, :cond_4e

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_4e

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_4e

    .line 18
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 20
    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 27
    move-result-object v0

    .line 28
    const v1, 0x7f110124

    .line 31
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 34
    move-result-object v0

    .line 35
    const v1, 0x1010355

    .line 38
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 41
    move-result-object v0

    .line 42
    const v1, 0x7f110123

    .line 45
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 48
    move-result-object v0

    .line 49
    const v1, 0x7f110122

    .line 52
    new-instance v2, Lcom/android/cloud/a;

    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-direct {v2, v3, p0, p1}, Lcom/android/cloud/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Lcom/android/cloud/b;

    .line 64
    invoke-direct {v1, p0, p1, v3}, Lcom/android/cloud/b;-><init>(Ljava/lang/Object;Landroid/view/KeyEvent$Callback;I)V

    .line 67
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 78
    goto :goto_4f

    .line 79
    :cond_4e
    const/4 p1, 0x0

    .line 80
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

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileCopy(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 4
    move-result-object p1

    .line 5
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

    .line 1
    invoke-static {p1, p2, p3}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileDownload(Landroid/content/Context;Ljava/util/List;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 4
    move-result-object p1

    .line 5
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

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/micloud/midrive/session/action/SyncFileOperateHelper;->fileMove(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Lcom/micloud/midrive/session/action/SyncFileOperationResponse;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public startObserveBackgroundSyncDataUpdate(Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;)V
    .registers 3

    .line 1
    const-string v0, "can not called in work thread"

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionDataObserveSet:Ljava/util/Set;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public startSync(Landroid/content/Context;Landroid/accounts/Account;Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V
    .registers 6

    .line 1
    const-string v0, "can not called in work thread"

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    .line 6
    const-string v0, "MiDrive_LOG"

    .line 8
    const-string v1, "notifySyncOrStartSessionAtOnce"

    .line 10
    invoke-static {v0, v1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {p1, p2}, Lcom/micloud/midrive/session/helper/SyncSessionHelper;->notifySyncOrStartSessionAtOnce(Landroid/content/Context;Landroid/accounts/Account;)Lcom/micloud/midrive/session/SyncSession;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p3, :cond_17

    .line 19
    iget-object p2, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionObserveMap:Ljava/util/Map;

    .line 21
    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_17
    return-void
.end method

.method public stopObserveBackgroundSyncDataUpdate(Lcom/android/cloud/ICloudDriveHelper$BackgroundSyncDataUpdateListener;)V
    .registers 3

    .line 1
    const-string v0, "can not called in work thread"

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionDataObserveSet:Ljava/util/Set;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method public stopObserveSyncComplete(Lcom/android/cloud/ICloudDriveHelper$SyncCompleteListener;)V
    .registers 3

    .line 1
    const-string v0, "can not called in work thread"

    .line 3
    invoke-static {v0}, Lcom/micloud/midrive/utils/ThreadGuard;->checkRunInMainThread(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/cloud/CloudDriveManager;->mSyncSessionObserveMap:Ljava/util/Map;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    return-void
.end method
