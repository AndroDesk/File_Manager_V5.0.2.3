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
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILmiui/cloud/common/XLogger$LogSender;)V
    .registers 12

    .line 1
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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-ne v0, p1, :cond_36

    if-eqz p2, :cond_2e

    if-lez p3, :cond_26

    const/4 v0, 0x1

    if-le p4, v0, :cond_1e

    .line 4
    iput-object p5, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 5
    iput p3, p0, Lmiui/cloud/common/SwitchFileLogSender;->mMaxFileSizeInByte:I

    .line 6
    iput p4, p0, Lmiui/cloud/common/SwitchFileLogSender;->mMaxFileCount:I

    .line 7
    iput-object p2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mPathProvider:Lmiui/cloud/common/SwitchFileLogSender$PathProvider;

    .line 8
    iput-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->mAppContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->mInit:Z

    return-void

    .line 10
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxFileCount should >1. "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxFileSizeInByte should >0. "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pathProvider should not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "appContext is not the application context. "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Lmiui/cloud/common/SwitchFileLogSender;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->onBaseDirChanged()V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lmiui/cloud/common/SwitchFileLogSender;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->onShutDown()V

    .line 4
    return-void
.end method

.method private closeLogFileLocked()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mMonitor:Landroid/os/FileObserver;

    .line 3
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mMonitor:Landroid/os/FileObserver;

    .line 9
    iget-object v1, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    .line 11
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 14
    iput-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    .line 16
    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mSizeUsed:J

    .line 20
    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    .line 22
    return-void
.end method

.method private init()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mInit:Z

    .line 3
    if-nez v0, :cond_c

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mInit:Z

    .line 8
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mAppContext:Landroid/content/Context;

    .line 10
    invoke-direct {p0, v0}, Lmiui/cloud/common/SwitchFileLogSender;->registerShutdownListener(Landroid/content/Context;)V

    .line 13
    :cond_c
    return-void
.end method

.method private declared-synchronized onBaseDirChanged()V
    .registers 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_47

    .line 4
    if-nez v0, :cond_7

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_7
    const/4 v1, 0x0

    .line 9
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 12
    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_d
    .catchall {:try_start_8 .. :try_end_c} :catchall_47

    .line 13
    goto :goto_e

    .line 14
    :catch_d
    move-object v0, v1

    .line 15
    :goto_e
    if-nez v0, :cond_12

    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :cond_12
    const/4 v2, 0x0

    .line 20
    :try_start_13
    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    .line 23
    move-result-object v1
    :try_end_17
    .catch Landroid/system/ErrnoException; {:try_start_13 .. :try_end_17} :catch_19
    .catchall {:try_start_13 .. :try_end_17} :catchall_47

    .line 24
    move v0, v2

    .line 25
    goto :goto_1c

    .line 26
    :catch_19
    move-exception v0

    .line 27
    :try_start_1a
    iget v0, v0, Landroid/system/ErrnoException;->errno:I

    .line 29
    :goto_1c
    const/4 v3, 0x1

    .line 30
    if-eqz v1, :cond_28

    .line 32
    iget-wide v4, v1, Landroid/system/StructStat;->st_nlink:J

    .line 34
    const-wide/16 v6, 0x0

    .line 36
    cmp-long v1, v4, v6

    .line 38
    if-gtz v1, :cond_28

    .line 40
    move v2, v3

    .line 41
    :cond_28
    sget v1, Landroid/system/OsConstants;->ENOENT:I

    .line 43
    if-ne v0, v1, :cond_2d

    .line 45
    goto :goto_2e

    .line 46
    :cond_2d
    move v3, v2

    .line 47
    :goto_2e
    if-eqz v3, :cond_45

    .line 49
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 51
    if-eqz v0, :cond_42

    .line 53
    const/4 v1, 0x5

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    const-string v3, "File unlinked. "

    .line 64
    invoke-interface {v0, v1, v2, v3}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_42
    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->closeLogFileLocked()V
    :try_end_45
    .catchall {:try_start_1a .. :try_end_45} :catchall_47

    .line 70
    :cond_45
    monitor-exit p0

    .line 71
    return-void

    .line 72
    :catchall_47
    move-exception v0

    .line 73
    monitor-exit p0

    .line 74
    throw v0
.end method

.method private declared-synchronized onShutDown()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x6

    .line 3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "========================== shut down ========================== "

    .line 13
    invoke-direct {p0, v0, v1, v2}, Lmiui/cloud/common/SwitchFileLogSender;->sendLogLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mShutdown:Z

    .line 19
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    .line 21
    if-eqz v0, :cond_19

    .line 23
    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->closeLogFileLocked()V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1b

    .line 26
    :cond_19
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_1b
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0
.end method

.method private prepareLogFileLocked()V
    .registers 16

    .line 1
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    .line 8
    const-wide/16 v2, 0x0

    .line 10
    cmp-long v0, v0, v2

    .line 12
    const/4 v1, 0x6

    .line 13
    if-lez v0, :cond_32

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    move-result-wide v4

    .line 19
    iget-wide v6, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    .line 21
    sub-long/2addr v4, v6

    .line 22
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    .line 25
    move-result-wide v4

    .line 26
    const-wide/32 v6, 0x2bf20

    .line 29
    cmp-long v0, v4, v6

    .line 31
    if-gez v0, :cond_32

    .line 33
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 35
    if-eqz v0, :cond_31

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    const-string v3, "Failed to open log file recently. Abort. "

    .line 47
    invoke-interface {v0, v1, v2, v3}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_31
    return-void

    .line 51
    :cond_32
    :try_start_32
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mPathProvider:Lmiui/cloud/common/SwitchFileLogSender$PathProvider;

    .line 53
    iget-object v4, p0, Lmiui/cloud/common/SwitchFileLogSender;->mAppContext:Landroid/content/Context;

    .line 55
    invoke-interface {v0, v4}, Lmiui/cloud/common/SwitchFileLogSender$PathProvider;->getPath(Landroid/content/Context;)Ljava/io/File;

    .line 58
    move-result-object v0

    .line 59
    if-nez v0, :cond_5b

    .line 61
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 63
    if-eqz v0, :cond_4d

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    const-string v5, "Failed to get base log path. Abort. "

    .line 75
    invoke-interface {v0, v1, v4, v5}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_32 .. :try_end_4d} :catchall_1bf

    .line 78
    :cond_4d
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    .line 80
    if-nez v0, :cond_58

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 85
    move-result-wide v0

    .line 86
    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    .line 88
    goto :goto_5a

    .line 89
    :cond_58
    iput-wide v2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    .line 91
    :goto_5a
    return-void

    .line 92
    :cond_5b
    :try_start_5b
    new-instance v4, Ljava/io/File;

    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string v6, ""

    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {}, Lmiui/cloud/os/MultiuserUtils;->myUserId()I

    .line 107
    move-result v6

    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v5

    .line 115
    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_7e

    .line 124
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 127
    :cond_7e
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 130
    move-result v0

    .line 131
    const/4 v5, 0x0

    .line 132
    const/4 v6, 0x1

    .line 133
    if-nez v0, :cond_b1

    .line 135
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 137
    if-eqz v0, :cond_a3

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    move-result-object v7

    .line 143
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 146
    move-result-object v7

    .line 147
    const-string v8, "Failed to create folder %s. "

    .line 149
    new-array v6, v6, [Ljava/lang/Object;

    .line 151
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 154
    move-result-object v4

    .line 155
    aput-object v4, v6, v5

    .line 157
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    move-result-object v4

    .line 161
    invoke-interface {v0, v1, v7, v4}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_5b .. :try_end_a3} :catchall_1bf

    .line 164
    :cond_a3
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    .line 166
    if-nez v0, :cond_ae

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 171
    move-result-wide v0

    .line 172
    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    .line 174
    goto :goto_b0

    .line 175
    :cond_ae
    iput-wide v2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    .line 177
    :goto_b0
    return-void

    .line 178
    :cond_b1
    :try_start_b1
    invoke-static {v4}, Landroid/os/Environment;->getExternalStorageState(Ljava/io/File;)Ljava/lang/String;

    .line 181
    move-result-object v0

    .line 182
    const-string v7, "unknown"

    .line 184
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    move-result v7

    .line 188
    if-nez v7, :cond_e4

    .line 190
    const-string v7, "mounted"

    .line 192
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    move-result v0

    .line 196
    if-nez v0, :cond_e4

    .line 198
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 200
    if-eqz v0, :cond_d6

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    move-result-object v4

    .line 206
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 209
    move-result-object v4

    .line 210
    const-string v5, "Storage not mounted. "

    .line 212
    invoke-interface {v0, v1, v4, v5}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catchall {:try_start_b1 .. :try_end_d6} :catchall_1bf

    .line 215
    :cond_d6
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    .line 217
    if-nez v0, :cond_e1

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 222
    move-result-wide v0

    .line 223
    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    .line 225
    goto :goto_e3

    .line 226
    :cond_e1
    iput-wide v2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    .line 228
    :goto_e3
    return-void

    .line 229
    :cond_e4
    move v0, v5

    .line 230
    :goto_e5
    const/4 v7, 0x0

    .line 231
    :try_start_e6
    iget v8, p0, Lmiui/cloud/common/SwitchFileLogSender;->mMaxFileCount:I
    :try_end_e8
    .catchall {:try_start_e6 .. :try_end_e8} :catchall_1bf

    .line 233
    const-string v9, ".log"

    .line 235
    if-ge v0, v8, :cond_116

    .line 237
    :try_start_ec
    new-instance v7, Ljava/io/File;

    .line 239
    new-instance v8, Ljava/lang/StringBuilder;

    .line 241
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v8

    .line 254
    invoke-direct {v7, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 260
    move-result v8

    .line 261
    if-nez v8, :cond_107

    .line 263
    goto :goto_116

    .line 264
    :cond_107
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 267
    move-result-wide v10

    .line 268
    iget v8, p0, Lmiui/cloud/common/SwitchFileLogSender;->mMaxFileSizeInByte:I

    .line 270
    int-to-long v12, v8

    .line 271
    cmp-long v8, v10, v12

    .line 273
    if-gez v8, :cond_113

    .line 275
    goto :goto_116

    .line 276
    :cond_113
    add-int/lit8 v0, v0, 0x1

    .line 278
    goto :goto_e5

    .line 279
    :cond_116
    :goto_116
    if-nez v7, :cond_160

    .line 281
    new-instance v0, Ljava/io/File;

    .line 283
    const-string v7, "0.log"

    .line 285
    invoke-direct {v0, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 291
    move-result-wide v7

    .line 292
    move-wide v10, v2

    .line 293
    move v0, v6

    .line 294
    :goto_125
    iget v12, p0, Lmiui/cloud/common/SwitchFileLogSender;->mMaxFileCount:I

    .line 296
    if-ge v0, v12, :cond_14a

    .line 298
    new-instance v12, Ljava/io/File;

    .line 300
    new-instance v13, Ljava/lang/StringBuilder;

    .line 302
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    move-result-object v13

    .line 315
    invoke-direct {v12, v4, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    .line 321
    move-result-wide v12

    .line 322
    cmp-long v14, v12, v7

    .line 324
    if-gez v14, :cond_147

    .line 326
    int-to-long v10, v0

    .line 327
    move-wide v7, v12

    .line 328
    :cond_147
    add-int/lit8 v0, v0, 0x1

    .line 330
    goto :goto_125

    .line 331
    :cond_14a
    new-instance v7, Ljava/io/File;

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    .line 335
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    move-result-object v0

    .line 348
    invoke-direct {v7, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_15e
    .catchall {:try_start_ec .. :try_end_15e} :catchall_1bf

    .line 351
    move v0, v5

    .line 352
    goto :goto_161

    .line 353
    :cond_160
    move v0, v6

    .line 354
    :goto_161
    :try_start_161
    new-instance v8, Ljava/io/FileOutputStream;

    .line 356
    invoke-direct {v8, v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 359
    iput-object v8, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;
    :try_end_168
    .catch Ljava/io/FileNotFoundException; {:try_start_161 .. :try_end_168} :catch_190
    .catchall {:try_start_161 .. :try_end_168} :catchall_1bf

    .line 361
    if-eqz v0, :cond_16f

    .line 363
    :try_start_16a
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 366
    move-result-wide v0

    .line 367
    goto :goto_170

    .line 368
    :cond_16f
    move-wide v0, v2

    .line 369
    :goto_170
    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mSizeUsed:J

    .line 371
    new-instance v0, Lmiui/cloud/common/SwitchFileLogSender$2;

    .line 373
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 376
    move-result-object v1

    .line 377
    const/16 v4, 0x600

    .line 379
    invoke-direct {v0, p0, v1, v4}, Lmiui/cloud/common/SwitchFileLogSender$2;-><init>(Lmiui/cloud/common/SwitchFileLogSender;Ljava/lang/String;I)V

    .line 382
    iput-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mMonitor:Landroid/os/FileObserver;

    .line 384
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V
    :try_end_182
    .catchall {:try_start_16a .. :try_end_182} :catchall_1bf

    .line 387
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    .line 389
    if-nez v0, :cond_18d

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 394
    move-result-wide v0

    .line 395
    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    .line 397
    goto :goto_18f

    .line 398
    :cond_18d
    iput-wide v2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    .line 400
    :goto_18f
    return-void

    .line 401
    :catch_190
    move-exception v0

    .line 402
    :try_start_191
    iget-object v4, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 404
    if-eqz v4, :cond_1b1

    .line 406
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    move-result-object v8

    .line 410
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 413
    move-result-object v8

    .line 414
    const-string v9, "Failed to switch to file %s, error: %s. "

    .line 416
    const/4 v10, 0x2

    .line 417
    new-array v10, v10, [Ljava/lang/Object;

    .line 419
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 422
    move-result-object v7

    .line 423
    aput-object v7, v10, v5

    .line 425
    aput-object v0, v10, v6

    .line 427
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 430
    move-result-object v0

    .line 431
    invoke-interface {v4, v1, v8, v0}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1b1
    .catchall {:try_start_191 .. :try_end_1b1} :catchall_1bf

    .line 434
    :cond_1b1
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    .line 436
    if-nez v0, :cond_1bc

    .line 438
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 441
    move-result-wide v0

    .line 442
    iput-wide v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    .line 444
    goto :goto_1be

    .line 445
    :cond_1bc
    iput-wide v2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    .line 447
    :goto_1be
    return-void

    .line 448
    :catchall_1bf
    move-exception v0

    .line 449
    iget-object v1, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    .line 451
    if-nez v1, :cond_1cb

    .line 453
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 456
    move-result-wide v1

    .line 457
    iput-wide v1, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    .line 459
    goto :goto_1cd

    .line 460
    :cond_1cb
    iput-wide v2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mFailOpenTime:J

    .line 462
    :goto_1cd
    throw v0
.end method

.method private registerShutdownListener(Landroid/content/Context;)V
    .registers 5

    .line 1
    new-instance v0, Lmiui/cloud/common/SwitchFileLogSender$3;

    .line 3
    invoke-direct {v0, p0}, Lmiui/cloud/common/SwitchFileLogSender$3;-><init>(Lmiui/cloud/common/SwitchFileLogSender;)V

    .line 6
    new-instance v1, Landroid/content/IntentFilter;

    .line 8
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    .line 10
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 17
    return-void
.end method

.method private sendLogLocked(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->init()V

    .line 4
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-interface {v0, p1, p2, p3}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_a
    invoke-virtual {p0, p1}, Lmiui/cloud/common/SwitchFileLogSender;->onFilterLogByLevelLocked(I)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    iget-boolean v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mShutdown:Z

    .line 20
    const/4 v1, 0x6

    .line 21
    if-eqz v0, :cond_28

    .line 23
    iget-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 25
    if-eqz p1, :cond_27

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    const-string p3, "Shutdown state. Skip outputing. "

    .line 37
    invoke-interface {p1, v1, p2, p3}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_27
    return-void

    .line 41
    :cond_28
    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->prepareLogFileLocked()V

    .line 44
    iget-object v0, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    .line 46
    if-nez v0, :cond_41

    .line 48
    iget-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 50
    if-eqz p1, :cond_40

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    const-string p3, "Null output stream. Skip outputing. "

    .line 62
    invoke-interface {p1, v1, p2, p3}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_40
    return-void

    .line 66
    :cond_41
    invoke-virtual {p0, p1}, Lmiui/cloud/common/SwitchFileLogSender;->onGetLevelTagLocked(I)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 72
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 74
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 77
    const/4 v2, 0x4

    .line 78
    new-array v2, v2, [Ljava/lang/Object;

    .line 80
    const/4 v3, 0x0

    .line 81
    aput-object p1, v2, v3

    .line 83
    new-instance p1, Ljava/util/Date;

    .line 85
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 88
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    const/4 v0, 0x1

    .line 93
    aput-object p1, v2, v0

    .line 95
    const/4 p1, 0x2

    .line 96
    aput-object p2, v2, p1

    .line 98
    const/4 p1, 0x3

    .line 99
    aput-object p3, v2, p1

    .line 101
    const-string p1, "LV:%s, TM: %s, TAG: %s, MSG: %s\n"

    .line 103
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 110
    move-result-object p1

    .line 111
    iget-wide p2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mSizeUsed:J

    .line 113
    array-length v2, p1

    .line 114
    int-to-long v4, v2

    .line 115
    add-long/2addr p2, v4

    .line 116
    iput-wide p2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mSizeUsed:J

    .line 118
    :try_start_75
    iget-object p2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    .line 120
    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 123
    iget-object p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->mOutputStream:Ljava/io/FileOutputStream;

    .line 125
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7f} :catch_80

    .line 128
    goto :goto_9a

    .line 129
    :catch_80
    move-exception p1

    .line 130
    iget-object p2, p0, Lmiui/cloud/common/SwitchFileLogSender;->mParentLogSender:Lmiui/cloud/common/XLogger$LogSender;

    .line 132
    if-eqz p2, :cond_9a

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    move-result-object p3

    .line 138
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 141
    move-result-object p3

    .line 142
    new-array v0, v0, [Ljava/lang/Object;

    .line 144
    aput-object p1, v0, v3

    .line 146
    const-string p1, "Failed to output log, IOException: %s"

    .line 148
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    move-result-object p1

    .line 152
    invoke-interface {p2, v1, p3, p1}, Lmiui/cloud/common/XLogger$LogSender;->sendLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_9a
    :goto_9a
    iget-wide p1, p0, Lmiui/cloud/common/SwitchFileLogSender;->mSizeUsed:J

    .line 157
    iget p3, p0, Lmiui/cloud/common/SwitchFileLogSender;->mMaxFileSizeInByte:I

    .line 159
    int-to-long v0, p3

    .line 160
    cmp-long p1, p1, v0

    .line 162
    if-ltz p1, :cond_a6

    .line 164
    invoke-direct {p0}, Lmiui/cloud/common/SwitchFileLogSender;->closeLogFileLocked()V

    .line 167
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

    .line 1
    packed-switch p1, :pswitch_data_1a

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    return-object p1

    .line 9
    :pswitch_8  #0x7
    const-string p1, "A"

    .line 11
    return-object p1

    .line 12
    :pswitch_b  #0x6
    const-string p1, "E"

    .line 14
    return-object p1

    .line 15
    :pswitch_e  #0x5
    const-string p1, "W"

    .line 17
    return-object p1

    .line 18
    :pswitch_11  #0x4
    const-string p1, "I"

    .line 20
    return-object p1

    .line 21
    :pswitch_14  #0x3
    const-string p1, "D"

    .line 23
    return-object p1

    .line 24
    :pswitch_17  #0x2
    const-string p1, "V"

    .line 26
    return-object p1

    .line 27
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

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lmiui/cloud/common/SwitchFileLogSender;->sendLogLocked(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_6
    move-exception p1

    .line 8
    monitor-exit p0

    .line 9
    throw p1
.end method
