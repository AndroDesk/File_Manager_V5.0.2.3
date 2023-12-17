.class abstract Ljcifs/smb/SmbComNtTransactionResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "SmbComNtTransactionResponse.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public readParameterWordsWireFormat([BI)I
    .registers 6

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, p2

    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v2, 0x1

    aput-byte v1, p1, v2

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    if-nez v2, :cond_19

    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    :cond_19
    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterOffset:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataOffset:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    add-int/lit8 v0, v0, 0x4

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Ljcifs/smb/SmbComTransactionResponse;->setupCount:I

    add-int/lit8 v0, v0, 0x2

    if-eqz p1, :cond_77

    sget p1, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x3

    if-lt p1, v1, :cond_77

    sget-object p1, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setupCount is not zero: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->setupCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_77
    sub-int/2addr v0, p2

    return v0
.end method
