.class final Lcom/google/android/gms/tasks/zza;
.super Lcom/google/android/gms/tasks/CancellationToken;


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/zzu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzu<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/tasks/CancellationToken;-><init>()V

    .line 4
    new-instance v0, Lcom/google/android/gms/tasks/zzu;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/tasks/zzu;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/tasks/zza;->zza:Lcom/google/android/gms/tasks/zzu;

    .line 11
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zza;->zza:Lcom/google/android/gms/tasks/zzu;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzu;->trySetResult(Ljava/lang/Object;)Z

    .line 7
    return-void
.end method

.method public final isCancellationRequested()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zza;->zza:Lcom/google/android/gms/tasks/zzu;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzu;->isComplete()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final onCanceledRequested(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zza;->zza:Lcom/google/android/gms/tasks/zzu;

    .line 3
    new-instance v1, Lcom/google/android/gms/tasks/zzb;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tasks/zzb;-><init>(Lcom/google/android/gms/tasks/zza;Lcom/google/android/gms/tasks/OnTokenCanceledListener;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzu;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 11
    return-object p0
.end method
