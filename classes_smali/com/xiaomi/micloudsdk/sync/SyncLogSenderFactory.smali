.class Lcom/xiaomi/micloudsdk/sync/SyncLogSenderFactory;
.super Ljava/lang/Object;
.source "SyncLogSenderFactory.java"


# static fields
.field private static final URI_SYNC_LOG_PROVIDER:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC_LOG;->URI_PROVIDER:Landroid/net/Uri;

    .line 3
    sput-object v0, Lcom/xiaomi/micloudsdk/sync/SyncLogSenderFactory;->URI_SYNC_LOG_PROVIDER:Landroid/net/Uri;

    .line 5
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newSyncLogSender(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/micloudsdk/sync/SyncLogSender;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lcom/xiaomi/micloudsdk/sync/SyncLogSenderFactory;->URI_SYNC_LOG_PROVIDER:Landroid/net/Uri;

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 10
    move-result-object p0

    .line 11
    const-string v0, "SyncLogSender"

    .line 13
    if-nez p0, :cond_19

    .line 15
    const-string p0, "Create sync log sender: logcat."

    .line 17
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance p0, Lcom/xiaomi/micloudsdk/sync/LogcatSyncLogSender;

    .line 22
    invoke-direct {p0}, Lcom/xiaomi/micloudsdk/sync/LogcatSyncLogSender;-><init>()V

    .line 25
    return-object p0

    .line 26
    :cond_19
    const-string v1, "Create sync log sender: file."

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender;

    .line 33
    invoke-direct {v0, p0, p1}, Lcom/xiaomi/micloudsdk/sync/FileSyncLogSender;-><init>(Landroid/content/ContentProviderClient;Ljava/lang/String;)V

    .line 36
    return-object v0
.end method
