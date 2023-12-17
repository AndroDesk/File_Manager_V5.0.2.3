.class public Lcom/miui/maml/util/MamlMediaDataSource;
.super Landroid/media/MediaDataSource;
.source "MamlMediaDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;
    }
.end annotation


# static fields
.field private static final MAX_VIDEO_SIZE:I = 0x3200000

.field private static final MEMORY_THRESHOLD:I = 0x6400000

.field private static final TAG:Ljava/lang/String; = "MamlMediaDataSource"


# instance fields
.field private mComponentCallback:Landroid/content/ComponentCallbacks2;

.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:J

.field private mFile:Landroid/os/MemoryFile;

.field private final mLock:Ljava/lang/Object;

.field private mManager:Lcom/miui/maml/ResourceManager;

.field private mPath:Ljava/lang/String;

.field private mSize:J

.field private mStream:Ljava/io/InputStream;

.field private mSupportMark:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Lcom/miui/maml/util/MamlMediaDataSource$1;

    .line 13
    invoke-direct {v0, p0}, Lcom/miui/maml/util/MamlMediaDataSource$1;-><init>(Lcom/miui/maml/util/MamlMediaDataSource;)V

    .line 16
    iput-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    .line 18
    iput-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mManager:Lcom/miui/maml/ResourceManager;

    .line 22
    iput-object p3, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->init()V

    .line 27
    :try_start_1a
    iget-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mContext:Landroid/content/Context;

    .line 29
    iget-object p2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_21} :catch_21

    .line 34
    :catch_21
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/util/MamlMediaDataSource;Landroid/os/MemoryFile;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/util/MamlMediaDataSource;->setMemoryFile(Landroid/os/MemoryFile;)V

    .line 4
    return-void
.end method

.method private closeStream()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_14

    .line 6
    if-eqz v1, :cond_12

    .line 8
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b
    .catchall {:try_start_7 .. :try_end_a} :catchall_14

    .line 11
    goto :goto_f

    .line 12
    :catch_b
    move-exception v1

    .line 13
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    :goto_f
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 19
    :cond_12
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_14
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    .line 23
    throw v1
.end method

.method private generateMemoryFile()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;

    .line 8
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mManager:Lcom/miui/maml/ResourceManager;

    .line 12
    invoke-direct {v0, v1, v2, p0}, Lcom/miui/maml/util/MamlMediaDataSource$MemoryFileAsyncTask;-><init>(Ljava/lang/String;Lcom/miui/maml/ResourceManager;Lcom/miui/maml/util/MamlMediaDataSource;)V

    .line 15
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 17
    const/4 v2, 0x0

    .line 18
    new-array v2, v2, [Ljava/lang/Void;

    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 23
    return-void
.end method

.method private init()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_37

    .line 9
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    .line 12
    const/4 v1, 0x1

    .line 13
    :try_start_c
    new-array v1, v1, [J

    .line 15
    iget-object v2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mManager:Lcom/miui/maml/ResourceManager;

    .line 17
    iget-object v3, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    .line 19
    invoke-virtual {v2, v3, v1}, Lcom/miui/maml/ResourceManager;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    .line 22
    move-result-object v2

    .line 23
    iput-object v2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 25
    const/4 v3, 0x0

    .line 26
    aget-wide v3, v1, v3

    .line 28
    iput-wide v3, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSize:J

    .line 30
    if-eqz v2, :cond_32

    .line 32
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    .line 35
    move-result v1

    .line 36
    iput-boolean v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSupportMark:Z

    .line 38
    if-eqz v1, :cond_2f

    .line 40
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 42
    const v2, 0x7fffffff

    .line 45
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 48
    :cond_2f
    invoke-virtual {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->tryToGenerateMemoryFile()V

    .line 51
    :cond_32
    monitor-exit v0

    .line 52
    goto :goto_37

    .line 53
    :catchall_34
    move-exception v1

    .line 54
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_34

    .line 55
    throw v1

    .line 56
    :cond_37
    :goto_37
    return-void
.end method

.method private isFileSizeValid()Z
    .registers 5

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSize:J

    .line 3
    const-wide/32 v2, 0x3200000

    .line 6
    cmp-long v0, v0, v2

    .line 8
    if-gez v0, :cond_b

    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return v0
.end method

.method private isMemoryEnough()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "activity"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/ActivityManager;

    .line 11
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    .line 13
    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 16
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 19
    iget-boolean v0, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 21
    if-nez v0, :cond_24

    .line 23
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 25
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 27
    sub-long/2addr v2, v0

    .line 28
    const-wide/32 v0, 0x6400000

    .line 31
    cmp-long v0, v2, v0

    .line 33
    if-lez v0, :cond_24

    .line 35
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :cond_24
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method private resetStream()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget-boolean v2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSupportMark:Z

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_14

    .line 12
    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_f

    .line 15
    goto :goto_23

    .line 16
    :catch_f
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    return v1

    .line 21
    :cond_14
    :try_start_14
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_24

    .line 24
    new-array v0, v3, [J

    .line 26
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mManager:Lcom/miui/maml/ResourceManager;

    .line 28
    iget-object v2, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    .line 30
    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/ResourceManager;->getInputStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 36
    :goto_23
    return v3

    .line 37
    :catch_24
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    return v1
.end method

.method private setMemoryFile(Landroid/os/MemoryFile;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iput-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_7
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    .line 10
    throw p1
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->closeStream()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->releaseMemoryFile()V

    .line 7
    :try_start_6
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mContext:Landroid/content/Context;

    .line 9
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mComponentCallback:Landroid/content/ComponentCallbacks2;

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_d

    .line 14
    :catch_d
    return-void
.end method

.method public finalize()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->close()V

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mPath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSize()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSize:J

    .line 3
    return-wide v0
.end method

.method public onLowMemory()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->releaseMemoryFile()V

    .line 4
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 3

    .line 1
    const/16 v0, 0xa

    .line 3
    if-lt p1, v0, :cond_7

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->releaseMemoryFile()V

    .line 8
    :cond_7
    return-void
.end method

.method public readAt(J[BII)I
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 3
    if-nez v0, :cond_b

    .line 5
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 7
    if-nez v0, :cond_b

    .line 9
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->init()V

    .line 12
    :cond_b
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    .line 14
    monitor-enter v0

    .line 15
    :try_start_e
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_80

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_4c

    .line 20
    int-to-long v3, p5

    .line 21
    add-long/2addr v3, p1

    .line 22
    :try_start_15
    iget-wide v5, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSize:J

    .line 24
    cmp-long v1, v3, v5

    .line 26
    if-lez v1, :cond_34

    .line 28
    cmp-long p5, p1, v5

    .line 30
    if-gez p5, :cond_2b

    .line 32
    const-string p5, "MamlMediaDataSource"

    .line 34
    const-string v1, "readAt: position+size is larger than file size, read left data"

    .line 36
    invoke-static {p5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-wide v3, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mSize:J

    .line 41
    sub-long/2addr v3, p1

    .line 42
    long-to-int p5, v3

    .line 43
    goto :goto_34

    .line 44
    :cond_2b
    const-string p1, "MamlMediaDataSource"

    .line 46
    const-string p2, "readAt: position is larger than file size, return 0"

    .line 48
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/nio/BufferUnderflowException; {:try_start_15 .. :try_end_32} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_32} :catch_3c
    .catchall {:try_start_15 .. :try_end_32} :catchall_80

    .line 51
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_80

    .line 52
    return v2

    .line 53
    :cond_34
    :goto_34
    :try_start_34
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 55
    long-to-int v3, p1

    .line 56
    invoke-virtual {v1, p3, v3, p4, p5}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 59
    move-result v2
    :try_end_3b
    .catch Ljava/nio/BufferUnderflowException; {:try_start_34 .. :try_end_3b} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_3c
    .catchall {:try_start_34 .. :try_end_3b} :catchall_80

    .line 60
    goto :goto_78

    .line 61
    :catch_3c
    move-exception p1

    .line 62
    :try_start_3d
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    iget-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 67
    invoke-virtual {p1}, Landroid/os/MemoryFile;->close()V

    .line 70
    const/4 p1, 0x0

    .line 71
    iput-object p1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 73
    monitor-exit v0

    .line 74
    return v2

    .line 75
    :catch_4a
    monitor-exit v0

    .line 76
    return v2

    .line 77
    :cond_4c
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 79
    if-eqz v1, :cond_78

    .line 81
    iget-wide v3, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mCurrentPosition:J

    .line 83
    cmp-long v1, v3, p1

    .line 85
    if-lez v1, :cond_60

    .line 87
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->resetStream()Z

    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_5e

    .line 93
    move-wide v3, p1

    .line 94
    goto :goto_62

    .line 95
    :cond_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3d .. :try_end_5f} :catchall_80

    .line 96
    return v2

    .line 97
    :cond_60
    sub-long v3, p1, v3

    .line 99
    :goto_62
    const-wide/16 v5, 0x0

    .line 101
    cmp-long v1, v3, v5

    .line 103
    if-eqz v1, :cond_6d

    .line 105
    :try_start_68
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 107
    invoke-virtual {v1, v3, v4}, Ljava/io/InputStream;->skip(J)J

    .line 110
    :cond_6d
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 112
    invoke-virtual {v1, p3, p4, p5}, Ljava/io/InputStream;->read([BII)I

    .line 115
    move-result v2
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_73} :catch_74
    .catchall {:try_start_68 .. :try_end_73} :catchall_80

    .line 116
    goto :goto_78

    .line 117
    :catch_74
    move-exception p3

    .line 118
    :try_start_75
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    :cond_78
    :goto_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_80

    .line 122
    if-lez v2, :cond_7f

    .line 124
    int-to-long p3, v2

    .line 125
    add-long/2addr p1, p3

    .line 126
    iput-wide p1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mCurrentPosition:J

    .line 128
    :cond_7f
    return v2

    .line 129
    :catchall_80
    move-exception p1

    .line 130
    :try_start_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    .line 131
    throw p1
.end method

.method public releaseMemoryFile()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    iget-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 6
    if-eqz v1, :cond_d

    .line 8
    invoke-virtual {v1}, Landroid/os/MemoryFile;->close()V

    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 14
    :cond_d
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_f
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    .line 18
    throw v1
.end method

.method public tryToGenerateMemoryFile()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mFile:Landroid/os/MemoryFile;

    .line 3
    if-nez v0, :cond_19

    .line 5
    iget-object v0, p0, Lcom/miui/maml/util/MamlMediaDataSource;->mStream:Ljava/io/InputStream;

    .line 7
    instance-of v0, v0, Ljava/util/zip/InflaterInputStream;

    .line 9
    if-eqz v0, :cond_19

    .line 11
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->isMemoryEnough()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_19

    .line 17
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->isFileSizeValid()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_19

    .line 23
    invoke-direct {p0}, Lcom/miui/maml/util/MamlMediaDataSource;->generateMemoryFile()V

    .line 26
    :cond_19
    return-void
.end method
