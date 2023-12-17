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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Ls1/k;->a:I

    invoke-direct {p0}, Ls1/l;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ls1/k;->b:J

    iput-wide v0, p0, Ls1/k;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls1/k;->d:Z

    iput-object p1, p0, Ls1/k;->e:Ljava/lang/Object;

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

    invoke-direct {p0}, Ls1/l;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ls1/k;->b:J

    iput-wide v1, p0, Ls1/k;->c:J

    iput-boolean v0, p0, Ls1/k;->d:Z

    iput-object p1, p0, Ls1/k;->e:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 p1, 0x0

    throw p1
.end method

.method private declared-synchronized g(J)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ls1/k;->e:Ljava/lang/Object;

    check-cast v0, Lr1/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1d

    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iput-wide p1, p0, Ls1/k;->b:J
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_25

    monitor-exit p0

    return-void

    :cond_1d
    :try_start_1d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Seek position is not available"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized h(J)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_14

    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iput-wide p1, p0, Ls1/k;->b:J
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c

    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Seek position is not available"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized i()I
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-ltz v0, :cond_25

    iget-wide v1, p0, Ls1/k;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Ls1/k;->b:J
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2d

    :cond_25
    monitor-exit p0

    return v0

    :cond_27
    :try_start_27
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j(I[BI)I
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2b

    new-array v0, p3, [B

    iget-object v1, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    check-cast v1, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v1, :cond_29

    iget-wide p1, p0, Ls1/k;->b:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Ls1/k;->b:J
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_31

    :cond_29
    monitor-exit p0

    return v1

    :cond_2b
    :try_start_2b
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized k([B)I
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-lez p1, :cond_23

    iget-wide v0, p0, Ls1/k;->b:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ls1/k;->b:J
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_2b

    :cond_23
    monitor-exit p0

    return p1

    :cond_25
    :try_start_25
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized l()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ls1/k;->d:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iget-wide v1, p0, Ls1/k;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-wide v0, p0, Ls1/k;->c:J

    iput-wide v0, p0, Ls1/k;->b:J
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_26

    monitor-exit p0

    return-void

    :cond_18
    const/4 v0, 0x0

    :try_start_19
    iput-boolean v0, p0, Ls1/k;->d:Z

    iget-object v0, p0, Ls1/k;->e:Ljava/lang/Object;

    check-cast v0, Lr1/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v0, 0x0

    throw v0
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Ls1/k;->d:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls1/k;->d:Z

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Ls1/k;->e:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    :cond_15
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Ls1/k;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-wide v0, p0, Ls1/k;->c:J

    iput-wide v0, p0, Ls1/k;->b:J
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Ls1/k;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_10

    :pswitch_7  #0x0
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_19

    :try_start_8
    iget-wide v0, p0, Ls1/k;->b:J
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_d

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_19

    monitor-exit p0

    return-wide v0

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0

    throw v0

    :goto_10
    monitor-enter p0
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_19

    :try_start_11
    iget-wide v0, p0, Ls1/k;->b:J
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_16

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_19

    monitor-exit p0

    return-wide v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0

    throw v0
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_7  #00000000
    .end packed-switch
.end method

.method public final declared-synchronized available()I
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Ls1/k;->a:I

    packed-switch v0, :pswitch_data_30

    goto :goto_1b

    :pswitch_7  #0x0
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2c

    :try_start_8
    iget-object v0, p0, Ls1/k;->e:Ljava/lang/Object;

    check-cast v0, Lr1/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ls1/k;->b:J
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_18

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_2c

    monitor-exit p0

    return v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0

    throw v0

    :goto_1b
    monitor-enter p0
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_2c

    :try_start_1c
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p0, Ls1/k;->b:J
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_29

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_2c

    monitor-exit p0

    return v0

    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0

    throw v0
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_7  #00000000
    .end packed-switch
.end method

.method public final declared-synchronized close()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Ls1/k;->a:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_2a

    goto :goto_18

    :pswitch_8  #0x0
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_26

    :try_start_9
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    iput-boolean v1, p0, Ls1/k;->d:Z
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_15

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_26

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0

    throw v0

    :goto_18
    monitor-enter p0
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_26

    :try_start_19
    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    iput-boolean v1, p0, Ls1/k;->d:Z
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_23

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_26

    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0

    throw v0
    :try_end_26
    .catchall {:try_start_24 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    nop

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

    iget p1, p0, Ls1/k;->a:I

    packed-switch p1, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-boolean p1, p0, Ls1/k;->d:Z

    if-nez p1, :cond_e

    iget-wide v0, p0, Ls1/k;->b:J

    iput-wide v0, p0, Ls1/k;->c:J

    :cond_e
    return-void

    :goto_f
    iget-boolean p1, p0, Ls1/k;->d:Z

    if-nez p1, :cond_17

    iget-wide v0, p0, Ls1/k;->b:J

    iput-wide v0, p0, Ls1/k;->c:J

    :cond_17
    return-void

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

    :goto_d
    :try_start_d
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_33

    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    if-ltz v0, :cond_27

    iget-wide v1, p0, Ls1/k;->b:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Ls1/k;->b:J
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_30

    :cond_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_33

    monitor-exit p0

    return v0

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

    :goto_d
    :try_start_d
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_32

    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p1

    if-lez p1, :cond_26

    iget-wide v0, p0, Ls1/k;->b:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ls1/k;->b:J
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_2f

    :cond_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_32

    monitor-exit p0

    return p1

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

    :goto_d
    :try_start_d
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_32

    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-lez p1, :cond_26

    iget-wide p2, p0, Ls1/k;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Ls1/k;->b:J
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_2f

    :cond_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_32

    monitor-exit p0

    return p1

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

    iget v0, p0, Ls1/k;->a:I

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_a8

    goto :goto_5a

    :pswitch_8  #0x0
    cmp-long v0, p1, v1

    if-nez v0, :cond_e

    move-wide p1, v1

    goto :goto_51

    :cond_e
    if-ltz v0, :cond_52

    iget-object v0, p0, Ls1/k;->e:Ljava/lang/Object;

    check-cast v0, Lr1/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v3, p0, Ls1/k;->b:J

    sub-long v5, v1, v3

    cmp-long v0, v5, p1

    if-gez v0, :cond_41

    iget-object p1, p0, Ls1/k;->e:Ljava/lang/Object;

    check-cast p1, Lr1/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v1, p0, Ls1/k;->b:J

    iget-object p1, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    check-cast p1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iget-wide v3, p0, Ls1/k;->b:J

    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object p1, p0, Ls1/k;->e:Ljava/lang/Object;

    check-cast p1, Lr1/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide p1, p0, Ls1/k;->b:J

    sub-long p1, v1, p1

    goto :goto_51

    :cond_41
    add-long/2addr v3, p1

    iput-wide v3, p0, Ls1/k;->b:J

    iget-object v0, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iget-wide v1, p0, Ls1/k;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :goto_51
    return-wide p1

    :cond_52
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Number of bytes to skip cannot be negative"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_5a
    cmp-long v0, p1, v1

    if-nez v0, :cond_5f

    goto :goto_9c

    :cond_5f
    if-ltz v0, :cond_a0

    const-wide/16 v3, 0x2000

    cmp-long v0, p1, v3

    if-gez v0, :cond_69

    long-to-int v0, p1

    goto :goto_6b

    :cond_69
    const/16 v0, 0x2000

    :goto_6b
    monitor-enter p0

    int-to-long v3, v0

    :try_start_6d
    div-long/2addr p1, v3

    move-wide v5, v1

    :goto_6f
    cmp-long v7, p1, v1

    if-ltz v7, :cond_9a

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_94

    iget-object v7, p0, Ls1/k;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v7, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iget-wide v9, p0, Ls1/k;->b:J

    add-long/2addr v9, v7

    iput-wide v9, p0, Ls1/k;->b:J

    cmp-long v7, v7, v3

    if-gez v7, :cond_90

    monitor-exit p0

    goto :goto_9b

    :cond_90
    const-wide/16 v7, 0x1

    sub-long/2addr p1, v7

    goto :goto_6f

    :cond_94
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :cond_9a
    monitor-exit p0

    :goto_9b
    move-wide v1, v5

    :goto_9c
    return-wide v1

    :catchall_9d
    move-exception p1

    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_6d .. :try_end_9f} :catchall_9d

    throw p1

    :cond_a0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Number of bytes to skip cannot be negative"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method
