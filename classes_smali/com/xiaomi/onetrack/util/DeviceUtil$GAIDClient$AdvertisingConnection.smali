.class final Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdvertisingConnection"
.end annotation


# static fields
.field private static final a:I = 0x7530


# instance fields
.field private b:Z

.field private c:Landroid/os/IBinder;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/onetrack/util/h;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->c:Landroid/os/IBinder;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    if-nez v0, :cond_22

    .line 8
    iget-boolean v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->b:Z

    .line 10
    if-nez v0, :cond_22

    .line 12
    monitor-enter p0

    .line 13
    const-wide/16 v0, 0x7530

    .line 15
    :try_start_e
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 18
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->c:Landroid/os/IBinder;

    .line 20
    if-eqz v0, :cond_17

    .line 22
    monitor-exit p0

    .line 23
    goto :goto_22

    .line 24
    :cond_17
    new-instance v0, Ljava/lang/InterruptedException;

    .line 26
    const-string v1, "Not connect or connect timeout to google play service"

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    .line 31
    throw v0

    .line 32
    :catchall_1f
    move-exception v0

    .line 33
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_1f

    .line 34
    throw v0

    .line 35
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->c:Landroid/os/IBinder;

    .line 37
    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iput-object p2, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->c:Landroid/os/IBinder;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_8
    move-exception p1

    .line 10
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    .line 11
    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->b:Z

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient$AdvertisingConnection;->c:Landroid/os/IBinder;

    .line 7
    return-void
.end method
