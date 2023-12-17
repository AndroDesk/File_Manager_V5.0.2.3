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

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    new-instance v1, Ljava/io/File;

    .line 5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 8
    move-result-object v2

    .line 9
    const-string v3, "Android"

    .line 11
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    const-string v2, "data"

    .line 16
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    sput-object v0, Ls1/d;->a:Ljava/io/File;

    .line 21
    new-instance v0, Ljava/lang/Object;

    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 26
    sput-object v0, Ls1/d;->b:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public static a(Ljava/io/File;)V
    .registers 8

    .line 1
    if-eqz p0, :cond_41

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_41

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_41

    .line 16
    :cond_f
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 19
    move-result-object p0

    .line 20
    if-nez p0, :cond_16

    .line 22
    return-void

    .line 23
    :cond_16
    array-length v0, p0

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    move v3, v1

    .line 27
    move v4, v2

    .line 28
    :goto_1b
    if-ge v3, v0, :cond_41

    .line 30
    aget-object v5, p0, v3

    .line 32
    if-eqz v5, :cond_36

    .line 34
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 37
    move-result v6

    .line 38
    if-nez v6, :cond_28

    .line 40
    goto :goto_36

    .line 41
    :cond_28
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_31

    .line 47
    invoke-static {v5}, Ls1/d;->a(Ljava/io/File;)V

    .line 50
    :cond_31
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 53
    move-result v5

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    :goto_36
    move v5, v2

    .line 56
    :goto_37
    if-eqz v5, :cond_3d

    .line 58
    if-eqz v4, :cond_3d

    .line 60
    move v4, v2

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    move v4, v1

    .line 63
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    .line 65
    goto :goto_1b

    .line 66
    :cond_41
    :goto_41
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_58

    .line 4
    sget-object p2, Ls1/d;->b:Ljava/lang/Object;

    .line 6
    monitor-enter p2

    .line 7
    :try_start_6
    sget-object v1, Ls1/d;->c:Ljava/io/File;

    .line 9
    if-nez v1, :cond_1e

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    new-instance v1, Ljava/io/File;

    .line 17
    new-instance v2, Ljava/io/File;

    .line 19
    sget-object v3, Ls1/d;->a:Ljava/io/File;

    .line 21
    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    const-string p0, "cache"

    .line 26
    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    sput-object v1, Ls1/d;->c:Ljava/io/File;

    .line 31
    :cond_1e
    sget-object p0, Ls1/d;->c:Ljava/io/File;

    .line 33
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 36
    move-result p0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_55

    .line 37
    if-nez p0, :cond_51

    .line 39
    :try_start_26
    new-instance p0, Ljava/io/File;

    .line 41
    sget-object v1, Ls1/d;->a:Ljava/io/File;

    .line 43
    const-string v2, ".nomedia"

    .line 45
    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_32} :catch_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_55

    .line 51
    :catch_32
    :try_start_32
    sget-object p0, Ls1/d;->c:Ljava/io/File;

    .line 53
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 56
    sget-object p0, Ls1/d;->c:Ljava/io/File;

    .line 58
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_47

    .line 64
    sget-object p0, Ls1/d;->c:Ljava/io/File;

    .line 66
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 69
    move-result p0

    .line 70
    if-nez p0, :cond_51

    .line 72
    :cond_47
    const-string p0, "FileUtils"

    .line 74
    const-string v1, "Unable to create external cache directory"

    .line 76
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    monitor-exit p2

    .line 80
    move-object p0, v0

    .line 81
    goto :goto_5c

    .line 82
    :cond_51
    sget-object p0, Ls1/d;->c:Ljava/io/File;

    .line 84
    monitor-exit p2

    .line 85
    goto :goto_5c

    .line 86
    :catchall_55
    move-exception p0

    .line 87
    monitor-exit p2
    :try_end_57
    .catchall {:try_start_32 .. :try_end_57} :catchall_55

    .line 88
    throw p0

    .line 89
    :cond_58
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 92
    move-result-object p0

    .line 93
    :goto_5c
    if-nez p0, :cond_5f

    .line 95
    return-object v0

    .line 96
    :cond_5f
    new-instance p2, Ljava/io/File;

    .line 98
    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 104
    move-result p0

    .line 105
    if-nez p0, :cond_90

    .line 107
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 110
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 113
    move-result p0

    .line 114
    if-eqz p0, :cond_79

    .line 116
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    .line 119
    move-result p0

    .line 120
    if-nez p0, :cond_90

    .line 122
    :cond_79
    const-string p0, "FileUtils"

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    const-string v1, "Unable to create cache directory:"

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-object v0

    .line 145
    :cond_90
    return-object p2
.end method
