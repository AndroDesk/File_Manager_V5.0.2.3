.class final Lcom/google/android/gms/tasks/zzr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzt:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/tasks/zzq<",
            "TTResult;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private zzu:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/tasks/zzr;->mLock:Ljava/lang/Object;

    .line 11
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/tasks/Task;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzt:Ljava/util/Queue;

    if-eqz v1, :cond_2a

    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzr;->zzu:Z

    if-eqz v1, :cond_c

    goto :goto_2a

    :cond_c
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/tasks/zzr;->zzu:Z

    .line 9
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2c

    .line 10
    :goto_10
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 11
    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zzt:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/zzq;

    if-nez v0, :cond_22

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/google/android/gms/tasks/zzr;->zzu:Z

    .line 13
    monitor-exit v1

    return-void

    .line 14
    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_27

    .line 15
    invoke-interface {v0, p1}, Lcom/google/android/gms/tasks/zzq;->onComplete(Lcom/google/android/gms/tasks/Task;)V

    goto :goto_10

    :catchall_27
    move-exception p1

    .line 16
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1

    .line 17
    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/tasks/zzq;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/zzq<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzt:Ljava/util/Queue;

    if-nez v1, :cond_e

    .line 3
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzt:Ljava/util/Queue;

    .line 4
    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzt:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method
