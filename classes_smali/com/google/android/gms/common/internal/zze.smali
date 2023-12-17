.class final Lcom/google/android/gms/common/internal/zze;
.super Lcom/google/android/gms/common/internal/GmsClientSupervisor;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final zzdu:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;",
            "Lcom/google/android/gms/common/internal/zzf;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mConnectionStatus"
    .end annotation
.end field

.field private final zzdv:Landroid/content/Context;

.field private final zzdw:Lcom/google/android/gms/common/stats/ConnectionTracker;

.field private final zzdx:J

.field private final zzdy:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzdv:Landroid/content/Context;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/common/zze;

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/internal/common/zze;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    .line 28
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zzdw:Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 34
    const-wide/16 v0, 0x1388

    .line 36
    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zze;->zzdx:J

    .line 38
    const-wide/32 v0, 0x493e0

    .line 41
    iput-wide v0, p0, Lcom/google/android/gms/common/internal/zze;->zzdy:J

    .line 43
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/common/internal/zze;)Ljava/util/HashMap;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/common/internal/zze;)Landroid/os/Handler;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/common/internal/zze;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zze;->zzdv:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/common/internal/zze;)Lcom/google/android/gms/common/stats/ConnectionTracker;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zze;->zzdw:Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 3
    return-object p0
.end method

.method public static synthetic zze(Lcom/google/android/gms/common/internal/zze;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/common/internal/zze;->zzdy:J

    .line 3
    return-wide v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_65

    .line 6
    if-eq v0, v1, :cond_9

    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    check-cast p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    .line 19
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/google/android/gms/common/internal/zzf;

    .line 25
    if-eqz v2, :cond_60

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzf;->getState()I

    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x3

    .line 32
    if-ne v3, v4, :cond_60

    .line 34
    const-string v3, "GmsClientSupervisor"

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 43
    move-result v5

    .line 44
    add-int/lit8 v5, v5, 0x2f

    .line 46
    new-instance v6, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 51
    const-string v5, "Timeout waiting for ServiceConnection callback "

    .line 53
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 63
    new-instance v5, Ljava/lang/Exception;

    .line 65
    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    .line 68
    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzf;->getComponentName()Landroid/content/ComponentName;

    .line 74
    move-result-object v3

    .line 75
    if-nez v3, :cond_50

    .line 77
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->getComponentName()Landroid/content/ComponentName;

    .line 80
    move-result-object v3

    .line 81
    :cond_50
    if-nez v3, :cond_5d

    .line 83
    new-instance v3, Landroid/content/ComponentName;

    .line 85
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;->getPackage()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    const-string v4, "unknown"

    .line 91
    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_5d
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/zzf;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 97
    :cond_60
    monitor-exit v0

    .line 98
    return v1

    .line 99
    :catchall_62
    move-exception p1

    .line 100
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_c .. :try_end_64} :catchall_62

    .line 101
    throw p1

    .line 102
    :cond_65
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    .line 104
    monitor-enter v0

    .line 105
    :try_start_68
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 107
    check-cast p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    .line 109
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    .line 111
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lcom/google/android/gms/common/internal/zzf;

    .line 117
    if-eqz v2, :cond_8c

    .line 119
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzf;->zzr()Z

    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_8c

    .line 125
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzf;->isBound()Z

    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_87

    .line 131
    const-string v3, "GmsClientSupervisor"

    .line 133
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/zzf;->zzf(Ljava/lang/String;)V

    .line 136
    :cond_87
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    .line 138
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_8c
    monitor-exit v0

    .line 142
    return v1

    .line 143
    :catchall_8e
    move-exception p1

    .line 144
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_68 .. :try_end_90} :catchall_8e

    .line 145
    throw p1
.end method

.method public final zza(Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "ServiceConnection must not be null"

    .line 1
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    monitor-enter v0

    .line 3
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/zzf;

    if-nez v1, :cond_23

    .line 4
    new-instance v1, Lcom/google/android/gms/common/internal/zzf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/internal/zzf;-><init>(Lcom/google/android/gms/common/internal/zze;Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;)V

    .line 5
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/common/internal/zzf;->zza(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, p3}, Lcom/google/android/gms/common/internal/zzf;->zze(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    .line 8
    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 9
    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/internal/zzf;->zza(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 10
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/common/internal/zzf;->zza(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzf;->getState()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_41

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3d

    goto :goto_4c

    .line 12
    :cond_3d
    invoke-virtual {v1, p3}, Lcom/google/android/gms/common/internal/zzf;->zze(Ljava/lang/String;)V

    goto :goto_4c

    .line 13
    :cond_41
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzf;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzf;->getBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 14
    :goto_4c
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzf;->isBound()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 15
    :cond_52
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_73
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_8 .. :try_end_75} :catchall_73

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/common/internal/GmsClientSupervisor$zza;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 7

    const-string v0, "ServiceConnection must not be null"

    .line 1
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    monitor-enter v0

    .line 3
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/zzf;

    if-eqz v1, :cond_52

    .line 4
    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/internal/zzf;->zza(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 5
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/common/internal/zzf;->zzb(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzf;->zzr()Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zze;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/google/android/gms/common/internal/zze;->zzdx:J

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9
    :cond_2f
    monitor-exit v0

    return-void

    .line 10
    :cond_31
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x4c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_52
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Nonexistent connection status for service config: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_73
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_8 .. :try_end_75} :catchall_73

    throw p1
.end method
