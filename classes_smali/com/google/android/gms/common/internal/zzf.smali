.class final Lcom/google/android/gms/common/internal/zzf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mState:I

.field private zzcz:Landroid/os/IBinder;

.field private final zzdz:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private zzea:Z

.field private final zzeb:Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

.field private final synthetic zzec:Lcom/google/android/gms/common/internal/zze;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zze;Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzf;->zzeb:Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    .line 8
    new-instance p1, Ljava/util/HashSet;

    .line 10
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzdz:Ljava/util/Set;

    .line 15
    const/4 p1, 0x2

    .line 16
    iput p1, p0, Lcom/google/android/gms/common/internal/zzf;->mState:I

    .line 18
    return-void
.end method


# virtual methods
.method public final getBinder()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzcz:Landroid/os/IBinder;

    .line 3
    return-object v0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->mComponentName:Landroid/content/ComponentName;

    .line 3
    return-object v0
.end method

.method public final getState()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/common/internal/zzf;->mState:I

    .line 3
    return v0
.end method

.method public final isBound()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzea:Z

    .line 3
    return v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zze;->zza(Lcom/google/android/gms/common/internal/zze;)Ljava/util/HashMap;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zze;->zzb(Lcom/google/android/gms/common/internal/zze;)Landroid/os/Handler;

    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzf;->zzeb:Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 20
    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzf;->zzcz:Landroid/os/IBinder;

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzf;->mComponentName:Landroid/content/ComponentName;

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzdz:Ljava/util/Set;

    .line 26
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v1

    .line 30
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2d

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/content/ServiceConnection;

    .line 42
    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 45
    goto :goto_1d

    .line 46
    :cond_2d
    iput v3, p0, Lcom/google/android/gms/common/internal/zzf;->mState:I

    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_31

    .line 52
    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zze;->zza(Lcom/google/android/gms/common/internal/zze;)Ljava/util/HashMap;

    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zze;->zzb(Lcom/google/android/gms/common/internal/zze;)Landroid/os/Handler;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzf;->zzeb:Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzcz:Landroid/os/IBinder;

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzf;->mComponentName:Landroid/content/ComponentName;

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzdz:Ljava/util/Set;

    .line 27
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v1

    .line 31
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2e

    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/content/ServiceConnection;

    .line 43
    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 46
    goto :goto_1e

    .line 47
    :cond_2e
    const/4 p1, 0x2

    .line 48
    iput p1, p0, Lcom/google/android/gms/common/internal/zzf;->mState:I

    .line 50
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catchall_33
    move-exception p1

    .line 53
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    .line 54
    throw p1
.end method

.method public final zza(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zze;->zzd(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/stats/ConnectionTracker;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/zze;->zzc(Lcom/google/android/gms/common/internal/zze;)Landroid/content/Context;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzf;->zzeb:Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zze;->zzc(Lcom/google/android/gms/common/internal/zze;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzb(Landroid/content/Context;)Landroid/content/Intent;

    .line 4
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzf;->zzdz:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Landroid/content/ServiceConnection;)Z
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzdz:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final zzb(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/zze;->zzd(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/common/internal/zze;->zzc(Lcom/google/android/gms/common/internal/zze;)Landroid/content/Context;

    .line 11
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzf;->zzdz:Ljava/util/Set;

    .line 13
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method

.method public final zze(Ljava/lang/String;)V
    .registers 9

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/google/android/gms/common/internal/zzf;->mState:I

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zze;->zzd(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 9
    move-result-object v1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zze;->zzc(Lcom/google/android/gms/common/internal/zze;)Landroid/content/Context;

    .line 15
    move-result-object v2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzeb:Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    .line 18
    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 20
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zze;->zzc(Lcom/google/android/gms/common/internal/zze;)Landroid/content/Context;

    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzb(Landroid/content/Context;)Landroid/content/Intent;

    .line 27
    move-result-object v4

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzeb:Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->zzq()I

    .line 33
    move-result v6

    .line 34
    move-object v3, p1

    .line 35
    move-object v5, p0

    .line 36
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 39
    move-result p1

    .line 40
    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzea:Z

    .line 42
    if-eqz p1, :cond_48

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 46
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zze;->zzb(Lcom/google/android/gms/common/internal/zze;)Landroid/os/Handler;

    .line 49
    move-result-object p1

    .line 50
    const/4 v0, 0x1

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzeb:Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 56
    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zze;->zzb(Lcom/google/android/gms/common/internal/zze;)Landroid/os/Handler;

    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 65
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zze;->zze(Lcom/google/android/gms/common/internal/zze;)J

    .line 68
    move-result-wide v1

    .line 69
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 72
    return-void

    .line 73
    :cond_48
    const/4 p1, 0x2

    .line 74
    iput p1, p0, Lcom/google/android/gms/common/internal/zzf;->mState:I

    .line 76
    :try_start_4b
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 78
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zze;->zzd(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 81
    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 84
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zze;->zzc(Lcom/google/android/gms/common/internal/zze;)Landroid/content/Context;

    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_5a} :catch_5a

    .line 91
    :catch_5a
    return-void
.end method

.method public final zzf(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zze;->zzb(Lcom/google/android/gms/common/internal/zze;)Landroid/os/Handler;

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzeb:Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zze;->zzd(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzec:Lcom/google/android/gms/common/internal/zze;

    .line 21
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zze;->zzc(Lcom/google/android/gms/common/internal/zze;)Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 28
    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzea:Z

    .line 31
    const/4 p1, 0x2

    .line 32
    iput p1, p0, Lcom/google/android/gms/common/internal/zzf;->mState:I

    .line 34
    return-void
.end method

.method public final zzr()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzdz:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
