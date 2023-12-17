.class public Lcom/google/android/gms/common/BlockingServiceConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private zze:Z

.field private final zzf:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zze:Z

    .line 7
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zzf:Ljava/util/concurrent/BlockingQueue;

    .line 14
    return-void
.end method


# virtual methods
.method public getService()Landroid/os/IBinder;
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const-string v0, "BlockingServiceConnection.getService() called on main thread"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zze:Z

    .line 8
    if-nez v0, :cond_15

    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zze:Z

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zzf:Ljava/util/concurrent/BlockingQueue;

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/os/IBinder;

    .line 21
    return-object v0

    .line 22
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    const-string v1, "Cannot call get on this connection more than once"

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0
.end method

.method public getServiceWithTimeout(JLjava/util/concurrent/TimeUnit;)Landroid/os/IBinder;
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const-string v0, "BlockingServiceConnection.getServiceWithTimeout() called on main thread"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotMainThread(Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zze:Z

    .line 8
    if-nez v0, :cond_1f

    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zze:Z

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zzf:Ljava/util/concurrent/BlockingQueue;

    .line 15
    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/os/IBinder;

    .line 21
    if-eqz p1, :cond_17

    .line 23
    return-object p1

    .line 24
    :cond_17
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    .line 26
    const-string p2, "Timed out waiting for the service connection"

    .line 28
    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p1

    .line 32
    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    const-string p2, "Cannot call get on this connection more than once"

    .line 36
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->zzf:Ljava/util/concurrent/BlockingQueue;

    .line 3
    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
