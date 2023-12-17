.class abstract Lcom/google/android/gms/common/internal/BaseGmsClient$zza;
.super Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/BaseGmsClient$zzc<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final statusCode:I

.field private final zzcs:Landroid/os/Bundle;

.field private final synthetic zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzc;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Ljava/lang/Object;)V

    .line 8
    iput p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->statusCode:I

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->zzcs:Landroid/os/Bundle;

    .line 12
    return-void
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/common/ConnectionResult;)V
.end method

.method public final synthetic zza(Ljava/lang/Object;)V
    .registers 6

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez p1, :cond_c

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    .line 12
    return-void

    .line 13
    :cond_c
    iget p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->statusCode:I

    .line 15
    if-eqz p1, :cond_61

    .line 17
    const/16 v2, 0xa

    .line 19
    if-eq p1, v2, :cond_31

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 23
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->zzcs:Landroid/os/Bundle;

    .line 28
    if-eqz p1, :cond_26

    .line 30
    const-string v0, "pendingIntent"

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 35
    move-result-object p1

    .line 36
    move-object v1, p1

    .line 37
    check-cast v1, Landroid/app/PendingIntent;

    .line 39
    :cond_26
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 41
    iget v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->statusCode:I

    .line 43
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->zza(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 49
    goto :goto_76

    .line 50
    :cond_31
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 52
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    .line 55
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    const/4 v1, 0x3

    .line 58
    new-array v1, v1, [Ljava/lang/Object;

    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    aput-object v3, v1, v2

    .line 71
    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getStartServiceAction()Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    aput-object v2, v1, v0

    .line 79
    const/4 v0, 0x2

    .line 80
    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 86
    aput-object v2, v1, v0

    .line 88
    const-string v0, "A fatal developer error has occurred. Class name: %s. Start service action: %s. Service Descriptor: %s. "

    .line 90
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    throw p1

    .line 98
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->zzm()Z

    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_76

    .line 104
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 106
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IInterface;)V

    .line 109
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 111
    const/16 v0, 0x8

    .line 113
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;->zza(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 119
    :cond_76
    :goto_76
    return-void
.end method

.method public abstract zzm()Z
.end method

.method public final zzn()V
    .registers 1

    return-void
.end method
