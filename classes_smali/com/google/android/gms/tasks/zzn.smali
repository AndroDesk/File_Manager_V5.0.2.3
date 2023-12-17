.class final Lcom/google/android/gms/tasks/zzn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzg:Lcom/google/android/gms/tasks/Task;

.field private final synthetic zzq:Lcom/google/android/gms/tasks/zzm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzm;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzn;->zzq:Lcom/google/android/gms/tasks/zzm;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzn;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzn;->zzq:Lcom/google/android/gms/tasks/zzm;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/tasks/zzm;->zza(Lcom/google/android/gms/tasks/zzm;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzn;->zzq:Lcom/google/android/gms/tasks/zzm;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/tasks/zzm;->zzb(Lcom/google/android/gms/tasks/zzm;)Lcom/google/android/gms/tasks/OnSuccessListener;

    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1e

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzn;->zzq:Lcom/google/android/gms/tasks/zzm;

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/tasks/zzm;->zzb(Lcom/google/android/gms/tasks/zzm;)Lcom/google/android/gms/tasks/OnSuccessListener;

    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/tasks/zzn;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    .line 31
    :cond_1e
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_20
    move-exception v1

    .line 34
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    .line 35
    throw v1
.end method
