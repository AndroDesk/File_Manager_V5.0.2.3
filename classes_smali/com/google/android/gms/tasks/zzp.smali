.class final Lcom/google/android/gms/tasks/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzg:Lcom/google/android/gms/tasks/Task;

.field private final synthetic zzs:Lcom/google/android/gms/tasks/zzo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzo;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzp;->zzs:Lcom/google/android/gms/tasks/zzo;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzp;->zzg:Lcom/google/android/gms/tasks/Task;

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
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzp;->zzs:Lcom/google/android/gms/tasks/zzo;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/tasks/zzo;->zza(Lcom/google/android/gms/tasks/zzo;)Lcom/google/android/gms/tasks/SuccessContinuation;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzp;->zzg:Lcom/google/android/gms/tasks/Task;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/SuccessContinuation;->then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 16
    move-result-object v0
    :try_end_10
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_10} :catch_3e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_10} :catch_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_31

    .line 17
    if-nez v0, :cond_1f

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzp;->zzs:Lcom/google/android/gms/tasks/zzo;

    .line 21
    new-instance v1, Ljava/lang/NullPointerException;

    .line 23
    const-string v2, "Continuation returned null"

    .line 25
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzo;->onFailure(Ljava/lang/Exception;)V

    .line 31
    return-void

    .line 32
    :cond_1f
    sget-object v1, Lcom/google/android/gms/tasks/TaskExecutors;->zzw:Ljava/util/concurrent/Executor;

    .line 34
    iget-object v2, p0, Lcom/google/android/gms/tasks/zzp;->zzs:Lcom/google/android/gms/tasks/zzo;

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 39
    iget-object v2, p0, Lcom/google/android/gms/tasks/zzp;->zzs:Lcom/google/android/gms/tasks/zzo;

    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 44
    iget-object v2, p0, Lcom/google/android/gms/tasks/zzp;->zzs:Lcom/google/android/gms/tasks/zzo;

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    .line 49
    return-void

    .line 50
    :catch_31
    move-exception v0

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzp;->zzs:Lcom/google/android/gms/tasks/zzo;

    .line 53
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzo;->onFailure(Ljava/lang/Exception;)V

    .line 56
    return-void

    .line 57
    :catch_38
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzp;->zzs:Lcom/google/android/gms/tasks/zzo;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzo;->onCanceled()V

    .line 62
    return-void

    .line 63
    :catch_3e
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 67
    move-result-object v1

    .line 68
    instance-of v1, v1, Ljava/lang/Exception;

    .line 70
    if-eqz v1, :cond_53

    .line 72
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzp;->zzs:Lcom/google/android/gms/tasks/zzo;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/Exception;

    .line 80
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzo;->onFailure(Ljava/lang/Exception;)V

    .line 83
    return-void

    .line 84
    :cond_53
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzp;->zzs:Lcom/google/android/gms/tasks/zzo;

    .line 86
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzo;->onFailure(Ljava/lang/Exception;)V

    .line 89
    return-void
.end method
