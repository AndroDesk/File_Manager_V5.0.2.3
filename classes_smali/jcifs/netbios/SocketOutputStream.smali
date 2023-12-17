.class Ljcifs/netbios/SocketOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SocketOutputStream.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized write([BII)V
    .registers 7

    monitor-enter p0

    const v0, 0xffff

    if-gt p3, v0, :cond_34

    const/4 v0, 0x4

    if-lt p2, v0, :cond_2c

    add-int/lit8 p2, p2, -0x4

    add-int/lit8 v1, p2, 0x0

    const/4 v2, 0x0

    :try_start_e
    aput-byte v2, p1, v1

    add-int/lit8 v1, p2, 0x1

    aput-byte v2, p1, v1

    add-int/lit8 v1, p2, 0x2

    shr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, p2, 0x3

    and-int/lit16 v2, p3, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    add-int/2addr p3, v0

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_48

    monitor-exit p0

    return-void

    :cond_2c
    :try_start_2c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "NetBIOS socket output buffer requires 4 bytes available before off"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "write too large: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_48
    .catchall {:try_start_2c .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method
