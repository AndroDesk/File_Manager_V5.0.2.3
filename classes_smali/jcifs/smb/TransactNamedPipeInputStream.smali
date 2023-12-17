.class Ljcifs/smb/TransactNamedPipeInputStream;
.super Ljcifs/smb/SmbFileInputStream;
.source "TransactNamedPipeInputStream.java"


# static fields
.field private static final INIT_PIPE_SIZE:I = 0x1000


# instance fields
.field private beg_idx:I

.field private dcePipe:Z

.field public lock:Ljava/lang/Object;

.field private nxt_idx:I

.field private pipe_buf:[B

.field private used:I


# direct methods
.method public constructor <init>(Ljcifs/smb/SmbNamedPipe;)V
    .registers 4

    .line 1
    iget v0, p1, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    .line 3
    const v1, -0xff01

    .line 6
    and-int/2addr v0, v1

    .line 7
    or-int/lit8 v0, v0, 0x20

    .line 9
    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;I)V

    .line 12
    const/16 v0, 0x1000

    .line 14
    new-array v0, v0, [B

    .line 16
    iput-object v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    .line 18
    iget p1, p1, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    .line 20
    const/16 v0, 0x600

    .line 22
    and-int/2addr p1, v0

    .line 23
    if-eq p1, v0, :cond_1a

    .line 25
    const/4 p1, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    :goto_1b
    iput-boolean p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->dcePipe:Z

    .line 30
    new-instance p1, Ljava/lang/Object;

    .line 32
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    .line 37
    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    .line 1
    sget v0, Ljcifs/smb/SmbFile;->O_RDONLY:I

    .line 3
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 5
    const/4 v1, 0x3

    .line 6
    if-lt v0, v1, :cond_e

    .line 8
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 10
    const-string v1, "Named Pipe available() does not apply to TRANSACT Named Pipes"

    .line 12
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public dce_read([BII)I
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Ljcifs/smb/SmbFileInputStream;->read([BII)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public read()I
    .registers 5

    .line 1
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :goto_3
    :try_start_3
    iget v1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_5} :catch_1f
    .catchall {:try_start_3 .. :try_end_5} :catchall_1d

    if-eqz v1, :cond_17

    .line 3
    :try_start_7
    iget-object v1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    iget v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v2, v2, 0x1

    .line 4
    array-length v1, v1

    rem-int/2addr v2, v1

    iput v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    .line 5
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1d

    return v3

    .line 6
    :cond_17
    :try_start_17
    iget-object v1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1c} :catch_1f
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1d

    goto :goto_3

    :catchall_1d
    move-exception v1

    goto :goto_2a

    :catch_1f
    move-exception v1

    .line 7
    :try_start_20
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8
    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_1d

    throw v1
.end method

.method public read([B)I
    .registers 4

    .line 9
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/TransactNamedPipeInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 10

    const/4 v0, 0x0

    if-gtz p3, :cond_4

    return v0

    .line 10
    :cond_4
    iget-object v1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 11
    :goto_7
    :try_start_7
    iget v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_9} :catch_3f
    .catchall {:try_start_7 .. :try_end_9} :catchall_3d

    if-eqz v2, :cond_37

    .line 12
    :try_start_b
    iget-object v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    array-length v4, v3

    iget v5, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    sub-int/2addr v4, v5

    if-le p3, v2, :cond_14

    move p3, v2

    :cond_14
    if-le v2, v4, :cond_24

    if-le p3, v4, :cond_24

    .line 13
    invoke-static {v3, v5, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v4

    .line 14
    iget-object v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    sub-int v3, p3, v4

    invoke-static {v2, v0, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_27

    .line 15
    :cond_24
    invoke-static {v3, v5, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    :goto_27
    iget p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    sub-int/2addr p1, p3

    iput p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    .line 17
    iget p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    add-int/2addr p1, p3

    iget-object p2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    .line 18
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_b .. :try_end_36} :catchall_3d

    return p3

    .line 19
    :cond_37
    :try_start_37
    iget-object v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3c} :catch_3f
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3d

    goto :goto_7

    :catchall_3d
    move-exception p1

    goto :goto_4a

    :catch_3f
    move-exception p1

    .line 20
    :try_start_40
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 21
    :goto_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_3d

    throw p1
.end method

.method public receive([BII)I
    .registers 10

    .line 1
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    .line 3
    array-length v1, v0

    .line 4
    iget v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    .line 6
    sub-int/2addr v1, v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-le p3, v1, :cond_31

    .line 10
    array-length v1, v0

    .line 11
    mul-int/lit8 v1, v1, 0x2

    .line 13
    sub-int v4, v1, v2

    .line 15
    if-le p3, v4, :cond_12

    .line 17
    add-int v1, p3, v2

    .line 19
    :cond_12
    new-array v1, v1, [B

    .line 21
    iput-object v1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    .line 23
    array-length v4, v0

    .line 24
    iget v5, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    .line 26
    sub-int/2addr v4, v5

    .line 27
    if-le v2, v4, :cond_28

    .line 29
    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    iget-object v1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    .line 34
    iget v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    .line 36
    sub-int/2addr v2, v4

    .line 37
    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    goto :goto_2b

    .line 41
    :cond_28
    invoke-static {v0, v5, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    :goto_2b
    iput v3, p0, Ljcifs/smb/TransactNamedPipeInputStream;->beg_idx:I

    .line 46
    iget v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    .line 48
    iput v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->nxt_idx:I

    .line 50
    :cond_31
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    .line 52
    array-length v1, v0

    .line 53
    iget v2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->nxt_idx:I

    .line 55
    sub-int/2addr v1, v2

    .line 56
    if-le p3, v1, :cond_45

    .line 58
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    add-int/2addr p2, v1

    .line 62
    iget-object v0, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    .line 64
    sub-int v1, p3, v1

    .line 66
    invoke-static {p1, p2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    goto :goto_48

    .line 70
    :cond_45
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    :goto_48
    iget p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->nxt_idx:I

    .line 75
    add-int/2addr p1, p3

    .line 76
    iget-object p2, p0, Ljcifs/smb/TransactNamedPipeInputStream;->pipe_buf:[B

    .line 78
    array-length p2, p2

    .line 79
    rem-int/2addr p1, p2

    .line 80
    iput p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->nxt_idx:I

    .line 82
    iget p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    .line 84
    add-int/2addr p1, p3

    .line 85
    iput p1, p0, Ljcifs/smb/TransactNamedPipeInputStream;->used:I

    .line 87
    return p3
.end method
