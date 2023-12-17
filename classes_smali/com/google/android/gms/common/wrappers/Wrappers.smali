.class public Lcom/google/android/gms/common/wrappers/Wrappers;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field private static zzhz:Lcom/google/android/gms/common/wrappers/Wrappers;


# instance fields
.field private zzhy:Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/common/wrappers/Wrappers;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/gms/common/wrappers/Wrappers;->zzhz:Lcom/google/android/gms/common/wrappers/Wrappers;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/common/wrappers/Wrappers;->zzhy:Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 7
    return-void
.end method

.method public static packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/wrappers/Wrappers;->zzhz:Lcom/google/android/gms/common/wrappers/Wrappers;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->zzi(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private final declared-synchronized zzi(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/wrappers/Wrappers;->zzhy:Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 4
    if-nez v0, :cond_17

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_c

    .line 12
    goto :goto_10

    .line 13
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 17
    :goto_10
    new-instance v0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 19
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object v0, p0, Lcom/google/android/gms/common/wrappers/Wrappers;->zzhy:Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 24
    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/common/wrappers/Wrappers;->zzhy:Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 26
    monitor-exit p0

    .line 27
    return-object p1

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1
.end method
