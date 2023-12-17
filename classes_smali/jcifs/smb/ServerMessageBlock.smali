.class abstract Ljcifs/smb/ServerMessageBlock;
.super Ljcifs/util/transport/Response;
.source "ServerMessageBlock.java"

# interfaces
.implements Ljcifs/util/transport/Request;
.implements Ljcifs/smb/SmbConstants;


# static fields
.field public static final SMB_COM_CHECK_DIRECTORY:B = 0x10t

.field public static final SMB_COM_CLOSE:B = 0x4t

.field public static final SMB_COM_CREATE_DIRECTORY:B = 0x0t

.field public static final SMB_COM_DELETE:B = 0x6t

.field public static final SMB_COM_DELETE_DIRECTORY:B = 0x1t

.field public static final SMB_COM_ECHO:B = 0x2bt

.field public static final SMB_COM_FIND_CLOSE2:B = 0x34t

.field public static final SMB_COM_LOGOFF_ANDX:B = 0x74t

.field public static final SMB_COM_MOVE:B = 0x2at

.field public static final SMB_COM_NEGOTIATE:B = 0x72t

.field public static final SMB_COM_NT_CREATE_ANDX:B = -0x5et

.field public static final SMB_COM_NT_TRANSACT:B = -0x60t

.field public static final SMB_COM_NT_TRANSACT_SECONDARY:B = -0x5ft

.field public static final SMB_COM_OPEN_ANDX:B = 0x2dt

.field public static final SMB_COM_QUERY_INFORMATION:B = 0x8t

.field public static final SMB_COM_READ_ANDX:B = 0x2et

.field public static final SMB_COM_RENAME:B = 0x7t

.field public static final SMB_COM_SESSION_SETUP_ANDX:B = 0x73t

.field public static final SMB_COM_TRANSACTION:B = 0x25t

.field public static final SMB_COM_TRANSACTION2:B = 0x32t

.field public static final SMB_COM_TRANSACTION_SECONDARY:B = 0x26t

.field public static final SMB_COM_TREE_CONNECT_ANDX:B = 0x75t

.field public static final SMB_COM_TREE_DISCONNECT:B = 0x71t

.field public static final SMB_COM_WRITE:B = 0xbt

.field public static final SMB_COM_WRITE_ANDX:B = 0x2ft

.field public static final header:[B

.field public static log:Ljcifs/util/LogStream;


# instance fields
.field public auth:Ljcifs/smb/NtlmPasswordAuthentication;

.field public batchLevel:I

.field public byteCount:I

.field public command:B

.field public digest:Ljcifs/smb/SigningDigest;

.field public errorCode:I

.field public extendedSecurity:Z

.field public flags:B

.field public flags2:I

.field public headerStart:I

.field public length:I

.field public mid:I

.field public path:Ljava/lang/String;

.field public pid:I

.field public received:Z

.field public response:Ljcifs/smb/ServerMessageBlock;

.field public responseTimeout:J

.field public signSeq:I

.field public tid:I

.field public uid:I

.field public useUnicode:Z

.field public verifyFailed:Z

.field public wordCount:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    const/16 v0, 0x18

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    sput-object v0, Ljcifs/smb/ServerMessageBlock;->header:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljcifs/util/transport/Response;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Ljcifs/smb/ServerMessageBlock;->responseTimeout:J

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    iput-object v0, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    const/16 v0, 0x18

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    sget v0, Ljcifs/smb/SmbConstants;->PID:I

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->batchLevel:I

    return-void
.end method

.method public static readInt2([BI)I
    .registers 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr v0, p0

    return v0
.end method

.method public static readInt4([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    add-int/2addr v0, p0

    return v0
.end method

.method public static readInt8([BI)J
    .registers 6

    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static readTime([BI)J
    .registers 6

    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result p0

    int-to-long p0, p0

    const/16 v1, 0x20

    shl-long/2addr p0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    const-wide/16 v0, 0x2710

    div-long/2addr p0, v0

    const-wide v0, 0xa9730b66800L

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static readUTime([BI)J
    .registers 4

    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result p0

    int-to-long p0, p0

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static writeInt2(J[BI)V
    .registers 5

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    const/16 v0, 0x8

    shr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    return-void
.end method

.method public static writeInt4(J[BI)V
    .registers 6

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    const/16 v0, 0x8

    shr-long/2addr p0, v0

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v0

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    return-void
.end method

.method public static writeInt8(J[BI)V
    .registers 6

    long-to-int v0, p0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    const/16 v0, 0x8

    shr-long/2addr p0, v0

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v0

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v0

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v0

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v0

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v0

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    shr-long/2addr p0, v0

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    return-void
.end method

.method public static writeTime(J[BI)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_f

    const-wide v0, 0xa9730b66800L

    add-long/2addr p0, v0

    const-wide/16 v0, 0x2710

    mul-long/2addr p0, v0

    :cond_f
    invoke-static {p0, p1, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt8(J[BI)V

    return-void
.end method

.method public static writeUTime(J[BI)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_44

    cmp-long v0, p0, v1

    if-nez v0, :cond_d

    goto :goto_44

    :cond_d
    sget-object v0, Ljcifs/smb/SmbConstants;->TZ:Ljava/util/TimeZone;

    monitor-enter v0

    :try_start_10
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    const-wide/32 v2, 0x36ee80

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_37

    sub-long/2addr p0, v2

    goto :goto_37

    :cond_2b
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_37

    add-long/2addr p0, v2

    :cond_37
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_41

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    long-to-int p0, p0

    int-to-long p0, p0

    invoke-static {p0, p1, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    return-void

    :catchall_41
    move-exception p0

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p0

    :cond_44
    :goto_44
    invoke-static {v1, v2, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    return-void
.end method


# virtual methods
.method public decode([BI)I
    .registers 9

    iput p2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->readHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    const/4 v2, 0x5

    if-eqz v0, :cond_42

    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->readParameterWordsWireFormat([BI)I

    move-result v0

    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v3, v3, 0x2

    if-eq v0, v3, :cond_3d

    sget v3, Ljcifs/util/LogStream;->level:I

    if-lt v3, v2, :cond_3d

    sget-object v3, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wordCount * 2="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " but readParameterWordsWireFormat returned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3d
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    :cond_42
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/lit8 v1, v1, 0x2

    if-eqz v0, :cond_78

    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->readBytesWireFormat([BI)I

    move-result p1

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    if-eq p1, v0, :cond_75

    sget v0, Ljcifs/util/LogStream;->level:I

    if-lt v0, v2, :cond_75

    sget-object v0, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "byteCount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but readBytesWireFormat returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_75
    iget p1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr v1, p1

    :cond_78
    sub-int/2addr v1, p2

    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    return v1
.end method

.method public encode([BI)I
    .registers 11

    iput p2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeParameterWordsWireFormat([BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    div-int/lit8 v3, v2, 0x2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/2addr v1, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    add-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeBytesWireFormat([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, v2, 0x1

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/2addr v1, v0

    sub-int v5, v1, p2

    iput v5, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    iget-object v2, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v2, :cond_45

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    iget-object v7, p0, Ljcifs/smb/ServerMessageBlock;->response:Ljcifs/smb/ServerMessageBlock;

    move-object v3, p1

    move-object v6, p0

    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SigningDigest;->sign([BIILjcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :cond_45
    iget p1, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljcifs/smb/ServerMessageBlock;

    if-eqz v0, :cond_e

    check-cast p1, Ljcifs/smb/ServerMessageBlock;

    iget p1, p1, Ljcifs/smb/ServerMessageBlock;->mid:I

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    return v0
.end method

.method public isResponse()Z
    .registers 3

    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public abstract readBytesWireFormat([BI)I
.end method

.method public readHeaderWireFormat([BI)I
    .registers 5

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    add-int/lit8 v0, p2, 0x5

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    add-int/lit8 v0, p2, 0x9

    aget-byte v1, p1, v0

    iput-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    add-int/lit8 p2, p2, 0x18

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    add-int/lit8 p2, p2, 0x6

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    const/16 p1, 0x20

    return p1
.end method

.method public abstract readParameterWordsWireFormat([BI)I
.end method

.method public readString([BI)Ljava/lang/String;
    .registers 5

    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    const/16 v1, 0x100

    invoke-virtual {p0, p1, p2, v1, v0}, Ljcifs/smb/ServerMessageBlock;->readString([BIIZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readString([BIIIZ)Ljava/lang/String;
    .registers 10

    const-string v0, "zero termination not found"

    const/4 v1, 0x0

    const/16 v2, 0x80

    if-eqz p5, :cond_42

    :try_start_7
    iget p5, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int p5, p2, p5

    rem-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_11

    add-int/lit8 p2, p2, 0x1

    :cond_11
    :goto_11
    add-int p5, p2, v1

    add-int/lit8 v3, p5, 0x1

    if-lt v3, p3, :cond_18

    goto :goto_20

    :cond_18
    aget-byte p5, p1, p5

    if-nez p5, :cond_28

    aget-byte p5, p1, v3

    if-nez p5, :cond_28

    :goto_20
    new-instance p3, Ljava/lang/String;

    const-string p4, "UTF-16LE"

    invoke-direct {p3, p1, p2, v1, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_76

    :cond_28
    if-le v1, p4, :cond_3d

    sget p3, Ljcifs/util/LogStream;->level:I

    if-lez p3, :cond_37

    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p4, v2, :cond_34

    add-int/lit8 v2, p4, 0x8

    :cond_34
    invoke-static {p3, p1, p2, v2}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_37
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    add-int/lit8 v1, v1, 0x2

    goto :goto_11

    :catch_40
    move-exception p1

    goto :goto_6b

    :cond_42
    :goto_42
    if-lt p2, p3, :cond_45

    goto :goto_4b

    :cond_45
    add-int p5, p2, v1

    aget-byte p5, p1, p5

    if-nez p5, :cond_53

    :goto_4b
    new-instance p3, Ljava/lang/String;

    sget-object p4, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {p3, p1, p2, v1, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_76

    :cond_53
    if-le v1, p4, :cond_68

    sget p3, Ljcifs/util/LogStream;->level:I

    if-lez p3, :cond_62

    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p4, v2, :cond_5f

    add-int/lit8 v2, p4, 0x8

    :cond_5f
    invoke-static {p3, p1, p2, v2}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_62
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_68
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_68} :catch_40

    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :goto_6b
    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 p3, 0x1

    if-le p2, p3, :cond_75

    sget-object p2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_75
    const/4 p3, 0x0

    :goto_76
    return-object p3
.end method

.method public readString([BIIZ)Ljava/lang/String;
    .registers 9

    const-string v0, "zero termination not found"

    const/16 v1, 0x80

    const/4 v2, 0x0

    if-eqz p4, :cond_3c

    :try_start_7
    iget p4, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int p4, p2, p4

    rem-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_11

    add-int/lit8 p2, p2, 0x1

    :cond_11
    add-int p4, p2, v2

    aget-byte v3, p1, p4

    if-nez v3, :cond_25

    add-int/lit8 p4, p4, 0x1

    aget-byte p4, p1, p4

    if-nez p4, :cond_25

    new-instance p3, Ljava/lang/String;

    const-string p4, "UTF-16LE"

    invoke-direct {p3, p1, p2, v2, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_6d

    :cond_25
    add-int/lit8 v2, v2, 0x2

    if-le v2, p3, :cond_11

    sget p4, Ljcifs/util/LogStream;->level:I

    if-lez p4, :cond_36

    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v1, :cond_33

    add-int/lit8 v1, p3, 0x8

    :cond_33
    invoke-static {p4, p1, p2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_36
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    add-int p4, p2, v2

    aget-byte p4, p1, p4

    if-nez p4, :cond_4a

    new-instance p3, Ljava/lang/String;

    sget-object p4, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {p3, p1, p2, v2, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_6d

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    if-le v2, p3, :cond_3c

    sget p4, Ljcifs/util/LogStream;->level:I

    if-lez p4, :cond_5b

    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v1, :cond_58

    add-int/lit8 v1, p3, 0x8

    :cond_58
    invoke-static {p4, p1, p2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_5b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_61
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_61} :catch_61

    :catch_61
    move-exception p1

    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 p3, 0x1

    if-le p2, p3, :cond_6c

    sget-object p2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_6c
    const/4 p3, 0x0

    :goto_6d
    return-object p3
.end method

.method public readStringLength([BII)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    add-int/lit8 v1, v0, 0x1

    if-gt v0, p3, :cond_e

    move v0, v1

    goto :goto_1

    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "zero termination not found: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .registers 2

    const/16 v0, 0x18

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    iput-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->received:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    return-void
.end method

.method public stringWireLength(Ljava/lang/String;I)I
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x2

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_18

    add-int/lit8 p1, p1, 0x1

    :cond_18
    move v0, p1

    :cond_19
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 v1, 0x4

    if-eqz v0, :cond_81

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7e

    if-eq v0, v1, :cond_7b

    const/16 v2, 0x10

    if-eq v0, v2, :cond_78

    const/16 v2, 0x32

    if-eq v0, v2, :cond_75

    const/16 v2, 0x34

    if-eq v0, v2, :cond_72

    const/4 v2, 0x6

    if-eq v0, v2, :cond_6f

    const/4 v2, 0x7

    if-eq v0, v2, :cond_6c

    const/16 v2, 0x8

    if-eq v0, v2, :cond_69

    const/16 v2, 0x25

    if-eq v0, v2, :cond_66

    const/16 v2, 0x26

    if-eq v0, v2, :cond_63

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_60

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_5d

    packed-switch v0, :pswitch_data_10a

    packed-switch v0, :pswitch_data_114

    packed-switch v0, :pswitch_data_11e

    const-string v0, "UNKNOWN"

    goto :goto_83

    :pswitch_3c  #0xffffffa2
    const-string v0, "SMB_COM_NT_CREATE_ANDX"

    goto :goto_83

    :pswitch_3f  #0xffffffa1
    const-string v0, "SMB_COM_NT_TRANSACT_SECONDARY"

    goto :goto_83

    :pswitch_42  #0xffffffa0
    const-string v0, "SMB_COM_NT_TRANSACT"

    goto :goto_83

    :pswitch_45  #0x2f
    const-string v0, "SMB_COM_WRITE_ANDX"

    goto :goto_83

    :pswitch_48  #0x2e
    const-string v0, "SMB_COM_READ_ANDX"

    goto :goto_83

    :pswitch_4b  #0x2d
    const-string v0, "SMB_COM_OPEN_ANDX"

    goto :goto_83

    :pswitch_4e  #0x75
    const-string v0, "SMB_COM_TREE_CONNECT_ANDX"

    goto :goto_83

    :pswitch_51  #0x74
    const-string v0, "SMB_COM_LOGOFF_ANDX"

    goto :goto_83

    :pswitch_54  #0x73
    const-string v0, "SMB_COM_SESSION_SETUP_ANDX"

    goto :goto_83

    :pswitch_57  #0x72
    const-string v0, "SMB_COM_NEGOTIATE"

    goto :goto_83

    :pswitch_5a  #0x71
    const-string v0, "SMB_COM_TREE_DISCONNECT"

    goto :goto_83

    :cond_5d
    const-string v0, "SMB_COM_ECHO"

    goto :goto_83

    :cond_60
    const-string v0, "SMB_COM_MOVE"

    goto :goto_83

    :cond_63
    const-string v0, "SMB_COM_TRANSACTION_SECONDARY"

    goto :goto_83

    :cond_66
    const-string v0, "SMB_COM_TRANSACTION"

    goto :goto_83

    :cond_69
    const-string v0, "SMB_COM_QUERY_INFORMATION"

    goto :goto_83

    :cond_6c
    const-string v0, "SMB_COM_RENAME"

    goto :goto_83

    :cond_6f
    const-string v0, "SMB_COM_DELETE"

    goto :goto_83

    :cond_72
    const-string v0, "SMB_COM_FIND_CLOSE2"

    goto :goto_83

    :cond_75
    const-string v0, "SMB_COM_TRANSACTION2"

    goto :goto_83

    :cond_78
    const-string v0, "SMB_COM_CHECK_DIRECTORY"

    goto :goto_83

    :cond_7b
    const-string v0, "SMB_COM_CLOSE"

    goto :goto_83

    :cond_7e
    const-string v0, "SMB_COM_DELETE_DIRECTORY"

    goto :goto_83

    :cond_81
    const-string v0, "SMB_COM_CREATE_DIRECTORY"

    :goto_83
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-nez v2, :cond_8a

    const-string v2, "0"

    goto :goto_8e

    :cond_8a
    invoke-static {v2}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    move-result-object v2

    :goto_8e
    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "command="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",received="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->received:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",errorCode="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",flags=0x"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    and-int/lit16 v0, v0, 0xff

    const-string v2, ",flags2=0x"

    invoke-static {v0, v1, v4, v2}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    const-string v2, ",signSeq="

    invoke-static {v0, v1, v4, v2}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",tid="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",pid="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",uid="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mid="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",wordCount="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",byteCount="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v3

    :pswitch_data_10a
    .packed-switch -0x60
        :pswitch_42  #ffffffa0
        :pswitch_3f  #ffffffa1
        :pswitch_3c  #ffffffa2
    .end packed-switch

    :pswitch_data_114
    .packed-switch 0x2d
        :pswitch_4b  #0000002d
        :pswitch_48  #0000002e
        :pswitch_45  #0000002f
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x71
        :pswitch_5a  #00000071
        :pswitch_57  #00000072
        :pswitch_54  #00000073
        :pswitch_51  #00000074
        :pswitch_4e  #00000075
    .end packed-switch
.end method

.method public abstract writeBytesWireFormat([BI)I
.end method

.method public writeHeaderWireFormat([BI)I
    .registers 6

    sget-object v0, Ljcifs/smb/ServerMessageBlock;->header:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p2, 0x4

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x9

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    aput-byte v1, p1, v0

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    int-to-long v1, v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 p2, p2, 0x18

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x2

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x4

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    int-to-long v0, v0

    add-int/lit8 p2, p2, 0x6

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    const/16 p1, 0x20

    return p1
.end method

.method public abstract writeParameterWordsWireFormat([BI)I
.end method

.method public writeString(Ljava/lang/String;[BI)I
    .registers 5

    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BIZ)I

    move-result p1

    return p1
.end method

.method public writeString(Ljava/lang/String;[BIZ)I
    .registers 8

    const/4 v0, 0x0

    if-eqz p4, :cond_36

    :try_start_3
    iget p4, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int p4, p3, p4

    rem-int/lit8 p4, p4, 0x2
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_9} :catch_47

    if-eqz p4, :cond_10

    add-int/lit8 p4, p3, 0x1

    :try_start_d
    aput-byte v0, p2, p3

    goto :goto_11

    :cond_10
    move p4, p3

    :goto_11
    const-string v1, "UTF-16LE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v0, p2, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p4

    add-int/lit8 p4, p1, 0x1

    aput-byte v0, p2, p1
    :try_end_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_2b} :catch_34

    add-int/lit8 p1, p4, 0x1

    :try_start_2d
    aput-byte v0, p2, p4
    :try_end_2f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2d .. :try_end_2f} :catch_30

    goto :goto_54

    :catch_30
    move-exception p2

    move p4, p1

    move-object p1, p2

    goto :goto_49

    :catch_34
    move-exception p1

    goto :goto_49

    :cond_36
    :try_start_36
    sget-object p4, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p4, p1

    invoke-static {p1, v0, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_36 .. :try_end_41} :catch_47

    add-int/2addr p1, p3

    add-int/lit8 p4, p1, 0x1

    :try_start_44
    aput-byte v0, p2, p1
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_44 .. :try_end_46} :catch_34

    goto :goto_53

    :catch_47
    move-exception p1

    move p4, p3

    :goto_49
    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 v0, 0x1

    if-le p2, v0, :cond_53

    sget-object p2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_53
    :goto_53
    move p1, p4

    :goto_54
    sub-int/2addr p1, p3

    return p1
.end method
