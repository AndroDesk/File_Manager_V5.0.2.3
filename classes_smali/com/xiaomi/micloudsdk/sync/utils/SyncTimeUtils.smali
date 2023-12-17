.class public Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;
.super Ljava/lang/Object;
.source "SyncTimeUtils.java"


# static fields
.field private static final MAX_SYNC_COUNT_IN_WINDOW:I

.field private static final PREF_SYNC_COUNT_IN_WINDOW:Ljava/lang/String; = "SyncTimes_%s"

.field private static final PREF_SYNC_WINDOW_START:Ljava/lang/String; = "SyncWindowStart_%s"

.field private static final SYNC_TIME_WINDOW_IN_MILLIS:J = 0x927c0L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d88

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;->MAX_SYNC_COUNT_IN_WINDOW:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getGuardDelayUntilInSec(Landroid/content/Context;Ljava/lang/String;)J
    .registers 16

    const-class v0, Lcom/xiaomi/micloudsdk/sync/utils/SyncTimeUtils;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "SyncWindowStart_%s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "SyncTimes_%s"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p1, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v5, 0x0

    invoke-interface {p0, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-interface {p0, p1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    sub-long v10, v1, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x927c0

    cmp-long v10, v10, v12

    if-gez v10, :cond_51

    const/16 v3, 0x1e

    if-le v9, v3, :cond_43

    add-long/2addr v7, v12

    sub-long/2addr v7, v1

    const-wide/16 p0, 0x3e8

    div-long/2addr v7, p0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_60

    monitor-exit v0

    return-wide v7

    :cond_43
    :try_start_43
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/2addr v9, v4

    invoke-interface {p0, p1, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_60

    monitor-exit v0

    return-wide v5

    :cond_51
    :try_start_51
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_60

    monitor-exit v0

    return-wide v5

    :catchall_60
    move-exception p0

    monitor-exit v0

    throw p0
.end method
