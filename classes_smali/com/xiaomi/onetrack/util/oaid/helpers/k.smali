.class public Lcom/xiaomi/onetrack/util/oaid/helpers/k;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String; = "SamsungDeviceIDHelper"


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
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 12
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/SamsungDeviceIDHelper$1;

    .line 14
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/helpers/SamsungDeviceIDHelper$1;-><init>(Lcom/xiaomi/onetrack/util/oaid/helpers/k;)V

    .line 17
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->b:Landroid/content/ServiceConnection;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 1
    const-string v0, "SamsungDeviceIDHelper"

    .line 3
    new-instance v1, Landroid/content/Intent;

    .line 5
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8
    const-string v2, "com.samsung.android.deviceidservice"

    .line 10
    const-string v3, "com.samsung.android.deviceidservice.DeviceIdService"

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->b:Landroid/content/ServiceConnection;

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 21
    move-result v1

    .line 22
    const-string v2, ""

    .line 24
    if-eqz v1, :cond_6d

    .line 26
    :try_start_19
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 28
    const-wide/16 v3, 0x1

    .line 30
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/os/IBinder;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_25} :catch_50
    .catchall {:try_start_19 .. :try_end_25} :catchall_4e

    .line 38
    if-nez v1, :cond_36

    .line 40
    :try_start_27
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->b:Landroid/content/ServiceConnection;

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_2d

    .line 45
    goto :goto_35

    .line 46
    :catch_2d
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_35
    return-object v2

    .line 55
    :cond_36
    :try_start_36
    new-instance v3, Lcom/xiaomi/onetrack/util/oaid/a/f$a;

    .line 57
    invoke-direct {v3, v1}, Lcom/xiaomi/onetrack/util/oaid/a/f$a;-><init>(Landroid/os/IBinder;)V

    .line 60
    invoke-virtual {v3}, Lcom/xiaomi/onetrack/util/oaid/a/f$a;->a()Ljava/lang/String;

    .line 63
    move-result-object v2
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_50
    .catchall {:try_start_36 .. :try_end_3f} :catchall_4e

    .line 64
    :try_start_3f
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->b:Landroid/content/ServiceConnection;

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_44} :catch_45

    .line 69
    goto :goto_6d

    .line 70
    :catch_45
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    goto :goto_6d

    .line 79
    :catchall_4e
    move-exception v1

    .line 80
    goto :goto_5e

    .line 81
    :catch_50
    move-exception v1

    .line 82
    :try_start_51
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_4e

    .line 89
    :try_start_58
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->b:Landroid/content/ServiceConnection;

    .line 91
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5d} :catch_45

    .line 94
    goto :goto_6d

    .line 95
    :goto_5e
    :try_start_5e
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/k;->b:Landroid/content/ServiceConnection;

    .line 97
    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_63} :catch_64

    .line 100
    goto :goto_6c

    .line 101
    :catch_64
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_6c
    throw v1

    .line 110
    :cond_6d
    :goto_6d
    return-object v2
.end method
