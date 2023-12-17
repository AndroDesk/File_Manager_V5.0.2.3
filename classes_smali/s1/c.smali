.class public final Ls1/c;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# static fields
.field public static volatile a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_9
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_f} :catch_10

    .line 16
    goto :goto_27

    .line 17
    :catch_10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v1, "Exception when retrieving package:"

    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    const-string v0, "ContextUtils"

    .line 36
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 p0, 0x0

    .line 40
    :goto_27
    return-object p0
.end method

.method public static b()Landroid/content/Context;
    .registers 4

    .line 1
    sget-object v0, Ls1/c;->a:Landroid/content/Context;

    .line 3
    if-nez v0, :cond_2d

    .line 5
    const-class v1, Ls1/c;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_7
    sget-object v0, Ls1/c;->a:Landroid/content/Context;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_2a

    .line 10
    if-nez v0, :cond_28

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_c
    new-array v3, v2, [Ljava/lang/Object;

    .line 15
    invoke-static {v3}, Ls1/g;->b([Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v3

    .line 19
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    invoke-static {v3, v2}, Ls1/g;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/content/Context;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_1b
    .catchall {:try_start_c .. :try_end_1a} :catchall_2a

    .line 27
    move-object v0, v2

    .line 28
    :catch_1b
    if-eqz v0, :cond_20

    .line 30
    :try_start_1d
    sput-object v0, Ls1/c;->a:Landroid/content/Context;

    .line 32
    goto :goto_28

    .line 33
    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    .line 35
    const-string v2, "My Application havn\'t be call onCreate by Framework."

    .line 37
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 40
    throw v0

    .line 41
    :cond_28
    :goto_28
    monitor-exit v1

    .line 42
    goto :goto_2d

    .line 43
    :catchall_2a
    move-exception v0

    .line 44
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_2a

    .line 45
    throw v0

    .line 46
    :cond_2d
    :goto_2d
    return-object v0
.end method
