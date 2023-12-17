.class final Lcom/google/android/gms/tasks/zzv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$callable:Ljava/util/concurrent/Callable;

.field private final synthetic zzad:Lcom/google/android/gms/tasks/zzu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzu;Ljava/util/concurrent/Callable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/zzv;->zzad:Lcom/google/android/gms/tasks/zzu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/tasks/zzv;->val$callable:Ljava/util/concurrent/Callable;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzv;->zzad:Lcom/google/android/gms/tasks/zzu;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzv;->val$callable:Ljava/util/concurrent/Callable;

    .line 5
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/zzu;->setResult(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 12
    return-void

    .line 13
    :catch_c
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzv;->zzad:Lcom/google/android/gms/tasks/zzu;

    .line 16
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/zzu;->setException(Ljava/lang/Exception;)V

    .line 19
    return-void
.end method
