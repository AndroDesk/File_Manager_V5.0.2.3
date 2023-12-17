.class public Ljcifs/smb/SmbNamedPipe;
.super Ljcifs/smb/SmbFile;
.source "SmbNamedPipe.java"


# static fields
.field public static final PIPE_TYPE_CALL:I

.field public static final PIPE_TYPE_DCE_TRANSACT:I

.field public static final PIPE_TYPE_RDONLY:I

.field public static final PIPE_TYPE_RDWR:I

.field public static final PIPE_TYPE_TRANSACT:I

.field public static final PIPE_TYPE_WRONLY:I


# instance fields
.field public pipeIn:Ljava/io/InputStream;

.field public pipeOut:Ljava/io/OutputStream;

.field public pipeType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92c96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbNamedPipe;->PIPE_TYPE_CALL:I

    const v0, 0x92b96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbNamedPipe;->PIPE_TYPE_DCE_TRANSACT:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbNamedPipe;->PIPE_TYPE_RDONLY:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbNamedPipe;->PIPE_TYPE_RDWR:I

    const v0, 0x92f96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbNamedPipe;->PIPE_TYPE_TRANSACT:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbNamedPipe;->PIPE_TYPE_WRONLY:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    iput p2, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 p1, 0x10

    iput p1, p0, Ljcifs/smb/SmbFile;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .registers 4

    invoke-direct {p0, p1, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;Ljcifs/smb/NtlmPasswordAuthentication;)V

    iput p2, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 p1, 0x10

    iput p1, p0, Ljcifs/smb/SmbFile;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;ILjcifs/smb/NtlmPasswordAuthentication;)V
    .registers 4

    invoke-direct {p0, p1, p3}, Ljcifs/smb/SmbFile;-><init>(Ljava/net/URL;Ljcifs/smb/NtlmPasswordAuthentication;)V

    iput p2, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const/16 p1, 0x10

    iput p1, p0, Ljcifs/smb/SmbFile;->type:I

    return-void
.end method


# virtual methods
.method public getNamedPipeInputStream()Ljava/io/InputStream;
    .registers 4

    iget-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    if-nez v0, :cond_29

    iget v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    and-int/lit16 v1, v0, 0x100

    const/16 v2, 0x100

    if-eq v1, v2, :cond_22

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    goto :goto_22

    :cond_12
    new-instance v0, Ljcifs/smb/SmbFileInputStream;

    iget v1, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const v2, -0xff01

    and-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x20

    invoke-direct {v0, p0, v1}, Ljcifs/smb/SmbFileInputStream;-><init>(Ljcifs/smb/SmbFile;I)V

    iput-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    goto :goto_29

    :cond_22
    :goto_22
    new-instance v0, Ljcifs/smb/TransactNamedPipeInputStream;

    invoke-direct {v0, p0}, Ljcifs/smb/TransactNamedPipeInputStream;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    iput-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    :cond_29
    :goto_29
    iget-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getNamedPipeOutputStream()Ljava/io/OutputStream;
    .registers 5

    iget-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    if-nez v0, :cond_2a

    iget v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    and-int/lit16 v1, v0, 0x100

    const/16 v2, 0x100

    if-eq v1, v2, :cond_23

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    goto :goto_23

    :cond_12
    new-instance v0, Ljcifs/smb/SmbFileOutputStream;

    const/4 v1, 0x0

    iget v2, p0, Ljcifs/smb/SmbNamedPipe;->pipeType:I

    const v3, -0xff01

    and-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x20

    invoke-direct {v0, p0, v1, v2}, Ljcifs/smb/SmbFileOutputStream;-><init>(Ljcifs/smb/SmbFile;ZI)V

    iput-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    goto :goto_2a

    :cond_23
    :goto_23
    new-instance v0, Ljcifs/smb/TransactNamedPipeOutputStream;

    invoke-direct {v0, p0}, Ljcifs/smb/TransactNamedPipeOutputStream;-><init>(Ljcifs/smb/SmbNamedPipe;)V

    iput-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    :cond_2a
    :goto_2a
    iget-object v0, p0, Ljcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    return-object v0
.end method
