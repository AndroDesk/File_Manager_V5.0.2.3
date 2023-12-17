.class public Lcom/xiaomi/onetrack/util/oaid/helpers/m;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/lang/String; = "ZTEDeviceIDHelper"


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "com.mdid.msa"

    .line 6
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/m;->a:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 14
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/m;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 16
    new-instance v0, Lcom/xiaomi/onetrack/util/oaid/helpers/ZTEDeviceIDHelper$1;

    .line 18
    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/helpers/ZTEDeviceIDHelper$1;-><init>(Lcom/xiaomi/onetrack/util/oaid/helpers/m;)V

    .line 21
    iput-object v0, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/m;->c:Landroid/content/ServiceConnection;

    .line 23
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/m;->a:Ljava/lang/String;

    const-string v2, "com.mdid.msa.service.MsaKlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.bun.msa.action.start.service"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.bun.msa.param.pkgname"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_16
    const-string p1, "com.bun.msa.param.runinset"

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-virtual {p2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ZTEDeviceIDHelper"

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const-string v0, "ZTEDeviceIDHelper"

    .line 8
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/m;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :goto_15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-direct {p0, v1, p1}, Lcom/xiaomi/onetrack/util/oaid/helpers/m;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 12
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.mdid.msa"

    const-string v4, "com.mdid.msa.service.MsaIdService"

    .line 13
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.bun.msa.action.bindto.service"

    .line 14
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.bun.msa.param.pkgname"

    .line 15
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ""

    .line 16
    iget-object v3, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/m;->c:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 17
    :try_start_3d
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/m;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_49} :catch_74
    .catchall {:try_start_3d .. :try_end_49} :catchall_72

    if-nez v2, :cond_5a

    .line 18
    :try_start_4b
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/m;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_50} :catch_51

    goto :goto_59

    :catch_51
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_59
    return-object v1

    .line 20
    :cond_5a
    :try_start_5a
    new-instance v3, Lcom/xiaomi/onetrack/util/oaid/a/g$a$a;

    invoke-direct {v3, v2}, Lcom/xiaomi/onetrack/util/oaid/a/g$a$a;-><init>(Landroid/os/IBinder;)V

    .line 21
    invoke-interface {v3}, Lcom/xiaomi/onetrack/util/oaid/a/g;->b()Ljava/lang/String;

    move-result-object v1
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_63} :catch_74
    .catchall {:try_start_5a .. :try_end_63} :catchall_72

    .line 22
    :try_start_63
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/m;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_68} :catch_69

    goto :goto_91

    :catch_69
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_91

    :catchall_72
    move-exception v1

    goto :goto_82

    :catch_74
    move-exception v2

    .line 24
    :try_start_75
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_72

    .line 25
    :try_start_7c
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/m;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_81} :catch_69

    goto :goto_91

    :goto_82
    :try_start_82
    iget-object v2, p0, Lcom/xiaomi/onetrack/util/oaid/helpers/m;->c:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_87} :catch_88

    goto :goto_90

    :catch_88
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :goto_90
    throw v1

    :cond_91
    :goto_91
    return-object v1
.end method
