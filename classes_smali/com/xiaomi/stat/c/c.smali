.class public Lcom/xiaomi/stat/c/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "com.xiaomi.xmsf"

.field public static final b:Ljava/lang/String; = "com.xiaomi.xmsf.push.service.HttpService"

.field private static final c:Ljava/lang/String; = "UploadMode"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Landroid/content/ServiceConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/ServiceConnection;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/stat/c/d;

    invoke-direct {v0, p2, p0, p1}, Lcom/xiaomi/stat/c/d;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/stat/b;->u()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/xiaomi/stat/c/c;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0, p1, p2}, Lcom/xiaomi/stat/c/c;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-static {p0, p1, p2}, Lcom/xiaomi/stat/d/i;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()Z
    .registers 7

    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x1

    :try_start_9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_44

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_14

    move v3, v2

    goto :goto_15

    :cond_14
    move v3, v1

    :goto_15
    :try_start_15
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x40

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v6, "android"

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v0, :cond_45

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_45

    array-length v5, v0

    if-lez v5, :cond_45

    if-eqz v4, :cond_45

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_45

    array-length v5, v4

    if-lez v5, :cond_45

    aget-object v4, v4, v1

    aget-object v0, v0, v1

    invoke-virtual {v4, v0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_43} :catch_45

    goto :goto_46

    :catch_44
    move v3, v1

    :catch_45
    :cond_45
    move v0, v1

    :goto_46
    if-nez v3, :cond_4a

    if-eqz v0, :cond_4b

    :cond_4a
    move v1, v2

    :cond_4b
    return v1
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lcom/xiaomi/stat/c/i;

    if-eqz p2, :cond_d

    invoke-static {p1}, Lcom/xiaomi/stat/d/i;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "sn"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaomi.xmsf"

    const-string v2, "com.xiaomi.xmsf.push.service.HttpService"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v1, :cond_26

    aget-object p0, v3, v4

    return-object p0

    :cond_26
    invoke-static {p0, p1, v3}, Lcom/xiaomi/stat/c/c;->a(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)Landroid/content/ServiceConnection;

    move-result-object p0

    invoke-virtual {v1, p2, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    monitor-enter v0

    const-wide/16 v5, 0x3a98

    :try_start_31
    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_34} :catch_37
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_3b

    :catchall_35
    move-exception p0

    goto :goto_49

    :catch_37
    move-exception p2

    :try_start_38
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_35

    if-nez p1, :cond_41

    const/4 p2, 0x0

    aput-object p2, v3, v4

    :cond_41
    if-eqz p1, :cond_46

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_46
    aget-object p0, v3, v4

    return-object p0

    :goto_49
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_35

    throw p0
.end method
