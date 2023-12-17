.class public Ljcifs/smb/SmbNamedPipe;
.super Ljcifs/smb/SmbFile;
.source "SmbNamedPipe.java"


# static fields
.field public static final PIPE_TYPE_CALL:I = 0x100

.field public static final PIPE_TYPE_DCE_TRANSACT:I = 0x600

.field public static final PIPE_TYPE_RDONLY:I = 0x1

.field public static final PIPE_TYPE_RDWR:I = 0x3

.field public static final PIPE_TYPE_TRANSACT:I = 0x200

.field public static final PIPE_TYPE_WRONLY:I = 0x2


# instance fields
.field public pipeIn:Ljava/io/InputStream;

.field public pipeOut:Ljava/io/OutputStream;

.field public pipeType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 2
    iput p2, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 p1, 0x10

    .line 3
    iput p1, p0, Ljcifs/smb/SmbFile;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .registers 4

    .line 4
    invoke-direct {p0, p1, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 5
    iput p2, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 p1, 0x10

    .line 6
    iput p1, p0, Ljcifs/smb/SmbFile;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .registers 4

    .line 7
    invoke-direct {p0, p1, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 8
    iput p2, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 p1, 0x10

    .line 9
    iput p1, p0, Ljcifs/smb/SmbFile;->type:I

    return-void
.end method


# virtual methods
.method public getNamedPipeInputStream()Ljava/io/InputStream;
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    .line 3
    if-nez v0, :cond_29

    .line 5
    iget v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    .line 7
    and-int/lit16 v1, v0, 0x100

    .line 9
    const/16 v2, 0x100

    .line 11
    if-eq v1, v2, :cond_22

    .line 13
    const/16 v1, 0x200

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_12

    .line 18
    goto :goto_22

    .line 19
    :cond_12
    new-instance v0, Ljcifs/smb/SmbFileInputStream;

    .line 21
    iget v1, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    .line 23
    const v2, -0xff01

    .line 26
    and-int/2addr v1, v2

    .line 27
    or-int/lit8 v1, v1, 0x20

    .line 29
    invoke-direct {v0, p0, v1}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;I)V

    .line 32
    iput-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    .line 34
    goto :goto_29

    .line 35
    :cond_22
    :goto_22
    new-instance v0, Ljcifs/smb/TransactNamedPipeInputStream;

    .line 37
    invoke-direct {v0, p0}, Ljcifs/smb/TransactNamedPipeInputStream;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    .line 40
    iput-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    .line 42
    :cond_29
    :goto_29
    iget-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    .line 44
    return-object v0
.end method

.method public getNamedPipeOutputStream()Ljava/io/OutputStream;
    .registers 5

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    .line 3
    if-nez v0, :cond_2a

    .line 5
    iget v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    .line 7
    and-int/lit16 v1, v0, 0x100

    .line 9
    const/16 v2, 0x100

    .line 11
    if-eq v1, v2, :cond_23

    .line 13
    const/16 v1, 0x200

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_12

    .line 18
    goto :goto_23

    .line 19
    :cond_12
    new-instance v0, Ljcifs/smb/SmbFileOutputStream;

    .line 21
    const/4 v1, 0x0

    .line 22
    iget v2, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    .line 24
    const v3, -0xff01

    .line 27
    and-int/2addr v2, v3

    .line 28
    or-int/lit8 v2, v2, 0x20

    .line 30
    invoke-direct {v0, p0, v1, v2}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;ZI)V

    .line 33
    iput-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    .line 35
    goto :goto_2a

    .line 36
    :cond_23
    :goto_23
    new-instance v0, Ljcifs/smb/TransactNamedPipeOutputStream;

    .line 38
    invoke-direct {v0, p0}, Ljcifs/smb/TransactNamedPipeOutputStream;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    .line 41
    iput-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    .line 43
    :cond_2a
    :goto_2a
    iget-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    .line 45
    return-object v0
.end method
