.class Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;
.super Ljava/lang/Object;
.source "SyncStatUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncStatUtil"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static insertStatValueInternal(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    const-string v0, "SyncStatUtil"

    if-nez p0, :cond_12

    const-string p0, "CloudService version is too low."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    :try_start_12
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_1b
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    :goto_15
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_21

    :catchall_19
    move-exception p1

    goto :goto_22

    :catch_1b
    :try_start_1b
    const-string p1, "CloudService stat provider is unavailable."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_19

    goto :goto_15

    :goto_21
    return-void

    :goto_22
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    throw p1
.end method

.method private static performSyncPhoneStateStat(Landroid/content/Context;ZZ)V
    .registers 5

    const-string v0, "SyncStatUtil"

    const-string v1, "performSyncPhoneState: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "micloud_force"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "stat_key_sync_start"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object p1, Lcom/xiaomi/micloudsdk/sync/MiCloudStatConstantsV2;->OPEN_SYNC_PHONE_STATE:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;->insertStatValueInternal(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method

.method private static performSyncResultStat(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;JJ)V
    .registers 12

    const-string v0, "SyncStatUtil"

    const-string v1, "performSyncResultStat: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "micloud_ignore_temperature"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "micloud_ignore_wifi_settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "micloud_ignore_battery_low"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "stat_key_sync_retry"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "micloud_force"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "stat_key_sync_reason"

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "stat_key_sync_successful"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "stat_key_sync_authority"

    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    cmp-long p3, p5, p1

    if-eqz p3, :cond_5c

    cmp-long p1, p7, p1

    if-eqz p1, :cond_5c

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "stat_key_unsynced_count_before_sync"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "stat_key_unsynced_count_after_sync"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5c
    sget-object p1, Lcom/xiaomi/micloudsdk/sync/MiCloudStatConstantsV2;->OPEN_SYNC_RESULT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;->insertStatValueInternal(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method

.method private static performSyncTimeStat(Landroid/content/Context;JJZ)V
    .registers 9

    const-string v0, "SyncStatUtil"

    const-string v1, "performSyncTimeStat: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v0, p3, p1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "stat_key_sync_time_consume"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "stat_key_sync_time_start_in_millis"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "stat_key_sync_time_end_in_millis"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "stat_key_sync_successful"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object p1, Lcom/xiaomi/micloudsdk/sync/MiCloudStatConstantsV2;->OPEN_SYNC_TIME_CONSUME:Landroid/net/Uri;

    invoke-static {p0, p1, v2}, Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;->insertStatValueInternal(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void
.end method

.method public static statOnSyncEnd(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;JJJJ)V
    .registers 19

    move-object v0, p0

    move-wide v1, p9

    move-wide/from16 v3, p11

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;->performSyncTimeStat(Landroid/content/Context;JJZ)V

    invoke-static/range {p0 .. p8}, Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;->performSyncResultStat(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;JJ)V

    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static {p0, v0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;->performSyncPhoneStateStat(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static statOnSyncStart(Landroid/content/Context;Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;->performSyncPhoneStateStat(Landroid/content/Context;ZZ)V

    return-void
.end method
