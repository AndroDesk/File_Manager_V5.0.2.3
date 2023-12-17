.class public Ljcifs/smb/SmbFileInputStream;
.super Ljava/io/InputStream;
.source "SmbFileInputStream.java"


# instance fields
.field private access:I

.field public file:Ljcifs/smb/SmbFile;

.field private fp:J

.field private openFlags:I

.field private readSize:I

.field private tmp:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Ljcifs/smb/SmbFile;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;)V
    .registers 3

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;I)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;I)V
    .registers 6

    .line 3
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 4
    iput-object v0, p0, Ljcifs/smb/SmbFileInputStream;->tmp:[B

    .line 5
    iput-object p1, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    const v0, 0xffff

    and-int v1, p2, v0

    .line 6
    iput v1, p0, Ljcifs/smb/SmbFileInputStream;->openFlags:I

    ushr-int/lit8 v1, p2, 0x10

    and-int/2addr v0, v1

    .line 7
    iput v0, p0, Ljcifs/smb/SmbFileInputStream;->access:I

    .line 8
    iget v1, p1, Ljcifs/smb/SmbFile;->type:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_29

    const/16 v1, 0x80

    const/4 v2, 0x0

    .line 9
    invoke-virtual {p1, p2, v0, v1, v2}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 10
    iget p2, p0, Ljcifs/smb/SmbFileInputStream;->openFlags:I

    and-int/lit8 p2, p2, -0x51

    iput p2, p0, Ljcifs/smb/SmbFileInputStream;->openFlags:I

    goto :goto_2c

    .line 11
    :cond_29
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->connect0()V

    .line 12
    :goto_2c
    iget-object p1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object p1, p1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object p1, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget p2, p1, Ljcifs/smb/SmbTransport;->rcv_buf_size:I

    add-int/lit8 p2, p2, -0x46

    .line 13
    iget-object p1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget p1, p1, Ljcifs/smb/SmbTransport$ServerData;->maxBufferSize:I

    add-int/lit8 p1, p1, -0x46

    .line 14
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Ljcifs/smb/SmbFileInputStream;->readSize:I

    return-void
.end method


# virtual methods
.method public available()I
    .registers 7

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    .line 3
    iget v1, v0, Ljcifs/smb/SmbFile;->type:I

    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x10

    .line 8
    if-eq v1, v3, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    :try_start_a
    move-object v1, v0

    .line 12
    check-cast v1, Ljcifs/smb/SmbNamedPipe;

    .line 14
    const/16 v3, 0x20

    .line 16
    iget v4, v1, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    .line 18
    const/high16 v5, 0xff0000

    .line 20
    and-int/2addr v4, v5

    .line 21
    const/16 v5, 0x80

    .line 23
    invoke-virtual {v0, v3, v4, v5, v2}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 26
    new-instance v0, Ljcifs/smb/TransPeekNamedPipe;

    .line 28
    iget-object v3, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    .line 30
    iget-object v4, v3, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 32
    iget v3, v3, Ljcifs/smb/SmbFile;->fid:I

    .line 34
    invoke-direct {v0, v4, v3}, Ljcifs/smb/TransPeekNamedPipe;-><init>(Ljava/lang/String;I)V

    .line 37
    new-instance v3, Ljcifs/smb/TransPeekNamedPipeResponse;

    .line 39
    invoke-direct {v3, v1}, Ljcifs/smb/TransPeekNamedPipeResponse;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    .line 42
    invoke-virtual {v1, v0, v3}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 45
    iget v0, v3, Ljcifs/smb/TransPeekNamedPipeResponse;->status:I

    .line 47
    const/4 v1, 0x1

    .line 48
    if-eq v0, v1, :cond_38

    .line 50
    const/4 v1, 0x4

    .line 51
    if-ne v0, v1, :cond_35

    .line 53
    goto :goto_38

    .line 54
    :cond_35
    iget v0, v3, Ljcifs/smb/TransPeekNamedPipeResponse;->available:I

    .line 56
    return v0

    .line 57
    :cond_38
    :goto_38
    iget-object v0, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    .line 59
    iput-boolean v2, v0, Ljcifs/smb/SmbFile;->opened:Z
    :try_end_3c
    .catch Ljcifs/smb/SmbException; {:try_start_a .. :try_end_3c} :catch_3d

    .line 61
    return v2

    .line 62
    :catch_3d
    move-exception v0

    .line 63
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFileInputStream;->seToIoe(Ljcifs/smb/SmbException;)Ljava/io/IOException;

    .line 66
    move-result-object v0

    .line 67
    throw v0
.end method

.method public close()V
    .registers 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    .line 3
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->close()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Ljcifs/smb/SmbFileInputStream;->tmp:[B
    :try_end_8
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_8} :catch_9

    .line 9
    return-void

    .line 10
    :catch_9
    move-exception v0

    .line 11
    invoke-virtual {p0, v0}, Ljcifs/smb/SmbFileInputStream;->seToIoe(Ljcifs/smb/SmbException;)Ljava/io/IOException;

    .line 14
    move-result-object v0

    .line 15
    throw v0
.end method

.method public read()I
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbFileInputStream;->tmp:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljcifs/smb/SmbFileInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    return v2

    .line 2
    :cond_c
    iget-object v0, p0, Ljcifs/smb/SmbFileInputStream;->tmp:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .registers 4

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbFileInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 4

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Ljcifs/smb/SmbFileInputStream;->readDirect([BII)I

    move-result p1

    return p1
.end method

.method public readDirect([BII)I
    .registers 21

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v0, p2

    .line 5
    move/from16 v2, p3

    .line 7
    const/4 v3, 0x0

    .line 8
    if-gtz v2, :cond_a

    .line 10
    return v3

    .line 11
    :cond_a
    iget-wide v4, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    .line 13
    iget-object v6, v1, Ljcifs/smb/SmbFileInputStream;->tmp:[B

    .line 15
    if-eqz v6, :cond_ef

    .line 17
    iget-object v6, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    .line 19
    iget v7, v1, Ljcifs/smb/SmbFileInputStream;->openFlags:I

    .line 21
    iget v8, v1, Ljcifs/smb/SmbFileInputStream;->access:I

    .line 23
    const/16 v9, 0x80

    .line 25
    invoke-virtual {v6, v7, v8, v9, v3}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 28
    sget v3, Ljcifs/smb/SmbFile;->O_RDONLY:I

    .line 30
    sget v3, Ljcifs/util/LogStream;->level:I

    .line 32
    const/4 v6, 0x4

    .line 33
    if-lt v3, v6, :cond_49

    .line 35
    sget-object v3, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 37
    new-instance v7, Ljava/lang/StringBuilder;

    .line 39
    const-string v8, "read: fid="

    .line 41
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object v8, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    .line 46
    iget v8, v8, Ljcifs/smb/SmbFile;->fid:I

    .line 48
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v8, ",off="

    .line 53
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v8, ",len="

    .line 61
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v3, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    :cond_49
    new-instance v3, Ljcifs/smb/SmbComReadAndXResponse;

    .line 76
    move-object/from16 v7, p1

    .line 78
    invoke-direct {v3, v7, v0}, Ljcifs/smb/SmbComReadAndXResponse;-><init>([BI)V

    .line 81
    iget-object v0, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    .line 83
    iget v0, v0, Ljcifs/smb/SmbFile;->type:I

    .line 85
    const-wide/16 v7, 0x0

    .line 87
    const/16 v9, 0x10

    .line 89
    if-ne v0, v9, :cond_5c

    .line 91
    iput-wide v7, v3, Ljcifs/smb/ServerMessageBlock;->responseTimeout:J

    .line 93
    :cond_5c
    :goto_5c
    iget v0, v1, Ljcifs/smb/SmbFileInputStream;->readSize:I

    .line 95
    if-le v2, v0, :cond_61

    .line 97
    goto :goto_62

    .line 98
    :cond_61
    move v0, v2

    .line 99
    :goto_62
    sget v10, Ljcifs/smb/SmbFile;->O_RDONLY:I

    .line 101
    sget v10, Ljcifs/util/LogStream;->level:I

    .line 103
    if-lt v10, v6, :cond_8d

    .line 105
    sget-object v10, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 107
    new-instance v11, Ljava/lang/StringBuilder;

    .line 109
    const-string v12, "read: len="

    .line 111
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string v12, ",r="

    .line 119
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v12, ",fp="

    .line 127
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-wide v12, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    .line 132
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v11

    .line 139
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    :cond_8d
    :try_start_8d
    new-instance v15, Ljcifs/smb/SmbComReadAndX;

    .line 144
    iget-object v10, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    .line 146
    iget v11, v10, Ljcifs/smb/SmbFile;->fid:I

    .line 148
    iget-wide v12, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    .line 150
    const/16 v16, 0x0

    .line 152
    move-object v10, v15

    .line 153
    move v14, v0

    .line 154
    move-object v6, v15

    .line 155
    move-object/from16 v15, v16

    .line 157
    invoke-direct/range {v10 .. v15}, Ljcifs/smb/SmbComReadAndX;-><init>(IJILjcifs/smb/ServerMessageBlock;)V

    .line 160
    iget-object v10, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    .line 162
    iget v11, v10, Ljcifs/smb/SmbFile;->type:I

    .line 164
    if-ne v11, v9, :cond_ad

    .line 166
    const/16 v11, 0x400

    .line 168
    iput v11, v6, Ljcifs/smb/SmbComReadAndX;->remaining:I

    .line 170
    iput v11, v6, Ljcifs/smb/SmbComReadAndX;->maxCount:I

    .line 172
    iput v11, v6, Ljcifs/smb/SmbComReadAndX;->minCount:I

    .line 174
    :cond_ad
    invoke-virtual {v10, v6, v3}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    :try_end_b0
    .catch Ljcifs/smb/SmbException; {:try_start_8d .. :try_end_b0} :catch_d8

    .line 177
    iget v6, v3, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    .line 179
    if-gtz v6, :cond_c2

    .line 181
    iget-wide v2, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    .line 183
    sub-long v9, v2, v4

    .line 185
    cmp-long v0, v9, v7

    .line 187
    if-lez v0, :cond_be

    .line 189
    sub-long/2addr v2, v4

    .line 190
    goto :goto_c0

    .line 191
    :cond_be
    const-wide/16 v2, -0x1

    .line 193
    :goto_c0
    long-to-int v0, v2

    .line 194
    return v0

    .line 195
    :cond_c2
    iget-wide v10, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    .line 197
    int-to-long v12, v6

    .line 198
    add-long/2addr v10, v12

    .line 199
    iput-wide v10, v1, Ljcifs/smb/SmbFileInputStream;->fp:J

    .line 201
    sub-int/2addr v2, v6

    .line 202
    iget v12, v3, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    .line 204
    add-int/2addr v12, v6

    .line 205
    iput v12, v3, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    .line 207
    if-lez v2, :cond_d5

    .line 209
    if-eq v6, v0, :cond_d3

    .line 211
    goto :goto_d5

    .line 212
    :cond_d3
    const/4 v6, 0x4

    .line 213
    goto :goto_5c

    .line 214
    :cond_d5
    :goto_d5
    sub-long/2addr v10, v4

    .line 215
    long-to-int v0, v10

    .line 216
    return v0

    .line 217
    :catch_d8
    move-exception v0

    .line 218
    iget-object v2, v1, Ljcifs/smb/SmbFileInputStream;->file:Ljcifs/smb/SmbFile;

    .line 220
    iget v2, v2, Ljcifs/smb/SmbFile;->type:I

    .line 222
    if-ne v2, v9, :cond_ea

    .line 224
    invoke-virtual {v0}, Ljcifs/smb/SmbException;->getNtStatus()I

    .line 227
    move-result v2

    .line 228
    const v3, -0x3ffffeb5  # -2.000079f

    .line 231
    if-ne v2, v3, :cond_ea

    .line 233
    const/4 v0, -0x1

    .line 234
    return v0

    .line 235
    :cond_ea
    invoke-virtual {v1, v0}, Ljcifs/smb/SmbFileInputStream;->seToIoe(Ljcifs/smb/SmbException;)Ljava/io/IOException;

    .line 238
    move-result-object v0

    .line 239
    throw v0

    .line 240
    :cond_ef
    new-instance v0, Ljava/io/IOException;

    .line 242
    const-string v2, "Bad file descriptor"

    .line 244
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 247
    throw v0
.end method

.method public seToIoe(Ljcifs/smb/SmbException;)Ljava/io/IOException;
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljcifs/smb/SmbException;->getRootCause()Ljava/lang/Throwable;

    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ljcifs/util/transport/TransportException;

    .line 7
    if-eqz v1, :cond_f

    .line 9
    move-object p1, v0

    .line 10
    check-cast p1, Ljcifs/util/transport/TransportException;

    .line 12
    invoke-virtual {p1}, Ljcifs/util/transport/TransportException;->getRootCause()Ljava/lang/Throwable;

    .line 15
    move-result-object v0

    .line 16
    :cond_f
    instance-of v1, v0, Ljava/lang/InterruptedException;

    .line 18
    if-eqz v1, :cond_1f

    .line 20
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-direct {p1, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 32
    :cond_1f
    return-object p1
.end method

.method public skip(J)J
    .registers 6

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p1, v0

    .line 5
    if-lez v2, :cond_c

    .line 7
    iget-wide v0, p0, Ljcifs/smb/SmbFileInputStream;->fp:J

    .line 9
    add-long/2addr v0, p1

    .line 10
    iput-wide v0, p0, Ljcifs/smb/SmbFileInputStream;->fp:J

    .line 12
    return-wide p1

    .line 13
    :cond_c
    return-wide v0
.end method
