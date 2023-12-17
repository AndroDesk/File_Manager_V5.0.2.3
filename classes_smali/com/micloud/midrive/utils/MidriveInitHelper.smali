.class public Lcom/micloud/midrive/utils/MidriveInitHelper;
.super Ljava/lang/Object;
.source "MidriveInitHelper.java"


# static fields
.field private static final EXTERNAL_STORAGE_LOG_DIR:Ljava/lang/String; = "MIUI/debug_log/common/%s"

.field private static final MAX_LOG_FILE_COUNT:I

.field private static final MAX_LOG_FILE_SIZE_IN_BYTE:I

.field private static mIsMiDriveInit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/utils/MidriveInitHelper;->MAX_LOG_FILE_COUNT:I

    const v0, 0x212d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/utils/MidriveInitHelper;->MAX_LOG_FILE_SIZE_IN_BYTE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSimpleLogSender()Lmiui/cloud/common/XLogger$LogSender;
    .registers 1

    new-instance v0, Lcom/micloud/midrive/utils/MidriveInitHelper$1;

    invoke-direct {v0}, Lcom/micloud/midrive/utils/MidriveInitHelper$1;-><init>()V

    return-object v0
.end method

.method public static createSwitchFileLogSender(Landroid/content/Context;Lmiui/cloud/common/XLogger$LogSender;)Lmiui/cloud/common/SwitchFileLogSender;
    .registers 9

    new-instance v6, Lmiui/cloud/common/SwitchFileLogSender;

    new-instance v2, Lcom/micloud/midrive/utils/MidriveInitHelper$2;

    invoke-direct {v2, p0}, Lcom/micloud/midrive/utils/MidriveInitHelper$2;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x280000

    const/4 v4, 0x2

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lmiui/cloud/common/SwitchFileLogSender;-><init>(Landroid/content/Context;Lmiui/cloud/common/SwitchFileLogSender$PathProvider;IILmiui/cloud/common/XLogger$LogSender;)V

    return-object v6
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/manager/NetworkManager;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/micloudsdk/request/utils/Request;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/server/transport/SFSFileTransferClient;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->getInstance()Lcom/micloud/midrive/manager/MiDriveAccountManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/manager/MiDriveAccountManager;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SessionJobManager;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/micloud/midrive/cache/manager/SyncDataManager;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/micloud/midrive/session/manager/UploadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/UploadSessionManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->initAndMaybeStartSession(Landroid/content/Context;)V

    invoke-static {}, Lcom/micloud/midrive/session/manager/DownloadSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/DownloadSessionManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->initAndMaybeStartSession(Landroid/content/Context;)V

    invoke-static {}, Lcom/micloud/midrive/session/manager/SyncSessionManager;->getInstance()Lcom/micloud/midrive/session/manager/SyncSessionManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/micloud/midrive/session/manager/SessionManager;->initAndMaybeStartSession(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/micloud/midrive/utils/MidriveInitHelper;->initLogger(Landroid/content/Context;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/micloud/midrive/utils/MidriveInitHelper;->mIsMiDriveInit:Z

    return-void
.end method

.method private static initLogger(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Lcom/micloud/midrive/utils/MidriveInitHelper;->createSimpleLogSender()Lmiui/cloud/common/XLogger$LogSender;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/micloud/midrive/utils/MidriveInitHelper;->createSwitchFileLogSender(Landroid/content/Context;Lmiui/cloud/common/XLogger$LogSender;)Lmiui/cloud/common/SwitchFileLogSender;

    move-result-object p0

    invoke-static {p0}, Lmiui/cloud/common/XLogger;->setLogSender(Lmiui/cloud/common/XLogger$LogSender;)V

    return-void
.end method

.method public static isMiDriveInit()Z
    .registers 1

    sget-boolean v0, Lcom/micloud/midrive/utils/MidriveInitHelper;->mIsMiDriveInit:Z

    return v0
.end method
