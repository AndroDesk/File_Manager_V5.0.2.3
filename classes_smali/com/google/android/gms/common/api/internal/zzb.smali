.class final Lcom/google/android/gms/common/api/internal/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbi:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

.field private final synthetic zzbj:Ljava/lang/String;

.field private final synthetic zzbk:Lcom/google/android/gms/common/api/internal/zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zza;Lcom/google/android/gms/common/api/internal/LifecycleCallback;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzbk:Lcom/google/android/gms/common/api/internal/zza;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzbi:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzbj:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzbk:Lcom/google/android/gms/common/api/internal/zza;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zza;->zza(Lcom/google/android/gms/common/api/internal/zza;)I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_23

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzbi:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzbk:Lcom/google/android/gms/common/api/internal/zza;

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zza;->zzb(Lcom/google/android/gms/common/api/internal/zza;)Landroid/os/Bundle;

    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1f

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzbk:Lcom/google/android/gms/common/api/internal/zza;

    .line 21
    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zza;->zzb(Lcom/google/android/gms/common/api/internal/zza;)Landroid/os/Bundle;

    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzbj:Ljava/lang/String;

    .line 27
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 30
    move-result-object v1

    .line 31
    goto :goto_20

    .line 32
    :cond_1f
    const/4 v1, 0x0

    .line 33
    :goto_20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onCreate(Landroid/os/Bundle;)V

    .line 36
    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzbk:Lcom/google/android/gms/common/api/internal/zza;

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zza;->zza(Lcom/google/android/gms/common/api/internal/zza;)I

    .line 41
    move-result v0

    .line 42
    const/4 v1, 0x2

    .line 43
    if-lt v0, v1, :cond_31

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzbi:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStart()V

    .line 50
    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzbk:Lcom/google/android/gms/common/api/internal/zza;

    .line 52
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zza;->zza(Lcom/google/android/gms/common/api/internal/zza;)I

    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x3

    .line 57
    if-lt v0, v1, :cond_3f

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzbi:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onResume()V

    .line 64
    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzbk:Lcom/google/android/gms/common/api/internal/zza;

    .line 66
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zza;->zza(Lcom/google/android/gms/common/api/internal/zza;)I

    .line 69
    move-result v0

    .line 70
    const/4 v1, 0x4

    .line 71
    if-lt v0, v1, :cond_4d

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzbi:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onStop()V

    .line 78
    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzbk:Lcom/google/android/gms/common/api/internal/zza;

    .line 80
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zza;->zza(Lcom/google/android/gms/common/api/internal/zza;)I

    .line 83
    move-result v0

    .line 84
    const/4 v1, 0x5

    .line 85
    if-lt v0, v1, :cond_5b

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzbi:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->onDestroy()V

    .line 92
    :cond_5b
    return-void
.end method
