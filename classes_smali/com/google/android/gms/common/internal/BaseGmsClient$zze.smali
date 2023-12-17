.class public final Lcom/google/android/gms/common/internal/BaseGmsClient$zze;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zze"
.end annotation


# instance fields
.field private final synthetic zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

.field private final zzcx:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zze;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zze;->zzcx:I

    .line 8
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 1
    if-nez p2, :cond_a

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zze;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 5
    const/16 p2, 0x10

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V

    .line 10
    return-void

    .line 11
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zze;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    monitor-enter p1

    .line 18
    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zze;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 20
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    .line 22
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_22

    .line 28
    instance-of v2, v1, Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    .line 30
    if-eqz v2, :cond_22

    .line 32
    check-cast v1, Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    .line 34
    goto :goto_27

    .line 35
    :cond_22
    new-instance v1, Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub$zza;

    .line 37
    invoke-direct {v1, p2}, Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub$zza;-><init>(Landroid/os/IBinder;)V

    .line 40
    :goto_27
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/IGmsServiceBroker;)Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    .line 43
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_35

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zze;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 46
    const/4 p2, 0x0

    .line 47
    const/4 v0, 0x0

    .line 48
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zze;->zzcx:I

    .line 50
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(ILandroid/os/Bundle;I)V

    .line 53
    return-void

    .line 54
    :catchall_35
    move-exception p2

    .line 55
    :try_start_36
    monitor-exit p1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    .line 56
    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zze;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    monitor-enter p1

    .line 8
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zze;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/IGmsServiceBroker;)Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    .line 14
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_1e

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zze;->zzct:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 17
    iget-object p1, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Landroid/os/Handler;

    .line 19
    const/4 v0, 0x6

    .line 20
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zze;->zzcx:I

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 30
    return-void

    .line 31
    :catchall_1e
    move-exception v0

    .line 32
    :try_start_1f
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    .line 33
    throw v0
.end method
