.class public Ljcifs/smb/SmbRandomAccessFile;
.super Ljava/lang/Object;
.source "SmbRandomAccessFile.java"

# interfaces
.implements Ljava/io/DataOutput;
.implements Ljava/io/DataInput;


# static fields
.field private static final WRITE_OPTIONS:I = 0x842


# instance fields
.field private access:I

.field private ch:I

.field private file:Ljcifs/smb/SmbFile;

.field private fp:J

.field private openFlags:I

.field private options:I

.field private readSize:I

.field private tmp:[B

.field private writeSize:I

.field private write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 1
    new-instance v0, Ljcifs/smb/SmbFile;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbRandomAccessFile;-><init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Ljava/lang/String;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->access:I

    iput v0, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 4
    iput-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    .line 6
    iput-object p1, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    const-string v0, "r"

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 p2, 0x11

    .line 8
    iput p2, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    goto :goto_3a

    :cond_20
    const-string v0, "rw"

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5c

    const/16 p2, 0x17

    .line 10
    iput p2, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    .line 11
    new-instance p2, Ljcifs/smb/SmbComWriteAndXResponse;

    invoke-direct {p2}, Ljcifs/smb/SmbComWriteAndXResponse;-><init>()V

    iput-object p2, p0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    const/16 p2, 0x842

    .line 12
    iput p2, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    const/4 p2, 0x3

    .line 13
    iput p2, p0, Ljcifs/smb/SmbRandomAccessFile;->access:I

    .line 14
    :goto_3a
    iget p2, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    iget v0, p0, Ljcifs/smb/SmbRandomAccessFile;->access:I

    const/16 v1, 0x80

    iget v2, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    invoke-virtual {p1, p2, v0, v1, v2}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 15
    iget-object p1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object p1, p1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object p1, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget p2, p1, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    add-int/lit8 p2, p2, -0x46

    iput p2, p0, Ljcifs/smb/SmbRandomAccessFile;->readSize:I

    .line 16
    iget p1, p1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    add-int/lit8 p1, p1, -0x46

    iput p1, p0, Ljcifs/smb/SmbRandomAccessFile;->writeSize:I

    const-wide/16 p1, 0x0

    .line 17
    iput-wide p1, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    return-void

    .line 18
    :cond_5c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    .line 3
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->close()V

    .line 6
    return-void
.end method

.method public getFilePointer()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    .line 3
    return-wide v0
.end method

.method public length()J
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    .line 3
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->length()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public read()I
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    return v2

    .line 2
    :cond_c
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .registers 4

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 14

    const/4 v0, 0x0

    if-gtz p3, :cond_4

    return v0

    .line 4
    :cond_4
    iget-wide v1, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    .line 5
    iget-object v3, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v3}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v3

    if-nez v3, :cond_19

    .line 6
    iget-object v3, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v4, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    const/16 v5, 0x80

    iget v6, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    invoke-virtual {v3, v4, v0, v5, v6}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 7
    :cond_19
    new-instance v0, Ljcifs/smb/SmbComReadAndXResponse;

    invoke-direct {v0, p1, p2}, Ljcifs/smb/SmbComReadAndXResponse;-><init>([BI)V

    .line 8
    :cond_1e
    iget p1, p0, Ljcifs/smb/SmbRandomAccessFile;->readSize:I

    if-le p3, p1, :cond_23

    goto :goto_24

    :cond_23
    move p1, p3

    .line 9
    :goto_24
    iget-object p2, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    new-instance v9, Ljcifs/smb/SmbComReadAndX;

    iget-object v3, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v4, v3, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v5, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    const/4 v8, 0x0

    move-object v3, v9

    move v7, p1

    invoke-direct/range {v3 .. v8}, Ljcifs/smb/SmbComReadAndX;-><init>(IJILjcifs/smb/ServerMessageBlock;)V

    invoke-virtual {p2, v9, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 10
    iget p2, v0, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    if-gtz p2, :cond_4b

    .line 11
    iget-wide p1, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    sub-long v3, p1, v1

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-lez p3, :cond_47

    sub-long/2addr p1, v1

    goto :goto_49

    :cond_47
    const-wide/16 p1, -0x1

    :goto_49
    long-to-int p1, p1

    return p1

    .line 12
    :cond_4b
    iget-wide v3, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    int-to-long v5, p2

    add-long/2addr v3, v5

    iput-wide v3, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    sub-int/2addr p3, p2

    .line 13
    iget v5, v0, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    add-int/2addr v5, p2

    iput v5, v0, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    if-lez p3, :cond_5b

    if-eq p2, p1, :cond_1e

    :cond_5b
    sub-long/2addr v3, v1

    long-to-int p1, v3

    return p1
.end method

.method public final readBoolean()Z
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_12

    .line 11
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 13
    aget-byte v0, v0, v1

    .line 15
    if-eqz v0, :cond_11

    .line 17
    return v2

    .line 18
    :cond_11
    return v1

    .line 19
    :cond_12
    new-instance v0, Ljcifs/smb/SmbException;

    .line 21
    const-string v1, "EOF"

    .line 23
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 26
    throw v0
.end method

.method public final readByte()B
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_f

    .line 11
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 13
    aget-byte v0, v0, v1

    .line 15
    return v0

    .line 16
    :cond_f
    new-instance v0, Ljcifs/smb/SmbException;

    .line 18
    const-string v1, "EOF"

    .line 20
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 23
    throw v0
.end method

.method public final readChar()C
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_12

    .line 11
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 13
    invoke-static {v0, v1}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    .line 16
    move-result v0

    .line 17
    int-to-char v0, v0

    .line 18
    return v0

    .line 19
    :cond_12
    new-instance v0, Ljcifs/smb/SmbException;

    .line 21
    const-string v1, "EOF"

    .line 23
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 26
    throw v0
.end method

.method public final readDouble()D
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    .line 9
    move-result v0

    .line 10
    if-ltz v0, :cond_12

    .line 12
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 14
    invoke-static {v0, v1}, Ljcifs/util/Encdec;->dec_doublebe([BI)D

    .line 17
    move-result-wide v0

    .line 18
    return-wide v0

    .line 19
    :cond_12
    new-instance v0, Ljcifs/smb/SmbException;

    .line 21
    const-string v1, "EOF"

    .line 23
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 26
    throw v0
.end method

.method public final readFloat()F
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_11

    .line 11
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 13
    invoke-static {v0, v1}, Ljcifs/util/Encdec;->dec_floatbe([BI)F

    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_11
    new-instance v0, Ljcifs/smb/SmbException;

    .line 20
    const-string v1, "EOF"

    .line 22
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 25
    throw v0
.end method

.method public final readFully([B)V
    .registers 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbRandomAccessFile;->readFully([BII)V

    return-void
.end method

.method public final readFully([BII)V
    .registers 10

    const/4 v0, 0x0

    :cond_1
    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 2
    invoke-virtual {p0, p1, v1, v2}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    move-result v1

    if-ltz v1, :cond_15

    add-int/2addr v0, v1

    .line 3
    iget-wide v2, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    if-lt v0, p3, :cond_1

    return-void

    .line 4
    :cond_15
    new-instance p1, Ljcifs/smb/SmbException;

    const-string p2, "EOF"

    invoke-direct {p1, p2}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final readInt()I
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x4

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_11

    .line 11
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 13
    invoke-static {v0, v1}, Ljcifs/util/Encdec;->dec_uint32be([BI)I

    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_11
    new-instance v0, Ljcifs/smb/SmbException;

    .line 20
    const-string v1, "EOF"

    .line 22
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 25
    throw v0
.end method

.method public final readLine()Ljava/lang/String;
    .registers 9

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    move v4, v2

    .line 10
    :goto_9
    if-eqz v3, :cond_1a

    .line 12
    if-ne v4, v2, :cond_15

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_15

    .line 20
    const/4 v0, 0x0

    .line 21
    return-object v0

    .line 22
    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_1a
    invoke-virtual {p0}, Ljcifs/smb/SmbRandomAccessFile;->read()I

    .line 30
    move-result v4

    .line 31
    if-eq v4, v2, :cond_37

    .line 33
    const/16 v5, 0xa

    .line 35
    if-eq v4, v5, :cond_37

    .line 37
    const/16 v6, 0xd

    .line 39
    if-eq v4, v6, :cond_2d

    .line 41
    int-to-char v5, v4

    .line 42
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 45
    goto :goto_9

    .line 46
    :cond_2d
    iget-wide v6, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    .line 48
    invoke-virtual {p0}, Ljcifs/smb/SmbRandomAccessFile;->read()I

    .line 51
    move-result v3

    .line 52
    if-eq v3, v5, :cond_37

    .line 54
    iput-wide v6, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    .line 56
    :cond_37
    move v3, v1

    .line 57
    goto :goto_9
.end method

.method public final readLong()J
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    .line 9
    move-result v0

    .line 10
    if-ltz v0, :cond_12

    .line 12
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 14
    invoke-static {v0, v1}, Ljcifs/util/Encdec;->dec_uint64be([BI)J

    .line 17
    move-result-wide v0

    .line 18
    return-wide v0

    .line 19
    :cond_12
    new-instance v0, Ljcifs/smb/SmbException;

    .line 21
    const-string v1, "EOF"

    .line 23
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 26
    throw v0
.end method

.method public final readShort()S
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_11

    .line 11
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 13
    invoke-static {v0, v1}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_11
    new-instance v0, Ljcifs/smb/SmbException;

    .line 20
    const-string v1, "EOF"

    .line 22
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 25
    throw v0
.end method

.method public final readUTF()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/SmbRandomAccessFile;->readUnsignedShort()I

    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [B

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v1, v2, v0}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    .line 11
    :try_start_a
    invoke-static {v1, v2, v0}, Ljcifs/util/Encdec;->dec_utf8([BII)Ljava/lang/String;

    .line 14
    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_f

    .line 15
    return-object v0

    .line 16
    :catch_f
    move-exception v0

    .line 17
    new-instance v1, Ljcifs/smb/SmbException;

    .line 19
    const-string v2, ""

    .line 21
    invoke-direct {v1, v2, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    throw v1
.end method

.method public final readUnsignedByte()I
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_11

    .line 11
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 13
    aget-byte v0, v0, v1

    .line 15
    and-int/lit16 v0, v0, 0xff

    .line 17
    return v0

    .line 18
    :cond_11
    new-instance v0, Ljcifs/smb/SmbException;

    .line 20
    const-string v1, "EOF"

    .line 22
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 25
    throw v0
.end method

.method public final readUnsignedShort()I
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbRandomAccessFile;->read([BII)I

    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_15

    .line 11
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 13
    invoke-static {v0, v1}, Ljcifs/util/Encdec;->dec_uint16be([BI)S

    .line 16
    move-result v0

    .line 17
    const v1, 0xffff

    .line 20
    and-int/2addr v0, v1

    .line 21
    return v0

    .line 22
    :cond_15
    new-instance v0, Ljcifs/smb/SmbException;

    .line 24
    const-string v1, "EOF"

    .line 26
    invoke-direct {v0, v1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 29
    throw v0
.end method

.method public seek(J)V
    .registers 3

    .line 1
    iput-wide p1, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    .line 3
    return-void
.end method

.method public setLength(J)V
    .registers 13

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    .line 3
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isOpen()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_14

    .line 9
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    .line 11
    iget v1, p0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    .line 13
    const/4 v2, 0x0

    .line 14
    const/16 v3, 0x80

    .line 16
    iget v4, p0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    .line 18
    invoke-virtual {v0, v1, v2, v3, v4}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 21
    :cond_14
    new-instance v0, Ljcifs/smb/SmbComWriteResponse;

    .line 23
    invoke-direct {v0}, Ljcifs/smb/SmbComWriteResponse;-><init>()V

    .line 26
    iget-object v1, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    .line 28
    new-instance v9, Ljcifs/smb/SmbComWrite;

    .line 30
    iget-object v2, p0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    .line 32
    iget v3, v2, Ljcifs/smb/SmbFile;->fid:I

    .line 34
    const-wide v4, 0xffffffffL

    .line 39
    and-long/2addr p1, v4

    .line 40
    long-to-int v4, p1

    .line 41
    const/4 v5, 0x0

    .line 42
    iget-object v6, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    move-object v2, v9

    .line 47
    invoke-direct/range {v2 .. v8}, Ljcifs/smb/SmbComWrite;-><init>(III[BII)V

    .line 50
    invoke-virtual {v1, v9, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 53
    return-void
.end method

.method public skipBytes(I)I
    .registers 6

    .line 1
    if-lez p1, :cond_9

    .line 3
    iget-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    .line 5
    int-to-long v2, p1

    .line 6
    add-long/2addr v0, v2

    .line 7
    iput-wide v0, p0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    .line 9
    return p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public write(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public write([B)V
    .registers 4

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 19

    move-object v0, p0

    if-gtz p3, :cond_4

    return-void

    .line 4
    :cond_4
    iget-object v1, v0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v1}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v1

    if-nez v1, :cond_18

    .line 5
    iget-object v1, v0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v2, v0, Ljcifs/smb/SmbRandomAccessFile;->openFlags:I

    const/4 v3, 0x0

    const/16 v4, 0x80

    iget v5, v0, Ljcifs/smb/SmbRandomAccessFile;->options:I

    invoke-virtual {v1, v2, v3, v4, v5}, Ljcifs/smb/SmbFile;->open(IIII)V

    :cond_18
    move/from16 v1, p2

    move/from16 v2, p3

    .line 6
    :cond_1c
    iget v3, v0, Ljcifs/smb/SmbRandomAccessFile;->writeSize:I

    if-le v2, v3, :cond_22

    move v13, v3

    goto :goto_23

    :cond_22
    move v13, v2

    .line 7
    :goto_23
    iget-object v3, v0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    new-instance v4, Ljcifs/smb/SmbComWriteAndX;

    iget-object v5, v0, Ljcifs/smb/SmbRandomAccessFile;->file:Ljcifs/smb/SmbFile;

    iget v7, v5, Ljcifs/smb/SmbFile;->fid:I

    iget-wide v8, v0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    sub-int v10, v2, v13

    const/4 v14, 0x0

    move-object v6, v4

    move-object/from16 v11, p1

    move v12, v1

    invoke-direct/range {v6 .. v14}, Ljcifs/smb/SmbComWriteAndX;-><init>(IJI[BIILjcifs/smb/ServerMessageBlock;)V

    iget-object v5, v0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    invoke-virtual {v3, v4, v5}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 8
    iget-wide v3, v0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    iget-object v5, v0, Ljcifs/smb/SmbRandomAccessFile;->write_andx_resp:Ljcifs/smb/SmbComWriteAndXResponse;

    iget-wide v5, v5, Ljcifs/smb/SmbComWriteAndXResponse;->count:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Ljcifs/smb/SmbRandomAccessFile;->fp:J

    int-to-long v2, v2

    sub-long/2addr v2, v5

    long-to-int v2, v2

    int-to-long v3, v1

    add-long/2addr v3, v5

    long-to-int v1, v3

    if-gtz v2, :cond_1c

    return-void
.end method

.method public final writeBoolean(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 3
    int-to-byte p1, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-byte p1, v0, v1

    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1, p1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 11
    return-void
.end method

.method public final writeByte(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 3
    int-to-byte p1, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-byte p1, v0, v1

    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1, p1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 11
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 4
    move-result-object p1

    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 10
    return-void
.end method

.method public final writeChar(I)V
    .registers 4

    .line 1
    int-to-short p1, p1

    .line 2
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1, v0, v1}, Ljcifs/util/Encdec;->enc_uint16be(S[BI)I

    .line 8
    iget-object p1, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 14
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .registers 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v1, v0, 0x2

    .line 7
    new-array v2, v1, [B

    .line 9
    new-array v3, v0, [C

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-virtual {p1, v4, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 15
    move p1, v4

    .line 16
    move v5, p1

    .line 17
    :goto_10
    if-lt p1, v0, :cond_16

    .line 19
    invoke-virtual {p0, v2, v4, v1}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 22
    return-void

    .line 23
    :cond_16
    add-int/lit8 v6, v5, 0x1

    .line 25
    aget-char v7, v3, p1

    .line 27
    ushr-int/lit8 v8, v7, 0x8

    .line 29
    int-to-byte v8, v8

    .line 30
    aput-byte v8, v2, v5

    .line 32
    add-int/lit8 v5, v6, 0x1

    .line 34
    ushr-int/2addr v7, v4

    .line 35
    int-to-byte v7, v7

    .line 36
    aput-byte v7, v2, v6

    .line 38
    add-int/lit8 p1, p1, 0x1

    .line 40
    goto :goto_10
.end method

.method public final writeDouble(D)V
    .registers 5

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, p2, v0, v1}, Ljcifs/util/Encdec;->enc_doublebe(D[BI)I

    .line 7
    iget-object p1, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 9
    const/16 p2, 0x8

    .line 11
    invoke-virtual {p0, p1, v1, p2}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 14
    return-void
.end method

.method public final writeFloat(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Ljcifs/util/Encdec;->enc_floatbe(F[BI)I

    .line 7
    iget-object p1, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 9
    const/4 v0, 0x4

    .line 10
    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 13
    return-void
.end method

.method public final writeInt(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, Ljcifs/util/Encdec;->enc_uint32be(I[BI)I

    .line 7
    iget-object p1, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 9
    const/4 v0, 0x4

    .line 10
    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 13
    return-void
.end method

.method public final writeLong(J)V
    .registers 5

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, p2, v0, v1}, Ljcifs/util/Encdec;->enc_uint64be(J[BI)I

    .line 7
    iget-object p1, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 9
    const/16 p2, 0x8

    .line 11
    invoke-virtual {p0, p1, v1, p2}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 14
    return-void
.end method

.method public final writeShort(I)V
    .registers 4

    .line 1
    int-to-short p1, p1

    .line 2
    iget-object v0, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1, v0, v1}, Ljcifs/util/Encdec;->enc_uint16be(S[BI)I

    .line 8
    iget-object p1, p0, Ljcifs/smb/SmbRandomAccessFile;->tmp:[B

    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 14
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    :goto_7
    if-lt v2, v0, :cond_1e

    .line 10
    new-array v0, v3, [B

    .line 12
    invoke-virtual {p0, v3}, Ljcifs/smb/SmbRandomAccessFile;->writeShort(I)V

    .line 15
    :try_start_e
    invoke-static {p1, v0, v1, v3}, Ljcifs/util/Encdec;->enc_utf8(Ljava/lang/String;[BII)I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_15

    .line 18
    invoke-virtual {p0, v0, v1, v3}, Ljcifs/smb/SmbRandomAccessFile;->write([BII)V

    .line 21
    return-void

    .line 22
    :catch_15
    move-exception p1

    .line 23
    new-instance v0, Ljcifs/smb/SmbException;

    .line 25
    const-string v1, ""

    .line 27
    invoke-direct {v0, v1, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    throw v0

    .line 31
    :cond_1e
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 34
    move-result v4

    .line 35
    const/16 v5, 0x7f

    .line 37
    if-le v4, v5, :cond_2e

    .line 39
    const/16 v5, 0x7ff

    .line 41
    if-le v4, v5, :cond_2c

    .line 43
    const/4 v4, 0x3

    .line 44
    goto :goto_2f

    .line 45
    :cond_2c
    const/4 v4, 0x2

    .line 46
    goto :goto_2f

    .line 47
    :cond_2e
    const/4 v4, 0x1

    .line 48
    :goto_2f
    add-int/2addr v3, v4

    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_7
.end method
