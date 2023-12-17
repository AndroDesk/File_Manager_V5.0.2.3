.class abstract Ljcifs/smb/SmbComNtTransactionResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "SmbComNtTransactionResponse.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public readParameterWordsWireFormat([BI)I
    .registers 6

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    aput-byte v1, p1, p2

    .line 6
    add-int/lit8 v2, v0, 0x1

    .line 8
    aput-byte v1, p1, v0

    .line 10
    add-int/lit8 v0, v2, 0x1

    .line 12
    aput-byte v1, p1, v2

    .line 14
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 17
    move-result v1

    .line 18
    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    .line 20
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    .line 22
    if-nez v2, :cond_19

    .line 24
    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    .line 26
    :cond_19
    add-int/lit8 v0, v0, 0x4

    .line 28
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 31
    move-result v1

    .line 32
    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    .line 34
    add-int/lit8 v0, v0, 0x4

    .line 36
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 39
    move-result v1

    .line 40
    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    .line 42
    add-int/lit8 v0, v0, 0x4

    .line 44
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 47
    move-result v1

    .line 48
    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterOffset:I

    .line 50
    add-int/lit8 v0, v0, 0x4

    .line 52
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 55
    move-result v1

    .line 56
    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    .line 58
    add-int/lit8 v0, v0, 0x4

    .line 60
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 63
    move-result v1

    .line 64
    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    .line 66
    add-int/lit8 v0, v0, 0x4

    .line 68
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 71
    move-result v1

    .line 72
    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataOffset:I

    .line 74
    add-int/lit8 v0, v0, 0x4

    .line 76
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 79
    move-result v1

    .line 80
    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    .line 82
    add-int/lit8 v0, v0, 0x4

    .line 84
    aget-byte p1, p1, v0

    .line 86
    and-int/lit16 p1, p1, 0xff

    .line 88
    iput p1, p0, Ljcifs/smb/SmbComTransactionResponse;->setupCount:I

    .line 90
    add-int/lit8 v0, v0, 0x2

    .line 92
    if-eqz p1, :cond_77

    .line 94
    sget p1, Ljcifs/util/LogStream;->level:I

    .line 96
    const/4 v1, 0x3

    .line 97
    if-lt p1, v1, :cond_77

    .line 99
    sget-object p1, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    const-string v2, "setupCount is not zero: "

    .line 105
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->setupCount:I

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    :cond_77
    sub-int/2addr v0, p2

    .line 121
    return v0
.end method
