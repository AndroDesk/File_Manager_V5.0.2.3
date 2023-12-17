.class public Lcom/xiaomi/mirror/synergy/CallRelayService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;
    }
.end annotation


# static fields
.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_IN_USE:I = 0x1


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mService:Lcom/xiaomi/mirror/ICallRelayService;

.field public mWrapper:Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mLock:Ljava/lang/Object;

    invoke-static {p1}, Lcom/xiaomi/mirror/ICallRelayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/mirror/ICallRelayService;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mService:Lcom/xiaomi/mirror/ICallRelayService;

    if-nez p1, :cond_13

    return-void

    :cond_13
    :try_start_13
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1b} :catch_1c

    goto :goto_1f

    :catch_1c
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mService:Lcom/xiaomi/mirror/ICallRelayService;

    :goto_1f
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mWrapper:Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;

    if-eqz v1, :cond_16

    invoke-static {v1}, Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;->access$100(Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;)Lcom/xiaomi/mirror/synergy/CallRelayListener;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mWrapper:Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;

    invoke-static {v1}, Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;->access$100(Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;)Lcom/xiaomi/mirror/synergy/CallRelayListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/mirror/synergy/CallRelayListener;->onLost()V

    :cond_16
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mService:Lcom/xiaomi/mirror/ICallRelayService;

    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public release()V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mService:Lcom/xiaomi/mirror/ICallRelayService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    :try_start_8
    invoke-interface {v1}, Lcom/xiaomi/mirror/ICallRelayService;->release()V

    iput-object v2, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mService:Lcom/xiaomi/mirror/ICallRelayService;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    :catch_d
    :cond_d
    :try_start_d
    iput-object v2, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mWrapper:Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;

    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_11

    throw v1
.end method

.method public sendRelayMessage(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mService:Lcom/xiaomi/mirror/ICallRelayService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c

    if-eqz v1, :cond_a

    :try_start_7
    invoke-interface {v1, p1}, Lcom/xiaomi/mirror/ICallRelayService;->sendRelayMessage(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    :catch_a
    :cond_a
    :try_start_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_c

    throw p1
.end method

.method public setCallState(I)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mService:Lcom/xiaomi/mirror/ICallRelayService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c

    if-eqz v1, :cond_a

    :try_start_7
    invoke-interface {v1, p1}, Lcom/xiaomi/mirror/ICallRelayService;->setCallState(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    :catch_a
    :cond_a
    :try_start_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_c

    throw p1
.end method

.method public setRelayListener(Lcom/xiaomi/mirror/synergy/CallRelayListener;)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mWrapper:Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;

    if-nez v1, :cond_f

    new-instance v1, Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;-><init>(Lcom/xiaomi/mirror/synergy/CallRelayService$1;)V

    iput-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mWrapper:Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;

    :cond_f
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mWrapper:Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;

    invoke-static {v1, p1}, Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;->access$102(Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;Lcom/xiaomi/mirror/synergy/CallRelayListener;)Lcom/xiaomi/mirror/synergy/CallRelayListener;

    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mService:Lcom/xiaomi/mirror/ICallRelayService;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_23

    if-eqz p1, :cond_1e

    :try_start_18
    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/CallRelayService;->mWrapper:Lcom/xiaomi/mirror/synergy/CallRelayService$RelayListenerWrapper;

    invoke-interface {p1, v1}, Lcom/xiaomi/mirror/ICallRelayService;->registerCallRelayListener(Lcom/xiaomi/mirror/ICallRelayListener;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_21
    .catchall {:try_start_18 .. :try_end_1d} :catchall_23

    goto :goto_21

    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lcom/xiaomi/mirror/synergy/CallRelayService;->binderDied()V

    :catch_21
    :goto_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_23

    throw p1
.end method
