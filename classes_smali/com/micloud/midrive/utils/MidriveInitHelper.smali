.class public Lcom/micloud/midrive/utils/MidriveInitHelper;
.super Ljava/lang/Object;
.source "MidriveInitHelper.java"


# static fields
.field private static final EXTERNAL_STORAGE_LOG_DIR:Ljava/lang/String; = "MIUI/debug_log/common/%s"

.field private static final MAX_LOG_FILE_COUNT:I = 0x2

.field private static final MAX_LOG_FILE_SIZE_IN_BYTE:I = 0x280000

.field private static mIsMiDriveInit:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSimpleLogSender()Lmiui/cloud/common/XLogger$LogSender;
    .registers 1

    .line 1
    new-instance v0, Lcom/micloud/midrive/utils/MidriveInitHelper$1;

    .line 3
    invoke-direct {v0}, Lcom/micloud/midrive/utils/MidriveInitHelper$1;-><init>()V

    .line 6
    return-object v0
.end method

.method public static createSwitchFileLogSender(Landroid/content/Context;Lmiui/cloud/common/XLogger$LogSender;)Lmiui/cloud/common/SwitchFileLogSender;
    .registers 9

    .line 1
    new-instance v6, Lmiui/cloud/common/SwitchFileLogSender;

    .line 3
    new-instance v2, Lcom/micloud/midrive/utils/MidriveInitHelper$2;

    .line 5
    invoke-direct {v2, p0}, Lcom/micloud/midrive/utils/MidriveInitHelper$2;-><init>(Landroid/content/Context;)V

    .line 8
    const/high16 v3, 0x280000

    .line 10
    const/4 v4, 0x2

    .line 11
    move-object v0, v6

    .line 12
    move-object v1, p0

    .line 13
    move-object v5, p1

    .line 14
    invoke-direct/range {v0 .. v5}, Lmiui/cloud/common/SwitchFileLogSender;-><init>(Landroid/content/Context;Lmiui/cloud/common/SwitchFileLogSender$PathProvider;IILmiui/cloud/common/XLogger$LogSender;)V

    .line 17
    return-object v6
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/micloud/midrive/manager/NetworkManager;->init(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/xiaomi/micloudsdk/request/utils/Request;->init(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->init(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->init(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->init(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->init(Landroid/content/Context;)V

    .line 47
    invoke-static {}, Lcom/micloud/midrive/session/manager/UploadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/UploadSessionManager;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->initAndMaybeStartSession(Landroid/content/Context;)V

    .line 58
    invoke-static {}, Lcom/micloud/midrive/session/manager/DownloadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/DownloadSessionManager;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->initAndMaybeStartSession(Landroid/content/Context;)V

    .line 69
    invoke-static {}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/SyncSessionManager;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->initAndMaybeStartSession(Landroid/content/Context;)V

    .line 80
    invoke-static {p0}, Lcom/micloud/midrive/utils/MidriveInitHelper;->initLogger(Landroid/content/Context;)V

    .line 83
    const/4 p0, 0x1

    .line 84
    sput-boolean p0, Lcom/micloud/midrive/utils/MidriveInitHelper;->mIsMiDriveInit:Z

    .line 86
    return-void
.end method

.method private static initLogger(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-static {}, Lcom/micloud/midrive/utils/MidriveInitHelper;->createSimpleLogSender()Lmiui/cloud/common/XLogger$LogSender;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/MidriveInitHelper;->createSwitchFileLogSender(Landroid/content/Context;Lmiui/cloud/common/XLogger$LogSender;)Lmiui/cloud/common/SwitchFileLogSender;

    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lmiui/cloud/common/XLogger;->setLogSender(Lmiui/cloud/common/XLogger$LogSender;)V

    .line 16
    return-void
.end method

.method public static isMiDriveInit()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/micloud/midrive/utils/MidriveInitHelper;->mIsMiDriveInit:Z

    .line 3
    return v0
.end method
