.class public final Ls1/c;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# static fields
.field public static volatile a:Landroid/content/Context;


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

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    :try_start_9
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_f} :catch_10

    goto :goto_27

    :catch_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception when retrieving package:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContextUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_27
    return-object p0
.end method

.method public static b()Landroid/content/Context;
    .registers 4

    sget-object v0, Ls1/c;->a:Landroid/content/Context;

    if-nez v0, :cond_2d

    const-class v1, Ls1/c;

    monitor-enter v1

    :try_start_7
    sget-object v0, Ls1/c;->a:Landroid/content/Context;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_2a

    if-nez v0, :cond_28

    const/4 v2, 0x0

    :try_start_c
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ls1/g;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Ls1/g;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_1b
    .catchall {:try_start_c .. :try_end_1a} :catchall_2a

    move-object v0, v2

    :catch_1b
    if-eqz v0, :cond_20

    :try_start_1d
    sput-object v0, Ls1/c;->a:Landroid/content/Context;

    goto :goto_28

    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "My Application havn\'t be call onCreate by Framework."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_28
    monitor-exit v1

    goto :goto_2d

    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    :goto_2d
    return-object v0
.end method
