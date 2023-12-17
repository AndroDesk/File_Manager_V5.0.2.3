.class public Lcom/google/android/gms/tasks/CancellationTokenSource;
.super Ljava/lang/Object;


# instance fields
.field private final zzc:Lcom/google/android/gms/tasks/zza;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/google/android/gms/tasks/zza;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/tasks/zza;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/tasks/CancellationTokenSource;->zzc:Lcom/google/android/gms/tasks/zza;

    .line 11
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/CancellationTokenSource;->zzc:Lcom/google/android/gms/tasks/zza;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/zza;->cancel()V

    .line 6
    return-void
.end method

.method public getToken()Lcom/google/android/gms/tasks/CancellationToken;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/CancellationTokenSource;->zzc:Lcom/google/android/gms/tasks/zza;

    .line 3
    return-object v0
.end method
