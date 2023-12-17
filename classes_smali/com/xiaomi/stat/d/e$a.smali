.class Lcom/xiaomi/stat/d/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/stat/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/d/e$a$b;,
        Lcom/xiaomi/stat/d/e$a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "GAIDClient"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-static {p0}, Lcom/xiaomi/stat/d/e$a;->b(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 7
    const-string v2, "GAIDClient"

    .line 9
    if-nez v0, :cond_10

    .line 11
    const-string p0, "Google play service is not available"

    .line 13
    invoke-static {v2, p0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-object v1

    .line 17
    :cond_10
    new-instance v0, Lcom/xiaomi/stat/d/e$a$a;

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v0, v3}, Lcom/xiaomi/stat/d/e$a$a;-><init>(Lcom/xiaomi/stat/d/f;)V

    .line 23
    :try_start_16
    new-instance v3, Landroid/content/Intent;

    .line 25
    const-string v4, "com.google.android.gms.ads.identifier.service.START"

    .line 27
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    const-string v4, "com.google.android.gms"

    .line 32
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const/4 v4, 0x1

    .line 36
    invoke-virtual {p0, v3, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_42

    .line 42
    new-instance v3, Lcom/xiaomi/stat/d/e$a$b;

    .line 44
    invoke-virtual {v0}, Lcom/xiaomi/stat/d/e$a$a;->a()Landroid/os/IBinder;

    .line 47
    move-result-object v4

    .line 48
    invoke-direct {v3, v4}, Lcom/xiaomi/stat/d/e$a$b;-><init>(Landroid/os/IBinder;)V

    .line 51
    invoke-virtual {v3}, Lcom/xiaomi/stat/d/e$a$b;->a()Ljava/lang/String;

    .line 54
    move-result-object v1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_36} :catch_3c
    .catchall {:try_start_16 .. :try_end_36} :catchall_3a

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 58
    return-object v1

    .line 59
    :catchall_3a
    move-exception v1

    .line 60
    goto :goto_46

    .line 61
    :catch_3c
    move-exception v3

    .line 62
    :try_start_3d
    const-string v4, "Query Google ADID failed "

    .line 64
    invoke-static {v2, v4, v3}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_3a

    .line 67
    :cond_42
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 70
    return-object v1

    .line 71
    :goto_46
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 74
    throw v1
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "com.android.vending"

    .line 7
    const/16 v1, 0x4000

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_d

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :catch_d
    const/4 p0, 0x0

    .line 15
    return p0
.end method
