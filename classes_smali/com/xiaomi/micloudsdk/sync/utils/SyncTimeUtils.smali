.class public Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;
.super Ljava/lang/Object;
.source "SyncTimeUtils.java"


# static fields
.field private static final MAX_SYNC_COUNT_IN_WINDOW:I = 0x1e

.field private static final PREF_SYNC_COUNT_IN_WINDOW:Ljava/lang/String; = "SyncTimes_%s"

.field private static final PREF_SYNC_WINDOW_START:Ljava/lang/String; = "SyncWindowStart_%s"

.field private static final SYNC_TIME_WINDOW_IN_MILLIS:J = 0x927c0L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getGuardDelayUntilInSec(Landroid/content/Context;Ljava/lang/String;)J
    .registers 16

    .line 1
    const-class v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 7
    move-result-object p0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    move-result-wide v1

    .line 12
    const-string v3, "SyncWindowStart_%s"

    .line 14
    const/4 v4, 0x1

    .line 15
    new-array v5, v4, [Ljava/lang/Object;

    .line 17
    const/4 v6, 0x0

    .line 18
    aput-object p1, v5, v6

    .line 20
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    const-string v5, "SyncTimes_%s"

    .line 26
    new-array v7, v4, [Ljava/lang/Object;

    .line 28
    aput-object p1, v7, v6

    .line 30
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    const-wide/16 v5, 0x0

    .line 36
    invoke-interface {p0, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 39
    move-result-wide v7

    .line 40
    invoke-interface {p0, p1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 43
    move-result v9

    .line 44
    sub-long v10, v1, v7

    .line 46
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    .line 49
    move-result-wide v10

    .line 50
    const-wide/32 v12, 0x927c0

    .line 53
    cmp-long v10, v10, v12

    .line 55
    if-gez v10, :cond_51

    .line 57
    const/16 v3, 0x1e

    .line 59
    if-le v9, v3, :cond_43

    .line 61
    add-long/2addr v7, v12

    .line 62
    sub-long/2addr v7, v1

    .line 63
    const-wide/16 p0, 0x3e8

    .line 65
    div-long/2addr v7, p0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_60

    .line 66
    monitor-exit v0

    .line 67
    return-wide v7

    .line 68
    :cond_43
    :try_start_43
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 71
    move-result-object p0

    .line 72
    add-int/2addr v9, v4

    .line 73
    invoke-interface {p0, p1, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 76
    move-result-object p0

    .line 77
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_60

    .line 80
    monitor-exit v0

    .line 81
    return-wide v5

    .line 82
    :cond_51
    :try_start_51
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 85
    move-result-object p0

    .line 86
    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {p0, p1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_60

    .line 95
    monitor-exit v0

    .line 96
    return-wide v5

    .line 97
    :catchall_60
    move-exception p0

    .line 98
    monitor-exit v0

    .line 99
    throw p0
.end method
