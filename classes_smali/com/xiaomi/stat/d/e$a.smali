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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lcom/xiaomi/stat/d/e$a;->b(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ""

    const-string v2, "GAIDClient"

    if-nez v0, :cond_10

    const-string p0, "Google play service is not available"

    invoke-static {v2, p0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_10
    new-instance v0, Lcom/xiaomi/stat/d/e$a$a;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/xiaomi/stat/d/e$a$a;-><init>(Lcom/xiaomi/stat/d/f;)V

    :try_start_16
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.google.android.gms"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_42

    new-instance v3, Lcom/xiaomi/stat/d/e$a$b;

    invoke-virtual {v0}, Lcom/xiaomi/stat/d/e$a$a;->a()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/xiaomi/stat/d/e$a$b;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v3}, Lcom/xiaomi/stat/d/e$a$b;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_36} :catch_3c
    .catchall {:try_start_16 .. :try_end_36} :catchall_3a

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    :catchall_3a
    move-exception v1

    goto :goto_46

    :catch_3c
    move-exception v3

    :try_start_3d
    const-string v4, "Query Google ADID failed "

    invoke-static {v2, v4, v3}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_3a

    :cond_42
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    :goto_46
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.android.vending"

    const/16 v1, 0x4000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_d

    const/4 p0, 0x1

    return p0

    :catch_d
    const/4 p0, 0x0

    return p0
.end method