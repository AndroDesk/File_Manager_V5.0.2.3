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
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 4
    const/4 p2, 0x2

    .line 5
    new-array v0, p2, [Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mTickets:[Ljava/lang/String;

    .line 9
    new-array p2, p2, [Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mNumbers:[Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mResolver:Landroid/content/ContentResolver;

    .line 21
    iput-object p3, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthType:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private acquireLogger(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncLogSenderFactory;->newSyncLogSender(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/SyncLogSender;

    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mSyncLogSender:Lcom/xiaomi/micloudsdk/sync/SyncLogSender;

    .line 9
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/sync/SyncLogSender;->openSyncLog()V

    .line 12
    return-void
.end method

.method private getExtTokenResult(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;
    .registers 15

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v2, v0

    .line 4
    :goto_3
    const/4 v3, 0x3

    .line 5
    if-ge v1, v3, :cond_99

    .line 7
    const-string v3, "MiCloudSyncAdapterBase"

    .line 9
    if-eqz v1, :cond_f

    .line 11
    const-wide/16 v4, 0x3e8

    .line 13
    :try_start_c
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 16
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    const-string v5, "onPerformSync: getting auth token. authority: "

    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 39
    move-result-object v5

    .line 40
    iget-object v7, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthType:Ljava/lang/String;

    .line 42
    const/4 v8, 0x1

    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    move-object v6, p2

    .line 46
    invoke-virtual/range {v5 .. v10}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 49
    move-result-object v4

    .line 50
    if-nez v4, :cond_39

    .line 52
    const-string v4, "onPerformSync: getExtTokenStr null future."

    .line 54
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    goto :goto_95

    .line 58
    :cond_39
    invoke-interface {v4}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Landroid/os/Bundle;

    .line 64
    if-nez v4, :cond_47

    .line 66
    const-string v4, "onPerformSync: getExtTokenStr null future result."

    .line 68
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    goto :goto_95

    .line 72
    :cond_47
    const-string v5, "authtoken"

    .line 74
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v4

    .line 78
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_59

    .line 84
    const-string v4, "onPerformSync: getExtTokenStr future result textEmpty."

    .line 86
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    goto :goto_95

    .line 90
    :cond_59
    new-instance v2, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;

    .line 92
    invoke-direct {v2, p0, v4, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;-><init>(Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5e
    .catch Landroid/accounts/OperationCanceledException; {:try_start_c .. :try_end_5e} :catch_8f
    .catch Landroid/accounts/AuthenticatorException; {:try_start_c .. :try_end_5e} :catch_88
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_5e} :catch_6e
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_5e} :catch_5f

    .line 95
    return-object v2

    .line 96
    :catch_5f
    move-exception p1

    .line 97
    move-object v2, p1

    .line 98
    const-string p1, "onPerformSync getExtTokenStr InterruptedException: "

    .line 100
    invoke-static {v3, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 110
    goto :goto_99

    .line 111
    :catch_6e
    move-exception v2

    .line 112
    const-string v4, "onPerformSync getExtTokenStr IOException: "

    .line 114
    invoke-static {v4}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    move-result-object v4

    .line 118
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 121
    move-result-object v5

    .line 122
    invoke-static {v5}, Lmiui/cloud/log/PrivacyFilter;->filterPrivacyLog(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v4

    .line 133
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    goto :goto_95

    .line 137
    :catch_88
    move-exception v2

    .line 138
    const-string v4, "onPerformSync getExtTokenStr AuthenticatorException: "

    .line 140
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    goto :goto_95

    .line 144
    :catch_8f
    move-exception v2

    .line 145
    const-string v4, "onPerformSync getExtTokenStr OperationCanceledException: "

    .line 147
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    :goto_95
    add-int/lit8 v1, v1, 0x1

    .line 152
    goto/16 :goto_3

    .line 154
    :cond_99
    :goto_99
    if-nez v2, :cond_a2

    .line 156
    new-instance v2, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;

    .line 158
    const/16 p1, 0x64

    .line 160
    invoke-direct {v2, p1}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;-><init>(I)V

    .line 163
    :cond_a2
    new-instance p1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;

    .line 165
    invoke-direct {p1, p0, v0, v2}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;-><init>(Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    return-object p1
.end method

.method private static getExtraErrorMsgForResultOrNullIfFieldNotExists(Landroid/content/SyncResult;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->getResultMessageOrNullIfFieldNotExists(Landroid/content/SyncResult;)Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;

    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;->get()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static getResultMessageOrNullIfFieldNotExists(Landroid/content/SyncResult;)Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "miSyncResult"

    .line 7
    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_e

    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_e
    :try_start_e
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    move-result-object v0

    .line 23
    const-string v1, "resultMessage"

    .line 25
    invoke-static {v0, v1}, Lcom/xiaomi/micloudsdk/utils/ReflectUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_24

    .line 31
    new-instance v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;

    .line 33
    invoke-direct {v1, p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 36
    return-object v1

    .line 37
    :cond_24
    new-instance p0, Ljava/lang/RuntimeException;

    .line 39
    const-string v0, "resultMessageField is null: Please file a bug to CloudService!!"

    .line 41
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_2c} :catch_2c

    .line 45
    :catch_2c
    new-instance p0, Ljava/lang/RuntimeException;

    .line 47
    const-string v0, "get miSyncResultField: Please file a bug to CloudService!!"

    .line 49
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p0
.end method

.method private handleExceptionIfKeyBagRelated(Lcom/xiaomi/micloudsdk/exception/SyncLocalException;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->getErrorCode()I

    .line 4
    move-result v0

    .line 5
    const-string v1, "com.miui.cloudservice"

    .line 7
    const/16 v2, 0xbb8

    .line 9
    if-ne v0, v2, :cond_1f

    .line 11
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    .line 13
    new-instance v0, Landroid/content/Intent;

    .line 15
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    move-result-object v0

    .line 22
    const-string v1, "com.miui.cloudservice.keybag.UPDATE"

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 31
    goto :goto_3b

    .line 32
    :cond_1f
    invoke-virtual {p1}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->getErrorCode()I

    .line 35
    move-result p1

    .line 36
    const/16 v0, 0xbb9

    .line 38
    if-ne p1, v0, :cond_3b

    .line 40
    iget-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Landroid/content/Intent;

    .line 44
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    move-result-object v0

    .line 51
    const-string v1, "com.miui.cloudservice.keybag.DOWNLOAD"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    :cond_3b
    :goto_3b
    return-void
.end method

.method private static internalSetAuthError(Landroid/content/SyncResult;)V
    .registers 5

    .line 1
    iget-object p0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 3
    iget-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 5
    const-wide/16 v2, 0x1

    .line 7
    add-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 10
    return-void
.end method

.method private static internalSetCTAError(Landroid/content/SyncResult;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 3
    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 5
    const-wide/16 v3, 0x1

    .line 7
    add-long/2addr v1, v3

    .line 8
    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 10
    const-string v0, "permission_error"

    .line 12
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private static internalSetCloudStorageFullError(Landroid/content/SyncResult;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 3
    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 5
    const-wide/16 v3, 0x1

    .line 7
    add-long/2addr v1, v3

    .line 8
    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 10
    const-string v0, "cloud_storage_full"

    .line 12
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private static internalSetGDPRError(Landroid/content/SyncResult;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 3
    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 5
    const-wide/16 v3, 0x1

    .line 7
    add-long/2addr v1, v3

    .line 8
    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 10
    const-string v0, "gdpr_error"

    .line 12
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private static internalSetPauseSyncError(Landroid/content/SyncResult;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 3
    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 5
    const-wide/16 v3, 0x1

    .line 7
    add-long/2addr v1, v3

    .line 8
    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 10
    const-string v0, "pause_limit"

    .line 12
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private static internalSetPermissionLimit(Landroid/content/SyncResult;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 3
    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 5
    const-wide/16 v3, 0x1

    .line 7
    add-long/2addr v1, v3

    .line 8
    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 10
    const-string v0, "permission_limit"

    .line 12
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private static internalSetRequestError(Landroid/content/SyncResult;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 3
    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 5
    const-wide/16 v3, 0x1

    .line 7
    add-long/2addr v1, v3

    .line 8
    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 10
    const-string v0, "request_error"

    .line 12
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private static internalSetSecureSpaceLimitError(Landroid/content/SyncResult;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 3
    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 5
    const-wide/16 v3, 0x1

    .line 7
    add-long/2addr v1, v3

    .line 8
    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 10
    const-string v0, "secure_space_limit"

    .line 12
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private static internalSetSimActivatedError(Landroid/content/SyncResult;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 3
    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 5
    const-wide/16 v3, 0x1

    .line 7
    add-long/2addr v1, v3

    .line 8
    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 10
    const-string v0, "sim_activated_error"

    .line 12
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private static internalSetSyncSwitchOffError(Landroid/content/SyncResult;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 3
    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 5
    const-wide/16 v3, 0x1

    .line 7
    add-long/2addr v1, v3

    .line 8
    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 10
    const-string v0, "switch_off"

    .line 12
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private static internalSetUnknownError(Landroid/content/SyncResult;)V
    .registers 5

    .line 1
    iget-object p0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 3
    iget-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 5
    const-wide/16 v2, 0x1

    .line 7
    add-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 10
    return-void
.end method

.method private static internalSetWlanOnlyError(Landroid/content/SyncResult;)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 3
    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 5
    const-wide/16 v3, 0x1

    .line 7
    add-long/2addr v1, v3

    .line 8
    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 10
    const-string v0, "wlan_only"

    .line 12
    invoke-static {p0, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private static invalidTokenAndReSyncNowIfFirstTimeFailed(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 6
    const-string p4, "token_invalid_retry"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, p4, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    move-result v1

    .line 13
    const-string v2, "MiCloudSyncAdapterBase"

    .line 15
    if-eqz v1, :cond_16

    .line 17
    const-string p0, "Already retry with invalid token but still failed"

    .line 19
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    goto :goto_2b

    .line 23
    :cond_16
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, p4, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    const-string p4, "AuthToken expired. Invalid and retry now"

    .line 29
    invoke-static {v2, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 35
    move-result-object p0

    .line 36
    iget-object p4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p4, p3}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 44
    :goto_2b
    return-void
.end method

.method private releaseLogger()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mSyncLogSender:Lcom/xiaomi/micloudsdk/sync/SyncLogSender;

    .line 3
    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/sync/SyncLogSender;->release()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mSyncLogSender:Lcom/xiaomi/micloudsdk/sync/SyncLogSender;

    .line 9
    return-void
.end method

.method public static setCloudStorageFullError(Landroid/content/SyncResult;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetCloudStorageFullError(Landroid/content/SyncResult;)V

    .line 4
    return-void
.end method

.method private static setExtraErrorMsgForResultIfFieldExists(Landroid/content/SyncResult;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->getResultMessageOrNullIfFieldNotExists(Landroid/content/SyncResult;)Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;

    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-virtual {p0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ResultMessage;->set(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public static setPermissionError(Landroid/content/SyncResult;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetCTAError(Landroid/content/SyncResult;)V

    .line 4
    return-void
.end method

.method public static setRequestError(Landroid/content/SyncResult;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetRequestError(Landroid/content/SyncResult;)V

    .line 4
    return-void
.end method

.method public static setSecureSpaceLimitError(Landroid/content/SyncResult;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetSecureSpaceLimitError(Landroid/content/SyncResult;)V

    .line 4
    return-void
.end method

.method private static setSyncResultByLocalException(Lcom/xiaomi/micloudsdk/exception/SyncLocalException;Landroid/content/SyncResult;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;->getErrorCode()I

    .line 4
    move-result p0

    .line 5
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setSyncResultByLocalExceptionCode(ILandroid/content/SyncResult;)V

    .line 8
    return-void
.end method

.method private static setSyncResultByLocalExceptionCode(ILandroid/content/SyncResult;)V
    .registers 2

    .line 1
    packed-switch p0, :pswitch_data_26

    .line 4
    packed-switch p0, :pswitch_data_32

    .line 7
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetUnknownError(Landroid/content/SyncResult;)V

    .line 10
    goto :goto_25

    .line 11
    :pswitch_a  #0x7d2
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetWlanOnlyError(Landroid/content/SyncResult;)V

    .line 14
    goto :goto_25

    .line 15
    :pswitch_e  #0x7d1
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetCloudStorageFullError(Landroid/content/SyncResult;)V

    .line 18
    goto :goto_25

    .line 19
    :pswitch_12  #0x7d0
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetGDPRError(Landroid/content/SyncResult;)V

    .line 22
    goto :goto_25

    .line 23
    :pswitch_16  #0x3eb
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetSecureSpaceLimitError(Landroid/content/SyncResult;)V

    .line 26
    goto :goto_25

    .line 27
    :pswitch_1a  #0x3ea
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetPermissionLimit(Landroid/content/SyncResult;)V

    .line 30
    goto :goto_25

    .line 31
    :pswitch_1e  #0x3e9
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetSimActivatedError(Landroid/content/SyncResult;)V

    .line 34
    goto :goto_25

    .line 35
    :pswitch_22  #0x3e8
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetCTAError(Landroid/content/SyncResult;)V

    .line 38
    :goto_25
    return-void

    .line 39
    :pswitch_data_26
    .packed-switch 0x3e8
        :pswitch_22  #000003e8
        :pswitch_1e  #000003e9
        :pswitch_1a  #000003ea
        :pswitch_16  #000003eb
    .end packed-switch

    .line 51
    :pswitch_data_32
    .packed-switch 0x7d0
        :pswitch_12  #000007d0
        :pswitch_e  #000007d1
        :pswitch_a  #000007d2
    .end packed-switch
.end method

.method private static setSyncResultByServerException(Lcom/xiaomi/micloudsdk/exception/CloudServerException;Landroid/content/SyncResult;)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    .line 3
    const/16 v1, -0x2711

    .line 5
    if-eq v0, v1, :cond_37

    .line 7
    const/16 v1, 0x193

    .line 9
    if-eq v0, v1, :cond_33

    .line 11
    const/16 v1, 0x196

    .line 13
    if-eq v0, v1, :cond_33

    .line 15
    const/16 v1, 0x190

    .line 17
    if-eq v0, v1, :cond_33

    .line 19
    const/16 v1, 0x191

    .line 21
    if-eq v0, v1, :cond_2f

    .line 23
    iget v0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    .line 25
    const v1, 0xcb23

    .line 28
    if-ne v0, v1, :cond_21

    .line 30
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetGDPRError(Landroid/content/SyncResult;)V

    .line 33
    goto :goto_3c

    .line 34
    :cond_21
    invoke-virtual {p0}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->is5xxServerException()Z

    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_2b

    .line 40
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetRequestError(Landroid/content/SyncResult;)V

    .line 43
    goto :goto_3c

    .line 44
    :cond_2b
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetUnknownError(Landroid/content/SyncResult;)V

    .line 47
    goto :goto_3c

    .line 48
    :cond_2f
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetAuthError(Landroid/content/SyncResult;)V

    .line 51
    goto :goto_3c

    .line 52
    :cond_33
    invoke-static {p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetRequestError(Landroid/content/SyncResult;)V

    .line 55
    goto :goto_3c

    .line 56
    :cond_37
    iget p0, p0, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->code:I

    .line 58
    invoke-static {p0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setSyncResultByLocalExceptionCode(ILandroid/content/SyncResult;)V

    .line 61
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

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isForceSync:Z

    .line 3
    return v0
.end method

.method public isIgnoreBatteryLow()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isForceSync:Z

    .line 3
    if-nez v0, :cond_b

    .line 5
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreBatteryLow:Z

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 13
    :goto_c
    return v0
.end method

.method public isIgnoreTemperature()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isForceSync:Z

    .line 3
    if-nez v0, :cond_b

    .line 5
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreTemperature:Z

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 13
    :goto_c
    return v0
.end method

.method public isIgnoreWifiSettings()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isForceSync:Z

    .line 3
    if-nez v0, :cond_b

    .line 5
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreWifiSettings:Z

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_b

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 13
    :goto_c
    return v0
.end method

.method public isManualSync()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isManualSync:Z

    .line 3
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

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    move-object/from16 v3, p2

    .line 7
    move-object/from16 v15, p3

    .line 9
    move-object/from16 v13, p5

    .line 11
    const-string v4, "MiCloudSyncAdapterBase"

    .line 13
    const-string v0, "check_sync_error_refactor"

    .line 15
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iput-object v2, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAccount:Landroid/accounts/Account;

    .line 20
    iput-object v15, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthority:Ljava/lang/String;

    .line 22
    iput-object v13, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mSyncResult:Landroid/content/SyncResult;

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    move-result-wide v11

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v5, "SyncLog["

    .line 35
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v5, "]"

    .line 43
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v10

    .line 50
    const-string v0, "onPerformSync: ---sync start---"

    .line 52
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "authority: "

    .line 57
    const-string v5, ", extras: "

    .line 59
    invoke-static {v0, v15, v5}, La/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    move-result-object v0

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;->SYNC_EXTRAS_FORCE:Ljava/lang/String;

    .line 79
    const/4 v5, 0x0

    .line 80
    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 83
    move-result v0

    .line 84
    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isForceSync:Z

    .line 86
    const-string v0, "micloud_ignore_temperature"

    .line 88
    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 91
    move-result v0

    .line 92
    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreTemperature:Z

    .line 94
    const-string v0, "micloud_ignore_wifi_settings"

    .line 96
    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 99
    move-result v0

    .line 100
    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreWifiSettings:Z

    .line 102
    const-string v0, "micloud_ignore_battery_low"

    .line 104
    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 107
    move-result v0

    .line 108
    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreBatteryLow:Z

    .line 110
    const-string v0, "force"

    .line 112
    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 115
    move-result v0

    .line 116
    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isManualSync:Z

    .line 118
    const-string v0, "ignore_backoff"

    .line 120
    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 123
    move-result v0

    .line 124
    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreBackoff:Z

    .line 126
    const-string v0, "ignore_settings"

    .line 128
    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 131
    move-result v0

    .line 132
    iput-boolean v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreSettings:Z

    .line 134
    iget-boolean v6, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isForceSync:Z

    .line 136
    if-nez v6, :cond_92

    .line 138
    iget-boolean v6, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isManualSync:Z

    .line 140
    if-nez v6, :cond_92

    .line 142
    if-eqz v0, :cond_90

    .line 144
    goto :goto_92

    .line 145
    :cond_90
    move v14, v5

    .line 146
    goto :goto_94

    .line 147
    :cond_92
    :goto_92
    const/4 v0, 0x1

    .line 148
    move v14, v0

    .line 149
    :goto_94
    iget-object v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    .line 151
    invoke-static {v0, v14}, Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;->statOnSyncStart(Landroid/content/Context;Z)V

    .line 154
    invoke-direct {v1, v15}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->acquireLogger(Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncStartLogInfo;

    .line 159
    invoke-direct {v0, v15, v11, v12, v3}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncStartLogInfo;-><init>(Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 162
    invoke-virtual {v0}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncStartLogInfo;->generateLogInfoString()Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v1, v10, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->syncLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    .line 171
    invoke-static {v0, v15}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->generateCurrentSyncDataInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;

    .line 174
    move-result-object v16

    .line 175
    const-string v0, "Before Sync: "

    .line 177
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    move-result-object v0

    .line 181
    invoke-virtual/range {v16 .. v16}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->toString()Ljava/lang/String;

    .line 184
    move-result-object v5

    .line 185
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v1, v10, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->syncLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->createSuccessResult()Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    .line 198
    move-result-object v0

    .line 199
    iget-object v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    .line 201
    sget-object v6, Lz3/a;->a:La/b;

    .line 203
    sget-object v6, Lx3/a;->a:La/b;

    .line 205
    invoke-virtual {v6, v5}, La/b;->L(Landroid/content/Context;)Z

    .line 208
    move-result v5

    .line 209
    sget-object v6, Lz3/a;->a:La/b;

    .line 211
    invoke-virtual {v6, v5, v13}, La/b;->Z(ZLandroid/content/SyncResult;)V

    .line 214
    if-nez v5, :cond_fd

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    .line 218
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    const-string v2, "Gdpr Permission deny: "

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object v0

    .line 233
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetGDPRError(Landroid/content/SyncResult;)V

    .line 239
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;

    .line 241
    const/16 v2, 0x7d0

    .line 243
    invoke-direct {v0, v2}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;-><init>(I)V

    .line 246
    const-string v3, "gdpr_deny"

    .line 248
    invoke-static {v0, v2, v3}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->createFailResult(Ljava/lang/Throwable;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    .line 251
    move-result-object v0

    .line 252
    goto/16 :goto_2a5

    .line 254
    :cond_fd
    invoke-static {}, Lmiui/cloud/util/SyncAutoSettingUtil;->getXiaomiGlobalSyncAutomatically()Z

    .line 257
    move-result v5

    .line 258
    if-eqz v5, :cond_28c

    .line 260
    invoke-static {v2, v15}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    .line 263
    move-result v5

    .line 264
    if-nez v5, :cond_10b

    .line 266
    goto/16 :goto_28c

    .line 268
    :cond_10b
    iget-object v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    .line 270
    iget-object v6, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAccount:Landroid/accounts/Account;

    .line 272
    iget-object v7, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthority:Ljava/lang/String;

    .line 274
    invoke-static {v5, v6, v7}, Lcom/xiaomi/micloudsdk/sync/MiCloudResolver;->isSyncPausing(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Z

    .line 277
    move-result v5

    .line 278
    if-eqz v5, :cond_132

    .line 280
    const-string v0, "onPerformSync: sync is set to pause. do not sync!!"

    .line 282
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetPauseSyncError(Landroid/content/SyncResult;)V

    .line 288
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;

    .line 290
    const/16 v2, 0x7d4

    .line 292
    invoke-direct {v0, v2}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;-><init>(I)V

    .line 295
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->getPauseLimitErrorLegacyCode()I

    .line 298
    move-result v2

    .line 299
    const-string v3, "pause_limit"

    .line 301
    invoke-static {v0, v2, v3}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->createFailResult(Ljava/lang/Throwable;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    .line 304
    move-result-object v0

    .line 305
    goto/16 :goto_2a5

    .line 307
    :cond_132
    iget-object v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    .line 309
    iget-object v6, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAccount:Landroid/accounts/Account;

    .line 311
    iget-object v7, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthority:Ljava/lang/String;

    .line 313
    invoke-direct {v1, v5, v6, v7}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->getExtTokenResult(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;

    .line 316
    move-result-object v5

    .line 317
    invoke-static {v5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;->access$000(Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;)Ljava/lang/String;

    .line 320
    move-result-object v6

    .line 321
    iput-object v6, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    .line 323
    invoke-static {v5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;->access$100(Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;)Ljava/lang/Throwable;

    .line 326
    move-result-object v6

    .line 327
    const-string v7, "auth_token_error"

    .line 329
    if-eqz v6, :cond_160

    .line 331
    const-string v0, "onPerformSync: Tried 3 times, but get null token."

    .line 333
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetAuthError(Landroid/content/SyncResult;)V

    .line 339
    invoke-static {v5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;->access$100(Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase$ExtTokenResult;)Ljava/lang/Throwable;

    .line 342
    move-result-object v0

    .line 343
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->getAuthTokenErrorLegacyCode()I

    .line 346
    move-result v2

    .line 347
    invoke-static {v0, v2, v7}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->createFailResult(Ljava/lang/Throwable;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    .line 350
    move-result-object v0

    .line 351
    goto/16 :goto_2a5

    .line 353
    :cond_160
    iget-object v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    .line 355
    invoke-static {v5}, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->parse(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 358
    move-result-object v5

    .line 359
    iput-object v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 361
    invoke-virtual {v1, v5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->onTransformExtAuthToken(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V

    .line 364
    iget-object v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 366
    if-nez v5, :cond_18f

    .line 368
    const-string v0, "onPerformSync: Cannot parse ext token"

    .line 370
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetAuthError(Landroid/content/SyncResult;)V

    .line 376
    iget-object v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    .line 378
    iget-object v4, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    .line 380
    invoke-static {v0, v2, v15, v4, v3}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->invalidTokenAndReSyncNowIfFirstTimeFailed(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 383
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;

    .line 385
    const/16 v2, 0x64

    .line 387
    invoke-direct {v0, v2}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;-><init>(I)V

    .line 390
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->getAuthTokenErrorLegacyCode()I

    .line 393
    move-result v2

    .line 394
    invoke-static {v0, v2, v7}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->createFailResult(Ljava/lang/Throwable;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    .line 397
    move-result-object v0

    .line 398
    goto/16 :goto_2a5

    .line 400
    :cond_18f
    iget-boolean v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isForceSync:Z

    .line 402
    if-nez v5, :cond_19e

    .line 404
    iget-boolean v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isManualSync:Z

    .line 406
    if-nez v5, :cond_19e

    .line 408
    iget-boolean v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->isIgnoreSettings:Z

    .line 410
    if-eqz v5, :cond_19c

    .line 412
    goto :goto_19e

    .line 413
    :cond_19c
    const/4 v5, 0x0

    .line 414
    goto :goto_19f

    .line 415
    :cond_19e
    :goto_19e
    const/4 v5, 0x1

    .line 416
    :goto_19f
    if-eqz v5, :cond_1a4

    .line 418
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/SyncRequestParam;->incrementManualSyncCountAndRecordCurMillis()V

    .line 421
    :cond_1a4
    :try_start_1a4
    invoke-virtual {v1, v3}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->onPerformMiCloudSync(Landroid/os/Bundle;)V
    :try_end_1a7
    .catch Lcom/xiaomi/micloudsdk/exception/CloudServerException; {:try_start_1a4 .. :try_end_1a7} :catch_238
    .catch Lcom/xiaomi/micloudsdk/exception/SyncLocalException; {:try_start_1a4 .. :try_end_1a7} :catch_20a
    .catch Ljava/lang/SecurityException; {:try_start_1a4 .. :try_end_1a7} :catch_1ec
    .catchall {:try_start_1a4 .. :try_end_1a7} :catchall_1e9

    .line 424
    if-eqz v5, :cond_1ac

    .line 426
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/SyncRequestParam;->decrementManualSyncCount()V

    .line 429
    :cond_1ac
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    .line 432
    move-result v2

    .line 433
    if-eqz v2, :cond_1e2

    .line 435
    const-string v0, "onPerformSync: Error without throw CloudException: "

    .line 437
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    move-result-object v0

    .line 441
    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/utils/SyncExceptionUtils;->getErrorStringForLog(Landroid/content/SyncResult;)Ljava/lang/String;

    .line 444
    move-result-object v2

    .line 445
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    move-result-object v0

    .line 452
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;

    .line 457
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasHardError()Z

    .line 460
    move-result v2

    .line 461
    if-eqz v2, :cond_1d0

    .line 463
    const/4 v2, 0x2

    .line 464
    goto :goto_1d1

    .line 465
    :cond_1d0
    const/4 v2, 0x1

    .line 466
    :goto_1d1
    invoke-direct {v0, v2}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;-><init>(I)V

    .line 469
    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->getErrorCodeBySyncResult(Landroid/content/SyncResult;)I

    .line 472
    move-result v2

    .line 473
    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/stat/MiCloudErrorStatReason;->getSyncResultErrorReasonForStats(Landroid/content/SyncResult;)Ljava/lang/String;

    .line 476
    move-result-object v3

    .line 477
    invoke-static {v0, v2, v3}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->createFailResult(Ljava/lang/Throwable;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    .line 480
    move-result-object v0

    .line 481
    goto/16 :goto_2a5

    .line 483
    :cond_1e2
    const-string v2, "onPerformSync: No error found. ---Success---"

    .line 485
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    goto/16 :goto_2a5

    .line 490
    :catchall_1e9
    move-exception v0

    .line 491
    goto/16 :goto_286

    .line 493
    :catch_1ec
    move-exception v0

    .line 494
    move-object v2, v0

    .line 495
    :try_start_1ee
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    .line 500
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    const-string v3, "SecurityException: "

    .line 505
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 511
    move-result-object v3

    .line 512
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    move-result-object v0

    .line 519
    invoke-virtual {v1, v10, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->syncLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    throw v2

    .line 523
    :catch_20a
    move-exception v0

    .line 524
    move-object v2, v0

    .line 525
    invoke-static {v2, v13}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setSyncResultByLocalException(Lcom/xiaomi/micloudsdk/exception/SyncLocalException;Landroid/content/SyncResult;)V

    .line 528
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/stat/MiCloudErrorStatReason;->getLocalExceptionReasonForStats(Lcom/xiaomi/micloudsdk/exception/SyncLocalException;)Ljava/lang/String;

    .line 531
    move-result-object v0

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    .line 534
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    const-string v6, "onPerformSync local exception, reason: "

    .line 539
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    move-result-object v3

    .line 549
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-direct {v1, v2}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->handleExceptionIfKeyBagRelated(Lcom/xiaomi/micloudsdk/exception/SyncLocalException;)V

    .line 555
    invoke-static {v2}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->getErrorCodeByLocalException(Lcom/xiaomi/micloudsdk/exception/SyncLocalException;)I

    .line 558
    move-result v3

    .line 559
    invoke-static {v2, v3, v0}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->createFailResult(Ljava/lang/Throwable;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    .line 562
    move-result-object v0
    :try_end_232
    .catchall {:try_start_1ee .. :try_end_232} :catchall_1e9

    .line 563
    if-eqz v5, :cond_2a5

    .line 565
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/SyncRequestParam;->decrementManualSyncCount()V

    .line 568
    goto :goto_2a5

    .line 569
    :catch_238
    move-exception v0

    .line 570
    move-object v6, v0

    .line 571
    :try_start_23a
    invoke-static {v6, v13}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->setSyncResultByServerException(Lcom/xiaomi/micloudsdk/exception/CloudServerException;Landroid/content/SyncResult;)V

    .line 574
    iget v0, v6, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->statusCode:I

    .line 576
    const/16 v7, 0x191

    .line 578
    if-ne v0, v7, :cond_24a

    .line 580
    iget-object v0, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    .line 582
    iget-object v7, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mExtTokenStr:Ljava/lang/String;

    .line 584
    invoke-static {v0, v2, v15, v7, v3}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->invalidTokenAndReSyncNowIfFirstTimeFailed(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 587
    :cond_24a
    invoke-virtual {v6}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->is5xxServerException()Z

    .line 590
    move-result v0

    .line 591
    if-eqz v0, :cond_25e

    .line 593
    invoke-virtual {v6}, Lcom/xiaomi/micloudsdk/exception/CloudServerException;->get5xxServerExceptionRetryTime()J

    .line 596
    move-result-wide v2

    .line 597
    const-wide/16 v7, 0x3e8

    .line 599
    div-long/2addr v2, v7

    .line 600
    const-wide/16 v7, 0x708

    .line 602
    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 605
    move-result-wide v2

    .line 606
    goto :goto_260

    .line 607
    :cond_25e
    const-wide/16 v2, 0x0

    .line 609
    :goto_260
    invoke-static {v6}, Lcom/xiaomi/micloudsdk/stat/MiCloudErrorStatReason;->getServerExceptionReasonForStats(Lcom/xiaomi/micloudsdk/exception/CloudServerException;)Ljava/lang/String;

    .line 612
    move-result-object v0

    .line 613
    new-instance v7, Ljava/lang/StringBuilder;

    .line 615
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    const-string v8, "onPerformSync server exception, reason: "

    .line 620
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 629
    move-result-object v7

    .line 630
    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-static {v6}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->getErrorCodeByServerException(Lcom/xiaomi/micloudsdk/exception/CloudServerException;)I

    .line 636
    move-result v4

    .line 637
    invoke-static {v6, v4, v0}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->createFailResult(Ljava/lang/Throwable;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    .line 640
    move-result-object v0
    :try_end_280
    .catchall {:try_start_23a .. :try_end_280} :catchall_1e9

    .line 641
    if-eqz v5, :cond_2a7

    .line 643
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/SyncRequestParam;->decrementManualSyncCount()V

    .line 646
    goto :goto_2a7

    .line 647
    :goto_286
    if-eqz v5, :cond_28b

    .line 649
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/SyncRequestParam;->decrementManualSyncCount()V

    .line 652
    :cond_28b
    throw v0

    .line 653
    :cond_28c
    :goto_28c
    const-string v0, "onPerformSync: sync switch off. do not sync!!"

    .line 655
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->internalSetSyncSwitchOffError(Landroid/content/SyncResult;)V

    .line 661
    new-instance v0, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;

    .line 663
    const/16 v2, 0x7d3

    .line 665
    invoke-direct {v0, v2}, Lcom/xiaomi/micloudsdk/exception/SyncLocalException;-><init>(I)V

    .line 668
    invoke-static {}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->getSyncSwitchOffErrorLegacyCode()I

    .line 671
    move-result v2

    .line 672
    const-string v3, "switch_off"

    .line 674
    invoke-static {v0, v2, v3}, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->createFailResult(Ljava/lang/Throwable;ILjava/lang/String;)Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;

    .line 677
    move-result-object v0

    .line 678
    :cond_2a5
    :goto_2a5
    const-wide/16 v2, 0x0

    .line 680
    :cond_2a7
    :goto_2a7
    move-wide v7, v2

    .line 681
    iget-object v2, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    .line 683
    invoke-static {v2, v15}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->generateCurrentSyncDataInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;

    .line 686
    move-result-object v17

    .line 687
    const-string v2, "After Sync: "

    .line 689
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    move-result-object v2

    .line 693
    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->toString()Ljava/lang/String;

    .line 696
    move-result-object v3

    .line 697
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    move-result-object v2

    .line 704
    invoke-virtual {v1, v10, v2}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->syncLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 710
    move-result-wide v18

    .line 711
    new-instance v20, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;

    .line 713
    iget-boolean v4, v0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->isSuccess:Z

    .line 715
    invoke-static/range {p5 .. p5}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->getExtraErrorMsgForResultOrNullIfFieldNotExists(Landroid/content/SyncResult;)Ljava/lang/String;

    .line 718
    move-result-object v9

    .line 719
    move-object/from16 v2, v20

    .line 721
    move-object/from16 v3, p3

    .line 723
    move-wide v5, v11

    .line 724
    move-wide/from16 v21, v7

    .line 726
    move-wide/from16 v7, v18

    .line 728
    invoke-direct/range {v2 .. v9}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;-><init>(Ljava/lang/String;ZJJLjava/lang/String;)V

    .line 731
    invoke-virtual/range {v20 .. v20}, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;->generateLogInfoString()Ljava/lang/String;

    .line 734
    move-result-object v2

    .line 735
    invoke-virtual {v1, v10, v2}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->syncLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v2, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    .line 740
    iget-boolean v4, v0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->isSuccess:Z

    .line 742
    iget-object v5, v0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->errorReasonForStats:Ljava/lang/String;

    .line 744
    invoke-virtual/range {v16 .. v16}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->getUnSyncedDataCount()I

    .line 747
    move-result v3

    .line 748
    int-to-long v7, v3

    .line 749
    invoke-virtual/range {v17 .. v17}, Lcom/xiaomi/micloudsdk/sync/SyncDataInfo;->getUnSyncedDataCount()I

    .line 752
    move-result v3

    .line 753
    int-to-long v9, v3

    .line 754
    move v3, v14

    .line 755
    move-object/from16 v6, p3

    .line 757
    move-wide/from16 v13, v18

    .line 759
    invoke-static/range {v2 .. v14}, Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;->statOnSyncEnd(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;JJJJ)V

    .line 762
    iget-boolean v2, v0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->isSuccess:Z

    .line 764
    if-nez v2, :cond_305

    .line 766
    iget-object v2, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    .line 768
    iget v3, v0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->errorCodeLegacy:I

    .line 770
    invoke-static {v2, v15, v3}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->recordSyncResult(Landroid/content/Context;Ljava/lang/String;I)V

    .line 773
    goto :goto_30a

    .line 774
    :cond_305
    iget-object v2, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    .line 776
    invoke-static {v2, v15}, Lcom/xiaomi/micloudsdk/sync/utils/LegacySyncRecordUtils;->recordSyncResultSuccess(Landroid/content/Context;Ljava/lang/String;)V

    .line 779
    :goto_30a
    move-object/from16 v2, p5

    .line 781
    iget-wide v3, v2, Landroid/content/SyncResult;->delayUntil:J

    .line 783
    const-wide/16 v5, 0x0

    .line 785
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 788
    move-result-wide v3

    .line 789
    iput-wide v3, v2, Landroid/content/SyncResult;->delayUntil:J

    .line 791
    iget-object v5, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mContext:Landroid/content/Context;

    .line 793
    iget-object v6, v1, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mAuthority:Ljava/lang/String;

    .line 795
    invoke-static {v5, v6}, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;->getGuardDelayUntilInSec(Landroid/content/Context;Ljava/lang/String;)J

    .line 798
    move-result-wide v5

    .line 799
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 802
    move-result-wide v3

    .line 803
    iput-wide v3, v2, Landroid/content/SyncResult;->delayUntil:J

    .line 805
    iget-boolean v5, v0, Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;->isSuccess:Z

    .line 807
    if-nez v5, :cond_330

    .line 809
    move-wide/from16 v5, v21

    .line 811
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 814
    move-result-wide v3

    .line 815
    iput-wide v3, v2, Landroid/content/SyncResult;->delayUntil:J

    .line 817
    :cond_330
    invoke-virtual {v1, v0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->onPerformMiCloudSyncComplete(Lcom/xiaomi/micloudsdk/sync/MiCloudSyncResult;)V

    .line 820
    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->releaseLogger()V

    .line 823
    return-void
.end method

.method public onTransformExtAuthToken(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V
    .registers 2

    return-void
.end method

.method public syncLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_12

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_12

    .line 13
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/SyncAdapterBase;->mSyncLogSender:Lcom/xiaomi/micloudsdk/sync/SyncLogSender;

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/micloudsdk/sync/SyncLogSender;->sendLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void

    .line 19
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    const-string p2, "tag or msg is null!"

    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p1
.end method
