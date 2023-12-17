.class public final Lcom/google/android/gms/common/util/zza;
.super Ljava/lang/Object;


# static fields
.field private static final filter:Landroid/content/IntentFilter;

.field private static zzgv:J

.field private static zzgw:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/google/android/gms/common/util/zza;->filter:Landroid/content/IntentFilter;

    .line 10
    const/high16 v0, 0x7fc00000  # Float.NaN

    .line 12
    sput v0, Lcom/google/android/gms/common/util/zza;->zzgw:F

    .line 14
    return-void
.end method

.method public static zzg(Landroid/content/Context;)I
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p0, :cond_47

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_a

    .line 10
    goto :goto_47

    .line 11
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    sget-object v3, Lcom/google/android/gms/common/util/zza;->filter:Landroid/content/IntentFilter;

    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v1, :cond_1a

    .line 25
    move v1, v2

    .line 26
    goto :goto_20

    .line 27
    :cond_1a
    const-string v3, "plugged"

    .line 29
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 32
    move-result v1

    .line 33
    :goto_20
    and-int/lit8 v1, v1, 0x7

    .line 35
    if-eqz v1, :cond_26

    .line 37
    const/4 v1, 0x1

    .line 38
    goto :goto_27

    .line 39
    :cond_26
    move v1, v2

    .line 40
    :goto_27
    const-string v3, "power"

    .line 42
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Landroid/os/PowerManager;

    .line 48
    if-nez p0, :cond_32

    .line 50
    return v0

    .line 51
    :cond_32
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKatWatch()Z

    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3d

    .line 57
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 60
    move-result p0

    .line 61
    goto :goto_41

    .line 62
    :cond_3d
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 65
    move-result p0

    .line 66
    :goto_41
    if-eqz p0, :cond_44

    .line 68
    const/4 v2, 0x2

    .line 69
    :cond_44
    or-int p0, v2, v1

    .line 71
    return p0

    .line 72
    :cond_47
    :goto_47
    return v0
.end method

.method public static declared-synchronized zzh(Landroid/content/Context;)F
    .registers 6

    .line 1
    const-class v0, Lcom/google/android/gms/common/util/zza;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide v1

    .line 8
    sget-wide v3, Lcom/google/android/gms/common/util/zza;->zzgv:J

    .line 10
    sub-long/2addr v1, v3

    .line 11
    const-wide/32 v3, 0xea60

    .line 14
    cmp-long v1, v1, v3

    .line 16
    if-gez v1, :cond_1d

    .line 18
    sget v1, Lcom/google/android/gms/common/util/zza;->zzgw:F

    .line 20
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1d

    .line 26
    sget p0, Lcom/google/android/gms/common/util/zza;->zzgw:F
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_46

    .line 28
    monitor-exit v0

    .line 29
    return p0

    .line 30
    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 33
    move-result-object p0

    .line 34
    const/4 v1, 0x0

    .line 35
    sget-object v2, Lcom/google/android/gms/common/util/zza;->filter:Landroid/content/IntentFilter;

    .line 37
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    move-result-object p0

    .line 41
    if-eqz p0, :cond_3c

    .line 43
    const-string v1, "level"

    .line 45
    const/4 v2, -0x1

    .line 46
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 49
    move-result v1

    .line 50
    const-string v3, "scale"

    .line 52
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 55
    move-result p0

    .line 56
    int-to-float v1, v1

    .line 57
    int-to-float p0, p0

    .line 58
    div-float/2addr v1, p0

    .line 59
    sput v1, Lcom/google/android/gms/common/util/zza;->zzgw:F

    .line 61
    :cond_3c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 64
    move-result-wide v1

    .line 65
    sput-wide v1, Lcom/google/android/gms/common/util/zza;->zzgv:J

    .line 67
    sget p0, Lcom/google/android/gms/common/util/zza;->zzgw:F
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_46

    .line 69
    monitor-exit v0

    .line 70
    return p0

    .line 71
    :catchall_46
    move-exception p0

    .line 72
    monitor-exit v0

    .line 73
    throw p0
.end method
