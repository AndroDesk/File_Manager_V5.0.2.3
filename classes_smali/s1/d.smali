.class public final Ls1/d;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final a:Ljava/io/File;

.field public static final b:Ljava/lang/Object;

.field public static c:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "Android"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "data"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Ls1/d;->a:Ljava/io/File;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ls1/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/io/File;)V
    .registers 8

    if-eqz p0, :cond_41

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_41

    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_16

    return-void

    :cond_16
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_1b
    if-ge v3, v0, :cond_41

    aget-object v5, p0, v3

    if-eqz v5, :cond_36

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_28

    goto :goto_36

    :cond_28
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-static {v5}, Ls1/d;->a(Ljava/io/File;)V

    :cond_31
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    goto :goto_37

    :cond_36
    :goto_36
    move v5, v2

    :goto_37
    if-eqz v5, :cond_3d

    if-eqz v4, :cond_3d

    move v4, v2

    goto :goto_3e

    :cond_3d
    move v4, v1

    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_41
    :goto_41
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_58

    sget-object p2, Ls1/d;->b:Ljava/lang/Object;

    monitor-enter p2

    :try_start_6
    sget-object v1, Ls1/d;->c:Ljava/io/File;

    if-nez v1, :cond_1e

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    sget-object v3, Ls1/d;->a:Ljava/io/File;

    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "cache"

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Ls1/d;->c:Ljava/io/File;

    :cond_1e
    sget-object p0, Ls1/d;->c:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_55

    if-nez p0, :cond_51

    :try_start_26
    new-instance p0, Ljava/io/File;

    sget-object v1, Ls1/d;->a:Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_32} :catch_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_55

    :catch_32
    :try_start_32
    sget-object p0, Ls1/d;->c:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    sget-object p0, Ls1/d;->c:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_47

    sget-object p0, Ls1/d;->c:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_51

    :cond_47
    const-string p0, "FileUtils"

    const-string v1, "Unable to create external cache directory"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p2

    move-object p0, v0

    goto :goto_5c

    :cond_51
    sget-object p0, Ls1/d;->c:Ljava/io/File;

    monitor-exit p2

    goto :goto_5c

    :catchall_55
    move-exception p0

    monitor-exit p2
    :try_end_57
    .catchall {:try_start_32 .. :try_end_57} :catchall_55

    throw p0

    :cond_58
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    :goto_5c
    if-nez p0, :cond_5f

    return-object v0

    :cond_5f
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_90

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_79

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_90

    :cond_79
    const-string p0, "FileUtils"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create cache directory:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_90
    return-object p2
.end method
