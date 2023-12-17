.class public final Lcom/google/android/gms/common/internal/zzp;
.super Ljava/lang/Object;


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static zzeo:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static zzep:Ljava/lang/String;

.field private static zzeq:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/gms/common/internal/zzp;->sLock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public static zzc(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzp;->zze(Landroid/content/Context;)V

    .line 4
    sget-object p0, Lcom/google/android/gms/common/internal/zzp;->zzep:Ljava/lang/String;

    .line 6
    return-object p0
.end method

.method public static zzd(Landroid/content/Context;)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzp;->zze(Landroid/content/Context;)V

    .line 4
    sget p0, Lcom/google/android/gms/common/internal/zzp;->zzeq:I

    .line 6
    return p0
.end method

.method private static zze(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/zzp;->sLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-boolean v1, Lcom/google/android/gms/common/internal/zzp;->zzeo:Z

    .line 6
    if-eqz v1, :cond_9

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_9
    const/4 v1, 0x1

    .line 11
    sput-boolean v1, Lcom/google/android/gms/common/internal/zzp;->zzeo:Z

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 20
    move-result-object p0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_3b

    .line 21
    const/16 v2, 0x80

    .line 23
    :try_start_16
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 26
    move-result-object p0

    .line 27
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1c} :catch_31
    .catchall {:try_start_16 .. :try_end_1c} :catchall_3b

    .line 29
    if-nez p0, :cond_20

    .line 31
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_3b

    .line 32
    return-void

    .line 33
    :cond_20
    :try_start_20
    const-string v1, "com.google.app.id"

    .line 35
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    sput-object v1, Lcom/google/android/gms/common/internal/zzp;->zzep:Ljava/lang/String;

    .line 41
    const-string v1, "com.google.android.gms.version"

    .line 43
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 46
    move-result p0

    .line 47
    sput p0, Lcom/google/android/gms/common/internal/zzp;->zzeq:I
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_30} :catch_31
    .catchall {:try_start_20 .. :try_end_30} :catchall_3b

    .line 49
    goto :goto_39

    .line 50
    :catch_31
    move-exception p0

    .line 51
    :try_start_32
    const-string v1, "MetadataValueReader"

    .line 53
    const-string v2, "This should never happen."

    .line 55
    invoke-static {v1, v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :goto_39
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :catchall_3b
    move-exception p0

    .line 61
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_3b

    .line 62
    throw p0
.end method
