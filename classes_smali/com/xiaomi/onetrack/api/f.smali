.class public Lcom/xiaomi/onetrack/api/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackExceptionHandler"

.field private static final c:Ljava/lang/String; = "tombstone"

.field private static final d:Ljava/lang/String; = ".java.xcrash"

.field private static final e:Ljava/lang/String; = "backtrace feature id:\n\t"

.field private static final f:Ljava/lang/String; = "error reason:\n\t"

.field private static final h:J = 0x2L


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final g:Ljava/util/Date;

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/Date;

    .line 6
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/f;->g:Ljava/util/Date;

    .line 11
    const/16 v0, 0x32

    .line 13
    iput v0, p0, Lcom/xiaomi/onetrack/api/f;->i:I

    .line 15
    iput v0, p0, Lcom/xiaomi/onetrack/api/f;->j:I

    .line 17
    const/16 v0, 0xc8

    .line 19
    iput v0, p0, Lcom/xiaomi/onetrack/api/f;->k:I

    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/f;->l:Z

    .line 24
    iput-boolean v0, p0, Lcom/xiaomi/onetrack/api/f;->m:Z

    .line 26
    return-void
.end method

.method private a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/f;->g:Ljava/util/Date;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/onetrack/util/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java"

    invoke-static {v1, p1, v4, v2, v3}, Lcom/xiaomi/onetrack/util/b;->a(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "pid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", tid: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", name: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  >>> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/util/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " <<<\n\njava stacktrace:\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic a(Lcom/xiaomi/onetrack/api/f;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/onetrack/api/f;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 18

    move-object v1, p0

    const-string v2, "\n\n"

    const-string v3, "JavaCrashHandler close RandomAccessFile failed"

    const-string v4, "OneTrackExceptionHandler"

    const-string v5, "UTF-8"

    .line 6
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    const/4 v7, 0x0

    .line 7
    :try_start_f
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s/%s_%020d_%s__%s%s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {}, Lcom/xiaomi/onetrack/util/k;->a()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "tombstone"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, v1, Lcom/xiaomi/onetrack/api/f;->g:Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    .line 8
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/xiaomi/onetrack/util/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    move-result-object v11

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    invoke-static {v11, v12}, Lcom/xiaomi/onetrack/util/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, ".java.xcrash"

    aput-object v11, v9, v10

    .line 9
    invoke-static {v0, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_5a} :catch_66

    .line 11
    :try_start_5a
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 12
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_63} :catch_64

    goto :goto_6d

    :catch_64
    move-exception v0

    goto :goto_68

    :catch_66
    move-exception v0

    move-object v8, v7

    :goto_68
    const-string v9, "JavaCrashHandler createLogFile failed"

    .line 13
    invoke-static {v4, v9, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :cond_6d
    :goto_6d
    :try_start_6d
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 15
    new-instance v9, Ljava/io/PrintWriter;

    invoke-direct {v9, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_77} :catch_8b

    move-object/from16 v10, p2

    .line 16
    :try_start_79
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 17
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_80} :catch_89

    move-object/from16 v11, p1

    .line 18
    :try_start_82
    invoke-direct {p0, v6, v11, v9}, Lcom/xiaomi/onetrack/api/f;->a(Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_86} :catch_87

    goto :goto_95

    :catch_87
    move-exception v0

    goto :goto_8f

    :catch_89
    move-exception v0

    goto :goto_8e

    :catch_8b
    move-exception v0

    move-object/from16 v10, p2

    :goto_8e
    move-object v9, v7

    :goto_8f
    const-string v6, "JavaCrashHandler getEmergency failed"

    .line 19
    invoke-static {v4, v6, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    :goto_95
    if-eqz v8, :cond_15e

    .line 20
    :try_start_97
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v11, "rws"

    invoke-direct {v6, v8, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9e} :catch_140
    .catchall {:try_start_97 .. :try_end_9e} :catchall_13d

    .line 21
    :try_start_9e
    invoke-static {v9}, Lcom/xiaomi/onetrack/CrashAnalysis;->calculateJavaDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 22
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "backtrace feature id:\n\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 23
    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->write([B)V

    .line 24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error reason:\n\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/RandomAccessFile;->write([B)V

    if-eqz v0, :cond_e5

    .line 26
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 27
    :cond_e5
    iget v0, v1, Lcom/xiaomi/onetrack/api/f;->k:I

    if-gtz v0, :cond_f1

    iget v2, v1, Lcom/xiaomi/onetrack/api/f;->i:I

    if-gtz v2, :cond_f1

    iget v2, v1, Lcom/xiaomi/onetrack/api/f;->j:I

    if-lez v2, :cond_100

    .line 28
    :cond_f1
    iget v2, v1, Lcom/xiaomi/onetrack/api/f;->i:I

    iget v7, v1, Lcom/xiaomi/onetrack/api/f;->j:I

    invoke-static {v0, v2, v7}, Lcom/xiaomi/onetrack/util/b;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 29
    :cond_100
    iget-boolean v0, v1, Lcom/xiaomi/onetrack/api/f;->l:Z

    if-eqz v0, :cond_10f

    .line 30
    invoke-static {}, Lcom/xiaomi/onetrack/util/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 31
    :cond_10f
    iget-boolean v0, v1, Lcom/xiaomi/onetrack/api/f;->m:Z

    if-eqz v0, :cond_11e

    .line 32
    invoke-static {}, Lcom/xiaomi/onetrack/util/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 33
    :cond_11e
    invoke-static {}, Lcom/xiaomi/onetrack/util/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V

    const-string v0, "foreground:\nyes\n\n"

    .line 34
    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_132} :catch_13a
    .catchall {:try_start_9e .. :try_end_132} :catchall_136

    .line 35
    :try_start_132
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_135} :catch_14c

    goto :goto_15e

    :catchall_136
    move-exception v0

    move-object v2, v0

    move-object v7, v6

    goto :goto_152

    :catch_13a
    move-exception v0

    move-object v7, v6

    goto :goto_141

    :catchall_13d
    move-exception v0

    move-object v2, v0

    goto :goto_152

    :catch_140
    move-exception v0

    :goto_141
    :try_start_141
    const-string v2, "JavaCrashHandler write log file failed"

    .line 36
    invoke-static {v4, v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_146
    .catchall {:try_start_141 .. :try_end_146} :catchall_13d

    if-eqz v7, :cond_15e

    .line 37
    :try_start_148
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_14b} :catch_14c

    goto :goto_15e

    :catch_14c
    move-exception v0

    move-object v2, v0

    .line 38
    invoke-static {v4, v3, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15e

    :goto_152
    if-eqz v7, :cond_15d

    .line 39
    :try_start_154
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_157} :catch_158

    goto :goto_15d

    :catch_158
    move-exception v0

    move-object v5, v0

    .line 40
    invoke-static {v4, v3, v5}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :cond_15d
    :goto_15d
    throw v2

    :cond_15e
    :goto_15e
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/xiaomi/onetrack/api/f;

    if-eqz v1, :cond_9

    return-void

    .line 4
    :cond_9
    iput-object v0, p0, Lcom/xiaomi/onetrack/api/f;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 5
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 8

    .line 1
    const-string v0, "OneTrackExceptionHandler"

    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "crash happened->stacktrace: "

    .line 9
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v1, Lcom/xiaomi/onetrack/api/g;

    .line 29
    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/onetrack/api/g;-><init>(Lcom/xiaomi/onetrack/api/f;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 32
    new-instance v2, Ljava/util/concurrent/FutureTask;

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-direct {v2, v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 38
    invoke-static {v2}, Lcom/xiaomi/onetrack/c/b;->a(Ljava/lang/Runnable;)V

    .line 41
    const-wide/16 v3, 0x2

    .line 43
    :try_start_2a
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 45
    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_30

    .line 48
    goto :goto_49

    .line 49
    :catch_30
    move-exception v1

    .line 50
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    const-string v2, "handleException error :"

    .line 56
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_49
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/f;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 76
    if-eqz v0, :cond_50

    .line 78
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 81
    :cond_50
    return-void
.end method
