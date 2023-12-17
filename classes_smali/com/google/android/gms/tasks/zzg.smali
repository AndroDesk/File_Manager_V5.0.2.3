.class final Lcom/google/android/gms/tasks/zzg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/zzq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/zzq<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zzd:Ljava/util/concurrent/Executor;

.field private zzj:Lcom/google/android/gms/tasks/OnCanceledListener;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/tasks/zzg;->mLock:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzg;->zzd:Ljava/util/concurrent/Executor;

    .line 13
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzg;->zzj:Lcom/google/android/gms/tasks/OnCanceledListener;

    .line 15
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/tasks/zzg;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzg;->mLock:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/tasks/zzg;)Lcom/google/android/gms/tasks/OnCanceledListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzg;->zzj:Lcom/google/android/gms/tasks/OnCanceledListener;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzg;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_4
    iput-object v1, p0, Lcom/google/android/gms/tasks/zzg;->zzj:Lcom/google/android/gms/tasks/OnCanceledListener;

    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    .line 11
    throw v1
.end method

.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1e

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/tasks/zzg;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter p1

    .line 10
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzg;->zzj:Lcom/google/android/gms/tasks/OnCanceledListener;

    .line 12
    if-nez v0, :cond_f

    .line 14
    monitor-exit p1

    .line 15
    return-void

    .line 16
    :cond_f
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_1b

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/tasks/zzg;->zzd:Ljava/util/concurrent/Executor;

    .line 19
    new-instance v0, Lcom/google/android/gms/tasks/zzh;

    .line 21
    invoke-direct {v0, p0}, Lcom/google/android/gms/tasks/zzh;-><init>(Lcom/google/android/gms/tasks/zzg;)V

    .line 24
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 27
    goto :goto_1e

    .line 28
    :catchall_1b
    move-exception v0

    .line 29
    :try_start_1c
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    .line 30
    throw v0

    .line 31
    :cond_1e
    :goto_1e
    return-void
.end method
