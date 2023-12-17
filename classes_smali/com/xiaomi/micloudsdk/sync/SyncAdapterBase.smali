.class public abstract Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SyncAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;,
        Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;
    }
.end annotation


# static fields
.field private static final SYNC_EXTRA_KEY_TOKEN_INVALID_RETRY:Ljava/lang/String; = "token_invalid_retry"

.field public static final TAG:Ljava/lang/String; = "MiCloudSyncAdapterBase"


# instance fields
.field public isForceSync:Z

.field public isIgnoreBackoff:Z

.field public isIgnoreBatteryLow:Z

.field public isIgnoreSettings:Z

.field public isIgnoreTemperature:Z

.field public isIgnoreWifiSettings:Z

.field public isManualSync:Z

.field public mAccount:Landroid/accounts/Account;

.field public final mAuthType:Ljava/lang/String;

.field public mAuthority:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

.field public mExtTokenStr:Ljava/lang/String;

.field public mNumbers:[Ljava/lang/String;

.field public mResolver:Landroid/content/ContentResolver;

.field private mSyncLogSender:Lcom/xiaomi/micloudsdk/sync/SyncLogSender;

.field public mSyncResult:Landroid/content/SyncResult;

.field public mTickets:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    const/4 p2, 0x2

    new-array v0, p2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mTickets:[Ljava/lang/String;

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mNumbers:[Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthType:Ljava/lang/String;

    return-void
.end method

.method private acquireLogger(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncLogSenderFactory;->newSyncLogSender(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/SyncLogSender;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mSyncLogSender:Lcom/xiaomi/micloudsdk/sync/SyncLogSender;

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/sync/SyncLogSender;->openSyncLog()V

    return-void
.end method

.method private getExtTokenResult(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_3
    const/4 v3, 0x3

    if-ge v1, v3, :cond_99

    const-string v3, "MiCloudSyncAdapterBase"

    if-eqz v1, :cond_f

    const-wide/16 v4, 0x3e8

    :try_start_c
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPerformSync: getting auth token. authority: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    iget-object v7, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthType:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p2

    invoke-virtual/range {v5 .. v10}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v4

    if-nez v4, :cond_39

    const-string v4, "onPerformSync: getExtTokenStr null future."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    :cond_39
    invoke-interface {v4}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    if-nez v4, :cond_47

    const-string v4, "onPerformSync: getExtTokenStr null future result."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    :cond_47
    const-string v5, "authtoken"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_59

    const-string v4, "onPerformSync: getExtTokenStr future result textEmpty."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    :cond_59
    new-instance v2, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;

    invoke-direct {v2, p0, v4, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;-><init>(Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5e
    .catch Landroid/accounts/OperationCanceledException; {:try_start_c .. :try_end_5e} :catch_8f
    .catch Landroid/accounts/AuthenticatorException; {:try_start_c .. :try_end_5e} :catch_88
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_5e} :catch_6e
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_5e} :catch_5f

    return-object v2

    :catch_5f
    move-exception p1

    move-object v2, p1

    const-string p1, "onPerformSync getExtTokenStr InterruptedException: "

    invoke-static {v3, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_99

    :catch_6e
    move-exception v2

    const-string v4, "onPerformSync getExtTokenStr IOException: "

    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    :catch_88
    move-exception v2

    const-string v4, "onPerformSync getExtTokenStr AuthenticatorException: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_95

    :catch_8f
    move-exception v2

    const-string v4, "onPerformSync getExtTokenStr OperationCanceledException: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_95
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_99
    :goto_99
    if-nez v2, :cond_a2

    new-instance v2, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;

    const/16 p1, 0x64

    invoke-direct {v2, p1}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;-><init>(I)V

    :cond_a2
    new-instance p1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;

    invoke-direct {p1, p0, v0, v2}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;-><init>(Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private static getExtraErrorMsgForResultOrNullIfFieldNotExists(Landroid/content/SyncResult;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->getResultMessageOrNullIfFieldNotExists(Landroid/content/SyncResult;)Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getResultMessageOrNullIfFieldNotExists(Landroid/content/SyncResult;)Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "miSyncResult"

    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    :try_start_e
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "resultMessage"

    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_24

    new-instance v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    return-object v1

    :cond_24
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "resultMessageField is null: Please file a bug to CloudService!!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_2c} :catch_2c

    :catch_2c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "get miSyncResultField: Please file a bug to CloudService!!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private handleExceptionIfKeyBagRelated(Lcom/xiaomi/micloudsdk/exception/SyncLocalException;)V
    .registers 5

    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->getErrorCode()I

    move-result v0

    const-string v1, "com.miui.cloudservice"

    const/16 v2, 0xbb8

    if-ne v0, v2, :cond_1f

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.miui.cloudservice.keybag.UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3b

    :cond_1f
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->getErrorCode()I

    move-result p1

    const/16 v0, 0xbb9

    if-ne p1, v0, :cond_3b

    iget-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.miui.cloudservice.keybag.DOWNLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method private static internalSetAuthError(Landroid/content/SyncResult;)V
    .registers 5

    iget-object p0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    return-void
.end method

.method private static internalSetCTAError(Landroid/content/SyncResult;)V
    .registers 6

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-string v0, "permission_error"

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static internalSetCloudStorageFullError(Landroid/content/SyncResult;)V
    .registers 6

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-string v0, "cloud_storage_full"

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static internalSetGDPRError(Landroid/content/SyncResult;)V
    .registers 6

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-string v0, "gdpr_error"

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static internalSetPauseSyncError(Landroid/content/SyncResult;)V
    .registers 6

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-string v0, "pause_limit"

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static internalSetPermissionLimit(Landroid/content/SyncResult;)V
    .registers 6

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-string v0, "permission_limit"

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static internalSetRequestError(Landroid/content/SyncResult;)V
    .registers 6

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    const-string v0, "request_error"

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static internalSetSecureSpaceLimitError(Landroid/content/SyncResult;)V
    .registers 6

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-string v0, "secure_space_limit"

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static internalSetSimActivatedError(Landroid/content/SyncResult;)V
    .registers 6

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-string v0, "sim_activated_error"

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static internalSetSyncSwitchOffError(Landroid/content/SyncResult;)V
    .registers 6

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-string v0, "switch_off"

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static internalSetUnknownError(Landroid/content/SyncResult;)V
    .registers 5

    iget-object p0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    return-void
.end method

.method private static internalSetWlanOnlyError(Landroid/content/SyncResult;)V
    .registers 6

    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    const-string v0, "wlan_only"

    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    return-void
.end method

.method private static invalidTokenAndReSyncNowIfFirstTimeFailed(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p4, "token_invalid_retry"

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "MiCloudSyncAdapterBase"

    if-eqz v1, :cond_16

    const-string p0, "Already retry with invalid token but still failed"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :cond_16
    const/4 v1, 0x1

    invoke-virtual {v0, p4, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p4, "AuthToken expired. Invalid and retry now"

    invoke-static {v2, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    iget-object p4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, p4, p3}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_2b
    return-void
.end method

.method private releaseLogger()V
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mSyncLogSender:Lcom/xiaomi/micloudsdk/sync/SyncLogSender;

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/sync/SyncLogSender;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mSyncLogSender:Lcom/xiaomi/micloudsdk/sync/SyncLogSender;

    return-void
.end method

.method public static setCloudStorageFullError(Landroid/content/SyncResult;)V
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetCloudStorageFullError(Landroid/content/SyncResult;)V

    return-void
.end method

.method private static setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->getResultMessageOrNullIfFieldNotExists(Landroid/content/SyncResult;)Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;->set(Ljava/lang/String;)V

    return-void
.end method

.method public static setPermissionError(Landroid/content/SyncResult;)V
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetCTAError(Landroid/content/SyncResult;)V

    return-void
.end method

.method public static setRequestError(Landroid/content/SyncResult;)V
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetRequestError(Landroid/content/SyncResult;)V

    return-void
.end method

.method public static setSecureSpaceLimitError(Landroid/content/SyncResult;)V
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetSecureSpaceLimitError(Landroid/content/SyncResult;)V

    return-void
.end method

.method private static setSyncResultByLocalException(Lcom/xiaomi/micloudsdk/exception/SyncLocalException;Landroid/content/SyncResult;)V
    .registers 2

    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->getErrorCode()I

    move-result p0

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setSyncResultByLocalExceptionCode(ILandroid/content/SyncResult;)V

    return-void
.end method

.method private static setSyncResultByLocalExceptionCode(ILandroid/content/SyncResult;)V
    .registers 2

    packed-switch p0, :pswitch_data_26

    packed-switch p0, :pswitch_data_32

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetUnknownError(Landroid/content/SyncResult;)V

    goto :goto_25

    :pswitch_a  #0x7d2
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetWlanOnlyError(Landroid/content/SyncResult;)V

    goto :goto_25

    :pswitch_e  #0x7d1
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetCloudStorageFullError(Landroid/content/SyncResult;)V

    goto :goto_25

    :pswitch_12  #0x7d0
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetGDPRError(Landroid/content/SyncResult;)V

    goto :goto_25

    :pswitch_16  #0x3eb
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetSecureSpaceLimitError(Landroid/content/SyncResult;)V

    goto :goto_25

    :pswitch_1a  #0x3ea
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetPermissionLimit(Landroid/content/SyncResult;)V

    goto :goto_25

    :pswitch_1e  #0x3e9
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetSimActivatedError(Landroid/content/SyncResult;)V

    goto :goto_25

    :pswitch_22  #0x3e8
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetCTAError(Landroid/content/SyncResult;)V

    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0x3e8
        :pswitch_22  #000003e8
        :pswitch_1e  #000003e9
        :pswitch_1a  #000003ea
        :pswitch_16  #000003eb
    .end packed-switch

    :pswitch_data_32
    .packed-switch 0x7d0
        :pswitch_12  #000007d0
        :pswitch_e  #000007d1
        :pswitch_a  #000007d2
    .end packed-switch
.end method

.method private static setSyncResultByServerException(Lcom/xiaomi/micloudsdk/exception/CloudServerException;Landroid/content/SyncResult;)V
    .registers 4

    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    const/16 v1, -0x2711

    if-eq v0, v1, :cond_37

    const/16 v1, 0x193

    if-eq v0, v1, :cond_33

    const/16 v1, 0x196

    if-eq v0, v1, :cond_33

    const/16 v1, 0x190

    if-eq v0, v1, :cond_33

    const/16 v1, 0x191

    if-eq v0, v1, :cond_2f

    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    const v1, 0xcb23

    if-ne v0, v1, :cond_21

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetGDPRError(Landroid/content/SyncResult;)V

    goto :goto_3c

    :cond_21
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->is5xxServerException()Z

    move-result p0

    if-eqz p0, :cond_2b

    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetRequestError(Landroid/content/SyncResult;)V

    goto :goto_3c

    :cond_2b
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetUnknownError(Landroid/content/SyncResult;)V

    goto :goto_3c

    :cond_2f
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetAuthError(Landroid/content/SyncResult;)V

    goto :goto_3c

    :cond_33
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetRequestError(Landroid/content/SyncResult;)V

    goto :goto_3c

    :cond_37
    iget p0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setSyncResultByLocalExceptionCode(ILandroid/content/SyncResult;)V

    :goto_3c
    return-void
.end method


# virtual methods
.method public abstract getErrorTitle()Ljava/lang/String;
.end method

.method public abstract getForbiddenErrorText()Ljava/lang/String;
.end method

.method public abstract getNotAcceptableErrorText()Ljava/lang/String;
.end method

.method public abstract getUnauthorizedErrorText()Ljava/lang/String;
.end method

.method public isForceSync()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isForceSync:Z

    return v0
.end method

.method public isIgnoreBatteryLow()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isForceSync:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreBatteryLow:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public isIgnoreTemperature()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isForceSync:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreTemperature:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public isIgnoreWifiSettings()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isForceSync:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreWifiSettings:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public isManualSync()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isManualSync:Z

    return v0
.end method

.method public abstract onPerformMiCloudSync(Landroid/os/Bundle;)V
.end method

.method public onPerformMiCloudSyncComplete(Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;)V
    .registers 2

    return-void
.end method

.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v15, p3

    move-object/from16 v13, p5

    const-string v4, "MiCloudSyncAdapterBase"

    const-string v0, "check_sync_error_refactor"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAccount:Landroid/accounts/Account;

    iput-object v15, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthority:Ljava/lang/String;

    iput-object v13, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mSyncResult:Landroid/content/SyncResult;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SyncLog["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v0, "onPerformSync: ---sync start---"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "authority: "

    const-string v5, ", extras: "

    invoke-static {v0, v15, v5}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;->SYNC_EXTRAS_FORCE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isForceSync:Z

    const-string v0, "micloud_ignore_temperature"

    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreTemperature:Z

    const-string v0, "micloud_ignore_wifi_settings"

    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreWifiSettings:Z

    const-string v0, "micloud_ignore_battery_low"

    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreBatteryLow:Z

    const-string v0, "force"

    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isManualSync:Z

    const-string v0, "ignore_backoff"

    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreBackoff:Z

    const-string v0, "ignore_settings"

    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreSettings:Z

    iget-boolean v6, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isForceSync:Z

    if-nez v6, :cond_92

    iget-boolean v6, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isManualSync:Z

    if-nez v6, :cond_92

    if-eqz v0, :cond_90

    goto :goto_92

    :cond_90
    move v14, v5

    goto :goto_94

    :cond_92
    :goto_92
    const/4 v0, 0x1

    move v14, v0

    :goto_94
    iget-object v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v14}, Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;->statOnSyncStart(Landroid/content/Context;Z)V

    invoke-direct {v1, v15}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->acquireLogger(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncStartLogInfo;

    invoke-direct {v0, v15, v11, v12, v3}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncStartLogInfo;-><init>(Ljava/lang/String;JLandroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncStartLogInfo;->generateLogInfoString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->syncLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v15}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->generateCurrentSyncDataInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;

    move-result-object v16

    const-string v0, "Before Sync: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->syncLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->createSuccessResult()Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    move-result-object v0

    iget-object v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    sget-object v6, Lz3/a;->a:La/b;

    sget-object v6, Lx3/a;->a:La/b;

    invoke-virtual {v6, v5}, La/b;->L(Landroid/content/Context;)Z

    move-result v5

    sget-object v6, Lz3/a;->a:La/b;

    invoke-virtual {v6, v5, v13}, La/b;->Z(ZLandroid/content/SyncResult;)V

    if-nez v5, :cond_fd

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gdpr Permission deny: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetGDPRError(Landroid/content/SyncResult;)V

    new-instance v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;

    const/16 v2, 0x7d0

    invoke-direct {v0, v2}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;-><init>(I)V

    const-string v3, "gdpr_deny"

    invoke-static {v0, v2, v3}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->createFailResult(Ljava/lang/Throwable;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    move-result-object v0

    goto/16 :goto_2a5

    :cond_fd
    invoke-static {}, Lmiui/cloud/util/SyncAutoSettingUtil;->getXiaomiGlobalSyncAutomatically()Z

    move-result v5

    if-eqz v5, :cond_28c

    invoke-static {v2, v15}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10b

    goto/16 :goto_28c

    :cond_10b
    iget-object v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAccount:Landroid/accounts/Account;

    iget-object v7, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->isSyncPausing(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_132

    const-string v0, "onPerformSync: sync is set to pause. do not sync!!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetPauseSyncError(Landroid/content/SyncResult;)V

    new-instance v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;

    const/16 v2, 0x7d4

    invoke-direct {v0, v2}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;-><init>(I)V

    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->getPauseLimitErrorLegacyCode()I

    move-result v2

    const-string v3, "pause_limit"

    invoke-static {v0, v2, v3}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->createFailResult(Ljava/lang/Throwable;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    move-result-object v0

    goto/16 :goto_2a5

    :cond_132
    iget-object v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAccount:Landroid/accounts/Account;

    iget-object v7, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-direct {v1, v5, v6, v7}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->getExtTokenResult(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;->access$000(Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    invoke-static {v5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;->access$100(Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;)Ljava/lang/Throwable;

    move-result-object v6

    const-string v7, "auth_token_error"

    if-eqz v6, :cond_160

    const-string v0, "onPerformSync: Tried 3 times, but get null token."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetAuthError(Landroid/content/SyncResult;)V

    invoke-static {v5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;->access$100(Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->getAuthTokenErrorLegacyCode()I

    move-result v2

    invoke-static {v0, v2, v7}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->createFailResult(Ljava/lang/Throwable;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    move-result-object v0

    goto/16 :goto_2a5

    :cond_160
    iget-object v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    invoke-static {v5}, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->parse(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    move-result-object v5

    iput-object v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    invoke-virtual {v1, v5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->onTransformExtAuthToken(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V

    iget-object v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    if-nez v5, :cond_18f

    const-string v0, "onPerformSync: Cannot parse ext token"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetAuthError(Landroid/content/SyncResult;)V

    iget-object v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    invoke-static {v0, v2, v15, v4, v3}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->invalidTokenAndReSyncNowIfFirstTimeFailed(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;-><init>(I)V

    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->getAuthTokenErrorLegacyCode()I

    move-result v2

    invoke-static {v0, v2, v7}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->createFailResult(Ljava/lang/Throwable;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    move-result-object v0

    goto/16 :goto_2a5

    :cond_18f
    iget-boolean v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isForceSync:Z

    if-nez v5, :cond_19e

    iget-boolean v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isManualSync:Z

    if-nez v5, :cond_19e

    iget-boolean v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreSettings:Z

    if-eqz v5, :cond_19c

    goto :goto_19e

    :cond_19c
    const/4 v5, 0x0

    goto :goto_19f

    :cond_19e
    :goto_19e
    const/4 v5, 0x1

    :goto_19f
    if-eqz v5, :cond_1a4

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/SyncRequestParam;->incrementManualSyncCountAndRecordCurMillis()V

    :cond_1a4
    :try_start_1a4
    invoke-virtual {v1, v3}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->onPerformMiCloudSync(Landroid/os/Bundle;)V
    :try_end_1a7
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_1a4 .. :try_end_1a7} :catch_238
    .catch Lcom/xiaomi/micloudsdk/exception/SyncLocalException; {:try_start_1a4 .. :try_end_1a7} :catch_20a
    .catch Ljava/lang/SecurityException; {:try_start_1a4 .. :try_end_1a7} :catch_1ec
    .catchall {:try_start_1a4 .. :try_end_1a7} :catchall_1e9

    if-eqz v5, :cond_1ac

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/SyncRequestParam;->decrementManualSyncCount()V

    :cond_1ac
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v2

    if-eqz v2, :cond_1e2

    const-string v0, "onPerformSync: Error without throw CloudException: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/utils/SyncExceptionUtils;->getErrorStringForLog(Landroid/content/SyncResult;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;

    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasHardError()Z

    move-result v2

    if-eqz v2, :cond_1d0

    const/4 v2, 0x2

    goto :goto_1d1

    :cond_1d0
    const/4 v2, 0x1

    :goto_1d1
    invoke-direct {v0, v2}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;-><init>(I)V

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->getErrorCodeBySyncResult(Landroid/content/SyncResult;)I

    move-result v2

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/stat/MiCloudErrorStatReason;->getSyncResultErrorReasonForStats(Landroid/content/SyncResult;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->createFailResult(Ljava/lang/Throwable;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    move-result-object v0

    goto/16 :goto_2a5

    :cond_1e2
    const-string v2, "onPerformSync: No error found. ---Success---"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a5

    :catchall_1e9
    move-exception v0

    goto/16 :goto_286

    :catch_1ec
    move-exception v0

    move-object v2, v0

    :try_start_1ee
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecurityException: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->syncLog(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :catch_20a
    move-exception v0

    move-object v2, v0

    invoke-static {v2, v13}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setSyncResultByLocalException(Lcom/xiaomi/micloudsdk/exception/SyncLocalException;Landroid/content/SyncResult;)V

    invoke-static {v2}, Lcom/xiaomi/micloudsdk/stat/MiCloudErrorStatReason;->getLocalExceptionReasonForStats(Lcom/xiaomi/micloudsdk/exception/SyncLocalException;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPerformSync local exception, reason: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v2}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->handleExceptionIfKeyBagRelated(Lcom/xiaomi/micloudsdk/exception/SyncLocalException;)V

    invoke-static {v2}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->getErrorCodeByLocalException(Lcom/xiaomi/micloudsdk/exception/SyncLocalException;)I

    move-result v3

    invoke-static {v2, v3, v0}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->createFailResult(Ljava/lang/Throwable;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    move-result-object v0
    :try_end_232
    .catchall {:try_start_1ee .. :try_end_232} :catchall_1e9

    if-eqz v5, :cond_2a5

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/SyncRequestParam;->decrementManualSyncCount()V

    goto :goto_2a5

    :catch_238
    move-exception v0

    move-object v6, v0

    :try_start_23a
    invoke-static {v6, v13}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setSyncResultByServerException(Lcom/xiaomi/micloudsdk/exception/CloudServerException;Landroid/content/SyncResult;)V

    iget v0, v6, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    const/16 v7, 0x191

    if-ne v0, v7, :cond_24a

    iget-object v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    invoke-static {v0, v2, v15, v7, v3}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->invalidTokenAndReSyncNowIfFirstTimeFailed(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_24a
    invoke-virtual {v6}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->is5xxServerException()Z

    move-result v0

    if-eqz v0, :cond_25e

    invoke-virtual {v6}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->get5xxServerExceptionRetryTime()J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long/2addr v2, v7

    const-wide/16 v7, 0x708

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_260

    :cond_25e
    const-wide/16 v2, 0x0

    :goto_260
    invoke-static {v6}, Lcom/xiaomi/micloudsdk/stat/MiCloudErrorStatReason;->getServerExceptionReasonForStats(Lcom/xiaomi/micloudsdk/exception/CloudServerException;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPerformSync server exception, reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->getErrorCodeByServerException(Lcom/xiaomi/micloudsdk/exception/CloudServerException;)I

    move-result v4

    invoke-static {v6, v4, v0}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->createFailResult(Ljava/lang/Throwable;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    move-result-object v0
    :try_end_280
    .catchall {:try_start_23a .. :try_end_280} :catchall_1e9

    if-eqz v5, :cond_2a7

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/SyncRequestParam;->decrementManualSyncCount()V

    goto :goto_2a7

    :goto_286
    if-eqz v5, :cond_28b

    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/SyncRequestParam;->decrementManualSyncCount()V

    :cond_28b
    throw v0

    :cond_28c
    :goto_28c
    const-string v0, "onPerformSync: sync switch off. do not sync!!"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetSyncSwitchOffError(Landroid/content/SyncResult;)V

    new-instance v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;

    const/16 v2, 0x7d3

    invoke-direct {v0, v2}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;-><init>(I)V

    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->getSyncSwitchOffErrorLegacyCode()I

    move-result v2

    const-string v3, "switch_off"

    invoke-static {v0, v2, v3}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->createFailResult(Ljava/lang/Throwable;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    move-result-object v0

    :cond_2a5
    :goto_2a5
    const-wide/16 v2, 0x0

    :cond_2a7
    :goto_2a7
    move-wide v7, v2

    iget-object v2, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v2, v15}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->generateCurrentSyncDataInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;

    move-result-object v17

    const-string v2, "After Sync: "

    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->syncLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    new-instance v20, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;

    iget-boolean v4, v0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->isSuccess:Z

    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->getExtraErrorMsgForResultOrNullIfFieldNotExists(Landroid/content/SyncResult;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    move-wide v5, v11

    move-wide/from16 v21, v7

    move-wide/from16 v7, v18

    invoke-direct/range {v2 .. v9}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;-><init>(Ljava/lang/String;ZJJLjava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->generateLogInfoString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->syncLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    iget-boolean v4, v0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->isSuccess:Z

    iget-object v5, v0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->errorReasonForStats:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->getUnSyncedDataCount()I

    move-result v3

    int-to-long v7, v3

    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->getUnSyncedDataCount()I

    move-result v3

    int-to-long v9, v3

    move v3, v14

    move-object/from16 v6, p3

    move-wide/from16 v13, v18

    invoke-static/range {v2 .. v14}, Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;->statOnSyncEnd(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;JJJJ)V

    iget-boolean v2, v0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->isSuccess:Z

    if-nez v2, :cond_305

    iget-object v2, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->errorCodeLegacy:I

    invoke-static {v2, v15, v3}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->recordSyncResult(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_30a

    :cond_305
    iget-object v2, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    invoke-static {v2, v15}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->recordSyncResultSuccess(Landroid/content/Context;Ljava/lang/String;)V

    :goto_30a
    move-object/from16 v2, p5

    iget-wide v3, v2, Landroid/content/SyncResult;->delayUntil:J

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/content/SyncResult;->delayUntil:J

    iget-object v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthority:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;->getGuardDelayUntilInSec(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/content/SyncResult;->delayUntil:J

    iget-boolean v5, v0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->isSuccess:Z

    if-nez v5, :cond_330

    move-wide/from16 v5, v21

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/content/SyncResult;->delayUntil:J

    :cond_330
    invoke-virtual {v1, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->onPerformMiCloudSyncComplete(Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;)V

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->releaseLogger()V

    return-void
.end method

.method public onTransformExtAuthToken(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V
    .registers 2

    return-void
.end method

.method public syncLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mSyncLogSender:Lcom/xiaomi/micloudsdk/sync/SyncLogSender;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/SyncLogSender;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tag or msg is null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
