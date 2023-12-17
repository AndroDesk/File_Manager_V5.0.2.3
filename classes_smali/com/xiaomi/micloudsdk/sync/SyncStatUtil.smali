.class Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;
.super Ljava/lang/Object;
.source "SyncStatUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncStatUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static insertStatValueInternal(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 8
    move-result-object p0

    .line 9
    const-string v0, "SyncStatUtil"

    .line 11
    if-nez p0, :cond_12

    .line 13
    const-string p0, "CloudService version is too low."

    .line 15
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void

    .line 19
    :cond_12
    :try_start_12
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_1b
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    .line 22
    :goto_15
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 25
    goto :goto_21

    .line 26
    :catchall_19
    move-exception p1

    .line 27
    goto :goto_22

    .line 28
    :catch_1b
    :try_start_1b
    const-string p1, "CloudService stat provider is unavailable."

    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_19

    .line 33
    goto :goto_15

    .line 34
    :goto_21
    return-void

    .line 35
    :goto_22
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 38
    throw p1
.end method

.method private static performSyncPhoneStateStat(Landroid/content/Context;ZZ)V
    .registers 5

    .line 1
    const-string v0, "SyncStatUtil"

    .line 3
    const-string v1, "performSyncPhoneState: "

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v0, Landroid/content/ContentValues;

    .line 10
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 13
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object p2

    .line 17
    const-string v1, "micloud_force"

    .line 19
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    move-result-object p1

    .line 26
    const-string p2, "stat_key_sync_start"

    .line 28
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 31
    sget-object p1, Lcom/xiaomi/micloudsdk/sync/MiCloudStatConstantsV2;->OPEN_SYNC_PHONE_STATE:Landroid/net/Uri;

    .line 33
    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;->insertStatValueInternal(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 36
    return-void
.end method

.method private static performSyncResultStat(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;JJ)V
    .registers 12

    .line 1
    const-string v0, "SyncStatUtil"

    .line 3
    const-string v1, "performSyncResultStat: "

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v0, Landroid/content/ContentValues;

    .line 10
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 13
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    const-string v2, "micloud_ignore_temperature"

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 20
    const-string v2, "micloud_ignore_wifi_settings"

    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 25
    const-string v2, "micloud_ignore_battery_low"

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 30
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 32
    const-string v2, "stat_key_sync_retry"

    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 37
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    move-result-object p1

    .line 41
    const-string v1, "micloud_force"

    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 46
    const-string p1, "stat_key_sync_reason"

    .line 48
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    move-result-object p1

    .line 55
    const-string p2, "stat_key_sync_successful"

    .line 57
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 60
    const-string p1, "stat_key_sync_authority"

    .line 62
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-wide/16 p1, -0x1

    .line 67
    cmp-long p3, p5, p1

    .line 69
    if-eqz p3, :cond_5c

    .line 71
    cmp-long p1, p7, p1

    .line 73
    if-eqz p1, :cond_5c

    .line 75
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    move-result-object p1

    .line 79
    const-string p2, "stat_key_unsynced_count_before_sync"

    .line 81
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 84
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    move-result-object p1

    .line 88
    const-string p2, "stat_key_unsynced_count_after_sync"

    .line 90
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    :cond_5c
    sget-object p1, Lcom/xiaomi/micloudsdk/sync/MiCloudStatConstantsV2;->OPEN_SYNC_RESULT_URI:Landroid/net/Uri;

    .line 95
    invoke-static {p0, p1, v0}, Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;->insertStatValueInternal(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 98
    return-void
.end method

.method private static performSyncTimeStat(Landroid/content/Context;JJZ)V
    .registers 9

    .line 1
    const-string v0, "SyncStatUtil"

    .line 3
    const-string v1, "performSyncTimeStat: "

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sub-long v0, p3, p1

    .line 10
    new-instance v2, Landroid/content/ContentValues;

    .line 12
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "stat_key_sync_time_consume"

    .line 21
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 24
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    move-result-object p1

    .line 28
    const-string p2, "stat_key_sync_time_start_in_millis"

    .line 30
    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    move-result-object p1

    .line 37
    const-string p2, "stat_key_sync_time_end_in_millis"

    .line 39
    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 42
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    move-result-object p1

    .line 46
    const-string p2, "stat_key_sync_successful"

    .line 48
    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 51
    sget-object p1, Lcom/xiaomi/micloudsdk/sync/MiCloudStatConstantsV2;->OPEN_SYNC_TIME_CONSUME:Landroid/net/Uri;

    .line 53
    invoke-static {p0, p1, v2}, Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;->insertStatValueInternal(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 56
    return-void
.end method

.method public static statOnSyncEnd(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;JJJJ)V
    .registers 19

    .line 1
    move-object v0, p0

    .line 2
    move-wide v1, p9

    .line 3
    move-wide/from16 v3, p11

    .line 5
    move v5, p2

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;->performSyncTimeStat(Landroid/content/Context;JJZ)V

    .line 9
    invoke-static/range {p0 .. p8}, Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;->performSyncResultStat(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;JJ)V

    .line 12
    const/4 v0, 0x0

    .line 13
    move-object v1, p0

    .line 14
    move v2, p1

    .line 15
    invoke-static {p0, v0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;->performSyncPhoneStateStat(Landroid/content/Context;ZZ)V

    .line 18
    return-void
.end method

.method public static statOnSyncStart(Landroid/content/Context;Z)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0, p1}, Lcom/xiaomi/micloudsdk/sync/SyncStatUtil;->performSyncPhoneStateStat(Landroid/content/Context;ZZ)V

    .line 5
    return-void
.end method
