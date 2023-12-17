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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10b8

    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->max_xmit:I

    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->max_recv:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    return-void
.end method

.method public static getHandle(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)Ljcifs/dcerpc/DcerpcHandle;
    .registers 4

    const-string v0, "ncacn_np:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljcifs/dcerpc/DcerpcPipeHandle;

    invoke-direct {v0, p0, p1}, Ljcifs/dcerpc/DcerpcPipeHandle;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V

    return-object v0

    :cond_e
    new-instance p1, Ljcifs/dcerpc/DcerpcException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DCERPC transport not supported: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parseBinding(Ljava/lang/String;)Ljcifs/dcerpc/DcerpcBinding;
    .registers 14

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    move-object v6, v5

    move-object v7, v6

    move v3, v2

    move v4, v3

    :cond_b
    aget-char v8, v0, v2

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eqz v3, :cond_65

    const/4 v11, 0x2

    if-eq v3, v10, :cond_40

    if-eq v3, v11, :cond_48

    if-eq v3, v9, :cond_1a

    array-length v2, v0

    goto :goto_71

    :cond_1a
    const/16 v9, 0x3d

    if-ne v8, v9, :cond_27

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_44

    :cond_27
    const/16 v9, 0x2c

    if-eq v8, v9, :cond_2f

    const/16 v9, 0x5d

    if-ne v8, v9, :cond_71

    :cond_2f
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    if-nez v7, :cond_3b

    const-string v7, "endpoint"

    :cond_3b
    invoke-virtual {v6, v7, v8}, Ljcifs/dcerpc/DcerpcBinding;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v7, v1

    goto :goto_71

    :cond_40
    const/16 v12, 0x5c

    if-ne v8, v12, :cond_47

    :goto_44
    add-int/lit8 v4, v2, 0x1

    goto :goto_71

    :cond_47
    move v3, v11

    :cond_48
    const/16 v11, 0x5b

    if-ne v8, v11, :cond_71

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    new-instance v6, Ljcifs/dcerpc/DcerpcBinding;

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v5, v3}, Ljcifs/dcerpc/DcerpcBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    move v4, v3

    move v3, v9

    goto :goto_71

    :cond_65
    const/16 v9, 0x3a

    if-ne v8, v9, :cond_71

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v2, 0x1

    move v4, v3

    move v3, v10

    :cond_71
    :goto_71
    add-int/2addr v2, v10

    array-length v8, v0

    if-lt v2, v8, :cond_b

    if-eqz v6, :cond_7c

    iget-object v0, v6, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    if-eqz v0, :cond_7c

    return-object v6

    :cond_7c
    new-instance v0, Ljcifs/dcerpc/DcerpcException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid binding URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bind()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    new-instance v0, Ljcifs/dcerpc/DcerpcBind;

    iget-object v1, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    invoke-direct {v0, v1, p0}, Ljcifs/dcerpc/DcerpcBind;-><init>(Ljcifs/dcerpc/DcerpcBinding;Ljcifs/dcerpc/DcerpcHandle;)V

    invoke-virtual {p0, v0}, Ljcifs/dcerpc/DcerpcHandle;->sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_12
    .catchall {:try_start_2 .. :try_end_e} :catchall_10

    :try_start_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    goto :goto_17

    :catch_12
    move-exception v0

    const/4 v1, 0x0

    iput v1, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    throw v0

    :goto_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_10

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

    instance-of v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;

    if-eqz v0, :cond_e

    move-object v0, p0

    check-cast v0, Ljcifs/dcerpc/DcerpcPipeHandle;

    iget-object v0, v0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .registers 2

    instance-of v0, p0, Ljcifs/dcerpc/DcerpcPipeHandle;

    if-eqz v0, :cond_e

    move-object v0, p0

    check-cast v0, Ljcifs/dcerpc/DcerpcPipeHandle;

    iget-object v0, v0, Ljcifs/dcerpc/DcerpcPipeHandle;->pipe:Ljcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getServer()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendrecv(Ljcifs/dcerpc/DcerpcMessage;)V
    .registers 14

    iget v0, p0, Ljcifs/dcerpc/DcerpcHandle;->state:I

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ljcifs/dcerpc/DcerpcHandle;->bind()V

    :cond_7
    invoke-static {}, Ljcifs/smb/BufferCache;->getBuffer()[B

    move-result-object v0

    :try_start_b
    new-instance v1, Ljcifs/dcerpc/ndr/NdrBuffer;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    const/4 v3, 0x3

    iput v3, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    sget v4, Ljcifs/dcerpc/DcerpcHandle;->call_id:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Ljcifs/dcerpc/DcerpcHandle;->call_id:I

    iput v4, p1, Ljcifs/dcerpc/DcerpcMessage;->call_id:I

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/DcerpcMessage;->encode(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget-object v4, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    if-eqz v4, :cond_2b

    invoke-virtual {v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    iget-object v4, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    invoke-interface {v4, v1}, Ljcifs/dcerpc/DcerpcSecurityProvider;->wrap(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_2b
    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->getLength()I

    move-result v4

    const/16 v5, 0x18

    sub-int/2addr v4, v5

    const/4 v6, 0x1

    move v7, v2

    :goto_34
    const/4 v8, 0x2

    if-lt v7, v4, :cond_ba

    invoke-virtual {p0, v0, v6}, Ljcifs/dcerpc/DcerpcHandle;->doReceiveFragment([BZ)V

    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v4

    invoke-virtual {v1, v4}, Ljcifs/dcerpc/ndr/NdrBuffer;->setLength(I)V

    iget-object v4, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    if-eqz v4, :cond_50

    invoke-interface {v4, v1}, Ljcifs/dcerpc/DcerpcSecurityProvider;->unwrap(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_50
    invoke-virtual {v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/DcerpcMessage;->decode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget v1, p1, Ljcifs/dcerpc/DcerpcMessage;->ptype:I

    if-ne v1, v8, :cond_63

    invoke-virtual {p1, v8}, Ljcifs/dcerpc/DcerpcMessage;->isFlagSet(I)Z

    move-result v1

    if-nez v1, :cond_63

    iget v1, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    goto :goto_64

    :cond_63
    move v1, v5

    :goto_64
    const/4 v4, 0x0

    move-object v7, v4

    :goto_66
    invoke-virtual {p1, v8}, Ljcifs/dcerpc/DcerpcMessage;->isFlagSet(I)Z

    move-result v9

    if-eqz v9, :cond_7f

    new-instance v1, Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-direct {v1, v0, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/DcerpcMessage;->decode(Ljcifs/dcerpc/ndr/NdrBuffer;)V
    :try_end_74
    .catchall {:try_start_b .. :try_end_74} :catchall_103

    invoke-static {v0}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcMessage;->getResult()Ljcifs/dcerpc/DcerpcException;

    move-result-object p1

    if-nez p1, :cond_7e

    return-void

    :cond_7e
    throw p1

    :cond_7f
    if-nez v4, :cond_8a

    :try_start_81
    iget v4, p0, Ljcifs/dcerpc/DcerpcHandle;->max_recv:I

    new-array v4, v4, [B

    new-instance v7, Ljcifs/dcerpc/ndr/NdrBuffer;

    invoke-direct {v7, v4, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    :cond_8a
    invoke-virtual {p0, v4, v6}, Ljcifs/dcerpc/DcerpcHandle;->doReceiveFragment([BZ)V

    invoke-virtual {v7}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    invoke-virtual {v7, v3}, Ljcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    invoke-virtual {v7}, Ljcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v9

    invoke-virtual {v7, v9}, Ljcifs/dcerpc/ndr/NdrBuffer;->setLength(I)V

    iget-object v9, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    if-eqz v9, :cond_a1

    invoke-interface {v9, v7}, Ljcifs/dcerpc/DcerpcSecurityProvider;->unwrap(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    :cond_a1
    invoke-virtual {v7}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    invoke-virtual {p1, v7}, Ljcifs/dcerpc/DcerpcMessage;->decode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget v9, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    sub-int/2addr v9, v5

    add-int v10, v1, v9

    array-length v11, v0

    if-le v10, v11, :cond_b5

    new-array v11, v10, [B

    invoke-static {v0, v2, v11, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v11

    :cond_b5
    invoke-static {v4, v5, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v10

    goto :goto_66

    :cond_ba
    sub-int v9, v4, v7

    add-int/lit8 v10, v9, 0x18

    iget v11, p0, Ljcifs/dcerpc/DcerpcHandle;->max_xmit:I

    if-le v10, v11, :cond_cb

    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    and-int/lit8 v8, v8, -0x3

    iput v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    add-int/lit8 v9, v11, -0x18

    goto :goto_d3

    :cond_cb
    iget v6, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    or-int/2addr v6, v8

    iput v6, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    iput v9, p1, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    move v6, v2

    :goto_d3
    add-int/lit8 v8, v9, 0x18

    iput v8, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    if-lez v7, :cond_df

    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    and-int/lit8 v8, v8, -0x2

    iput v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    :cond_df
    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->flags:I

    and-int/2addr v8, v3

    if-eq v8, v3, :cond_fb

    iput v7, v1, Ljcifs/dcerpc/ndr/NdrBuffer;->start:I

    invoke-virtual {v1}, Ljcifs/dcerpc/ndr/NdrBuffer;->reset()V

    invoke-virtual {p1, v1}, Ljcifs/dcerpc/DcerpcMessage;->encode_header(Ljcifs/dcerpc/ndr/NdrBuffer;)V

    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    invoke-virtual {v1, v8}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    invoke-virtual {v1, v2}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    invoke-virtual {p1}, Ljcifs/dcerpc/DcerpcMessage;->getOpnum()I

    move-result v8

    invoke-virtual {v1, v8}, Ljcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    :cond_fb
    iget v8, p1, Ljcifs/dcerpc/DcerpcMessage;->length:I

    invoke-virtual {p0, v0, v7, v8, v6}, Ljcifs/dcerpc/DcerpcHandle;->doSendFragment([BIIZ)V
    :try_end_100
    .catchall {:try_start_81 .. :try_end_100} :catchall_103

    add-int/2addr v7, v9

    goto/16 :goto_34

    :catchall_103
    move-exception p1

    invoke-static {v0}, Ljcifs/smb/BufferCache;->releaseBuffer([B)V

    throw p1
.end method

.method public setDcerpcSecurityProvider(Ljcifs/dcerpc/DcerpcSecurityProvider;)V
    .registers 2

    iput-object p1, p0, Ljcifs/dcerpc/DcerpcHandle;->securityProvider:Ljcifs/dcerpc/DcerpcSecurityProvider;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcHandle;->binding:Ljcifs/dcerpc/DcerpcBinding;

    invoke-virtual {v0}, Ljcifs/dcerpc/DcerpcBinding;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
