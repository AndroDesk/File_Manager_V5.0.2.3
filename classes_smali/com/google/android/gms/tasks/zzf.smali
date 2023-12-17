.class final Lcom/google/android/gms/tasks/zzf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzg:Lcom/google/android/gms/tasks/Task;

.field private final synthetic zzi:Lcom/google/android/gms/tasks/zze;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zze;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzf;->zzi:Lcom/google/android/gms/tasks/zze;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzf;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzf;->zzi:Lcom/google/android/gms/tasks/zze;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/tasks/zze;->zza(Lcom/google/android/gms/tasks/zze;)Lcom/google/android/gms/tasks/Continuation;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzf;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 9
    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/google/android/gms/tasks/Task;
    :try_end_e
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_e} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_2f

    .line 15
    if-nez v0, :cond_1d

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzf;->zzi:Lcom/google/android/gms/tasks/zze;

    .line 19
    new-instance v1, Ljava/lang/NullPointerException;

    .line 21
    const-string v2, "Continuation returned null"

    .line 23
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zze;->onFailure(Ljava/lang/Exception;)V

    .line 29
    return-void

    .line 30
    :cond_1d
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->zzw:Ljava/util/concurrent/Executor;

    .line 32
    iget-object v2, p0, Lcom/google/android/gms/tasks/zzf;->zzi:Lcom/google/android/gms/tasks/zze;

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 37
    iget-object v2, p0, Lcom/google/android/gms/tasks/zzf;->zzi:Lcom/google/android/gms/tasks/zze;

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 42
    iget-object v2, p0, Lcom/google/android/gms/tasks/zzf;->zzi:Lcom/google/android/gms/tasks/zze;

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    .line 47
    return-void

    .line 48
    :catch_2f
    move-exception v0

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzf;->zzi:Lcom/google/android/gms/tasks/zze;

    .line 51
    invoke-static {v1}, Lcom/google/android/gms/tasks/zze;->zzb(Lcom/google/android/gms/tasks/zze;)Lcom/google/android/gms/tasks/zzu;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzu;->setException(Ljava/lang/Exception;)V

    .line 58
    return-void

    .line 59
    :catch_3a
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 63
    move-result-object v1

    .line 64
    instance-of v1, v1, Ljava/lang/Exception;

    .line 66
    if-eqz v1, :cond_53

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzf;->zzi:Lcom/google/android/gms/tasks/zze;

    .line 70
    invoke-static {v1}, Lcom/google/android/gms/tasks/zze;->zzb(Lcom/google/android/gms/tasks/zze;)Lcom/google/android/gms/tasks/zzu;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/Exception;

    .line 80
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzu;->setException(Ljava/lang/Exception;)V

    .line 83
    return-void

    .line 84
    :cond_53
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzf;->zzi:Lcom/google/android/gms/tasks/zze;

    .line 86
    invoke-static {v1}, Lcom/google/android/gms/tasks/zze;->zzb(Lcom/google/android/gms/tasks/zze;)Lcom/google/android/gms/tasks/zzu;

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzu;->setException(Ljava/lang/Exception;)V

    .line 93
    return-void
.end method
