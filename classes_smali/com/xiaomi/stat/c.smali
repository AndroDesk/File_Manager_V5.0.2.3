.class public Lcom/xiaomi/stat/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DBExecutor"

.field private static b:Ljava/lang/String; = "mistat_db"

.field private static final c:Ljava/lang/String; = "mistat"

.field private static final d:Ljava/lang/String; = "db.lk"

.field private static e:Landroid/os/Handler;

.field private static f:Ljava/nio/channels/FileLock;

.field private static g:Ljava/nio/channels/FileChannel;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 3

    .line 2
    invoke-static {}, Lcom/xiaomi/stat/c;->c()V

    .line 3
    sget-object v0, Lcom/xiaomi/stat/c;->e:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/stat/c$a;

    invoke-direct {v1, p0}, Lcom/xiaomi/stat/c$a;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic a()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/c;->d()Z

    move-result v0

    return v0
.end method

.method public static synthetic b()V
    .registers 0

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/c;->e()V

    .line 4
    return-void
.end method

.method private static c()V
    .registers 3

    .line 1
    sget-object v0, Lcom/xiaomi/stat/c;->e:Landroid/os/Handler;

    .line 3
    if-nez v0, :cond_25

    .line 5
    const-class v0, Lcom/xiaomi/stat/c;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Lcom/xiaomi/stat/c;->e:Landroid/os/Handler;

    .line 10
    if-nez v1, :cond_20

    .line 12
    new-instance v1, Landroid/os/HandlerThread;

    .line 14
    sget-object v2, Lcom/xiaomi/stat/c;->b:Ljava/lang/String;

    .line 16
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 22
    new-instance v2, Landroid/os/Handler;

    .line 24
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    sput-object v2, Lcom/xiaomi/stat/c;->e:Landroid/os/Handler;

    .line 33
    :cond_20
    monitor-exit v0

    .line 34
    goto :goto_25

    .line 35
    :catchall_22
    move-exception v1

    .line 36
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    .line 37
    throw v1

    .line 38
    :cond_25
    :goto_25
    return-void
.end method

.method private static d()Z
    .registers 5

    .line 1
    const-string v0, "acquire lock for db failed with "

    .line 3
    const-string v1, "DBExecutor"

    .line 5
    new-instance v2, Ljava/io/File;

    .line 7
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 14
    move-result-object v3

    .line 15
    const-string v4, "mistat"

    .line 17
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1c

    .line 26
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 29
    :cond_1c
    new-instance v3, Ljava/io/File;

    .line 31
    const-string v4, "db.lk"

    .line 33
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    const/4 v2, 0x0

    .line 37
    :try_start_24
    new-instance v4, Ljava/io/FileOutputStream;

    .line 39
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_6e

    .line 42
    :try_start_29
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 45
    move-result-object v3

    .line 46
    sput-object v3, Lcom/xiaomi/stat/c;->g:Ljava/nio/channels/FileChannel;

    .line 48
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    .line 51
    move-result-object v3

    .line 52
    sput-object v3, Lcom/xiaomi/stat/c;->f:Ljava/nio/channels/FileLock;

    .line 54
    const-string v3, "acquire lock for db"

    .line 56
    invoke-static {v1, v3}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3a} :catch_3c

    .line 59
    const/4 v0, 0x1

    .line 60
    return v0

    .line 61
    :catch_3c
    move-exception v3

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :try_start_4f
    sget-object v0, Lcom/xiaomi/stat/c;->g:Ljava/nio/channels/FileChannel;

    .line 82
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 85
    const/4 v0, 0x0

    .line 86
    sput-object v0, Lcom/xiaomi/stat/c;->g:Ljava/nio/channels/FileChannel;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_57} :catch_58

    .line 88
    goto :goto_6d

    .line 89
    :catch_58
    move-exception v0

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    const-string v4, "close file stream failed with "

    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_6d
    return v2

    .line 111
    :catch_6e
    move-exception v3

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 127
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return v2
.end method

.method private static e()V
    .registers 5

    .line 1
    const-string v0, "DBExecutor"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    sget-object v2, Lcom/xiaomi/stat/c;->f:Ljava/nio/channels/FileLock;

    .line 6
    if-eqz v2, :cond_c

    .line 8
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    .line 11
    sput-object v1, Lcom/xiaomi/stat/c;->f:Ljava/nio/channels/FileLock;

    .line 13
    :cond_c
    const-string v2, "release sDBFileLock for db"

    .line 15
    invoke-static {v0, v2}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_11} :catch_12

    .line 18
    goto :goto_27

    .line 19
    :catch_12
    move-exception v2

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    const-string v4, "release sDBFileLock for db failed with "

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    invoke-static {v0, v2}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :goto_27
    :try_start_27
    sget-object v2, Lcom/xiaomi/stat/c;->g:Ljava/nio/channels/FileChannel;

    .line 42
    if-eqz v2, :cond_30

    .line 44
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 47
    sput-object v1, Lcom/xiaomi/stat/c;->g:Ljava/nio/channels/FileChannel;

    .line 49
    :cond_30
    const-string v1, "release sLockFileChannel for db"

    .line 51
    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_35} :catch_36

    .line 54
    goto :goto_4b

    .line 55
    :catch_36
    move-exception v1

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    const-string v3, "release sLockFileChannel for db failed with "

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_4b
    return-void
.end method
