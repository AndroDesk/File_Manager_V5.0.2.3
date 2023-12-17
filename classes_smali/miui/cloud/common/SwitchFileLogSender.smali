.class public Lmiui/cloud/common/SwitchFileLogSender;
.super Ljava/lang/Object;
.source "SwitchFileLogSender.java"

# interfaces
.implements Lmiui/cloud/common/XLogger$LogSender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/common/SwitchFileLogSender$PathProvider;
    }
.end annotation


# static fields
.field private static final LOG_SUFFIX:Ljava/lang/String; = ".log"

.field private static final PACKAGE_LOG_PATH:Ljava/lang/String; = "MIUI/debug_log/%s"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mFailOpenTime:J

.field private mInit:Z

.field private mMaxFileCount:I

.field private mMaxFileSizeInByte:I

.field private mMonitor:Landroid/os/FileObserver;

.field private mOutputStream:Ljava/io/FileOutputStream;

.field private mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

.field private mPathProvider:Lmiui/cloud/common/SwitchFileLogSender$PathProvider;

.field private mShutdown:Z

.field private mSizeUsed:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILmiui/cloud/common/XLogger$LogSender;)V
    .registers 12

    new-instance v2, Lmiui/cloud/common/SwitchFileLogSender$1;

    invoke-direct {v2, p2}, Lmiui/cloud/common/SwitchFileLogSender$1;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lmiui/cloud/common/SwitchFileLogSender;-><init>(Landroid/content/Context;Lmiui/cloud/common/SwitchFileLogSender$PathProvider;IILmiui/cloud/common/XLogger$LogSender;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/cloud/common/SwitchFileLogSender$PathProvider;IILmiui/cloud/common/XLogger$LogSender;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-ne v0, p1, :cond_36

    if-eqz p2, :cond_2e

    if-lez p3, :cond_26

    const/4 v0, 0x1

    if-le p4, v0, :cond_1e

    iput-object p5, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    iput p3, p0, Lmiui/cloud/common/SwitchFileLogSender;->mMaxFileSizeInByte:I

    iput p4, p0, Lmiui/cloud/common/SwitchFileLogSender;->mMaxFileCount:I

    iput-object p2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mPathProvider:Lmiui/cloud/common/SwitchFileLogSender$PathProvider;

    iput-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->mAppContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->mInit:Z

    return-void

    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxFileCount should >1. "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxFileSizeInByte should >0. "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pathProvider should not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "appContext is not the application context. "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lmiui/cloud/common/SwitchFileLogSender;)V
    .registers 1

    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->onBaseDirChanged()V

    return-void
.end method

.method public static synthetic access$100(Lmiui/cloud/common/SwitchFileLogSender;)V
    .registers 1

    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->onShutDown()V

    return-void
.end method

.method private closeLogFileLocked()V
    .registers 3

    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mMonitor:Landroid/os/FileObserver;

    iget-object v1, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    iput-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mSizeUsed:J

    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    return-void
.end method

.method private init()V
    .registers 2

    iget-boolean v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mInit:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mInit:Z

    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lmiui/cloud/common/SwitchFileLogSender;->registerShutdownListener(Landroid/content/Context;)V

    :cond_c
    return-void
.end method

.method private declared-synchronized onBaseDirChanged()V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_47

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_d
    .catchall {:try_start_8 .. :try_end_c} :catchall_47

    goto :goto_e

    :catch_d
    move-object v0, v1

    :goto_e
    if-nez v0, :cond_12

    monitor-exit p0

    return-void

    :cond_12
    const/4 v2, 0x0

    :try_start_13
    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v1
    :try_end_17
    .catch Landroid/system/ErrnoException; {:try_start_13 .. :try_end_17} :catch_19
    .catchall {:try_start_13 .. :try_end_17} :catchall_47

    move v0, v2

    goto :goto_1c

    :catch_19
    move-exception v0

    :try_start_1a
    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    :goto_1c
    const/4 v3, 0x1

    if-eqz v1, :cond_28

    iget-wide v4, v1, Landroid/system/StructStat;->st_nlink:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_28

    move v2, v3

    :cond_28
    sget v1, Landroid/system/OsConstants;->ENOENT:I

    if-ne v0, v1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v3, v2

    :goto_2e
    if-eqz v3, :cond_45

    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz v0, :cond_42

    const/4 v1, 0x5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "File unlinked. "

    invoke-interface {v0, v1, v2, v3}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_42
    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->closeLogFileLocked()V
    :try_end_45
    .catchall {:try_start_1a .. :try_end_45} :catchall_47

    :cond_45
    monitor-exit p0

    return-void

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onShutDown()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x6

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "========================== shut down ========================== "

    invoke-direct {p0, v0, v1, v2}, Lmiui/cloud/common/SwitchFileLogSender;->sendLogLocked(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mShutdown:Z

    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->closeLogFileLocked()V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private prepareLogFileLocked()V
    .registers 16

    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x6

    if-lez v0, :cond_32

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x2bf20

    cmp-long v0, v4, v6

    if-gez v0, :cond_32

    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to open log file recently. Abort. "

    invoke-interface {v0, v1, v2, v3}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_31
    return-void

    :cond_32
    :try_start_32
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mPathProvider:Lmiui/cloud/common/SwitchFileLogSender$PathProvider;

    iget-object v4, p0, Lmiui/cloud/common/SwitchFileLogSender;->mAppContext:Landroid/content/Context;

    invoke-interface {v0, v4}, Lmiui/cloud/common/SwitchFileLogSender$PathProvider;->getPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to get base log path. Abort. "

    invoke-interface {v0, v1, v4, v5}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_32 .. :try_end_4d} :catchall_1bf

    :cond_4d
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    if-nez v0, :cond_58

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    goto :goto_5a

    :cond_58
    iput-wide v2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    :goto_5a
    return-void

    :cond_5b
    :try_start_5b
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmiui/cloud/os/MultiuserUtils;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_7e

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_7e
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_b1

    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz v0, :cond_a3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Failed to create folder %s. "

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v5

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v7, v4}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_5b .. :try_end_a3} :catchall_1bf

    :cond_a3
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    if-nez v0, :cond_ae

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    goto :goto_b0

    :cond_ae
    iput-wide v2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    :goto_b0
    return-void

    :cond_b1
    :try_start_b1
    invoke-static {v4}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "unknown"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e4

    const-string v7, "mounted"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e4

    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz v0, :cond_d6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Storage not mounted. "

    invoke-interface {v0, v1, v4, v5}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_b1 .. :try_end_d6} :catchall_1bf

    :cond_d6
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    if-nez v0, :cond_e1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    goto :goto_e3

    :cond_e1
    iput-wide v2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    :goto_e3
    return-void

    :cond_e4
    move v0, v5

    :goto_e5
    const/4 v7, 0x0

    :try_start_e6
    iget v8, p0, Lmiui/cloud/common/SwitchFileLogSender;->mMaxFileCount:I
    :try_end_e8
    .catchall {:try_start_e6 .. :try_end_e8} :catchall_1bf

    const-string v9, ".log"

    if-ge v0, v8, :cond_116

    :try_start_ec
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_107

    goto :goto_116

    :cond_107
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    iget v8, p0, Lmiui/cloud/common/SwitchFileLogSender;->mMaxFileSizeInByte:I

    int-to-long v12, v8

    cmp-long v8, v10, v12

    if-gez v8, :cond_113

    goto :goto_116

    :cond_113
    add-int/lit8 v0, v0, 0x1

    goto :goto_e5

    :cond_116
    :goto_116
    if-nez v7, :cond_160

    new-instance v0, Ljava/io/File;

    const-string v7, "0.log"

    invoke-direct {v0, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    move-wide v10, v2

    move v0, v6

    :goto_125
    iget v12, p0, Lmiui/cloud/common/SwitchFileLogSender;->mMaxFileCount:I

    if-ge v0, v12, :cond_14a

    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v4, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v14, v12, v7

    if-gez v14, :cond_147

    int-to-long v10, v0

    move-wide v7, v12

    :cond_147
    add-int/lit8 v0, v0, 0x1

    goto :goto_125

    :cond_14a
    new-instance v7, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_15e
    .catchall {:try_start_ec .. :try_end_15e} :catchall_1bf

    move v0, v5

    goto :goto_161

    :cond_160
    move v0, v6

    :goto_161
    :try_start_161
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v8, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;
    :try_end_168
    .catch Ljava/io/FileNotFoundException; {:try_start_161 .. :try_end_168} :catch_190
    .catchall {:try_start_161 .. :try_end_168} :catchall_1bf

    if-eqz v0, :cond_16f

    :try_start_16a
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_170

    :cond_16f
    move-wide v0, v2

    :goto_170
    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mSizeUsed:J

    new-instance v0, Lmiui/cloud/common/SwitchFileLogSender$2;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x600

    invoke-direct {v0, p0, v1, v4}, Lmiui/cloud/common/SwitchFileLogSender$2;-><init>(Lmiui/cloud/common/SwitchFileLogSender;Ljava/lang/String;I)V

    iput-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V
    :try_end_182
    .catchall {:try_start_16a .. :try_end_182} :catchall_1bf

    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    if-nez v0, :cond_18d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    goto :goto_18f

    :cond_18d
    iput-wide v2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    :goto_18f
    return-void

    :catch_190
    move-exception v0

    :try_start_191
    iget-object v4, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz v4, :cond_1b1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Failed to switch to file %s, error: %s. "

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v5

    aput-object v0, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v8, v0}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1b1
    .catchall {:try_start_191 .. :try_end_1b1} :catchall_1bf

    :cond_1b1
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    if-nez v0, :cond_1bc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    goto :goto_1be

    :cond_1bc
    iput-wide v2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    :goto_1be
    return-void

    :catchall_1bf
    move-exception v0

    iget-object v1, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    if-nez v1, :cond_1cb

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    goto :goto_1cd

    :cond_1cb
    iput-wide v2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    :goto_1cd
    throw v0
.end method

.method private registerShutdownListener(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Lmiui/cloud/common/SwitchFileLogSender$3;

    invoke-direct {v0, p0}, Lmiui/cloud/common/SwitchFileLogSender$3;-><init>(Lmiui/cloud/common/SwitchFileLogSender;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private sendLogLocked(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->init()V

    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1, p2, p3}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0, p1}, Lmiui/cloud/common/SwitchFileLogSender;->onFilterLogByLevelLocked(I)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-boolean v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mShutdown:Z

    const/4 v1, 0x6

    if-eqz v0, :cond_28

    iget-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Shutdown state. Skip outputing. "

    invoke-interface {p1, v1, p2, p3}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_27
    return-void

    :cond_28
    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->prepareLogFileLocked()V

    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    if-nez v0, :cond_41

    iget-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Null output stream. Skip outputing. "

    invoke-interface {p1, v1, p2, p3}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_40
    return-void

    :cond_41
    invoke-virtual {p0, p1}, Lmiui/cloud/common/SwitchFileLogSender;->onGetLevelTagLocked(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    aput-object p3, v2, p1

    const-string p1, "LV:%s, TM: %s, TAG: %s, MSG: %s\n"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iget-wide p2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mSizeUsed:J

    array-length v2, p1

    int-to-long v4, v2

    add-long/2addr p2, v4

    iput-wide p2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mSizeUsed:J

    :try_start_75
    iget-object p2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7f} :catch_80

    goto :goto_9a

    :catch_80
    move-exception p1

    iget-object p2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    if-eqz p2, :cond_9a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "Failed to output log, IOException: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p3, p1}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9a
    :goto_9a
    iget-wide p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->mSizeUsed:J

    iget p3, p0, Lmiui/cloud/common/SwitchFileLogSender;->mMaxFileSizeInByte:I

    int-to-long v0, p3

    cmp-long p1, p1, v0

    if-ltz p1, :cond_a6

    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->closeLogFileLocked()V

    :cond_a6
    return-void
.end method


# virtual methods
.method public onFilterLogByLevelLocked(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onGetLevelTagLocked(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_1a

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8  #0x7
    const-string p1, "A"

    return-object p1

    :pswitch_b  #0x6
    const-string p1, "E"

    return-object p1

    :pswitch_e  #0x5
    const-string p1, "W"

    return-object p1

    :pswitch_11  #0x4
    const-string p1, "I"

    return-object p1

    :pswitch_14  #0x3
    const-string p1, "D"

    return-object p1

    :pswitch_17  #0x2
    const-string p1, "V"

    return-object p1

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_17  #00000002
        :pswitch_14  #00000003
        :pswitch_11  #00000004
        :pswitch_e  #00000005
        :pswitch_b  #00000006
        :pswitch_8  #00000007
    .end packed-switch
.end method

.method public declared-synchronized sendLog(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lmiui/cloud/common/SwitchFileLogSender;->sendLogLocked(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method
