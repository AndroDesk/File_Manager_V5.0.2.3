.class public abstract Ljcifs/dcerpc/DcerpcHandle;
.super Ljava/lang/Object;
.source "DcerpcHandle.java"

# interfaces
.implements Ljcifs/dcerpc/DcerpcConstants;


# static fields
.field private static call_id:I = 0x1


# instance fields
.field public binding:Ljcifs/dcerpc/DcerpcBinding;

.field public max_recv:I

.field public max_xmit:I

.field public securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

.field public state:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x10b8

    .line 6
    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->max_xmit:I

    .line 8
    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->max_recv:I

    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    .line 16
    return-void
.end method

.method public static getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;
    .registers 4

    .line 1
    const-string v0, "ncacn_np:"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_e

    .line 9
    new-instance v0, Ljcifs/dcerpc/DcerpcPipeHandle;

    .line 11
    invoke-direct {v0, p0, p1}, Ljcifs/dcerpc/DcerpcPipeHandle;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 14
    return-object v0

    .line 15
    :cond_e
    new-instance p1, Ljcifs/dcerpc/DcerpcException;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "DCERPC transport not supported: "

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-direct {p1, p0}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1
.end method

.method public static parseBinding(Ljava/lang/String;)Ljcifs/dcerpc/DcerpcBinding;
    .registers 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    move-object v5, v1

    .line 8
    move-object v6, v5

    .line 9
    move-object v7, v6

    .line 10
    move v3, v2

    .line 11
    move v4, v3

    .line 12
    :cond_b
    aget-char v8, v0, v2

    .line 14
    const/4 v9, 0x5

    .line 15
    const/4 v10, 0x1

    .line 16
    if-eqz v3, :cond_65

    .line 18
    const/4 v11, 0x2

    .line 19
    if-eq v3, v10, :cond_40

    .line 21
    if-eq v3, v11, :cond_48

    .line 23
    if-eq v3, v9, :cond_1a

    .line 25
    array-length v2, v0

    .line 26
    goto :goto_71

    .line 27
    :cond_1a
    const/16 v9, 0x3d

    .line 29
    if-ne v8, v9, :cond_27

    .line 31
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 38
    move-result-object v7

    .line 39
    goto :goto_44

    .line 40
    :cond_27
    const/16 v9, 0x2c

    .line 42
    if-eq v8, v9, :cond_2f

    .line 44
    const/16 v9, 0x5d

    .line 46
    if-ne v8, v9, :cond_71

    .line 48
    :cond_2f
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    move-result-object v8

    .line 52
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 55
    move-result-object v8

    .line 56
    if-nez v7, :cond_3b

    .line 58
    const-string v7, "endpoint"

    .line 60
    :cond_3b
    invoke-virtual {v6, v7, v8}, Ljcifs/dcerpc/DcerpcBinding;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    move-object v7, v1

    .line 64
    goto :goto_71

    .line 65
    :cond_40
    const/16 v12, 0x5c

    .line 67
    if-ne v8, v12, :cond_47

    .line 69
    :goto_44
    add-int/lit8 v4, v2, 0x1

    .line 71
    goto :goto_71

    .line 72
    :cond_47
    move v3, v11

    .line 73
    :cond_48
    const/16 v11, 0x5b

    .line 75
    if-ne v8, v11, :cond_71

    .line 77
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 88
    new-instance v6, Ljcifs/dcerpc/DcerpcBinding;

    .line 90
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    invoke-direct {v6, v5, v3}, Ljcifs/dcerpc/DcerpcBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    add-int/lit8 v3, v2, 0x1

    .line 99
    move v4, v3

    .line 100
    move v3, v9

    .line 101
    goto :goto_71

    .line 102
    :cond_65
    const/16 v9, 0x3a

    .line 104
    if-ne v8, v9, :cond_71

    .line 106
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 109
    move-result-object v5

    .line 110
    add-int/lit8 v3, v2, 0x1

    .line 112
    move v4, v3

    .line 113
    move v3, v10

    .line 114
    :cond_71
    :goto_71
    add-int/2addr v2, v10

    .line 115
    array-length v8, v0

    .line 116
    if-lt v2, v8, :cond_b

    .line 118
    if-eqz v6, :cond_7c

    .line 120
    iget-object v0, v6, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    .line 122
    if-eqz v0, :cond_7c

    .line 124
    return-object v6

    .line 125
    :cond_7c
    new-instance v0, Ljcifs/dcerpc/DcerpcException;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    const-string v2, "Invalid binding URL: "

    .line 131
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object p0

    .line 141
    invoke-direct {v0, p0}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    .line 144
    throw v0
.end method


# virtual methods
.method public bind()V
    .registers 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_2
    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    .line 5
    new-instance v0, Ljcifs/dcerpc/DcerpcBind;

    .line 7
    iget-object v1, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 9
    invoke-direct {v0, v1, p0}, Ljcifs/dcerpc/DcerpcBind;-><init>(Ljcifs/dcerpc/DcerpcBinding;Ljcifs/dcerpc/DcerpcHandle;)V

    .line 12
    invoke-virtual {p0, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_12
    .catchall {:try_start_2 .. :try_end_e} :catchall_10

    .line 15
    :try_start_e
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_10
    move-exception v0

    .line 18
    goto :goto_17

    .line 19
    :catch_12
    move-exception v0

    .line 20
    const/4 v1, 0x0

    .line 21
    iput v1, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    .line 23
    throw v0

    .line 24
    :goto_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_10

    .line 25
    throw v0
.end method

.method public abstract close()V
.end method

.method public abstract doReceiveFragment([BZ)V
.end method

.method public abstract doSendFragment([BIIZ)V
.end method

.method public getPrincipal()Ljava/security/Principal;
    .registers 2

    .line 1
    instance-of v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Ljcifs/dcerpc/DcerpcPipeHandle;

    .line 8
    iget-object v0, v0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    .line 10
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getPrincipal()Ljava/security/Principal;

    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .registers 2

    .line 1
    instance-of v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Ljcifs/dcerpc/DcerpcPipeHandle;

    .line 8
    iget-object v0, v0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    .line 10
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :cond_e
    const/4 v0, 0x0

    .line 16
    return-object v0
.end method

.method public sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V
    .registers 14

    .line 1
    iget v0, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    .line 3
    if-nez v0, :cond_7

    .line 5
    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->bind()V

    .line 8
    :cond_7
    invoke-static {}, Ljcifs/smb/BufferCache;->getBuffer()[B

    .line 11
    move-result-object v0

    .line 12
    :try_start_b
    new-instance v1, Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, v0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    .line 18
    const/4 v3, 0x3

    .line 19
    iput v3, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 21
    sget v4, Ljcifs/dcerpc/DcerpcHandle;->call_id:I

    .line 23
    add-int/lit8 v5, v4, 0x1

    .line 25
    sput v5, Ljcifs/dcerpc/DcerpcHandle;->call_id:I

    .line 27
    iput v4, p1, Ljcifs/dcerpc/DcerpcMessage;->call_id:I

    .line 29
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/DcerpcMessage;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 32
    iget-object v4, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    .line 34
    if-eqz v4, :cond_2b

    .line 36
    invoke-virtual {v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 39
    iget-object v4, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    .line 41
    invoke-interface {v4, v1}, Ljcifs/dcerpc/DcerpcSecurityProvider;->wrap(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 44
    :cond_2b
    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->getLength()I

    .line 47
    move-result v4

    .line 48
    const/16 v5, 0x18

    .line 50
    sub-int/2addr v4, v5

    .line 51
    const/4 v6, 0x1

    .line 52
    move v7, v2

    .line 53
    :goto_34
    const/4 v8, 0x2

    .line 54
    if-lt v7, v4, :cond_ba

    .line 56
    invoke-virtual {p0, v0, v6}, Ljcifs/dcerpc/DcerpcHandle;->doReceiveFragment([BZ)V

    .line 59
    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    .line 62
    const/16 v3, 0x8

    .line 64
    invoke-virtual {v1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 67
    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 70
    move-result v4

    .line 71
    invoke-virtual {v1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->setLength(I)V

    .line 74
    iget-object v4, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    .line 76
    if-eqz v4, :cond_50

    .line 78
    invoke-interface {v4, v1}, Ljcifs/dcerpc/DcerpcSecurityProvider;->unwrap(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 81
    :cond_50
    invoke-virtual {v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 84
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/DcerpcMessage;->decode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 87
    iget v1, p1, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    .line 89
    if-ne v1, v8, :cond_63

    .line 91
    invoke-virtual {p1, v8}, Ljcifs/dcerpc/DcerpcMessage;->isFlagSet(I)Z

    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_63

    .line 97
    iget v1, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    .line 99
    goto :goto_64

    .line 100
    :cond_63
    move v1, v5

    .line 101
    :goto_64
    const/4 v4, 0x0

    .line 102
    move-object v7, v4

    .line 103
    :goto_66
    invoke-virtual {p1, v8}, Ljcifs/dcerpc/DcerpcMessage;->isFlagSet(I)Z

    .line 106
    move-result v9

    .line 107
    if-eqz v9, :cond_7f

    .line 109
    new-instance v1, Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 111
    invoke-direct {v1, v0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    .line 114
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/DcerpcMessage;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    :try_end_74
    .catchall {:try_start_b .. :try_end_74} :catchall_103

    .line 117
    invoke-static {v0}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    .line 120
    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcMessage;->getResult()Ljcifs/dcerpc/DcerpcException;

    .line 123
    move-result-object p1

    .line 124
    if-nez p1, :cond_7e

    .line 126
    return-void

    .line 127
    :cond_7e
    throw p1

    .line 128
    :cond_7f
    if-nez v4, :cond_8a

    .line 130
    :try_start_81
    iget v4, p0, Ljcifs/dcerpc/DcerpcHandle;->max_recv:I

    .line 132
    new-array v4, v4, [B

    .line 134
    new-instance v7, Ljcifs/dcerpc/ndr/NdrBuffer;

    .line 136
    invoke-direct {v7, v4, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    .line 139
    :cond_8a
    invoke-virtual {p0, v4, v6}, Ljcifs/dcerpc/DcerpcHandle;->doReceiveFragment([BZ)V

    .line 142
    invoke-virtual {v7}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    .line 145
    invoke-virtual {v7, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 148
    invoke-virtual {v7}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    .line 151
    move-result v9

    .line 152
    invoke-virtual {v7, v9}, Ljcifs/dcerpc/ndr/NdrBuffer;->setLength(I)V

    .line 155
    iget-object v9, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    .line 157
    if-eqz v9, :cond_a1

    .line 159
    invoke-interface {v9, v7}, Ljcifs/dcerpc/DcerpcSecurityProvider;->unwrap(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 162
    :cond_a1
    invoke-virtual {v7}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    .line 165
    invoke-virtual {p1, v7}, Ljcifs/dcerpc/DcerpcMessage;->decode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 168
    iget v9, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    .line 170
    sub-int/2addr v9, v5

    .line 171
    add-int v10, v1, v9

    .line 173
    array-length v11, v0

    .line 174
    if-le v10, v11, :cond_b5

    .line 176
    new-array v11, v10, [B

    .line 178
    invoke-static {v0, v2, v11, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    move-object v0, v11

    .line 182
    :cond_b5
    invoke-static {v4, v5, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    move v1, v10

    .line 186
    goto :goto_66

    .line 187
    :cond_ba
    sub-int v9, v4, v7

    .line 189
    add-int/lit8 v10, v9, 0x18

    .line 191
    iget v11, p0, Ljcifs/dcerpc/DcerpcHandle;->max_xmit:I

    .line 193
    if-le v10, v11, :cond_cb

    .line 195
    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 197
    and-int/lit8 v8, v8, -0x3

    .line 199
    iput v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 201
    add-int/lit8 v9, v11, -0x18

    .line 203
    goto :goto_d3

    .line 204
    :cond_cb
    iget v6, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 206
    or-int/2addr v6, v8

    .line 207
    iput v6, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 209
    iput v9, p1, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    .line 211
    move v6, v2

    .line 212
    :goto_d3
    add-int/lit8 v8, v9, 0x18

    .line 214
    iput v8, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    .line 216
    if-lez v7, :cond_df

    .line 218
    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 220
    and-int/lit8 v8, v8, -0x2

    .line 222
    iput v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 224
    :cond_df
    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    .line 226
    and-int/2addr v8, v3

    .line 227
    if-eq v8, v3, :cond_fb

    .line 229
    iput v7, v1, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    .line 231
    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    .line 234
    invoke-virtual {p1, v1}, Ljcifs/dcerpc/DcerpcMessage;->encode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    .line 237
    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    .line 239
    invoke-virtual {v1, v8}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 242
    invoke-virtual {v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 245
    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcMessage;->getOpnum()I

    .line 248
    move-result v8

    .line 249
    invoke-virtual {v1, v8}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 252
    :cond_fb
    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    .line 254
    invoke-virtual {p0, v0, v7, v8, v6}, Ljcifs/dcerpc/DcerpcHandle;->doSendFragment([BIIZ)V
    :try_end_100
    .catchall {:try_start_81 .. :try_end_100} :catchall_103

    .line 257
    add-int/2addr v7, v9

    .line 258
    goto/16 :goto_34

    .line 260
    :catchall_103
    move-exception p1

    .line 261
    invoke-static {v0}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    .line 264
    throw p1
.end method

.method public setDcerpcSecurityProvider(Ljcifs/dcerpc/DcerpcSecurityProvider;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    .line 3
    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcBinding;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
