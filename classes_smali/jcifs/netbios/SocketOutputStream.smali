.class Ljcifs/netbios/SocketOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SocketOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    return-void
.end method


# virtual methods
.method public declared-synchronized write([BII)V
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    const v0, 0xffff

    .line 5
    if-gt p3, v0, :cond_34

    .line 7
    const/4 v0, 0x4

    .line 8
    if-lt p2, v0, :cond_2c

    .line 10
    add-int/lit8 p2, p2, -0x4

    .line 12
    add-int/lit8 v1, p2, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    :try_start_e
    aput-byte v2, p1, v1

    .line 17
    add-int/lit8 v1, p2, 0x1

    .line 19
    aput-byte v2, p1, v1

    .line 21
    add-int/lit8 v1, p2, 0x2

    .line 23
    shr-int/lit8 v2, p3, 0x8

    .line 25
    and-int/lit16 v2, v2, 0xff

    .line 27
    int-to-byte v2, v2

    .line 28
    aput-byte v2, p1, v1

    .line 30
    add-int/lit8 v1, p2, 0x3

    .line 32
    and-int/lit16 v2, p3, 0xff

    .line 34
    int-to-byte v2, v2

    .line 35
    aput-byte v2, p1, v1

    .line 37
    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 39
    add-int/2addr p3, v0

    .line 40
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_48

    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :cond_2c
    :try_start_2c
    new-instance p1, Ljava/io/IOException;

    .line 47
    const-string p2, "NetBIOS socket output buffer requires 4 bytes available before off"

    .line 49
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p1

    .line 53
    :cond_34
    new-instance p1, Ljava/io/IOException;

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    const-string v0, "write too large: "

    .line 59
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 69
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p1
    :try_end_48
    .catchall {:try_start_2c .. :try_end_48} :catchall_48

    .line 73
    :catchall_48
    move-exception p1

    .line 74
    monitor-exit p0

    .line 75
    throw p1
.end method
