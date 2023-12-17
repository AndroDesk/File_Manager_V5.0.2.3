.class public Ljcifs/dcerpc/DcerpcPipeHandle;
.super Ljcifs/dcerpc/DcerpcHandle;
.source "DcerpcPipeHandle.java"


# instance fields
.field public in:Ljcifs/smb/SmbFileInputStream;

.field public isStart:Z

.field public out:Ljcifs/smb/SmbFileOutputStream;

.field public pipe:Ljcifs/smb/SmbNamedPipe;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Ljcifs/dcerpc/DcerpcHandle;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    .line 7
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->isStart:Z

    .line 12
    invoke-static {p1}, Ljcifs/dcerpc/DcerpcHandle;->parseBinding(Ljava/lang/String;)Ljcifs/dcerpc/DcerpcBinding;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    const-string v1, "smb://"

    .line 22
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 27
    iget-object v1, v1, Ljcifs/dcerpc/DcerpcBinding;->server:Ljava/lang/String;

    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "/IPC$/"

    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 39
    iget-object v1, v1, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    .line 41
    const/4 v2, 0x6

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 55
    const-string v2, "server"

    .line 57
    invoke-virtual {v1, v2}, Ljcifs/dcerpc/DcerpcBinding;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/String;

    .line 63
    const-string v2, ""

    .line 65
    if-eqz v1, :cond_53

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    const-string v2, "&server="

    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    :cond_53
    iget-object v3, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 86
    const-string v4, "address"

    .line 88
    invoke-virtual {v3, v4}, Ljcifs/dcerpc/DcerpcBinding;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/lang/String;

    .line 94
    if-eqz v1, :cond_6e

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 98
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 102
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    const-string v2, "&address="

    .line 107
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    :cond_6e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 114
    move-result v1

    .line 115
    if-lez v1, :cond_8d

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    move-result-object p1

    .line 123
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    const-string p1, "?"

    .line 128
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 142
    :cond_8d
    new-instance v0, Ljcifs/smb/SmbNamedPipe;

    .line 144
    const v1, 0x19f0603

    .line 147
    invoke-direct {v0, p1, v1, p2}, Ljcifs/smb/SmbNamedPipe;-><init>(Ljava/lang/String;ILjcifs/smb/NtlmPasswordAuthentication;)V

    .line 150
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    .line 152
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    .line 4
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    .line 6
    if-eqz v0, :cond_a

    .line 8
    invoke-virtual {v0}, Ljcifs/smb/SmbFileOutputStream;->close()V

    .line 11
    :cond_a
    return-void
.end method

.method public doReceiveFragment([BZ)V
    .registers 7

    .line 1
    array-length v0, p1

    .line 2
    iget v1, p0, Ljcifs/dcerpc/DcerpcHandle;->max_recv:I

    .line 4
    if-lt v0, v1, :cond_66

    .line 6
    iget-boolean v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->isStart:Z

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_15

    .line 11
    if-nez p2, :cond_15

    .line 13
    iget-object p2, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    .line 15
    const/16 v0, 0x400

    .line 17
    invoke-virtual {p2, p1, v1, v0}, Ljcifs/smb/SmbFileInputStream;->read([BII)I

    .line 20
    move-result p2

    .line 21
    goto :goto_1c

    .line 22
    :cond_15
    iget-object p2, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    .line 24
    array-length v0, p1

    .line 25
    invoke-virtual {p2, p1, v1, v0}, Ljcifs/smb/SmbFileInputStream;->readDirect([BII)I

    .line 28
    move-result p2

    .line 29
    :goto_1c
    aget-byte v0, p1, v1

    .line 31
    const/4 v2, 0x5

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eq v0, v2, :cond_2f

    .line 35
    aget-byte v0, p1, v3

    .line 37
    if-nez v0, :cond_27

    .line 39
    goto :goto_2f

    .line 40
    :cond_27
    new-instance p1, Ljava/io/IOException;

    .line 42
    const-string p2, "Unexpected DCERPC PDU header"

    .line 44
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p1

    .line 48
    :cond_2f
    :goto_2f
    const/4 v0, 0x3

    .line 49
    aget-byte v0, p1, v0

    .line 51
    and-int/lit16 v0, v0, 0xff

    .line 53
    const/4 v2, 0x2

    .line 54
    and-int/2addr v0, v2

    .line 55
    if-ne v0, v2, :cond_39

    .line 57
    move v1, v3

    .line 58
    :cond_39
    iput-boolean v1, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->isStart:Z

    .line 60
    const/16 v0, 0x8

    .line 62
    invoke-static {p1, v0}, Ljcifs/util/Encdec;->dec_uint16le([BI)S

    .line 65
    move-result v0

    .line 66
    iget v1, p0, Ljcifs/dcerpc/DcerpcHandle;->max_recv:I

    .line 68
    if-gt v0, v1, :cond_52

    .line 70
    :goto_45
    if-lt p2, v0, :cond_48

    .line 72
    return-void

    .line 73
    :cond_48
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    .line 75
    sub-int v2, v0, p2

    .line 77
    invoke-virtual {v1, p1, p2, v2}, Ljcifs/smb/SmbFileInputStream;->readDirect([BII)I

    .line 80
    move-result v1

    .line 81
    add-int/2addr p2, v1

    .line 82
    goto :goto_45

    .line 83
    :cond_52
    new-instance p1, Ljava/io/IOException;

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 87
    const-string v1, "Unexpected fragment length: "

    .line 89
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p2

    .line 99
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 102
    throw p1

    .line 103
    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 105
    const-string p2, "buffer too small"

    .line 107
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    throw p1
.end method

.method public doSendFragment([BIIZ)V
    .registers 6

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    invoke-virtual {v0}, Ljcifs/smb/SmbFileOutputStream;->isOpen()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_b

    .line 11
    goto :goto_13

    .line 12
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 14
    const-string p2, "DCERPC pipe is no longer open"

    .line 16
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p1

    .line 20
    :cond_13
    :goto_13
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    .line 22
    if-nez v0, :cond_21

    .line 24
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    .line 26
    invoke-virtual {v0}, Ljcifs/smb/SmbNamedPipe;->getNamedPipeInputStream()Ljava/io/InputStream;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljcifs/smb/SmbFileInputStream;

    .line 32
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->in:Ljcifs/smb/SmbFileInputStream;

    .line 34
    :cond_21
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    .line 36
    if-nez v0, :cond_2f

    .line 38
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    .line 40
    invoke-virtual {v0}, Ljcifs/smb/SmbNamedPipe;->getNamedPipeOutputStream()Ljava/io/OutputStream;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljcifs/smb/SmbFileOutputStream;

    .line 46
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    .line 48
    :cond_2f
    if-eqz p4, :cond_38

    .line 50
    iget-object p4, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    .line 52
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p4, p1, p2, p3, v0}, Ljcifs/smb/SmbFileOutputStream;->writeDirect([BIII)V

    .line 56
    return-void

    .line 57
    :cond_38
    iget-object p4, p0, Ljcifs/dcerpc/DcerpcPipeHandle;->out:Ljcifs/smb/SmbFileOutputStream;

    .line 59
    invoke-virtual {p4, p1, p2, p3}, Ljcifs/smb/SmbFileOutputStream;->write([BII)V

    .line 62
    return-void
.end method
