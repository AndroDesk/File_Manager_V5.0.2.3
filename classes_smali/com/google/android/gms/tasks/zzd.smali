.class final Lcom/google/android/gms/tasks/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzg:Lcom/google/android/gms/tasks/Task;

.field private final synthetic zzh:Lcom/google/android/gms/tasks/zzc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzc;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzd;->zzh:Lcom/google/android/gms/tasks/zzc;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzd;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzd;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_12

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzd;->zzh:Lcom/google/android/gms/tasks/zzc;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/tasks/zzc;->zza(Lcom/google/android/gms/tasks/zzc;)Lcom/google/android/gms/tasks/zzu;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzu;->zza()Z

    .line 18
    return-void

    .line 19
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzd;->zzh:Lcom/google/android/gms/tasks/zzc;

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/tasks/zzc;->zzb(Lcom/google/android/gms/tasks/zzc;)Lcom/google/android/gms/tasks/Continuation;

    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzd;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 27
    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 30
    move-result-object v0
    :try_end_1e
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_12 .. :try_end_1e} :catch_33
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1e} :catch_28

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzd;->zzh:Lcom/google/android/gms/tasks/zzc;

    .line 33
    invoke-static {v1}, Lcom/google/android/gms/tasks/zzc;->zza(Lcom/google/android/gms/tasks/zzc;)Lcom/google/android/gms/tasks/zzu;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzu;->setResult(Ljava/lang/Object;)V

    .line 40
    return-void

    .line 41
    :catch_28
    move-exception v0

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzd;->zzh:Lcom/google/android/gms/tasks/zzc;

    .line 44
    invoke-static {v1}, Lcom/google/android/gms/tasks/zzc;->zza(Lcom/google/android/gms/tasks/zzc;)Lcom/google/android/gms/tasks/zzu;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzu;->setException(Ljava/lang/Exception;)V

    .line 51
    return-void

    .line 52
    :catch_33
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 56
    move-result-object v1

    .line 57
    instance-of v1, v1, Ljava/lang/Exception;

    .line 59
    if-eqz v1, :cond_4c

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzd;->zzh:Lcom/google/android/gms/tasks/zzc;

    .line 63
    invoke-static {v1}, Lcom/google/android/gms/tasks/zzc;->zza(Lcom/google/android/gms/tasks/zzc;)Lcom/google/android/gms/tasks/zzu;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/Exception;

    .line 73
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzu;->setException(Ljava/lang/Exception;)V

    .line 76
    return-void

    .line 77
    :cond_4c
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzd;->zzh:Lcom/google/android/gms/tasks/zzc;

    .line 79
    invoke-static {v1}, Lcom/google/android/gms/tasks/zzc;->zza(Lcom/google/android/gms/tasks/zzc;)Lcom/google/android/gms/tasks/zzu;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzu;->setException(Ljava/lang/Exception;)V

    .line 86
    return-void
.end method
