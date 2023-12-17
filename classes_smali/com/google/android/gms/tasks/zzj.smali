.class final Lcom/google/android/gms/tasks/zzj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzg:Lcom/google/android/gms/tasks/Task;

.field private final synthetic zzm:Lcom/google/android/gms/tasks/zzi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzi;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzj;->zzm:Lcom/google/android/gms/tasks/zzi;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzj;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzj;->zzm:Lcom/google/android/gms/tasks/zzi;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/tasks/zzi;->zza(Lcom/google/android/gms/tasks/zzi;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzj;->zzm:Lcom/google/android/gms/tasks/zzi;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/tasks/zzi;->zzb(Lcom/google/android/gms/tasks/zzi;)Lcom/google/android/gms/tasks/OnCompleteListener;

    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1a

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzj;->zzm:Lcom/google/android/gms/tasks/zzi;

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/tasks/zzi;->zzb(Lcom/google/android/gms/tasks/zzi;)Lcom/google/android/gms/tasks/OnCompleteListener;

    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/tasks/zzj;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 24
    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/OnCompleteListener;->onComplete(Lcom/google/android/gms/tasks/Task;)V

    .line 27
    :cond_1a
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_1c
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    .line 31
    throw v1
.end method
