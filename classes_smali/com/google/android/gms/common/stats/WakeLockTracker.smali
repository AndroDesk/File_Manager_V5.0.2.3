.class public Lcom/google/android/gms/common/stats/WakeLockTracker;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static zzgc:Lcom/google/android/gms/common/stats/WakeLockTracker;

.field private static zzgd:Ljava/lang/Boolean;

.field private static zzge:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/common/stats/WakeLockTracker;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/stats/WakeLockTracker;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/gms/common/stats/WakeLockTracker;->zzgc:Lcom/google/android/gms/common/stats/WakeLockTracker;

    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/google/android/gms/common/stats/WakeLockTracker;->zzge:Z

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/common/stats/WakeLockTracker;
    .registers 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/stats/WakeLockTracker;->zzgc:Lcom/google/android/gms/common/stats/WakeLockTracker;

    .line 3
    return-object v0
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/common/stats/WakeLockEvent;)V
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    sget-object v1, Lcom/google/android/gms/common/stats/LoggingConstants;->zzfg:Landroid/content/ComponentName;

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "com.google.android.gms.common.stats.EXTRA_LOG_EVENT"

    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 21
    return-void

    .line 22
    :catch_15
    move-exception p0

    .line 23
    const-string p1, "WakeLockTracker"

    .line 25
    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    return-void
.end method

.method private static zzw()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/common/stats/WakeLockTracker;->zzgd:Ljava/lang/Boolean;

    .line 3
    if-nez v0, :cond_8

    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    sput-object v0, Lcom/google/android/gms/common/stats/WakeLockTracker;->zzgd:Ljava/lang/Boolean;

    .line 9
    :cond_8
    sget-object v0, Lcom/google/android/gms/common/stats/WakeLockTracker;->zzgd:Ljava/lang/Boolean;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method


# virtual methods
.method public registerAcquireEvent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 19
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p7, v0, v1

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    move-result-object v10

    .line 11
    const-string v0, "WAKE_LOCK_KEY"

    .line 13
    move-object v1, p2

    .line 14
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v4

    .line 18
    const/4 v5, 0x7

    .line 19
    move-object v2, p0

    .line 20
    move-object v3, p1

    .line 21
    move-object v6, p3

    .line 22
    move-object v7, p4

    .line 23
    move-object/from16 v8, p5

    .line 25
    move/from16 v9, p6

    .line 27
    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gms/common/stats/WakeLockTracker;->registerEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 30
    return-void
.end method

.method public registerDeadlineEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;ZJ)V
    .registers 29
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/stats/WakeLockTracker;->zzw()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    move-result-wide v2

    .line 12
    new-instance v0, Lcom/google/android/gms/common/stats/WakeLockEvent;

    .line 14
    move-object v1, v0

    .line 15
    const/16 v4, 0x10

    .line 17
    invoke-static/range {p6 .. p6}, Lcom/google/android/gms/common/stats/StatsUtils;->zza(Ljava/util/List;)Ljava/util/List;

    .line 20
    move-result-object v7

    .line 21
    const/4 v8, 0x0

    .line 22
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/util/zza;->zzg(Landroid/content/Context;)I

    .line 25
    move-result v11

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 30
    invoke-static {v5}, Lcom/google/android/gms/common/stats/StatsUtils;->zzi(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v13

    .line 34
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/util/zza;->zzh(Landroid/content/Context;)F

    .line 37
    move-result v14

    .line 38
    const-wide/16 v15, 0x0

    .line 40
    move-object/from16 v5, p2

    .line 42
    move/from16 v6, p5

    .line 44
    move-wide/from16 v9, p8

    .line 46
    move-object/from16 v12, p3

    .line 48
    move-object/from16 v17, p4

    .line 50
    move/from16 v18, p7

    .line 52
    invoke-direct/range {v1 .. v18}, Lcom/google/android/gms/common/stats/WakeLockEvent;-><init>(JILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;Z)V

    .line 55
    move-object/from16 v1, p1

    .line 57
    invoke-static {v1, v0}, Lcom/google/android/gms/common/stats/WakeLockTracker;->zza(Landroid/content/Context;Lcom/google/android/gms/common/stats/WakeLockEvent;)V

    .line 60
    return-void
.end method

.method public registerEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .registers 20
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 1
    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/common/stats/WakeLockTracker;->registerEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    return-void
.end method

.method public registerEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V
    .registers 30
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    move/from16 v3, p3

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/stats/WakeLockTracker;->zzw()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 3
    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "missing wakeLock key. "

    .line 4
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_20
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_26
    const-string v1, "WakeLockTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2c
    const/4 v0, 0x7

    if-eq v0, v3, :cond_3b

    const/16 v0, 0x8

    if-eq v0, v3, :cond_3b

    const/16 v0, 0xa

    if-eq v0, v3, :cond_3b

    const/16 v0, 0xb

    if-ne v0, v3, :cond_76

    .line 5
    :cond_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 6
    new-instance v14, Lcom/google/android/gms/common/stats/WakeLockEvent;

    move-object v0, v14

    .line 7
    invoke-static/range {p8 .. p8}, Lcom/google/android/gms/common/stats/StatsUtils;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/util/zza;->zzg(Landroid/content/Context;)I

    move-result v10

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/stats/StatsUtils;->zzi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 11
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/util/zza;->zzh(Landroid/content/Context;)F

    move-result v13

    const/16 v17, 0x0

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p7

    move-object/from16 v7, p2

    move-object/from16 v11, p5

    move-object/from16 v18, v14

    move-wide/from16 v14, p9

    move-object/from16 v16, p6

    invoke-direct/range {v0 .. v17}, Lcom/google/android/gms/common/stats/WakeLockEvent;-><init>(JILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;Z)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/common/stats/WakeLockTracker;->zza(Landroid/content/Context;Lcom/google/android/gms/common/stats/WakeLockEvent;)V

    :cond_76
    return-void
.end method

.method public registerReleaseEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const-string v0, "WAKE_LOCK_KEY"

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v3

    .line 7
    const/16 v4, 0x8

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x0

    .line 14
    move-object v1, p0

    .line 15
    move-object v2, p1

    .line 16
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/common/stats/WakeLockTracker;->registerEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 19
    return-void
.end method
