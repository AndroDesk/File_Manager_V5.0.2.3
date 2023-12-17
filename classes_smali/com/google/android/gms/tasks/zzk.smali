.class final Lcom/google/android/gms/tasks/zzk;
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

.field private zzn:Lcom/google/android/gms/tasks/OnFailureListener;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/tasks/zzk;->mLock:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzk;->zzd:Ljava/util/concurrent/Executor;

    .line 13
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzk;->zzn:Lcom/google/android/gms/tasks/OnFailureListener;

    .line 15
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/tasks/zzk;)Ljava/lang/Object;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzk;->mLock:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/tasks/zzk;)Lcom/google/android/gms/tasks/OnFailureListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzk;->zzn:Lcom/google/android/gms/tasks/OnFailureListener;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzk;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_4
    iput-object v1, p0, Lcom/google/android/gms/tasks/zzk;->zzn:Lcom/google/android/gms/tasks/OnFailureListener;

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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_24

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_24

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzk;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_f
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzk;->zzn:Lcom/google/android/gms/tasks/OnFailureListener;

    .line 18
    if-nez v1, :cond_15

    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_21

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzk;->zzd:Ljava/util/concurrent/Executor;

    .line 25
    new-instance v1, Lcom/google/android/gms/tasks/zzl;

    .line 27
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/zzl;-><init>(Lcom/google/android/gms/tasks/zzk;Lcom/google/android/gms/tasks/Task;)V

    .line 30
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 33
    goto :goto_24

    .line 34
    :catchall_21
    move-exception p1

    .line 35
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    .line 36
    throw p1

    .line 37
    :cond_24
    :goto_24
    return-void
.end method
