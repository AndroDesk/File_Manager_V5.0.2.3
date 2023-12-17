.class public Lcom/google/android/gms/common/wrappers/InstantApps;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static zzhv:Landroid/content/Context;

.field private static zzhw:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isInstantApp(Landroid/content/Context;)Z
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/common/wrappers/InstantApps;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhv:Landroid/content/Context;

    .line 10
    if-eqz v2, :cond_17

    .line 12
    sget-object v3, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhw:Ljava/lang/Boolean;

    .line 14
    if-eqz v3, :cond_17

    .line 16
    if-ne v2, v1, :cond_17

    .line 18
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    move-result p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_4b

    .line 22
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :cond_17
    const/4 v2, 0x0

    .line 25
    :try_start_18
    sput-object v2, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhw:Ljava/lang/Boolean;

    .line 27
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2f

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Landroidx/appcompat/widget/x;->v(Landroid/content/pm/PackageManager;)Z

    .line 40
    move-result p0

    .line 41
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    move-result-object p0

    .line 45
    sput-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhw:Ljava/lang/Boolean;
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_4b

    .line 47
    goto :goto_41

    .line 48
    :cond_2f
    :try_start_2f
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 51
    move-result-object p0

    .line 52
    const-string v2, "com.google.android.instantapps.supervisor.InstantAppsRuntime"

    .line 54
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 57
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 59
    sput-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhw:Ljava/lang/Boolean;
    :try_end_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_3c} :catch_3d
    .catchall {:try_start_2f .. :try_end_3c} :catchall_4b

    .line 61
    goto :goto_41

    .line 62
    :catch_3d
    :try_start_3d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 64
    sput-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhw:Ljava/lang/Boolean;

    .line 66
    :goto_41
    sput-object v1, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhv:Landroid/content/Context;

    .line 68
    sget-object p0, Lcom/google/android/gms/common/wrappers/InstantApps;->zzhw:Ljava/lang/Boolean;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    move-result p0
    :try_end_49
    .catchall {:try_start_3d .. :try_end_49} :catchall_4b

    .line 74
    monitor-exit v0

    .line 75
    return p0

    .line 76
    :catchall_4b
    move-exception p0

    .line 77
    monitor-exit v0

    .line 78
    throw p0
.end method
