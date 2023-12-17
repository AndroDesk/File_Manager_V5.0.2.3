.class public Lcom/xiaomi/onetrack/util/oaid/helpers/a;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String; = "ASUSDeviceIDHelper"


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
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 12
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/ASUSDeviceIDHelper$1;

    .line 14
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/helpers/ASUSDeviceIDHelper$1;-><init>(Lcom/xiaomi/onetrack/util/oaid/helpers/a;)V

    .line 17
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->b:Landroid/content/ServiceConnection;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 1
    const-string v0, "ASUSDeviceIDHelper"

    .line 3
    new-instance v1, Landroid/content/Intent;

    .line 5
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8
    const-string v2, "com.asus.msa.action.ACCESS_DID"

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    new-instance v2, Landroid/content/ComponentName;

    .line 15
    const-string v3, "com.asus.msa.SupplementaryDID"

    .line 17
    const-string v4, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    .line 19
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 25
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->b:Landroid/content/ServiceConnection;

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 31
    move-result v1

    .line 32
    const-string v2, ""

    .line 34
    if-eqz v1, :cond_77

    .line 36
    :try_start_23
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 38
    const-wide/16 v3, 0x1

    .line 40
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/os/IBinder;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2f} :catch_5a
    .catchall {:try_start_23 .. :try_end_2f} :catchall_58

    .line 48
    if-nez v1, :cond_40

    .line 50
    :try_start_31
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->b:Landroid/content/ServiceConnection;

    .line 52
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_37

    .line 55
    goto :goto_3f

    .line 56
    :catch_37
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_3f
    return-object v2

    .line 65
    :cond_40
    :try_start_40
    new-instance v3, Lcom/xiaomi/onetrack/util/oaid/a/a$a;

    .line 67
    invoke-direct {v3, v1}, Lcom/xiaomi/onetrack/util/oaid/a/a$a;-><init>(Landroid/os/IBinder;)V

    .line 70
    invoke-virtual {v3}, Lcom/xiaomi/onetrack/util/oaid/a/a$a;->a()Ljava/lang/String;

    .line 73
    move-result-object v2
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_49} :catch_5a
    .catchall {:try_start_40 .. :try_end_49} :catchall_58

    .line 74
    :try_start_49
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->b:Landroid/content/ServiceConnection;

    .line 76
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_4f

    .line 79
    goto :goto_77

    .line 80
    :catch_4f
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    goto :goto_77

    .line 89
    :catchall_58
    move-exception v1

    .line 90
    goto :goto_68

    .line 91
    :catch_5a
    move-exception v1

    .line 92
    :try_start_5b
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_58

    .line 99
    :try_start_62
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->b:Landroid/content/ServiceConnection;

    .line 101
    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_67} :catch_4f

    .line 104
    goto :goto_77

    .line 105
    :goto_68
    :try_start_68
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/a;->b:Landroid/content/ServiceConnection;

    .line 107
    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6d} :catch_6e

    .line 110
    goto :goto_76

    .line 111
    :catch_6e
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_76
    throw v1

    .line 120
    :cond_77
    :goto_77
    return-object v2
.end method
