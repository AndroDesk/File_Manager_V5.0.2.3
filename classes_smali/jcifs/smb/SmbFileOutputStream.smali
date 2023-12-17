.class public Ljcifs/smb/SmbFileOutputStream;
.super Ljava/io/OutputStream;
.source "SmbFileOutputStream.java"


# instance fields
.field private access:I

.field private append:Z

.field private file:Ljcifs/smb/SmbFile;

.field private fp:J

.field private openFlags:I

.field private req:Ljcifs/smb/SmbComWrite;

.field private reqx:Ljcifs/smb/SmbComWriteAndX;

.field private rsp:Ljcifs/smb/SmbComWriteResponse;

.field private rspx:Ljcifs/smb/SmbComWriteAndXResponse;

.field private tmp:[B

.field private useNTSmbs:Z

.field private writeSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 6

    .line 5
    new-instance v0, Ljcifs/smb/SmbFile;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;I)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    .line 3
    new-instance v0, Ljcifs/smb/SmbFile;

    invoke-direct {v0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;Z)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;)V
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;Z)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;Z)V
    .registers 4

    if-eqz p2, :cond_5

    const/16 v0, 0x16

    goto :goto_7

    :cond_5
    const/16 v0, 0x52

    .line 4
    :goto_7
    invoke-direct {p0, p1, p2, v0}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;ZI)V

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbFile;ZI)V
    .registers 6

    .line 6
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 7
    iput-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->tmp:[B

    .line 8
    iput-object p1, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    .line 9
    iput-boolean p2, p0, Ljcifs/smb/SmbFileOutputStream;->append:Z

    .line 10
    iput p3, p0, Ljcifs/smb/SmbFileOutputStream;->openFlags:I

    ushr-int/lit8 v0, p3, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 11
    iput v0, p0, Ljcifs/smb/SmbFileOutputStream;->access:I

    if-eqz p2, :cond_26

    .line 12
    :try_start_18
    invoke-virtual {p1}, Ljcifs/smb/SmbFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J
    :try_end_1e
    .catch Ljcifs/smb/SmbAuthException; {:try_start_18 .. :try_end_1e} :catch_24
    .catch Ljcifs/smb/SmbException; {:try_start_18 .. :try_end_1e} :catch_1f

    goto :goto_26

    :catch_1f
    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    goto :goto_26

    :catch_24
    move-exception p1

    .line 14
    throw p1

    .line 15
    :cond_26
    :goto_26
    instance-of p2, p1, Ljcifs/smb/SmbNamedPipe;

    if-eqz p2, :cond_5a

    iget-object p2, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const-string v0, "\\pipe\\"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5a

    .line 16
    iget-object p2, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    .line 17
    new-instance p2, Ljcifs/smb/TransWaitNamedPipe;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\pipe"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljcifs/smb/TransWaitNamedPipe;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljcifs/smb/TransWaitNamedPipeResponse;

    invoke-direct {v0}, Ljcifs/smb/TransWaitNamedPipeResponse;-><init>()V

    .line 19
    invoke-virtual {p1, p2, v0}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 20
    :cond_5a
    iget p2, p0, Ljcifs/smb/SmbFileOutputStream;->access:I

    or-int/lit8 p2, p2, 0x2

    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-virtual {p1, p3, p2, v0, v1}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 21
    iget p2, p0, Ljcifs/smb/SmbFileOutputStream;->openFlags:I

    and-int/lit8 p2, p2, -0x51

    iput p2, p0, Ljcifs/smb/SmbFileOutputStream;->openFlags:I

    .line 22
    iget-object p1, p1, Ljcifs/smb/SmbFile;->tree:Ljcifs/smb/SmbTree;

    iget-object p1, p1, Ljcifs/smb/SmbTree;->session:Ljcifs/smb/SmbSession;

    iget-object p1, p1, Ljcifs/smb/SmbSession;->transport:Ljcifs/smb/SmbTransport;

    iget p2, p1, Ljcifs/smb/SmbTransport;->snd_buf_size:I

    add-int/lit8 p2, p2, -0x46

    iput p2, p0, Ljcifs/smb/SmbFileOutputStream;->writeSize:I

    const/16 p2, 0x10

    .line 23
    invoke-virtual {p1, p2}, Ljcifs/smb/SmbTransport;->hasCapability(I)Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/smb/SmbFileOutputStream;->useNTSmbs:Z

    if-eqz p1, :cond_8f

    .line 24
    new-instance p1, Ljcifs/smb/SmbComWriteAndX;

    invoke-direct {p1}, Ljcifs/smb/SmbComWriteAndX;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbFileOutputStream;->reqx:Ljcifs/smb/SmbComWriteAndX;

    .line 25
    new-instance p1, Ljcifs/smb/SmbComWriteAndXResponse;

    invoke-direct {p1}, Ljcifs/smb/SmbComWriteAndXResponse;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbFileOutputStream;->rspx:Ljcifs/smb/SmbComWriteAndXResponse;

    goto :goto_9d

    .line 26
    :cond_8f
    new-instance p1, Ljcifs/smb/SmbComWrite;

    invoke-direct {p1}, Ljcifs/smb/SmbComWrite;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbFileOutputStream;->req:Ljcifs/smb/SmbComWrite;

    .line 27
    new-instance p1, Ljcifs/smb/SmbComWriteResponse;

    invoke-direct {p1}, Ljcifs/smb/SmbComWriteResponse;-><init>()V

    iput-object p1, p0, Ljcifs/smb/SmbFileOutputStream;->rsp:Ljcifs/smb/SmbComWriteResponse;

    :goto_9d
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    .line 3
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->close()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->tmp:[B

    .line 9
    return-void
.end method

.method public ensureOpen()V
    .registers 6

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    .line 3
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isOpen()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_22

    .line 9
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    .line 11
    iget v1, p0, Ljcifs/smb/SmbFileOutputStream;->openFlags:I

    .line 13
    iget v2, p0, Ljcifs/smb/SmbFileOutputStream;->access:I

    .line 15
    or-int/lit8 v2, v2, 0x2

    .line 17
    const/16 v3, 0x80

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v0, v1, v2, v3, v4}, Ljcifs/smb/SmbFile;->open(IIII)V

    .line 23
    iget-boolean v0, p0, Ljcifs/smb/SmbFileOutputStream;->append:Z

    .line 25
    if-eqz v0, :cond_22

    .line 27
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    .line 29
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->length()J

    .line 32
    move-result-wide v0

    .line 33
    iput-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    .line 35
    :cond_22
    return-void
.end method

.method public isOpen()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    .line 3
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isOpen()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public write(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->tmp:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Ljcifs/smb/SmbFileOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .registers 4

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljcifs/smb/SmbFileOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 8

    .line 4
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    instance-of v1, v0, Ljcifs/smb/SmbNamedPipe;

    if-eqz v1, :cond_2d

    .line 5
    new-instance v1, Ljcifs/smb/TransWaitNamedPipe;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\pipe"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    iget-object v3, v3, Ljcifs/smb/SmbFile;->unc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljcifs/smb/TransWaitNamedPipe;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljcifs/smb/TransWaitNamedPipeResponse;

    invoke-direct {v2}, Ljcifs/smb/TransWaitNamedPipeResponse;-><init>()V

    .line 7
    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :cond_2d
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, p2, p3, v0}, Ljcifs/smb/SmbFileOutputStream;->writeDirect([BIII)V

    return-void
.end method

.method public writeDirect([BIII)V
    .registers 15

    .line 1
    if-gtz p3, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->tmp:[B

    .line 6
    if-eqz v0, :cond_b3

    .line 8
    invoke-virtual {p0}, Ljcifs/smb/SmbFileOutputStream;->ensureOpen()V

    .line 11
    sget v0, Ljcifs/smb/SmbFile;->O_RDONLY:I

    .line 13
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 15
    const/4 v1, 0x4

    .line 16
    if-lt v0, v1, :cond_38

    .line 18
    sget-object v0, Ljcifs/smb/SmbFile;->log:Ljcifs/util/LogStream;

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    const-string v2, "write: fid="

    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    .line 29
    iget v2, v2, Ljcifs/smb/SmbFile;->fid:I

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, ",off="

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    const-string v2, ",len="

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    :cond_38
    iget v0, p0, Ljcifs/smb/SmbFileOutputStream;->writeSize:I

    .line 59
    if-le p3, v0, :cond_3d

    .line 61
    goto :goto_3e

    .line 62
    :cond_3d
    move v0, p3

    .line 63
    :goto_3e
    iget-boolean v1, p0, Ljcifs/smb/SmbFileOutputStream;->useNTSmbs:Z

    .line 65
    if-eqz v1, :cond_8a

    .line 67
    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->reqx:Ljcifs/smb/SmbComWriteAndX;

    .line 69
    iget-object v1, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    .line 71
    iget v3, v1, Ljcifs/smb/SmbFile;->fid:I

    .line 73
    iget-wide v4, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    .line 75
    sub-int v6, p3, v0

    .line 77
    move-object v7, p1

    .line 78
    move v8, p2

    .line 79
    move v9, v0

    .line 80
    invoke-virtual/range {v2 .. v9}, Ljcifs/smb/SmbComWriteAndX;->setParam(IJI[BII)V

    .line 83
    and-int/lit8 v1, p4, 0x1

    .line 85
    if-eqz v1, :cond_6c

    .line 87
    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->reqx:Ljcifs/smb/SmbComWriteAndX;

    .line 89
    iget-object v1, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    .line 91
    iget v3, v1, Ljcifs/smb/SmbFile;->fid:I

    .line 93
    iget-wide v4, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    .line 95
    move v6, p3

    .line 96
    move-object v7, p1

    .line 97
    move v8, p2

    .line 98
    move v9, v0

    .line 99
    invoke-virtual/range {v2 .. v9}, Ljcifs/smb/SmbComWriteAndX;->setParam(IJI[BII)V

    .line 102
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->reqx:Ljcifs/smb/SmbComWriteAndX;

    .line 104
    const/16 v1, 0x8

    .line 106
    iput v1, v0, Ljcifs/smb/SmbComWriteAndX;->writeMode:I

    .line 108
    goto :goto_71

    .line 109
    :cond_6c
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->reqx:Ljcifs/smb/SmbComWriteAndX;

    .line 111
    const/4 v1, 0x0

    .line 112
    iput v1, v0, Ljcifs/smb/SmbComWriteAndX;->writeMode:I

    .line 114
    :goto_71
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    .line 116
    iget-object v1, p0, Ljcifs/smb/SmbFileOutputStream;->reqx:Ljcifs/smb/SmbComWriteAndX;

    .line 118
    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->rspx:Ljcifs/smb/SmbComWriteAndXResponse;

    .line 120
    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 123
    iget-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    .line 125
    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->rspx:Ljcifs/smb/SmbComWriteAndXResponse;

    .line 127
    iget-wide v2, v2, Ljcifs/smb/SmbComWriteAndXResponse;->count:J

    .line 129
    add-long/2addr v0, v2

    .line 130
    iput-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    .line 132
    int-to-long v0, p3

    .line 133
    sub-long/2addr v0, v2

    .line 134
    long-to-int p3, v0

    .line 135
    int-to-long v0, p2

    .line 136
    add-long/2addr v0, v2

    .line 137
    long-to-int p2, v0

    .line 138
    goto :goto_b0

    .line 139
    :cond_8a
    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->req:Ljcifs/smb/SmbComWrite;

    .line 141
    iget-object v1, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    .line 143
    iget v3, v1, Ljcifs/smb/SmbFile;->fid:I

    .line 145
    iget-wide v4, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    .line 147
    sub-int v6, p3, v0

    .line 149
    move-object v7, p1

    .line 150
    move v8, p2

    .line 151
    move v9, v0

    .line 152
    invoke-virtual/range {v2 .. v9}, Ljcifs/smb/SmbComWrite;->setParam(IJI[BII)V

    .line 155
    iget-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    .line 157
    iget-object v2, p0, Ljcifs/smb/SmbFileOutputStream;->rsp:Ljcifs/smb/SmbComWriteResponse;

    .line 159
    iget-wide v3, v2, Ljcifs/smb/SmbComWriteResponse;->count:J

    .line 161
    add-long/2addr v0, v3

    .line 162
    iput-wide v0, p0, Ljcifs/smb/SmbFileOutputStream;->fp:J

    .line 164
    int-to-long v0, p3

    .line 165
    sub-long/2addr v0, v3

    .line 166
    long-to-int p3, v0

    .line 167
    int-to-long v0, p2

    .line 168
    add-long/2addr v0, v3

    .line 169
    long-to-int p2, v0

    .line 170
    iget-object v0, p0, Ljcifs/smb/SmbFileOutputStream;->file:Ljcifs/smb/SmbFile;

    .line 172
    iget-object v1, p0, Ljcifs/smb/SmbFileOutputStream;->req:Ljcifs/smb/SmbComWrite;

    .line 174
    invoke-virtual {v0, v1, v2}, Ljcifs/smb/SmbFile;->send(Ljcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 177
    :goto_b0
    if-gtz p3, :cond_38

    .line 179
    return-void

    .line 180
    :cond_b3
    new-instance p1, Ljava/io/IOException;

    .line 182
    const-string p2, "Bad file descriptor"

    .line 184
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 187
    throw p1
.end method
