.class final Lcom/google/android/gms/tasks/zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCanceledListener;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lcom/google/android/gms/tasks/zzq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCanceledListener;",
        "Lcom/google/android/gms/tasks/OnFailureListener;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "TTContinuationResult;>;",
        "Lcom/google/android/gms/tasks/zzq<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final zzd:Ljava/util/concurrent/Executor;

.field private final zze:Lcom/google/android/gms/tasks/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Continuation<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;>;"
        }
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/tasks/zzu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzu<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/zzu;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "TTResult;",
            "Lcom/google/android/gms/tasks/Task<",
            "TTContinuationResult;>;>;",
            "Lcom/google/android/gms/tasks/zzu<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/tasks/zze;->zzd:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/tasks/zze;->zze:Lcom/google/android/gms/tasks/Continuation;

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/tasks/zze;->zzf:Lcom/google/android/gms/tasks/zzu;

    .line 10
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/tasks/zze;)Lcom/google/android/gms/tasks/Continuation;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/tasks/zze;->zze:Lcom/google/android/gms/tasks/Continuation;

    .line 3
    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/tasks/zze;)Lcom/google/android/gms/tasks/zzu;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/tasks/zze;->zzf:Lcom/google/android/gms/tasks/zzu;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw v0
.end method

.method public final onCanceled()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zze;->zzf:Lcom/google/android/gms/tasks/zzu;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzu;->zza()Z

    .line 6
    return-void
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
    iget-object v0, p0, Lcom/google/android/gms/tasks/zze;->zzd:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v1, Lcom/google/android/gms/tasks/zzf;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/zzf;-><init>(Lcom/google/android/gms/tasks/zze;Lcom/google/android/gms/tasks/Task;)V

    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zze;->zzf:Lcom/google/android/gms/tasks/zzu;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/zzu;->setException(Ljava/lang/Exception;)V

    .line 6
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zze;->zzf:Lcom/google/android/gms/tasks/zzu;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/zzu;->setResult(Ljava/lang/Object;)V

    .line 6
    return-void
.end method
