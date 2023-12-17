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
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Ljcifs/smb/TestLocking;->numThreads:I

    .line 7
    iput v0, p0, Ljcifs/smb/TestLocking;->numIter:I

    .line 9
    const-wide/16 v0, 0x64

    .line 11
    iput-wide v0, p0, Ljcifs/smb/TestLocking;->delay:J

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Ljcifs/smb/TestLocking;->url:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Ljcifs/smb/TestLocking;->numComplete:I

    .line 19
    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Ljcifs/smb/TestLocking;->ltime:J

    .line 23
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 12

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ge v0, v1, :cond_e

    .line 5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 7
    const-string v2, "usage: TestLocking [-t <numThreads>] [-i <numIter>] [-d <delay>] url"

    .line 9
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 15
    :cond_e
    new-instance v0, Ljcifs/smb/TestLocking;

    .line 17
    invoke-direct {v0}, Ljcifs/smb/TestLocking;-><init>()V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    move-result-wide v2

    .line 24
    iput-wide v2, v0, Ljcifs/smb/TestLocking;->ltime:J

    .line 26
    const/4 v2, 0x0

    .line 27
    move v3, v2

    .line 28
    :goto_1b
    array-length v4, p0

    .line 29
    if-lt v3, v4, :cond_9e

    .line 31
    iget p0, v0, Ljcifs/smb/TestLocking;->numThreads:I

    .line 33
    new-array v4, p0, [Ljava/lang/Thread;

    .line 35
    move p0, v2

    .line 36
    :goto_23
    iget v1, v0, Ljcifs/smb/TestLocking;->numThreads:I

    .line 38
    if-lt p0, v1, :cond_86

    .line 40
    :goto_27
    iget p0, v0, Ljcifs/smb/TestLocking;->numComplete:I

    .line 42
    iget v1, v0, Ljcifs/smb/TestLocking;->numThreads:I

    .line 44
    if-lt p0, v1, :cond_4a

    .line 46
    :goto_2d
    iget p0, v0, Ljcifs/smb/TestLocking;->numThreads:I

    .line 48
    if-lt v2, p0, :cond_37

    .line 50
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 52
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 55
    return-void

    .line 56
    :cond_37
    aget-object p0, v4, v2

    .line 58
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V

    .line 61
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 63
    aget-object v1, v4, v2

    .line 65
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 74
    goto :goto_2d

    .line 75
    :cond_4a
    monitor-enter v0

    .line 76
    :try_start_4b
    iget-wide v5, v0, Ljcifs/smb/TestLocking;->ltime:J

    .line 78
    iget-wide v7, v0, Ljcifs/smb/TestLocking;->delay:J

    .line 80
    add-long/2addr v5, v7

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    move-result-wide v7

    .line 85
    cmp-long p0, v5, v7

    .line 87
    const-wide/16 v9, 0x2

    .line 89
    if-lez p0, :cond_5c

    .line 91
    sub-long/2addr v5, v7

    .line 92
    goto :goto_5d

    .line 93
    :cond_5c
    move-wide v5, v9

    .line 94
    :goto_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_4b .. :try_end_5e} :catchall_83

    .line 95
    cmp-long p0, v5, v9

    .line 97
    if-lez p0, :cond_75

    .line 99
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    const-string v7, "delay="

    .line 105
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    :cond_75
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 121
    if-gtz p0, :cond_4a

    .line 123
    monitor-enter v0

    .line 124
    :try_start_7b
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 127
    monitor-exit v0

    .line 128
    goto :goto_27

    .line 129
    :catchall_80
    move-exception p0

    .line 130
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_80

    .line 131
    throw p0

    .line 132
    :catchall_83
    move-exception p0

    .line 133
    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    .line 134
    throw p0

    .line 135
    :cond_86
    new-instance v1, Ljava/lang/Thread;

    .line 137
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 140
    aput-object v1, v4, p0

    .line 142
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 144
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 151
    aget-object v1, v4, p0

    .line 153
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 156
    add-int/lit8 p0, p0, 0x1

    .line 158
    goto :goto_23

    .line 159
    :cond_9e
    aget-object v4, p0, v3

    .line 161
    const-string v5, "-t"

    .line 163
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    move-result v4

    .line 167
    if-eqz v4, :cond_b3

    .line 169
    add-int/lit8 v3, v3, 0x1

    .line 171
    aget-object v4, p0, v3

    .line 173
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 176
    move-result v4

    .line 177
    iput v4, v0, Ljcifs/smb/TestLocking;->numThreads:I

    .line 179
    goto :goto_e1

    .line 180
    :cond_b3
    aget-object v4, p0, v3

    .line 182
    const-string v5, "-i"

    .line 184
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    move-result v4

    .line 188
    if-eqz v4, :cond_c8

    .line 190
    add-int/lit8 v3, v3, 0x1

    .line 192
    aget-object v4, p0, v3

    .line 194
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 197
    move-result v4

    .line 198
    iput v4, v0, Ljcifs/smb/TestLocking;->numIter:I

    .line 200
    goto :goto_e1

    .line 201
    :cond_c8
    aget-object v4, p0, v3

    .line 203
    const-string v5, "-d"

    .line 205
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    move-result v4

    .line 209
    if-eqz v4, :cond_dd

    .line 211
    add-int/lit8 v3, v3, 0x1

    .line 213
    aget-object v4, p0, v3

    .line 215
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 218
    move-result-wide v4

    .line 219
    iput-wide v4, v0, Ljcifs/smb/TestLocking;->delay:J

    .line 221
    goto :goto_e1

    .line 222
    :cond_dd
    aget-object v4, p0, v3

    .line 224
    iput-object v4, v0, Ljcifs/smb/TestLocking;->url:Ljava/lang/String;

    .line 226
    :goto_e1
    add-int/2addr v3, v1

    .line 227
    goto/16 :goto_1b
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1
    :try_start_0
    new-instance v0, Ljcifs/smb/SmbFile;

    .line 3
    iget-object v1, p0, Ljcifs/smb/TestLocking;->url:Ljava/lang/String;

    .line 5
    invoke-direct {v0, v1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljcifs/smb/SmbFile;

    .line 10
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 17
    const/16 v2, 0x400

    .line 19
    new-array v2, v2, [B

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_15
    iget v4, p0, Ljcifs/smb/TestLocking;->numIter:I

    .line 24
    if-lt v3, v4, :cond_1a

    .line 26
    goto :goto_6d

    .line 27
    :cond_1a
    monitor-enter p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_69
    .catchall {:try_start_0 .. :try_end_1b} :catchall_67

    .line 28
    :try_start_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    move-result-wide v4

    .line 32
    iput-wide v4, p0, Ljcifs/smb/TestLocking;->ltime:J

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 37
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_64

    .line 38
    :try_start_25
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 41
    move-result-wide v4

    .line 42
    const-wide v6, 0x3fd54fdf3b645a1dL  # 0.333

    .line 47
    cmpg-double v6, v4, v6

    .line 49
    if-gez v6, :cond_36

    .line 51
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->exists()Z

    .line 54
    goto :goto_61

    .line 55
    :cond_36
    const-wide v6, 0x3fe55810624dd2f2L  # 0.667

    .line 60
    cmpg-double v6, v4, v6

    .line 62
    if-gez v6, :cond_43

    .line 64
    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->listFiles()[Ljcifs/smb/SmbFile;

    .line 67
    goto :goto_61

    .line 68
    :cond_43
    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    .line 70
    cmpg-double v4, v4, v6

    .line 72
    if-gez v4, :cond_61

    .line 74
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getInputStream()Ljava/io/InputStream;

    .line 77
    move-result-object v4

    .line 78
    :cond_4d
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    .line 81
    move-result v5

    .line 82
    if-gtz v5, :cond_4d

    .line 84
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_56} :catch_57
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_56} :catch_69
    .catchall {:try_start_25 .. :try_end_56} :catchall_67

    .line 87
    goto :goto_61

    .line 88
    :catch_57
    move-exception v4

    .line 89
    :try_start_58
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 91
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_61} :catch_69
    .catchall {:try_start_58 .. :try_end_61} :catchall_67

    .line 98
    :cond_61
    :goto_61
    add-int/lit8 v3, v3, 0x1

    .line 100
    goto :goto_15

    .line 101
    :catchall_64
    move-exception v0

    .line 102
    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    .line 103
    :try_start_66
    throw v0
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_67} :catch_69
    .catchall {:try_start_66 .. :try_end_67} :catchall_67

    .line 104
    :catchall_67
    move-exception v0

    .line 105
    goto :goto_74

    .line 106
    :catch_69
    move-exception v0

    .line 107
    :try_start_6a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_67

    .line 110
    :goto_6d
    iget v0, p0, Ljcifs/smb/TestLocking;->numComplete:I

    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 114
    iput v0, p0, Ljcifs/smb/TestLocking;->numComplete:I

    .line 116
    return-void

    .line 117
    :goto_74
    iget v1, p0, Ljcifs/smb/TestLocking;->numComplete:I

    .line 119
    add-int/lit8 v1, v1, 0x1

    .line 121
    iput v1, p0, Ljcifs/smb/TestLocking;->numComplete:I

    .line 123
    throw v0
.end method
