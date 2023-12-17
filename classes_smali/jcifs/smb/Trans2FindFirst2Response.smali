.class Ljcifs/smb/Trans2FindFirst2Response;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "Trans2FindFirst2Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;
    }
.end annotation


# static fields
.field public static final SMB_FILE_BOTH_DIRECTORY_INFO:I

.field public static final SMB_FILE_NAMES_INFO:I

.field public static final SMB_FIND_FILE_DIRECTORY_INFO:I

.field public static final SMB_FIND_FILE_FULL_DIRECTORY_INFO:I

.field public static final SMB_INFO_QUERY_EAS_FROM_LIST:I

.field public static final SMB_INFO_QUERY_EA_SIZE:I

.field public static final SMB_INFO_STANDARD:I


# instance fields
.field public eaErrorOffset:I

.field public isEndOfSearch:Z

.field public lastName:Ljava/lang/String;

.field public lastNameBufferIndex:I

.field public lastNameOffset:I

.field public resumeKey:I

.field public sid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92c92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/Trans2FindFirst2Response;->SMB_FILE_BOTH_DIRECTORY_INFO:I

    const v0, 0x92c95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/Trans2FindFirst2Response;->SMB_FILE_NAMES_INFO:I

    const v0, 0x92c97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/Trans2FindFirst2Response;->SMB_FIND_FILE_DIRECTORY_INFO:I

    const v0, 0x92c94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/Trans2FindFirst2Response;->SMB_FIND_FILE_FULL_DIRECTORY_INFO:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/Trans2FindFirst2Response;->SMB_INFO_QUERY_EAS_FROM_LIST:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/Trans2FindFirst2Response;->SMB_INFO_QUERY_EA_SIZE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/Trans2FindFirst2Response;->SMB_INFO_STANDARD:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    const/16 v0, 0x32

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 v0, 0x1

    iput-byte v0, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .registers 8

    iget p3, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameOffset:I

    add-int/2addr p3, p2

    iput p3, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameBufferIndex:I

    iget p3, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    new-array p3, p3, [Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;

    iput-object p3, p0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    const/4 p3, 0x0

    :goto_c
    iget v0, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    if-lt p3, v0, :cond_13

    iget p1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    return p1

    :cond_13
    iget-object v0, p0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    new-instance v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;

    invoke-direct {v1, p0}, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;-><init>(Ljcifs/smb/Trans2FindFirst2Response;)V

    aput-object v1, v0, p3

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileIndex:I

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->creationTime:J

    add-int/lit8 v0, p2, 0x18

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->lastWriteTime:J

    add-int/lit8 v0, p2, 0x28

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->endOfFile:J

    add-int/lit8 v0, p2, 0x38

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->extFileAttributes:I

    add-int/lit8 v0, p2, 0x3c

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    iput v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileNameLength:I

    add-int/lit8 v2, p2, 0x5e

    invoke-virtual {p0, p1, v2, v0}, Ljcifs/smb/Trans2FindFirst2Response;->readString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->filename:Ljava/lang/String;

    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameBufferIndex:I

    if-lt v2, p2, :cond_6b

    iget v3, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    if-eqz v3, :cond_65

    add-int/2addr v3, p2

    if-ge v2, v3, :cond_6b

    :cond_65
    iput-object v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    iget v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileIndex:I

    iput v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    :cond_6b
    iget v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    add-int/2addr p2, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_c
.end method

.method public readParametersWireFormat([BII)I
    .registers 6

    iget-byte p3, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    const/4 v0, 0x1

    if-ne p3, v0, :cond_e

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p3

    iput p3, p0, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    add-int/lit8 p3, p2, 0x2

    goto :goto_f

    :cond_e
    move p3, p2

    :goto_f
    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    add-int/lit8 p3, p3, 0x2

    aget-byte v1, p1, p3

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iput-boolean v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    add-int/lit8 p3, p3, 0x2

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->eaErrorOffset:I

    add-int/lit8 p3, p3, 0x2

    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p1

    iput p1, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameOffset:I

    add-int/lit8 p3, p3, 0x2

    sub-int/2addr p3, p2

    return p3
.end method

.method public readSetupWireFormat([BII)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public readString([BII)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-16LE"

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_2b

    :cond_d
    if-lez p3, :cond_18

    add-int v1, p2, p3

    sub-int/2addr v1, v0

    aget-byte v1, p1, v1

    if-nez v1, :cond_18

    add-int/lit8 p3, p3, -0x1

    :cond_18
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1f} :catch_20

    goto :goto_2b

    :catch_20
    move-exception p1

    sget p2, Ljcifs/util/LogStream;->level:I

    if-le p2, v0, :cond_2a

    sget-object p2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-byte v0, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const-string v0, "Trans2FindFirst2Response["

    goto :goto_a

    :cond_8
    const-string v0, "Trans2FindNext2Response["

    :goto_a
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",sid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",searchCount="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",isEndOfSearch="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",eaErrorOffset="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->eaErrorOffset:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",lastNameOffset="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameOffset:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",lastName="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    const-string v3, "]"

    invoke-static {v2, v0, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public writeDataWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeSetupWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
