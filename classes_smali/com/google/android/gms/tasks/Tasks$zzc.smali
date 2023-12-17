.class final Lcom/google/android/gms/tasks/Tasks$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Tasks$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tasks/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zza:Lcom/google/android/gms/tasks/zzu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/zzu<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private zzab:Ljava/lang/Exception;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final zzag:I

.field private zzah:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private zzai:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private zzaj:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private zzak:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/gms/tasks/zzu;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tasks/zzu<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->mLock:Ljava/lang/Object;

    .line 11
    iput p1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzag:I

    .line 13
    iput-object p2, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zza:Lcom/google/android/gms/tasks/zzu;

    .line 15
    return-void
.end method

.method private final zzf()V
    .registers 7
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzah:I

    .line 3
    iget v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzai:I

    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzaj:I

    .line 8
    add-int/2addr v0, v1

    .line 9
    iget v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzag:I

    .line 11
    if-ne v0, v1, :cond_4c

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzab:Ljava/lang/Exception;

    .line 15
    if-eqz v0, :cond_3c

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zza:Lcom/google/android/gms/tasks/zzu;

    .line 19
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    .line 21
    iget v2, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzai:I

    .line 23
    iget v3, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzag:I

    .line 25
    const/16 v4, 0x36

    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 32
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, " out of "

    .line 37
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v2, " underlying tasks failed"

    .line 45
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    iget-object v3, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzab:Ljava/lang/Exception;

    .line 54
    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzu;->setException(Ljava/lang/Exception;)V

    .line 60
    return-void

    .line 61
    :cond_3c
    iget-boolean v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzak:Z

    .line 63
    if-eqz v0, :cond_46

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zza:Lcom/google/android/gms/tasks/zzu;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zzu;->zza()Z

    .line 70
    return-void

    .line 71
    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zza:Lcom/google/android/gms/tasks/zzu;

    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzu;->setResult(Ljava/lang/Object;)V

    .line 77
    :cond_4c
    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzaj:I

    .line 6
    const/4 v2, 0x1

    .line 7
    add-int/2addr v1, v2

    .line 8
    iput v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzaj:I

    .line 10
    iput-boolean v2, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzak:Z

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/tasks/Tasks$zzc;->zzf()V

    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_10
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    .line 19
    throw v1
.end method

.method public final onFailure(Ljava/lang/Exception;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzai:I

    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 8
    iput v1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzai:I

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzab:Ljava/lang/Exception;

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/tasks/Tasks$zzc;->zzf()V

    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_10
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    .line 19
    throw p1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_3
    iget v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzah:I

    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lcom/google/android/gms/tasks/Tasks$zzc;->zzah:I

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/tasks/Tasks$zzc;->zzf()V

    .line 13
    monitor-exit p1

    .line 14
    return-void

    .line 15
    :catchall_e
    move-exception v0

    .line 16
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    .line 17
    throw v0
.end method
