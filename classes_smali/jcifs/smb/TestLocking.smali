.class public Ljcifs/smb/TestLocking;
.super Ljava/lang/Object;
.source "TestLocking.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public delay:J

.field public ltime:J

.field public numComplete:I

.field public numIter:I

.field public numThreads:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ljcifs/smb/TestLocking;->numThreads:I

    iput v0, p0, Ljcifs/smb/TestLocking;->numIter:I

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Ljcifs/smb/TestLocking;->delay:J

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/TestLocking;->url:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/TestLocking;->numComplete:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljcifs/smb/TestLocking;->ltime:J

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 12

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_e

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "usage: TestLocking [-t <numThreads>] [-i <numIter>] [-d <delay>] url"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_e
    new-instance v0, Ljcifs/smb/TestLocking;

    invoke-direct {v0}, Ljcifs/smb/TestLocking;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/TestLocking;->ltime:J

    const/4 v2, 0x0

    move v3, v2

    :goto_1b
    array-length v4, p0

    if-lt v3, v4, :cond_9e

    iget p0, v0, Ljcifs/smb/TestLocking;->numThreads:I

    new-array v4, p0, [Ljava/lang/Thread;

    move p0, v2

    :goto_23
    iget v1, v0, Ljcifs/smb/TestLocking;->numThreads:I

    if-lt p0, v1, :cond_86

    :goto_27
    iget p0, v0, Ljcifs/smb/TestLocking;->numComplete:I

    iget v1, v0, Ljcifs/smb/TestLocking;->numThreads:I

    if-lt p0, v1, :cond_4a

    :goto_2d
    iget p0, v0, Ljcifs/smb/TestLocking;->numThreads:I

    if-lt v2, p0, :cond_37

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void

    :cond_37
    aget-object p0, v4, v2

    invoke-virtual {p0}, Ljava/lang/Thread;->join()V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v1, v4, v2

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_4a
    monitor-enter v0

    :try_start_4b
    iget-wide v5, v0, Ljcifs/smb/TestLocking;->ltime:J

    iget-wide v7, v0, Ljcifs/smb/TestLocking;->delay:J

    add-long/2addr v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long p0, v5, v7

    const-wide/16 v9, 0x2

    if-lez p0, :cond_5c

    sub-long/2addr v5, v7

    goto :goto_5d

    :cond_5c
    move-wide v5, v9

    :goto_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_4b .. :try_end_5e} :catchall_83

    cmp-long p0, v5, v9

    if-lez p0, :cond_75

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "delay="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_75
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    if-gtz p0, :cond_4a

    monitor-enter v0

    :try_start_7b
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_27

    :catchall_80
    move-exception p0

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_80

    throw p0

    :catchall_83
    move-exception p0

    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw p0

    :cond_86
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v1, v4, p0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    aget-object v1, v4, p0

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_23

    :cond_9e
    aget-object v4, p0, v3

    const-string v5, "-t"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b3

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Ljcifs/smb/TestLocking;->numThreads:I

    goto :goto_e1

    :cond_b3
    aget-object v4, p0, v3

    const-string v5, "-i"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c8

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Ljcifs/smb/TestLocking;->numIter:I

    goto :goto_e1

    :cond_c8
    aget-object v4, p0, v3

    const-string v5, "-d"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dd

    add-int/lit8 v3, v3, 0x1

    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Ljcifs/smb/TestLocking;->delay:J

    goto :goto_e1

    :cond_dd
    aget-object v4, p0, v3

    iput-object v4, v0, Ljcifs/smb/TestLocking;->url:Ljava/lang/String;

    :goto_e1
    add-int/2addr v3, v1

    goto/16 :goto_1b
.end method


# virtual methods
.method public run()V
    .registers 9

    :try_start_0
    new-instance v0, Ljcifs/smb/SmbFile;

    iget-object v1, p0, Ljcifs/smb/TestLocking;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    const/4 v3, 0x0

    :goto_15
    iget v4, p0, Ljcifs/smb/TestLocking;->numIter:I

    if-lt v3, v4, :cond_1a

    goto :goto_6d

    :cond_1a
    monitor-enter p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_69
    .catchall {:try_start_0 .. :try_end_1b} :catchall_67

    :try_start_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Ljcifs/smb/TestLocking;->ltime:J

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_64

    :try_start_25
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x3fd54fdf3b645a1dL  # 0.333

    cmpg-double v6, v4, v6

    if-gez v6, :cond_36

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->exists()Z

    goto :goto_61

    :cond_36
    const-wide v6, 0x3fe55810624dd2f2L  # 0.667

    cmpg-double v6, v4, v6

    if-gez v6, :cond_43

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    goto :goto_61

    :cond_43
    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_61

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    :cond_4d
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_4d

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_56} :catch_57
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_56} :catch_69
    .catchall {:try_start_25 .. :try_end_56} :catchall_67

    goto :goto_61

    :catch_57
    move-exception v4

    :try_start_58
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_61} :catch_69
    .catchall {:try_start_58 .. :try_end_61} :catchall_67

    :cond_61
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :catchall_64
    move-exception v0

    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw v0
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_67} :catch_69
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v0

    goto :goto_74

    :catch_69
    move-exception v0

    :try_start_6a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_67

    :goto_6d
    iget v0, p0, Ljcifs/smb/TestLocking;->numComplete:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljcifs/smb/TestLocking;->numComplete:I

    return-void

    :goto_74
    iget v1, p0, Ljcifs/smb/TestLocking;->numComplete:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljcifs/smb/TestLocking;->numComplete:I

    throw v0
.end method
