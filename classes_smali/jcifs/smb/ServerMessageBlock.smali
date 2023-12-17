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

    .line 1
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    .line 7
    const/16 v0, 0x18

    .line 9
    new-array v0, v0, [B

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, -0x1

    .line 13
    aput-byte v2, v0, v1

    .line 15
    const/4 v1, 0x1

    .line 16
    const/16 v2, 0x53

    .line 18
    aput-byte v2, v0, v1

    .line 20
    const/4 v1, 0x2

    .line 21
    const/16 v2, 0x4d

    .line 23
    aput-byte v2, v0, v1

    .line 25
    const/4 v1, 0x3

    .line 26
    const/16 v2, 0x42

    .line 28
    aput-byte v2, v0, v1

    .line 30
    sput-object v0, Ljcifs/smb/ServerMessageBlock;->header:[B

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljcifs/util/transport/Response;-><init>()V

    .line 4
    const-wide/16 v0, 0x1

    .line 6
    iput-wide v0, p0, Ljcifs/smb/ServerMessageBlock;->responseTimeout:J

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Ljcifs/smb/ServerMessageBlock;->auth:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 11
    iput-object v0, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 13
    const/16 v0, 0x18

    .line 15
    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    .line 17
    sget v0, Ljcifs/smb/SmbConstants;->PID:I

    .line 19
    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->batchLevel:I

    .line 24
    return-void
.end method

.method public static readInt2([BI)I
    .registers 3

    .line 1
    aget-byte v0, p0, p1

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 7
    aget-byte p0, p0, p1

    .line 9
    and-int/lit16 p0, p0, 0xff

    .line 11
    shl-int/lit8 p0, p0, 0x8

    .line 13
    add-int/2addr v0, p0

    .line 14
    return v0
.end method

.method public static readInt4([BI)I
    .registers 4

    .line 1
    aget-byte v0, p0, p1

    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 5
    add-int/lit8 v1, p1, 0x1

    .line 7
    aget-byte v1, p0, v1

    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 11
    shl-int/lit8 v1, v1, 0x8

    .line 13
    add-int/2addr v0, v1

    .line 14
    add-int/lit8 v1, p1, 0x2

    .line 16
    aget-byte v1, p0, v1

    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 20
    shl-int/lit8 v1, v1, 0x10

    .line 22
    add-int/2addr v0, v1

    .line 23
    add-int/lit8 p1, p1, 0x3

    .line 25
    aget-byte p0, p0, p1

    .line 27
    and-int/lit16 p0, p0, 0xff

    .line 29
    shl-int/lit8 p0, p0, 0x18

    .line 31
    add-int/2addr v0, p0

    .line 32
    return v0
.end method

.method public static readInt8([BI)J
    .registers 6

    .line 1
    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const-wide v2, 0xffffffffL

    .line 11
    and-long/2addr v0, v2

    .line 12
    add-int/lit8 p1, p1, 0x4

    .line 14
    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 17
    move-result p0

    .line 18
    int-to-long p0, p0

    .line 19
    const/16 v2, 0x20

    .line 21
    shl-long/2addr p0, v2

    .line 22
    add-long/2addr v0, p0

    .line 23
    return-wide v0
.end method

.method public static readTime([BI)J
    .registers 6

    .line 1
    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 p1, p1, 0x4

    .line 7
    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 10
    move-result p0

    .line 11
    int-to-long p0, p0

    .line 12
    const/16 v1, 0x20

    .line 14
    shl-long/2addr p0, v1

    .line 15
    int-to-long v0, v0

    .line 16
    const-wide v2, 0xffffffffL

    .line 21
    and-long/2addr v0, v2

    .line 22
    or-long/2addr p0, v0

    .line 23
    const-wide/16 v0, 0x2710

    .line 25
    div-long/2addr p0, v0

    .line 26
    const-wide v0, 0xa9730b66800L

    .line 31
    sub-long/2addr p0, v0

    .line 32
    return-wide p0
.end method

.method public static readUTime([BI)J
    .registers 4

    .line 1
    invoke-static {p0, p1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 4
    move-result p0

    .line 5
    int-to-long p0, p0

    .line 6
    const-wide/16 v0, 0x3e8

    .line 8
    mul-long/2addr p0, v0

    .line 9
    return-wide p0
.end method

.method public static writeInt2(J[BI)V
    .registers 5

    .line 1
    long-to-int v0, p0

    .line 2
    int-to-byte v0, v0

    .line 3
    aput-byte v0, p2, p3

    .line 5
    add-int/lit8 p3, p3, 0x1

    .line 7
    const/16 v0, 0x8

    .line 9
    shr-long/2addr p0, v0

    .line 10
    long-to-int p0, p0

    .line 11
    int-to-byte p0, p0

    .line 12
    aput-byte p0, p2, p3

    .line 14
    return-void
.end method

.method public static writeInt4(J[BI)V
    .registers 6

    .line 1
    long-to-int v0, p0

    .line 2
    int-to-byte v0, v0

    .line 3
    aput-byte v0, p2, p3

    .line 5
    add-int/lit8 p3, p3, 0x1

    .line 7
    const/16 v0, 0x8

    .line 9
    shr-long/2addr p0, v0

    .line 10
    long-to-int v1, p0

    .line 11
    int-to-byte v1, v1

    .line 12
    aput-byte v1, p2, p3

    .line 14
    add-int/lit8 p3, p3, 0x1

    .line 16
    shr-long/2addr p0, v0

    .line 17
    long-to-int v1, p0

    .line 18
    int-to-byte v1, v1

    .line 19
    aput-byte v1, p2, p3

    .line 21
    add-int/lit8 p3, p3, 0x1

    .line 23
    shr-long/2addr p0, v0

    .line 24
    long-to-int p0, p0

    .line 25
    int-to-byte p0, p0

    .line 26
    aput-byte p0, p2, p3

    .line 28
    return-void
.end method

.method public static writeInt8(J[BI)V
    .registers 6

    .line 1
    long-to-int v0, p0

    .line 2
    int-to-byte v0, v0

    .line 3
    aput-byte v0, p2, p3

    .line 5
    add-int/lit8 p3, p3, 0x1

    .line 7
    const/16 v0, 0x8

    .line 9
    shr-long/2addr p0, v0

    .line 10
    long-to-int v1, p0

    .line 11
    int-to-byte v1, v1

    .line 12
    aput-byte v1, p2, p3

    .line 14
    add-int/lit8 p3, p3, 0x1

    .line 16
    shr-long/2addr p0, v0

    .line 17
    long-to-int v1, p0

    .line 18
    int-to-byte v1, v1

    .line 19
    aput-byte v1, p2, p3

    .line 21
    add-int/lit8 p3, p3, 0x1

    .line 23
    shr-long/2addr p0, v0

    .line 24
    long-to-int v1, p0

    .line 25
    int-to-byte v1, v1

    .line 26
    aput-byte v1, p2, p3

    .line 28
    add-int/lit8 p3, p3, 0x1

    .line 30
    shr-long/2addr p0, v0

    .line 31
    long-to-int v1, p0

    .line 32
    int-to-byte v1, v1

    .line 33
    aput-byte v1, p2, p3

    .line 35
    add-int/lit8 p3, p3, 0x1

    .line 37
    shr-long/2addr p0, v0

    .line 38
    long-to-int v1, p0

    .line 39
    int-to-byte v1, v1

    .line 40
    aput-byte v1, p2, p3

    .line 42
    add-int/lit8 p3, p3, 0x1

    .line 44
    shr-long/2addr p0, v0

    .line 45
    long-to-int v1, p0

    .line 46
    int-to-byte v1, v1

    .line 47
    aput-byte v1, p2, p3

    .line 49
    add-int/lit8 p3, p3, 0x1

    .line 51
    shr-long/2addr p0, v0

    .line 52
    long-to-int p0, p0

    .line 53
    int-to-byte p0, p0

    .line 54
    aput-byte p0, p2, p3

    .line 56
    return-void
.end method

.method public static writeTime(J[BI)V
    .registers 6

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p0, v0

    .line 5
    if-eqz v0, :cond_f

    .line 7
    const-wide v0, 0xa9730b66800L

    .line 12
    add-long/2addr p0, v0

    .line 13
    const-wide/16 v0, 0x2710

    .line 15
    mul-long/2addr p0, v0

    .line 16
    :cond_f
    invoke-static {p0, p1, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt8(J[BI)V

    .line 19
    return-void
.end method

.method public static writeUTime(J[BI)V
    .registers 8

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v0, p0, v0

    .line 5
    const-wide/16 v1, -0x1

    .line 7
    if-eqz v0, :cond_44

    .line 9
    cmp-long v0, p0, v1

    .line 11
    if-nez v0, :cond_d

    .line 13
    goto :goto_44

    .line 14
    :cond_d
    sget-object v0, Ljcifs/smb/SmbConstants;->TZ:Ljava/util/TimeZone;

    .line 16
    monitor-enter v0

    .line 17
    :try_start_10
    new-instance v1, Ljava/util/Date;

    .line 19
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    .line 25
    move-result v1

    .line 26
    const-wide/32 v2, 0x36ee80

    .line 29
    if-eqz v1, :cond_2b

    .line 31
    new-instance v1, Ljava/util/Date;

    .line 33
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_37

    .line 42
    sub-long/2addr p0, v2

    .line 43
    goto :goto_37

    .line 44
    :cond_2b
    new-instance v1, Ljava/util/Date;

    .line 46
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_37

    .line 55
    add-long/2addr p0, v2

    .line 56
    :cond_37
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_41

    .line 57
    const-wide/16 v0, 0x3e8

    .line 59
    div-long/2addr p0, v0

    .line 60
    long-to-int p0, p0

    .line 61
    int-to-long p0, p0

    .line 62
    invoke-static {p0, p1, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 65
    return-void

    .line 66
    :catchall_41
    move-exception p0

    .line 67
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    .line 68
    throw p0

    .line 69
    :cond_44
    :goto_44
    invoke-static {v1, v2, p2, p3}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 72
    return-void
.end method


# virtual methods
.method public decode([BI)I
    .registers 9

    .line 1
    iput p2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    .line 3
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->readHeaderWireFormat([BI)I

    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p2

    .line 8
    add-int/lit8 v1, v0, 0x1

    .line 10
    aget-byte v0, p1, v0

    .line 12
    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 14
    const/4 v2, 0x5

    .line 15
    if-eqz v0, :cond_42

    .line 17
    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->readParameterWordsWireFormat([BI)I

    .line 20
    move-result v0

    .line 21
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 23
    mul-int/lit8 v3, v3, 0x2

    .line 25
    if-eq v0, v3, :cond_3d

    .line 27
    sget v3, Ljcifs/util/LogStream;->level:I

    .line 29
    if-lt v3, v2, :cond_3d

    .line 31
    sget-object v3, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    const-string v5, "wordCount * 2="

    .line 37
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    iget v5, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 42
    mul-int/lit8 v5, v5, 0x2

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v5, " but readParameterWordsWireFormat returned "

    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    :cond_3d
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 64
    mul-int/lit8 v0, v0, 0x2

    .line 66
    add-int/2addr v1, v0

    .line 67
    :cond_42
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 70
    move-result v0

    .line 71
    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 73
    add-int/lit8 v1, v1, 0x2

    .line 75
    if-eqz v0, :cond_78

    .line 77
    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->readBytesWireFormat([BI)I

    .line 80
    move-result p1

    .line 81
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 83
    if-eq p1, v0, :cond_75

    .line 85
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 87
    if-lt v0, v2, :cond_75

    .line 89
    sget-object v0, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    const-string v3, "byteCount="

    .line 95
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v3, " but readBytesWireFormat returned "

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    :cond_75
    iget p1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 120
    add-int/2addr v1, p1

    .line 121
    :cond_78
    sub-int/2addr v1, p2

    .line 122
    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    .line 124
    return v1
.end method

.method public encode([BI)I
    .registers 11

    .line 1
    iput p2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    .line 3
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeHeaderWireFormat([BI)I

    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p2

    .line 8
    add-int/lit8 v1, v0, 0x1

    .line 10
    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeParameterWordsWireFormat([BI)I

    .line 13
    move-result v2

    .line 14
    iput v2, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 16
    div-int/lit8 v3, v2, 0x2

    .line 18
    and-int/lit16 v3, v3, 0xff

    .line 20
    int-to-byte v3, v3

    .line 21
    aput-byte v3, p1, v0

    .line 23
    add-int/2addr v1, v2

    .line 24
    div-int/lit8 v2, v2, 0x2

    .line 26
    iput v2, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 28
    add-int/lit8 v0, v1, 0x2

    .line 30
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeBytesWireFormat([BI)I

    .line 33
    move-result v0

    .line 34
    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 36
    add-int/lit8 v2, v1, 0x1

    .line 38
    and-int/lit16 v3, v0, 0xff

    .line 40
    int-to-byte v3, v3

    .line 41
    aput-byte v3, p1, v1

    .line 43
    add-int/lit8 v1, v2, 0x1

    .line 45
    shr-int/lit8 v3, v0, 0x8

    .line 47
    and-int/lit16 v3, v3, 0xff

    .line 49
    int-to-byte v3, v3

    .line 50
    aput-byte v3, p1, v2

    .line 52
    add-int/2addr v1, v0

    .line 53
    sub-int v5, v1, p2

    .line 55
    iput v5, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    .line 57
    iget-object v2, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 59
    if-eqz v2, :cond_45

    .line 61
    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    .line 63
    iget-object v7, p0, Ljcifs/smb/ServerMessageBlock;->response:Ljcifs/smb/ServerMessageBlock;

    .line 65
    move-object v3, p1

    .line 66
    move-object v6, p0

    .line 67
    invoke-virtual/range {v2 .. v7}, Ljcifs/smb/SigningDigest;->sign([BIILjcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 70
    :cond_45
    iget p1, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    .line 72
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Ljcifs/smb/ServerMessageBlock;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    check-cast p1, Ljcifs/smb/ServerMessageBlock;

    .line 7
    iget p1, p1, Ljcifs/smb/ServerMessageBlock;->mid:I

    .line 9
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    .line 11
    if-ne p1, v0, :cond_e

    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_e
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    .line 3
    return v0
.end method

.method public isResponse()Z
    .registers 3

    .line 1
    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    .line 3
    const/16 v1, 0x80

    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_9

    .line 8
    const/4 v0, 0x1

    .line 9
    return v0

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public abstract readBytesWireFormat([BI)I
.end method

.method public readHeaderWireFormat([BI)I
    .registers 5

    .line 1
    add-int/lit8 v0, p2, 0x4

    .line 3
    aget-byte v0, p1, v0

    .line 5
    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 7
    add-int/lit8 v0, p2, 0x5

    .line 9
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 12
    move-result v0

    .line 13
    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 15
    add-int/lit8 v0, p2, 0x9

    .line 17
    aget-byte v1, p1, v0

    .line 19
    iput-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 23
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 26
    move-result v0

    .line 27
    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 29
    add-int/lit8 p2, p2, 0x18

    .line 31
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 34
    move-result v0

    .line 35
    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    .line 37
    add-int/lit8 v0, p2, 0x2

    .line 39
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 42
    move-result v0

    .line 43
    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    .line 45
    add-int/lit8 v0, p2, 0x4

    .line 47
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 50
    move-result v0

    .line 51
    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 53
    add-int/lit8 p2, p2, 0x6

    .line 55
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 58
    move-result p1

    .line 59
    iput p1, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    .line 61
    const/16 p1, 0x20

    .line 63
    return p1
.end method

.method public abstract readParameterWordsWireFormat([BI)I
.end method

.method public readString([BI)Ljava/lang/String;
    .registers 5

    .line 1
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

    .line 16
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

    .line 17
    :cond_18
    aget-byte p5, p1, p5

    if-nez p5, :cond_28

    aget-byte p5, p1, v3

    if-nez p5, :cond_28

    .line 18
    :goto_20
    new-instance p3, Ljava/lang/String;

    const-string p4, "UTF-16LE"

    invoke-direct {p3, p1, p2, v1, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_76

    :cond_28
    if-le v1, p4, :cond_3d

    .line 19
    sget p3, Ljcifs/util/LogStream;->level:I

    if-lez p3, :cond_37

    .line 20
    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p4, v2, :cond_34

    add-int/lit8 v2, p4, 0x8

    :cond_34
    invoke-static {p3, p1, p2, v2}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 21
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

    .line 22
    aget-byte p5, p1, p5

    if-nez p5, :cond_53

    .line 23
    :goto_4b
    new-instance p3, Ljava/lang/String;

    sget-object p4, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {p3, p1, p2, v1, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_76

    :cond_53
    if-le v1, p4, :cond_68

    .line 24
    sget p3, Ljcifs/util/LogStream;->level:I

    if-lez p3, :cond_62

    .line 25
    sget-object p3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p4, v2, :cond_5f

    add-int/lit8 v2, p4, 0x8

    :cond_5f
    invoke-static {p3, p1, p2, v2}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 26
    :cond_62
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_68
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_68} :catch_40

    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 27
    :goto_6b
    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 p3, 0x1

    if-le p2, p3, :cond_75

    .line 28
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

    .line 2
    :try_start_7
    iget p4, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int p4, p2, p4

    rem-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_11

    add-int/lit8 p2, p2, 0x1

    :cond_11
    add-int p4, p2, v2

    .line 3
    aget-byte v3, p1, p4

    if-nez v3, :cond_25

    add-int/lit8 p4, p4, 0x1

    .line 4
    aget-byte p4, p1, p4

    if-nez p4, :cond_25

    .line 5
    new-instance p3, Ljava/lang/String;

    const-string p4, "UTF-16LE"

    invoke-direct {p3, p1, p2, v2, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_6d

    :cond_25
    add-int/lit8 v2, v2, 0x2

    if-le v2, p3, :cond_11

    .line 6
    sget p4, Ljcifs/util/LogStream;->level:I

    if-lez p4, :cond_36

    .line 7
    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v1, :cond_33

    add-int/lit8 v1, p3, 0x8

    :cond_33
    invoke-static {p4, p1, p2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 8
    :cond_36
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    add-int p4, p2, v2

    .line 9
    aget-byte p4, p1, p4

    if-nez p4, :cond_4a

    .line 10
    new-instance p3, Ljava/lang/String;

    sget-object p4, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {p3, p1, p2, v2, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_6d

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    if-le v2, p3, :cond_3c

    .line 11
    sget p4, Ljcifs/util/LogStream;->level:I

    if-lez p4, :cond_5b

    .line 12
    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-ge p3, v1, :cond_58

    add-int/lit8 v1, p3, 0x8

    :cond_58
    invoke-static {p4, p1, p2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 13
    :cond_5b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_61
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_61} :catch_61

    :catch_61
    move-exception p1

    .line 14
    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 p3, 0x1

    if-le p2, p3, :cond_6c

    .line 15
    sget-object p2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_6c
    const/4 p3, 0x0

    :goto_6d
    return-object p3
.end method

.method public readStringLength([BII)I
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    add-int v1, p2, v0

    .line 4
    aget-byte v1, p1, v1

    .line 6
    if-nez v1, :cond_8

    .line 8
    return v0

    .line 9
    :cond_8
    add-int/lit8 v1, v0, 0x1

    .line 11
    if-gt v0, p3, :cond_e

    .line 13
    move v0, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    const-string p3, "zero termination not found: "

    .line 21
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1
.end method

.method public reset()V
    .registers 2

    .line 1
    const/16 v0, 0x18

    .line 3
    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 8
    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 10
    iput-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->received:Z

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 15
    return-void
.end method

.method public stringWireLength(Ljava/lang/String;I)I
    .registers 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 7
    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 9
    if-eqz v1, :cond_19

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    move-result p1

    .line 15
    mul-int/lit8 p1, p1, 0x2

    .line 17
    add-int/lit8 p1, p1, 0x2

    .line 19
    rem-int/lit8 p2, p2, 0x2

    .line 21
    if-eqz p2, :cond_18

    .line 23
    add-int/lit8 p1, p1, 0x1

    .line 25
    :cond_18
    move v0, p1

    .line 26
    :cond_19
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 1
    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 3
    const/4 v1, 0x4

    .line 4
    if-eqz v0, :cond_81

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_7e

    .line 9
    if-eq v0, v1, :cond_7b

    .line 11
    const/16 v2, 0x10

    .line 13
    if-eq v0, v2, :cond_78

    .line 15
    const/16 v2, 0x32

    .line 17
    if-eq v0, v2, :cond_75

    .line 19
    const/16 v2, 0x34

    .line 21
    if-eq v0, v2, :cond_72

    .line 23
    const/4 v2, 0x6

    .line 24
    if-eq v0, v2, :cond_6f

    .line 26
    const/4 v2, 0x7

    .line 27
    if-eq v0, v2, :cond_6c

    .line 29
    const/16 v2, 0x8

    .line 31
    if-eq v0, v2, :cond_69

    .line 33
    const/16 v2, 0x25

    .line 35
    if-eq v0, v2, :cond_66

    .line 37
    const/16 v2, 0x26

    .line 39
    if-eq v0, v2, :cond_63

    .line 41
    const/16 v2, 0x2a

    .line 43
    if-eq v0, v2, :cond_60

    .line 45
    const/16 v2, 0x2b

    .line 47
    if-eq v0, v2, :cond_5d

    .line 49
    packed-switch v0, :pswitch_data_10a

    .line 52
    packed-switch v0, :pswitch_data_114

    .line 55
    packed-switch v0, :pswitch_data_11e

    .line 58
    const-string v0, "UNKNOWN"

    .line 60
    goto :goto_83

    .line 61
    :pswitch_3c  #0xffffffa2
    const-string v0, "SMB_COM_NT_CREATE_ANDX"

    .line 63
    goto :goto_83

    .line 64
    :pswitch_3f  #0xffffffa1
    const-string v0, "SMB_COM_NT_TRANSACT_SECONDARY"

    .line 66
    goto :goto_83

    .line 67
    :pswitch_42  #0xffffffa0
    const-string v0, "SMB_COM_NT_TRANSACT"

    .line 69
    goto :goto_83

    .line 70
    :pswitch_45  #0x2f
    const-string v0, "SMB_COM_WRITE_ANDX"

    .line 72
    goto :goto_83

    .line 73
    :pswitch_48  #0x2e
    const-string v0, "SMB_COM_READ_ANDX"

    .line 75
    goto :goto_83

    .line 76
    :pswitch_4b  #0x2d
    const-string v0, "SMB_COM_OPEN_ANDX"

    .line 78
    goto :goto_83

    .line 79
    :pswitch_4e  #0x75
    const-string v0, "SMB_COM_TREE_CONNECT_ANDX"

    .line 81
    goto :goto_83

    .line 82
    :pswitch_51  #0x74
    const-string v0, "SMB_COM_LOGOFF_ANDX"

    .line 84
    goto :goto_83

    .line 85
    :pswitch_54  #0x73
    const-string v0, "SMB_COM_SESSION_SETUP_ANDX"

    .line 87
    goto :goto_83

    .line 88
    :pswitch_57  #0x72
    const-string v0, "SMB_COM_NEGOTIATE"

    .line 90
    goto :goto_83

    .line 91
    :pswitch_5a  #0x71
    const-string v0, "SMB_COM_TREE_DISCONNECT"

    .line 93
    goto :goto_83

    .line 94
    :cond_5d
    const-string v0, "SMB_COM_ECHO"

    .line 96
    goto :goto_83

    .line 97
    :cond_60
    const-string v0, "SMB_COM_MOVE"

    .line 99
    goto :goto_83

    .line 100
    :cond_63
    const-string v0, "SMB_COM_TRANSACTION_SECONDARY"

    .line 102
    goto :goto_83

    .line 103
    :cond_66
    const-string v0, "SMB_COM_TRANSACTION"

    .line 105
    goto :goto_83

    .line 106
    :cond_69
    const-string v0, "SMB_COM_QUERY_INFORMATION"

    .line 108
    goto :goto_83

    .line 109
    :cond_6c
    const-string v0, "SMB_COM_RENAME"

    .line 111
    goto :goto_83

    .line 112
    :cond_6f
    const-string v0, "SMB_COM_DELETE"

    .line 114
    goto :goto_83

    .line 115
    :cond_72
    const-string v0, "SMB_COM_FIND_CLOSE2"

    .line 117
    goto :goto_83

    .line 118
    :cond_75
    const-string v0, "SMB_COM_TRANSACTION2"

    .line 120
    goto :goto_83

    .line 121
    :cond_78
    const-string v0, "SMB_COM_CHECK_DIRECTORY"

    .line 123
    goto :goto_83

    .line 124
    :cond_7b
    const-string v0, "SMB_COM_CLOSE"

    .line 126
    goto :goto_83

    .line 127
    :cond_7e
    const-string v0, "SMB_COM_DELETE_DIRECTORY"

    .line 129
    goto :goto_83

    .line 130
    :cond_81
    const-string v0, "SMB_COM_CREATE_DIRECTORY"

    .line 132
    :goto_83
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 134
    if-nez v2, :cond_8a

    .line 136
    const-string v2, "0"

    .line 138
    goto :goto_8e

    .line 139
    :cond_8a
    invoke-static {v2}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    .line 142
    move-result-object v2

    .line 143
    :goto_8e
    new-instance v3, Ljava/lang/String;

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    .line 147
    const-string v5, "command="

    .line 149
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v0, ",received="

    .line 157
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->received:Z

    .line 162
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    const-string v0, ",errorCode="

    .line 167
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v0, ",flags=0x"

    .line 175
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    .line 180
    and-int/lit16 v0, v0, 0xff

    .line 182
    const-string v2, ",flags2=0x"

    .line 184
    invoke-static {v0, v1, v4, v2}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 187
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 189
    const-string v2, ",signSeq="

    .line 191
    invoke-static {v0, v1, v4, v2}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 194
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    .line 196
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    const-string v0, ",tid="

    .line 201
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    .line 206
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    const-string v0, ",pid="

    .line 211
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    .line 216
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    const-string v0, ",uid="

    .line 221
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 226
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    const-string v0, ",mid="

    .line 231
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    .line 236
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    const-string v0, ",wordCount="

    .line 241
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 246
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    const-string v0, ",byteCount="

    .line 251
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 256
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    move-result-object v0

    .line 263
    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 266
    return-object v3

    .line 267
    :pswitch_data_10a
    .packed-switch -0x60
        :pswitch_42  #ffffffa0
        :pswitch_3f  #ffffffa1
        :pswitch_3c  #ffffffa2
    .end packed-switch

    .line 277
    :pswitch_data_114
    .packed-switch 0x2d
        :pswitch_4b  #0000002d
        :pswitch_48  #0000002e
        :pswitch_45  #0000002f
    .end packed-switch

    .line 287
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

    .line 1
    sget-object v0, Ljcifs/smb/ServerMessageBlock;->header:[B

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    add-int/lit8 v0, p2, 0x4

    .line 10
    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 12
    aput-byte v1, p1, v0

    .line 14
    add-int/lit8 v0, p2, 0x9

    .line 16
    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    .line 18
    aput-byte v1, p1, v0

    .line 20
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 22
    int-to-long v1, v1

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 25
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 28
    add-int/lit8 p2, p2, 0x18

    .line 30
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    .line 32
    int-to-long v0, v0

    .line 33
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 36
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    .line 38
    int-to-long v0, v0

    .line 39
    add-int/lit8 v2, p2, 0x2

    .line 41
    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 44
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 46
    int-to-long v0, v0

    .line 47
    add-int/lit8 v2, p2, 0x4

    .line 49
    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 52
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    .line 54
    int-to-long v0, v0

    .line 55
    add-int/lit8 p2, p2, 0x6

    .line 57
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 60
    const/16 p1, 0x20

    .line 62
    return p1
.end method

.method public abstract writeParameterWordsWireFormat([BI)I
.end method

.method public writeString(Ljava/lang/String;[BI)I
    .registers 5

    .line 1
    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BIZ)I

    move-result p1

    return p1
.end method

.method public writeString(Ljava/lang/String;[BIZ)I
    .registers 8

    const/4 v0, 0x0

    if-eqz p4, :cond_36

    .line 2
    :try_start_3
    iget p4, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int p4, p3, p4

    rem-int/lit8 p4, p4, 0x2
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_9} :catch_47

    if-eqz p4, :cond_10

    add-int/lit8 p4, p3, 0x1

    .line 3
    :try_start_d
    aput-byte v0, p2, p3

    goto :goto_11

    :cond_10
    move p4, p3

    :goto_11
    const-string v1, "UTF-16LE"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    .line 6
    invoke-static {v1, v0, p2, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p4

    add-int/lit8 p4, p1, 0x1

    .line 8
    aput-byte v0, p2, p1
    :try_end_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_2b} :catch_34

    add-int/lit8 p1, p4, 0x1

    .line 9
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

    .line 10
    :cond_36
    :try_start_36
    sget-object p4, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 11
    array-length p4, p1

    invoke-static {p1, v0, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    array-length p1, p1
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_36 .. :try_end_41} :catch_47

    add-int/2addr p1, p3

    add-int/lit8 p4, p1, 0x1

    .line 13
    :try_start_44
    aput-byte v0, p2, p1
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_44 .. :try_end_46} :catch_34

    goto :goto_53

    :catch_47
    move-exception p1

    move p4, p3

    .line 14
    :goto_49
    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 v0, 0x1

    if-le p2, v0, :cond_53

    .line 15
    sget-object p2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_53
    :goto_53
    move p1, p4

    :goto_54
    sub-int/2addr p1, p3

    return p1
.end method
