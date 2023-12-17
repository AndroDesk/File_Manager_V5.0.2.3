.class public Lcom/xiaomi/onetrack/util/oaid/helpers/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 10
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 12
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/LenovoDeviceIDHelper$1;

    .line 14
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/helpers/LenovoDeviceIDHelper$1;-><init>(Lcom/xiaomi/onetrack/util/oaid/helpers/e;)V

    .line 17
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->b:Landroid/content/ServiceConnection;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 6
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9
    const-string v1, "com.zui.deviceidservice"

    .line 11
    const-string v2, "com.zui.deviceidservice.DeviceidService"

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->b:Landroid/content/ServiceConnection;

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 22
    move-result v0

    .line 23
    const-string v1, ""

    .line 25
    if-eqz v0, :cond_4a

    .line 27
    :try_start_1a
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 29
    const-wide/16 v2, 0x1

    .line 31
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 33
    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/os/IBinder;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_26} :catch_3f
    .catchall {:try_start_1a .. :try_end_26} :catchall_3d

    .line 39
    if-nez v0, :cond_2e

    .line 41
    :try_start_28
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->b:Landroid/content/ServiceConnection;

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_2d

    .line 46
    :catch_2d
    return-object v1

    .line 47
    :cond_2e
    :try_start_2e
    new-instance v2, Lcom/xiaomi/onetrack/util/oaid/a/c$a$a;

    .line 49
    invoke-direct {v2, v0}, Lcom/xiaomi/onetrack/util/oaid/a/c$a$a;-><init>(Landroid/os/IBinder;)V

    .line 52
    invoke-interface {v2}, Lcom/xiaomi/onetrack/util/oaid/a/c;->a()Ljava/lang/String;

    .line 55
    move-result-object v1
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_37} :catch_3f
    .catchall {:try_start_2e .. :try_end_37} :catchall_3d

    .line 56
    :goto_37
    :try_start_37
    iget-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->b:Landroid/content/ServiceConnection;

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_4a

    .line 61
    goto :goto_4a

    .line 62
    :catchall_3d
    move-exception v0

    .line 63
    goto :goto_44

    .line 64
    :catch_3f
    move-exception v0

    .line 65
    :try_start_40
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_3d

    .line 68
    goto :goto_37

    .line 69
    :goto_44
    :try_start_44
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/e;->b:Landroid/content/ServiceConnection;

    .line 71
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_49

    .line 74
    :catch_49
    throw v0

    .line 75
    :catch_4a
    :cond_4a
    :goto_4a
    return-object v1
.end method
