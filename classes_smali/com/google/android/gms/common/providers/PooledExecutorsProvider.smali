.class public Lcom/google/android/gms/common/providers/PooledExecutorsProvider;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;
    }
.end annotation


# static fields
.field private static zzey:Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/common/providers/PooledExecutorsProvider;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/providers/PooledExecutorsProvider;->zzey:Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;

    .line 6
    if-nez v1, :cond_e

    .line 8
    new-instance v1, Lcom/google/android/gms/common/providers/zza;

    .line 10
    invoke-direct {v1}, Lcom/google/android/gms/common/providers/zza;-><init>()V

    .line 13
    sput-object v1, Lcom/google/android/gms/common/providers/PooledExecutorsProvider;->zzey:Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;

    .line 15
    :cond_e
    sget-object v1, Lcom/google/android/gms/common/providers/PooledExecutorsProvider;->zzey:Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_12
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method
