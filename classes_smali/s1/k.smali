.class public final Ls1/k;
.super Ls1/l;
.source "RandomFileDescriptorInputStream.java"


# instance fields
.field public final synthetic a:I

.field public b:J

.field public c:J

.field public d:Z

.field public final e:Ljava/lang/Object;

.field public f:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Ls1/k;->a:I

    .line 1
    invoke-direct {p0}, Ls1/l;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Ls1/k;->b:J

    .line 3
    iput-wide v0, p0, Ls1/k;->c:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ls1/k;->d:Z

    .line 5
    iput-object p1, p0, Ls1/k;->e:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public constructor <init>(Lr1/j;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Ls1/k;->a:I

    .line 7
    invoke-direct {p0}, Ls1/l;-><init>()V

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Ls1/k;->b:J

    .line 9
    iput-wide v1, p0, Ls1/k;->c:J

    .line 10
    iput-boolean v0, p0, Ls1/k;->d:Z

    .line 11
    iput-object p1, p0, Ls1/k;->e:Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 p1, 0x0

    throw p1
.end method

.method private declared-synchronized g(J)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Ls1/k;->e:Ljava/lang/Object;

    .line 4
    check-cast v0, Lr1/j;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    const-wide/16 v0, 0x0

    .line 11
    cmp-long v0, p1, v0

    .line 13
    if-gez v0, :cond_1d

    .line 15
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    .line 17
    check-cast v0, Ljava/io/FileInputStream;

    .line 19
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 26
    iput-wide p1, p0, Ls1/k;->b:J
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_25

    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :cond_1d
    :try_start_1d
    new-instance p1, Ljava/io/IOException;

    .line 32
    const-string p2, "Seek position is not available"

    .line 34
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p1
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    .line 38
    :catchall_25
    move-exception p1

    .line 39
    monitor-exit p0

    .line 40
    throw p1
.end method

.method private declared-synchronized h(J)V
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    .line 4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 7
    move-result-wide v0

    .line 8
    cmp-long v0, p1, v0

    .line 10
    if-gez v0, :cond_14

    .line 12
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    .line 14
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 17
    iput-wide p1, p0, Ls1/k;->b:J
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c

    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :cond_14
    :try_start_14
    new-instance p1, Ljava/io/IOException;

    .line 23
    const-string p2, "Seek position is not available"

    .line 25
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1c

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    monitor-exit p0

    .line 31
    throw p1
.end method

.method private declared-synchronized i()I
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_27

    .line 12
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    .line 14
    check-cast v0, Ljava/io/FileInputStream;

    .line 16
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 28
    move-result v0

    .line 29
    if-ltz v0, :cond_25

    .line 31
    iget-wide v1, p0, Ls1/k;->b:J

    .line 33
    const-wide/16 v3, 0x1

    .line 35
    add-long/2addr v1, v3

    .line 36
    iput-wide v1, p0, Ls1/k;->b:J
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2d

    .line 38
    :cond_25
    monitor-exit p0

    .line 39
    return v0

    .line 40
    :cond_27
    :try_start_27
    new-instance v0, Ljava/io/InterruptedIOException;

    .line 42
    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    .line 45
    throw v0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2d

    .line 46
    :catchall_2d
    move-exception v0

    .line 47
    monitor-exit p0

    .line 48
    throw v0
.end method

.method private declared-synchronized j(I[BI)I
    .registers 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2b

    .line 12
    new-array v0, p3, [B

    .line 14
    iget-object v1, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    .line 16
    check-cast v1, Ljava/io/FileInputStream;

    .line 18
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {v0, v2, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    if-lez v1, :cond_29

    .line 36
    iget-wide p1, p0, Ls1/k;->b:J

    .line 38
    int-to-long v2, v1

    .line 39
    add-long/2addr p1, v2

    .line 40
    iput-wide p1, p0, Ls1/k;->b:J
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_31

    .line 42
    :cond_29
    monitor-exit p0

    .line 43
    return v1

    .line 44
    :cond_2b
    :try_start_2b
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 46
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 49
    throw p1
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_31

    .line 50
    :catchall_31
    move-exception p1

    .line 51
    monitor-exit p0

    .line 52
    throw p1
.end method

.method private declared-synchronized k([B)I
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_25

    .line 12
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    .line 14
    check-cast v0, Ljava/io/FileInputStream;

    .line 16
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 27
    move-result p1

    .line 28
    if-lez p1, :cond_23

    .line 30
    iget-wide v0, p0, Ls1/k;->b:J

    .line 32
    int-to-long v2, p1

    .line 33
    add-long/2addr v0, v2

    .line 34
    iput-wide v0, p0, Ls1/k;->b:J
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_2b

    .line 36
    :cond_23
    monitor-exit p0

    .line 37
    return p1

    .line 38
    :cond_25
    :try_start_25
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 40
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 43
    throw p1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2b

    .line 44
    :catchall_2b
    move-exception p1

    .line 45
    monitor-exit p0

    .line 46
    throw p1
.end method

.method private declared-synchronized l()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Ls1/k;->d:Z

    .line 4
    if-nez v0, :cond_18

    .line 6
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    .line 8
    check-cast v0, Ljava/io/FileInputStream;

    .line 10
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 13
    move-result-object v0

    .line 14
    iget-wide v1, p0, Ls1/k;->c:J

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 19
    iget-wide v0, p0, Ls1/k;->c:J

    .line 21
    iput-wide v0, p0, Ls1/k;->b:J
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_26

    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    :try_start_19
    iput-boolean v0, p0, Ls1/k;->d:Z

    .line 28
    iget-object v0, p0, Ls1/k;->e:Ljava/lang/Object;

    .line 30
    check-cast v0, Lr1/j;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 37
    const/4 v0, 0x0

    .line 38
    throw v0
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_26

    .line 39
    :catchall_26
    move-exception v0

    .line 40
    monitor-exit p0

    .line 41
    throw v0
.end method

.method private declared-synchronized m()V
    .registers 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget-boolean v0, p0, Ls1/k;->d:Z

    .line 4
    if-eqz v0, :cond_15

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Ls1/k;->d:Z

    .line 9
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 11
    iget-object v1, p0, Ls1/k;->e:Ljava/lang/Object;

    .line 13
    check-cast v1, Ljava/io/File;

    .line 15
    const-string v2, "r"

    .line 17
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    iput-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    .line 22
    :cond_15
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    .line 24
    iget-wide v1, p0, Ls1/k;->c:J

    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 29
    iget-wide v0, p0, Ls1/k;->c:J

    .line 31
    iput-wide v0, p0, Ls1/k;->b:J
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_22
    move-exception v0

    .line 36
    monitor-exit p0

    .line 37
    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()J
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Ls1/k;->a:I

    .line 4
    packed-switch v0, :pswitch_data_1c

    .line 7
    goto :goto_10

    .line 8
    :pswitch_7  #0x0
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_19

    .line 9
    :try_start_8
    iget-wide v0, p0, Ls1/k;->b:J
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_d

    .line 11
    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_19

    .line 12
    monitor-exit p0

    .line 13
    return-wide v0

    .line 14
    :catchall_d
    move-exception v0

    .line 15
    :try_start_e
    monitor-exit p0

    .line 16
    throw v0

    .line 17
    :goto_10
    monitor-enter p0
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_19

    .line 18
    :try_start_11
    iget-wide v0, p0, Ls1/k;->b:J
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_16

    .line 20
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_19

    .line 21
    monitor-exit p0

    .line 22
    return-wide v0

    .line 23
    :catchall_16
    move-exception v0

    .line 24
    :try_start_17
    monitor-exit p0

    .line 25
    throw v0
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_19

    .line 26
    :catchall_19
    move-exception v0

    .line 27
    monitor-exit p0

    .line 28
    throw v0

    .line 29
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_7  #00000000
    .end packed-switch
.end method

.method public final declared-synchronized available()I
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Ls1/k;->a:I

    .line 4
    packed-switch v0, :pswitch_data_30

    .line 7
    goto :goto_1b

    .line 8
    :pswitch_7  #0x0
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2c

    .line 9
    :try_start_8
    iget-object v0, p0, Ls1/k;->e:Ljava/lang/Object;

    .line 11
    check-cast v0, Lr1/j;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-wide/16 v0, 0x0

    .line 18
    iget-wide v2, p0, Ls1/k;->b:J
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_18

    .line 20
    sub-long/2addr v0, v2

    .line 21
    long-to-int v0, v0

    .line 22
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_2c

    .line 23
    monitor-exit p0

    .line 24
    return v0

    .line 25
    :catchall_18
    move-exception v0

    .line 26
    :try_start_19
    monitor-exit p0

    .line 27
    throw v0

    .line 28
    :goto_1b
    monitor-enter p0
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_2c

    .line 29
    :try_start_1c
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    .line 31
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    .line 34
    move-result-wide v0

    .line 35
    iget-wide v2, p0, Ls1/k;->b:J
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_29

    .line 37
    sub-long/2addr v0, v2

    .line 38
    long-to-int v0, v0

    .line 39
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_2c

    .line 40
    monitor-exit p0

    .line 41
    return v0

    .line 42
    :catchall_29
    move-exception v0

    .line 43
    :try_start_2a
    monitor-exit p0

    .line 44
    throw v0
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_2c

    .line 45
    :catchall_2c
    move-exception v0

    .line 46
    monitor-exit p0

    .line 47
    throw v0

    .line 48
    nop

    .line 49
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_7  #00000000
    .end packed-switch
.end method

.method public final declared-synchronized close()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Ls1/k;->a:I

    .line 4
    const/4 v1, 0x1

    .line 5
    packed-switch v0, :pswitch_data_2a

    .line 8
    goto :goto_18

    .line 9
    :pswitch_8  #0x0
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_26

    .line 10
    :try_start_9
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    .line 12
    check-cast v0, Ljava/io/FileInputStream;

    .line 14
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 17
    iput-boolean v1, p0, Ls1/k;->d:Z
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_15

    .line 19
    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_26

    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_15
    move-exception v0

    .line 23
    :try_start_16
    monitor-exit p0

    .line 24
    throw v0

    .line 25
    :goto_18
    monitor-enter p0
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_26

    .line 26
    :try_start_19
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    .line 28
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 31
    iput-boolean v1, p0, Ls1/k;->d:Z
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_23

    .line 33
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_26

    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_23
    move-exception v0

    .line 37
    :try_start_24
    monitor-exit p0

    .line 38
    throw v0
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_26

    .line 39
    :catchall_26
    move-exception v0

    .line 40
    monitor-exit p0

    .line 41
    throw v0

    .line 42
    nop

    .line 43
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method

.method public final declared-synchronized e(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p0, Ls1/k;->a:I

    packed-switch v0, :pswitch_data_14

    invoke-direct {p0, p1, p2}, Ls1/k;->h(J)V

    goto :goto_f

    :pswitch_a  #0x0
    invoke-direct {p0, p1, p2}, Ls1/k;->g(J)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    monitor-exit p0

    return-void

    :goto_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_a  #00000000
    .end packed-switch
.end method

.method public final mark(I)V
    .registers 4

    .line 1
    iget p1, p0, Ls1/k;->a:I

    .line 3
    packed-switch p1, :pswitch_data_18

    .line 6
    goto :goto_f

    .line 7
    :pswitch_6  #0x0
    iget-boolean p1, p0, Ls1/k;->d:Z

    .line 9
    if-nez p1, :cond_e

    .line 11
    iget-wide v0, p0, Ls1/k;->b:J

    .line 13
    iput-wide v0, p0, Ls1/k;->c:J

    .line 15
    :cond_e
    return-void

    .line 16
    :goto_f
    iget-boolean p1, p0, Ls1/k;->d:Z

    .line 18
    if-nez p1, :cond_17

    .line 20
    iget-wide v0, p0, Ls1/k;->b:J

    .line 22
    iput-wide v0, p0, Ls1/k;->c:J

    .line 24
    :cond_17
    return-void

    .line 25
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public final markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized read()I
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p0, Ls1/k;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_d

    :pswitch_7  #0x0
    invoke-direct {p0}, Ls1/k;->i()I

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_33

    monitor-exit p0

    return v0

    .line 1
    :goto_d
    :try_start_d
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_33

    .line 2
    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 3
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    if-ltz v0, :cond_27

    .line 4
    iget-wide v1, p0, Ls1/k;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Ls1/k;->b:J
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_30

    .line 5
    :cond_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_33

    .line 6
    monitor-exit p0

    return v0

    .line 7
    :cond_2a
    :try_start_2a
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0

    throw v0
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_7  #00000000
    .end packed-switch
.end method

.method public final declared-synchronized read([B)I
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p0, Ls1/k;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_d

    :pswitch_7  #0x0
    invoke-direct {p0, p1}, Ls1/k;->k([B)I

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_32

    monitor-exit p0

    return p1

    .line 8
    :goto_d
    :try_start_d
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_32

    .line 9
    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_29

    .line 10
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p1

    if-lez p1, :cond_26

    .line 11
    iget-wide v0, p0, Ls1/k;->b:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ls1/k;->b:J
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_2f

    .line 12
    :cond_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_32

    .line 13
    monitor-exit p0

    return p1

    .line 14
    :cond_29
    :try_start_29
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit p0

    throw p1
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_7  #00000000
    .end packed-switch
.end method

.method public final declared-synchronized read([BII)I
    .registers 6

    monitor-enter p0

    :try_start_1
    iget v0, p0, Ls1/k;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_d

    :pswitch_7  #0x0
    invoke-direct {p0, p2, p1, p3}, Ls1/k;->j(I[BI)I

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_32

    monitor-exit p0

    return p1

    .line 15
    :goto_d
    :try_start_d
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_32

    .line 16
    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_29

    .line 17
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-lez p1, :cond_26

    .line 18
    iget-wide p2, p0, Ls1/k;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Ls1/k;->b:J
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_2f

    .line 19
    :cond_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_32

    .line 20
    monitor-exit p0

    return p1

    .line 21
    :cond_29
    :try_start_29
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit p0

    throw p1
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_7  #00000000
    .end packed-switch
.end method

.method public final declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Ls1/k;->a:I

    packed-switch v0, :pswitch_data_14

    invoke-direct {p0}, Ls1/k;->m()V

    goto :goto_f

    :pswitch_a  #0x0
    invoke-direct {p0}, Ls1/k;->l()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    monitor-exit p0

    return-void

    :goto_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_a  #00000000
    .end packed-switch
.end method

.method public final skip(J)J
    .registers 14

    .line 1
    iget v0, p0, Ls1/k;->a:I

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    packed-switch v0, :pswitch_data_a8

    .line 8
    goto :goto_5a

    .line 9
    :pswitch_8  #0x0
    cmp-long v0, p1, v1

    .line 11
    if-nez v0, :cond_e

    .line 13
    move-wide p1, v1

    .line 14
    goto :goto_51

    .line 15
    :cond_e
    if-ltz v0, :cond_52

    .line 17
    iget-object v0, p0, Ls1/k;->e:Ljava/lang/Object;

    .line 19
    check-cast v0, Lr1/j;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iget-wide v3, p0, Ls1/k;->b:J

    .line 26
    sub-long v5, v1, v3

    .line 28
    cmp-long v0, v5, p1

    .line 30
    if-gez v0, :cond_41

    .line 32
    iget-object p1, p0, Ls1/k;->e:Ljava/lang/Object;

    .line 34
    check-cast p1, Lr1/j;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    iput-wide v1, p0, Ls1/k;->b:J

    .line 41
    iget-object p1, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    .line 43
    check-cast p1, Ljava/io/FileInputStream;

    .line 45
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 48
    move-result-object p1

    .line 49
    iget-wide v3, p0, Ls1/k;->b:J

    .line 51
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 54
    iget-object p1, p0, Ls1/k;->e:Ljava/lang/Object;

    .line 56
    check-cast p1, Lr1/j;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    iget-wide p1, p0, Ls1/k;->b:J

    .line 63
    sub-long p1, v1, p1

    .line 65
    goto :goto_51

    .line 66
    :cond_41
    add-long/2addr v3, p1

    .line 67
    iput-wide v3, p0, Ls1/k;->b:J

    .line 69
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    .line 71
    check-cast v0, Ljava/io/FileInputStream;

    .line 73
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 76
    move-result-object v0

    .line 77
    iget-wide v1, p0, Ls1/k;->b:J

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 82
    :goto_51
    return-wide p1

    .line 83
    :cond_52
    new-instance p1, Ljava/io/IOException;

    .line 85
    const-string p2, "Number of bytes to skip cannot be negative"

    .line 87
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p1

    .line 91
    :goto_5a
    cmp-long v0, p1, v1

    .line 93
    if-nez v0, :cond_5f

    .line 95
    goto :goto_9c

    .line 96
    :cond_5f
    if-ltz v0, :cond_a0

    .line 98
    const-wide/16 v3, 0x2000

    .line 100
    cmp-long v0, p1, v3

    .line 102
    if-gez v0, :cond_69

    .line 104
    long-to-int v0, p1

    .line 105
    goto :goto_6b

    .line 106
    :cond_69
    const/16 v0, 0x2000

    .line 108
    :goto_6b
    monitor-enter p0

    .line 109
    int-to-long v3, v0

    .line 110
    :try_start_6d
    div-long/2addr p1, v3

    .line 111
    move-wide v5, v1

    .line 112
    :goto_6f
    cmp-long v7, p1, v1

    .line 114
    if-ltz v7, :cond_9a

    .line 116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 119
    move-result-object v7

    .line 120
    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    .line 123
    move-result v7

    .line 124
    if-nez v7, :cond_94

    .line 126
    iget-object v7, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    .line 128
    invoke-virtual {v7, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 131
    move-result v7

    .line 132
    int-to-long v7, v7

    .line 133
    add-long/2addr v5, v7

    .line 134
    iget-wide v9, p0, Ls1/k;->b:J

    .line 136
    add-long/2addr v9, v7

    .line 137
    iput-wide v9, p0, Ls1/k;->b:J

    .line 139
    cmp-long v7, v7, v3

    .line 141
    if-gez v7, :cond_90

    .line 143
    monitor-exit p0

    .line 144
    goto :goto_9b

    .line 145
    :cond_90
    const-wide/16 v7, 0x1

    .line 147
    sub-long/2addr p1, v7

    .line 148
    goto :goto_6f

    .line 149
    :cond_94
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 151
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 154
    throw p1

    .line 155
    :cond_9a
    monitor-exit p0

    .line 156
    :goto_9b
    move-wide v1, v5

    .line 157
    :goto_9c
    return-wide v1

    .line 158
    :catchall_9d
    move-exception p1

    .line 159
    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_6d .. :try_end_9f} :catchall_9d

    .line 160
    throw p1

    .line 161
    :cond_a0
    new-instance p1, Ljava/io/IOException;

    .line 163
    const-string p2, "Number of bytes to skip cannot be negative"

    .line 165
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 168
    throw p1

    .line 169
    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method
