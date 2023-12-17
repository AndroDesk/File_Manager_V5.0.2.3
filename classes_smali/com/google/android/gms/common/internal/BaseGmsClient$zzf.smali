.class public final Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;
.super Lcom/google/android/gms/common/internal/BaseGmsClient$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/BaseGmsClient$zza;"
    }
.end annotation


# instance fields
.field private final synthetic zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

.field private final zzcy:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 3
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/common/internal/BaseGmsClient$zza;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;)V

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcy:Landroid/os/IBinder;

    .line 8
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 18
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 23
    return-void
.end method

.method public final zzm()Z
    .registers 7

    .line 1
    const-string v0, "GmsClient"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcy:Landroid/os/IBinder;

    .line 6
    invoke-interface {v2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    .line 9
    move-result-object v2
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_7f

    .line 10
    iget-object v3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_42

    .line 22
    iget-object v3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    const/16 v4, 0x22

    .line 30
    invoke-static {v3, v4}, La/a;->a(Ljava/lang/String;I)I

    .line 33
    move-result v4

    .line 34
    invoke-static {v2, v4}, La/a;->a(Ljava/lang/String;I)I

    .line 37
    move-result v4

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    const-string v4, "service descriptor mismatch: "

    .line 45
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v3, " vs. "

    .line 53
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v1

    .line 67
    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 69
    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcy:Landroid/os/IBinder;

    .line 71
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_7e

    .line 77
    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 79
    const/4 v3, 0x2

    .line 80
    const/4 v4, 0x4

    .line 81
    invoke-static {v2, v3, v4, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;IILandroid/os/IInterface;)Z

    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_5f

    .line 87
    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 89
    const/4 v3, 0x3

    .line 90
    invoke-static {v2, v3, v4, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;IILandroid/os/IInterface;)Z

    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_7e

    .line 96
    :cond_5f
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getConnectionHint()Landroid/os/Bundle;

    .line 107
    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 110
    invoke-static {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 113
    move-result-object v1

    .line 114
    if-eqz v1, :cond_7c

    .line 116
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 118
    invoke-static {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze(Lcom/google/android/gms/common/internal/BaseGmsClient;)Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 121
    move-result-object v1

    .line 122
    invoke-interface {v1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    .line 125
    :cond_7c
    const/4 v0, 0x1

    .line 126
    return v0

    .line 127
    :cond_7e
    return v1

    .line 128
    :catch_7f
    const-string v2, "service probably died"

    .line 130
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return v1
.end method
