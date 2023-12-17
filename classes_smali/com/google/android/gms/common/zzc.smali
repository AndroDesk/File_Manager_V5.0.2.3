.class final Lcom/google/android/gms/common/zzc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static volatile zzn:Lcom/google/android/gms/common/internal/zzm;

.field private static final zzo:Ljava/lang/Object;

.field private static zzp:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/gms/common/zzc;->zzo:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/common/zze;ZZ)Lcom/google/android/gms/common/zzm;
    .registers 5

    .line 5
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 6
    :try_start_4
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/common/zzc;->zzb(Ljava/lang/String;Lcom/google/android/gms/common/zze;ZZ)Lcom/google/android/gms/common/zzm;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 7
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_c
    move-exception p0

    .line 8
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public static final synthetic zza(ZLjava/lang/String;Lcom/google/android/gms/common/zze;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_d

    .line 9
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/common/zzc;->zzb(Ljava/lang/String;Lcom/google/android/gms/common/zze;ZZ)Lcom/google/android/gms/common/zzm;

    move-result-object v2

    .line 10
    iget-boolean v2, v2, Lcom/google/android/gms/common/zzm;->zzad:Z

    if-eqz v2, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    .line 11
    :goto_e
    invoke-static {p1, p2, p0, v0}, Lcom/google/android/gms/common/zzm;->zzc(Ljava/lang/String;Lcom/google/android/gms/common/zze;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized zza(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/google/android/gms/common/zzc;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/zzc;->zzp:Landroid/content/Context;

    if-nez v1, :cond_11

    if-eqz p0, :cond_18

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/zzc;->zzp:Landroid/content/Context;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1a

    monitor-exit v0

    return-void

    :cond_11
    :try_start_11
    const-string p0, "GoogleCertificates"

    const-string v1, "GoogleCertificates has been initialized already"

    .line 3
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1a

    .line 4
    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static zzb(Ljava/lang/String;Lcom/google/android/gms/common/zze;ZZ)Lcom/google/android/gms/common/zzm;
    .registers 8

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/zzc;->zzn:Lcom/google/android/gms/common/internal/zzm;

    .line 3
    if-nez v0, :cond_2b

    .line 5
    sget-object v0, Lcom/google/android/gms/common/zzc;->zzp:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/google/android/gms/common/zzc;->zzo:Ljava/lang/Object;

    .line 12
    monitor-enter v0
    :try_end_c
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_c} :catch_65

    .line 13
    :try_start_c
    sget-object v1, Lcom/google/android/gms/common/zzc;->zzn:Lcom/google/android/gms/common/internal/zzm;

    .line 15
    if-nez v1, :cond_26

    .line 17
    sget-object v1, Lcom/google/android/gms/common/zzc;->zzp:Landroid/content/Context;

    .line 19
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 21
    const-string v3, "com.google.android.gms.googlecertificates"

    .line 23
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 26
    move-result-object v1

    .line 27
    const-string v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    .line 29
    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzn;->zzc(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzm;

    .line 36
    move-result-object v1

    .line 37
    sput-object v1, Lcom/google/android/gms/common/zzc;->zzn:Lcom/google/android/gms/common/internal/zzm;

    .line 39
    :cond_26
    monitor-exit v0

    .line 40
    goto :goto_2b

    .line 41
    :catchall_28
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_28

    .line 43
    :try_start_2a
    throw p0
    :try_end_2b
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2a .. :try_end_2b} :catch_65

    .line 44
    :cond_2b
    :goto_2b
    sget-object v0, Lcom/google/android/gms/common/zzc;->zzp:Landroid/content/Context;

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/google/android/gms/common/zzk;

    .line 51
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/common/zzk;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/zze;ZZ)V

    .line 54
    :try_start_35
    sget-object p3, Lcom/google/android/gms/common/zzc;->zzn:Lcom/google/android/gms/common/internal/zzm;

    .line 56
    sget-object v1, Lcom/google/android/gms/common/zzc;->zzp:Landroid/content/Context;

    .line 58
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 65
    move-result-object v1

    .line 66
    invoke-interface {p3, v0, v1}, Lcom/google/android/gms/common/internal/zzm;->zza(Lcom/google/android/gms/common/zzk;Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    .line 69
    move-result p3
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_45} :catch_56

    .line 70
    if-eqz p3, :cond_4c

    .line 72
    invoke-static {}, Lcom/google/android/gms/common/zzm;->zze()Lcom/google/android/gms/common/zzm;

    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_4c
    new-instance p3, Lcom/google/android/gms/common/zzd;

    .line 79
    invoke-direct {p3, p2, p0, p1}, Lcom/google/android/gms/common/zzd;-><init>(ZLjava/lang/String;Lcom/google/android/gms/common/zze;)V

    .line 82
    invoke-static {p3}, Lcom/google/android/gms/common/zzm;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/common/zzm;

    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :catch_56
    move-exception p0

    .line 88
    const-string p1, "GoogleCertificates"

    .line 90
    const-string p2, "Failed to get Google certificates from remote"

    .line 92
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    const-string p1, "module call"

    .line 97
    invoke-static {p1, p0}, Lcom/google/android/gms/common/zzm;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzm;

    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :catch_65
    move-exception p0

    .line 103
    const-string p1, "GoogleCertificates"

    .line 105
    const-string p2, "Failed to get Google certificates from remote"

    .line 107
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    const-string p1, "module init: "

    .line 112
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 115
    move-result-object p2

    .line 116
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 123
    move-result p3

    .line 124
    if-eqz p3, :cond_82

    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    goto :goto_88

    .line 131
    :cond_82
    new-instance p2, Ljava/lang/String;

    .line 133
    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 136
    move-object p1, p2

    .line 137
    :goto_88
    invoke-static {p1, p0}, Lcom/google/android/gms/common/zzm;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzm;

    .line 140
    move-result-object p0

    .line 141
    return-object p0
.end method
