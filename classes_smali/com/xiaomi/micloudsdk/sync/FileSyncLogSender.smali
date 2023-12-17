.class Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender;
.super Lcom/xiaomi/micloudsdk/sync/SyncLogSender;
.source "FileSyncLogSender.java"


# static fields
.field private static final SYNC_LOG_KEY_AUTHORITY:Ljava/lang/String; = "sync_log_key_authority"

.field private static final SYNC_LOG_KEY_REMOTE_LOGGER:Ljava/lang/String; = "sync_log_key_remote_logger"

.field private static final SYNC_LOG_METHOD_OPEN_SYNC_LOG:Ljava/lang/String; = "OPEN_SYNC_LOG"

.field private static final WAIT_LOGGER_RELEASE_TIME_IN_MILLIS:J = 0x2710L


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private mRemoteLogger:Lmiui/cloud/sync/IRemoteFileSyncLogger;

.field private final mSyncProvider:Landroid/content/ContentProviderClient;


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/sync/SyncLogSender;-><init>()V

    .line 4
    if-eqz p1, :cond_a

    .line 6
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender;->mSyncProvider:Landroid/content/ContentProviderClient;

    .line 8
    iput-object p2, p0, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender;->mAuthority:Ljava/lang/String;

    .line 10
    return-void

    .line 11
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string p2, "Must give a valid provider client."

    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method


# virtual methods
.method public openSyncLog()V
    .registers 6

    .line 1
    const-string v0, "SyncLogSender"

    .line 3
    new-instance v1, Landroid/os/Bundle;

    .line 5
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender;->mAuthority:Ljava/lang/String;

    .line 10
    const-string v3, "sync_log_key_authority"

    .line 12
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const/4 v2, 0x0

    .line 16
    :try_start_f
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender;->mSyncProvider:Landroid/content/ContentProviderClient;

    .line 18
    const-string v4, "OPEN_SYNC_LOG"

    .line 20
    invoke-virtual {v3, v4, v2, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 23
    move-result-object v1

    .line 24
    const-string v3, "sync_log_key_remote_logger"

    .line 26
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    .line 29
    move-result-object v2
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1d} :catch_1e

    .line 30
    goto :goto_23

    .line 31
    :catch_1e
    const-string v1, "open sync log: server is died."

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :goto_23
    if-nez v2, :cond_30

    .line 38
    const-string v1, "open sync log: binder is null."

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender;->mSyncProvider:Landroid/content/ContentProviderClient;

    .line 45
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 48
    goto :goto_36

    .line 49
    :cond_30
    invoke-static {v2}, Lmiui/cloud/sync/IRemoteFileSyncLogger$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/cloud/sync/IRemoteFileSyncLogger;

    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender;->mRemoteLogger:Lmiui/cloud/sync/IRemoteFileSyncLogger;

    .line 55
    :goto_36
    return-void
.end method

.method public release()V
    .registers 7

    .line 1
    const-string v0, "SyncLogSender"

    .line 3
    iget-object v1, p0, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender;->mRemoteLogger:Lmiui/cloud/sync/IRemoteFileSyncLogger;

    .line 5
    if-nez v1, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 14
    const/4 v2, 0x0

    .line 15
    :try_start_e
    iget-object v3, p0, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender;->mRemoteLogger:Lmiui/cloud/sync/IRemoteFileSyncLogger;

    .line 17
    new-instance v4, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender$1;

    .line 19
    invoke-direct {v4, p0, v2, v1}, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender$1;-><init>(Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender;Landroid/os/Handler;Ljava/util/concurrent/CountDownLatch;)V

    .line 22
    invoke-interface {v3, v4}, Lmiui/cloud/sync/IRemoteFileSyncLogger;->release(Landroid/os/ResultReceiver;)V

    .line 25
    const-wide/16 v3, 0x2710

    .line 27
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_3a

    .line 35
    const-string v1, "Too long to wait for releasing provider. Release now."

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_27} :catch_35
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_27} :catch_28

    .line 40
    goto :goto_3a

    .line 41
    :catch_28
    const-string v1, "Release is interrupted by cancel sync."

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 53
    goto :goto_3a

    .line 54
    :catch_35
    const-string v1, "Remote sync provider is died! Release now."

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender;->mSyncProvider:Landroid/content/ContentProviderClient;

    .line 61
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 64
    iput-object v2, p0, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender;->mRemoteLogger:Lmiui/cloud/sync/IRemoteFileSyncLogger;

    .line 66
    return-void
.end method

.method public sendLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender;->mRemoteLogger:Lmiui/cloud/sync/IRemoteFileSyncLogger;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void

    .line 9
    :cond_8
    :try_start_8
    invoke-interface {v0, p1, p2}, Lmiui/cloud/sync/IRemoteFileSyncLogger;->syncLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    .line 12
    goto :goto_16

    .line 13
    :catch_c
    const-string v0, "SyncLogSender"

    .line 15
    const-string v1, "send log: server is died."

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :goto_16
    return-void
.end method
