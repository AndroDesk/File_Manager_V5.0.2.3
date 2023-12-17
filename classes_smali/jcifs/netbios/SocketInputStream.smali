.class Ljcifs/netbios/SocketInputStream;
.super Ljava/io/InputStream;
.source "SocketInputStream.java"


# static fields
.field private static final TMP_BUFFER_SIZE:I


# instance fields
.field private bip:I

.field private header:[B

.field private in:Ljava/io/InputStream;

.field private n:I

.field private ssp:Ljcifs/netbios/SessionServicePacket;

.field private tmp:[B

.field private tot:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92c96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/netbios/SocketInputStream;->TMP_BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    const/4 p1, 0x4

    new-array p1, p1, [B

    iput-object p1, p0, Ljcifs/netbios/SocketInputStream;->header:[B

    const/16 p1, 0x100

    new-array p1, p1, [B

    iput-object p1, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    iget v0, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    if-lez v0, :cond_5

    return v0

    :cond_5
    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public declared-synchronized read()I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/netbios/SocketInputStream;->read([BII)I

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_16

    if-gez v0, :cond_e

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    :cond_e
    :try_start_e
    iget-object v0, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    aget-byte v0, v0, v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_16

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([B)I
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/netbios/SocketInputStream;->read([BII)I

    move-result p1
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized read([BII)I
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p3, :cond_6

    monitor-exit p0

    return v0

    :cond_6
    :try_start_6
    iput v0, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    :cond_8
    :goto_8
    iget v1, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    const/4 v2, -0x1

    if-gtz v1, :cond_2b

    iget-object v1, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Ljcifs/netbios/SocketInputStream;->header:[B

    invoke-static {v1, v3, v0}, Ljcifs/netbios/SessionServicePacket;->readPacketType(Ljava/io/InputStream;[BI)I

    move-result v1

    if-eq v1, v2, :cond_23

    if-eqz v1, :cond_1a

    goto :goto_8

    :cond_1a
    iget-object v1, p0, Ljcifs/netbios/SocketInputStream;->header:[B

    invoke-static {v1, v0}, Ljcifs/netbios/SessionServicePacket;->readLength([BI)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    goto :goto_8

    :cond_23
    iget p1, p0, Ljcifs/netbios/SocketInputStream;->tot:I
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_50

    if-lez p1, :cond_29

    monitor-exit p0

    return p1

    :cond_29
    monitor-exit p0

    return v2

    :cond_2b
    :try_start_2b
    iget-object v3, p0, Ljcifs/netbios/SocketInputStream;->in:Ljava/io/InputStream;

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v3, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    iput v1, p0, Ljcifs/netbios/SocketInputStream;->n:I

    if-ne v1, v2, :cond_40

    iget p1, p0, Ljcifs/netbios/SocketInputStream;->tot:I
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_50

    if-lez p1, :cond_3e

    move v2, p1

    :cond_3e
    monitor-exit p0

    return v2

    :cond_40
    :try_start_40
    iget v2, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    add-int/2addr v2, v1

    iput v2, p0, Ljcifs/netbios/SocketInputStream;->tot:I

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    iget v3, p0, Ljcifs/netbios/SocketInputStream;->bip:I

    sub-int/2addr v3, v1

    iput v3, p0, Ljcifs/netbios/SocketInputStream;->bip:I
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_50

    if-nez p3, :cond_8

    monitor-exit p0

    return v2

    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized skip(J)J
    .registers 11

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_9

    monitor-exit p0

    return-wide v0

    :cond_9
    move-wide v2, p1

    :goto_a
    cmp-long v4, v2, v0

    if-gtz v4, :cond_f

    goto :goto_1f

    :cond_f
    :try_start_f
    iget-object v4, p0, Ljcifs/netbios/SocketInputStream;->tmp:[B

    const/4 v5, 0x0

    const-wide/16 v6, 0x100

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {p0, v4, v5, v6}, Ljcifs/netbios/SocketInputStream;->read([BII)I

    move-result v4
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_25

    if-gez v4, :cond_22

    :goto_1f
    sub-long/2addr p1, v2

    monitor-exit p0

    return-wide p1

    :cond_22
    int-to-long v4, v4

    sub-long/2addr v2, v4

    goto :goto_a

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method
