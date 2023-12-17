.class final Lcom/bumptech/glide/load/engine/executor/RuntimeCompat;
.super Ljava/lang/Object;
.source "RuntimeCompat.java"


# static fields
.field private static final CPU_LOCATION:Ljava/lang/String; = "/sys/devices/system/cpu/"

.field private static final CPU_NAME_REGEX:Ljava/lang/String; = "cpu[0-9]+"

.field private static final TAG:Ljava/lang/String; = "GlideRuntimeCompat"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static availableProcessors()I
    .registers 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private static getCoreCountPre17()I
    .registers 5

    .line 1
    const-string v0, "GlideRuntimeCompat"

    .line 3
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 6
    move-result-object v1

    .line 7
    :try_start_6
    new-instance v2, Ljava/io/File;

    .line 9
    const-string v3, "/sys/devices/system/cpu/"

    .line 11
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v3, "cpu[0-9]+"

    .line 16
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 19
    move-result-object v3

    .line 20
    new-instance v4, Lcom/bumptech/glide/load/engine/executor/RuntimeCompat$1;

    .line 22
    invoke-direct {v4, v3}, Lcom/bumptech/glide/load/engine/executor/RuntimeCompat$1;-><init>(Ljava/util/regex/Pattern;)V

    .line 25
    invoke-virtual {v2, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 28
    move-result-object v0
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_20

    .line 29
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 32
    goto :goto_31

    .line 33
    :catchall_20
    move-exception v2

    .line 34
    const/4 v3, 0x6

    .line 35
    :try_start_22
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2d

    .line 41
    const-string v3, "Failed to calculate accurate cpu count"

    .line 43
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_3c

    .line 46
    :cond_2d
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 49
    const/4 v0, 0x0

    .line 50
    :goto_31
    const/4 v1, 0x1

    .line 51
    if-eqz v0, :cond_36

    .line 53
    array-length v0, v0

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    const/4 v0, 0x0

    .line 56
    :goto_37
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 59
    move-result v0

    .line 60
    return v0

    .line 61
    :catchall_3c
    move-exception v0

    .line 62
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 65
    throw v0
.end method
