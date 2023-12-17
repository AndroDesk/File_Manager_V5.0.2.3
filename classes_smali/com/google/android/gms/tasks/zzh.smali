.class final Lcom/google/android/gms/tasks/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzk:Lcom/google/android/gms/tasks/zzg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzg;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzh;->zzk:Lcom/google/android/gms/tasks/zzg;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzh;->zzk:Lcom/google/android/gms/tasks/zzg;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/tasks/zzg;->zza(Lcom/google/android/gms/tasks/zzg;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->zzk:Lcom/google/android/gms/tasks/zzg;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/tasks/zzg;->zzb(Lcom/google/android/gms/tasks/zzg;)Lcom/google/android/gms/tasks/OnCanceledListener;

    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_18

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzh;->zzk:Lcom/google/android/gms/tasks/zzg;

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/tasks/zzg;->zzb(Lcom/google/android/gms/tasks/zzg;)Lcom/google/android/gms/tasks/OnCanceledListener;

    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Lcom/google/android/gms/tasks/OnCanceledListener;->onCanceled()V

    .line 25
    :cond_18
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_1a
    move-exception v1

    .line 28
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    .line 29
    throw v1
.end method
