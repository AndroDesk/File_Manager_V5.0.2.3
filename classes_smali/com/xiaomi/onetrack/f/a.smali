.class public Lcom/xiaomi/onetrack/f/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context; = null

.field private static b:Landroid/content/Context; = null

.field private static c:I = 0x0

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static f:J = 0x0L

.field private static volatile g:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .registers 2

    .line 22
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/j;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 23
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_d

    return-object v0

    .line 24
    :cond_d
    const-class v0, Lcom/xiaomi/onetrack/f/a;

    monitor-enter v0

    .line 25
    :try_start_10
    sget-object v1, Lcom/xiaomi/onetrack/f/a;->b:Landroid/content/Context;

    if-nez v1, :cond_1c

    .line 26
    sget-object v1, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/j;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/onetrack/f/a;->b:Landroid/content/Context;

    .line 27
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_20

    .line 28
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->b:Landroid/content/Context;

    return-object v0

    :catchall_20
    move-exception v1

    .line 29
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1

    .line 30
    :cond_23
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 20
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget-boolean v0, Lcom/xiaomi/onetrack/f/a;->g:Z

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    const-class v0, Lcom/xiaomi/onetrack/f/a;

    monitor-enter v0

    .line 3
    :try_start_8
    sget-boolean v1, Lcom/xiaomi/onetrack/f/a;->g:Z

    if-eqz v1, :cond_e

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_e
    sput-object p0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_3d

    .line 6
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 7
    sget-object v1, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 10
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/xiaomi/onetrack/f/a;->c:I

    .line 11
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/xiaomi/onetrack/f/a;->d:Ljava/lang/String;

    .line 12
    iget-wide v1, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sput-wide v1, Lcom/xiaomi/onetrack/f/a;->f:J

    .line 13
    sget-object p0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_33} :catch_34
    .catchall {:try_start_10 .. :try_end_33} :catchall_3d

    goto :goto_38

    :catch_34
    move-exception p0

    .line 14
    :try_start_35
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_38
    const/4 p0, 0x1

    .line 15
    sput-boolean p0, Lcom/xiaomi/onetrack/f/a;->g:Z

    .line 16
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 18
    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/f/a;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 19
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/xiaomi/onetrack/f/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    return p0

    :catch_c
    return v0
.end method

.method public static a(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    .line 17
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static b()Landroid/content/Context;
    .registers 1

    .line 3
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/xiaomi/onetrack/f/a;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 2
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .line 5
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    :try_start_5
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static d()I
    .registers 1

    .line 1
    sget v0, Lcom/xiaomi/onetrack/f/a;->c:I

    .line 3
    return v0
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static f()J
    .registers 2

    .line 1
    sget-wide v0, Lcom/xiaomi/onetrack/f/a;->f:J

    .line 3
    return-wide v0
.end method
