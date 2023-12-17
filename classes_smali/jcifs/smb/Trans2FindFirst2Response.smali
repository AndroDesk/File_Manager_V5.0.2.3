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
.field public static final SMB_FILE_BOTH_DIRECTORY_INFO:I = 0x104

.field public static final SMB_FILE_NAMES_INFO:I = 0x103

.field public static final SMB_FIND_FILE_DIRECTORY_INFO:I = 0x101

.field public static final SMB_FIND_FILE_FULL_DIRECTORY_INFO:I = 0x102

.field public static final SMB_INFO_QUERY_EAS_FROM_LIST:I = 0x3

.field public static final SMB_INFO_QUERY_EA_SIZE:I = 0x2

.field public static final SMB_INFO_STANDARD:I = 0x1


# instance fields
.field public eaErrorOffset:I

.field public isEndOfSearch:Z

.field public lastName:Ljava/lang/String;

.field public lastNameBufferIndex:I

.field public lastNameOffset:I

.field public resumeKey:I

.field public sid:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 4
    const/16 v0, 0x32

    .line 6
    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 8
    const/4 v0, 0x1

    .line 9
    iput-byte v0, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    .line 11
    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .registers 8

    .line 1
    iget p3, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameOffset:I

    .line 3
    add-int/2addr p3, p2

    .line 4
    iput p3, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameBufferIndex:I

    .line 6
    iget p3, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    .line 8
    new-array p3, p3, [Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;

    .line 10
    iput-object p3, p0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    .line 12
    const/4 p3, 0x0

    .line 13
    :goto_c
    iget v0, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    .line 15
    if-lt p3, v0, :cond_13

    .line 17
    iget p1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    .line 19
    return p1

    .line 20
    :cond_13
    iget-object v0, p0, Ljcifs/smb/SmbComTransactionResponse;->results:[Ljcifs/smb/FileEntry;

    .line 22
    new-instance v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;

    .line 24
    invoke-direct {v1, p0}, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;-><init>(Ljcifs/smb/Trans2FindFirst2Response;)V

    .line 27
    aput-object v1, v0, p3

    .line 29
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 32
    move-result v0

    .line 33
    iput v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    .line 35
    add-int/lit8 v0, p2, 0x4

    .line 37
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 40
    move-result v0

    .line 41
    iput v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileIndex:I

    .line 43
    add-int/lit8 v0, p2, 0x8

    .line 45
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    .line 48
    move-result-wide v2

    .line 49
    iput-wide v2, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->creationTime:J

    .line 51
    add-int/lit8 v0, p2, 0x18

    .line 53
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    .line 56
    move-result-wide v2

    .line 57
    iput-wide v2, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->lastWriteTime:J

    .line 59
    add-int/lit8 v0, p2, 0x28

    .line 61
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    .line 64
    move-result-wide v2

    .line 65
    iput-wide v2, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->endOfFile:J

    .line 67
    add-int/lit8 v0, p2, 0x38

    .line 69
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 72
    move-result v0

    .line 73
    iput v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->extFileAttributes:I

    .line 75
    add-int/lit8 v0, p2, 0x3c

    .line 77
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 80
    move-result v0

    .line 81
    iput v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileNameLength:I

    .line 83
    add-int/lit8 v2, p2, 0x5e

    .line 85
    invoke-virtual {p0, p1, v2, v0}, Ljcifs/smb/Trans2FindFirst2Response;->readString([BII)Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    iput-object v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->filename:Ljava/lang/String;

    .line 91
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameBufferIndex:I

    .line 93
    if-lt v2, p2, :cond_6b

    .line 95
    iget v3, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    .line 97
    if-eqz v3, :cond_65

    .line 99
    add-int/2addr v3, p2

    .line 100
    if-ge v2, v3, :cond_6b

    .line 102
    :cond_65
    iput-object v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    .line 104
    iget v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->fileIndex:I

    .line 106
    iput v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->resumeKey:I

    .line 108
    :cond_6b
    iget v0, v1, Ljcifs/smb/Trans2FindFirst2Response$SmbFindFileBothDirectoryInfo;->nextEntryOffset:I

    .line 110
    add-int/2addr p2, v0

    .line 111
    add-int/lit8 p3, p3, 0x1

    .line 113
    goto :goto_c
.end method

.method public readParametersWireFormat([BII)I
    .registers 6

    .line 1
    iget-byte p3, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p3, v0, :cond_e

    .line 6
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 9
    move-result p3

    .line 10
    iput p3, p0, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    .line 12
    add-int/lit8 p3, p2, 0x2

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    move p3, p2

    .line 16
    :goto_f
    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 19
    move-result v1

    .line 20
    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    .line 22
    add-int/lit8 p3, p3, 0x2

    .line 24
    aget-byte v1, p1, p3

    .line 26
    and-int/2addr v1, v0

    .line 27
    if-ne v1, v0, :cond_1d

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    const/4 v0, 0x0

    .line 31
    :goto_1e
    iput-boolean v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    .line 33
    add-int/lit8 p3, p3, 0x2

    .line 35
    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 38
    move-result v0

    .line 39
    iput v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->eaErrorOffset:I

    .line 41
    add-int/lit8 p3, p3, 0x2

    .line 43
    invoke-static {p1, p3}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 46
    move-result p1

    .line 47
    iput p1, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameOffset:I

    .line 49
    add-int/lit8 p3, p3, 0x2

    .line 51
    sub-int/2addr p3, p2

    .line 52
    return p3
.end method

.method public readSetupWireFormat([BII)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public readString([BII)Ljava/lang/String;
    .registers 7

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_1
    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 4
    if-eqz v1, :cond_d

    .line 6
    new-instance v1, Ljava/lang/String;

    .line 8
    const-string v2, "UTF-16LE"

    .line 10
    invoke-direct {v1, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 13
    goto :goto_2b

    .line 14
    :cond_d
    if-lez p3, :cond_18

    .line 16
    add-int v1, p2, p3

    .line 18
    sub-int/2addr v1, v0

    .line 19
    aget-byte v1, p1, v1

    .line 21
    if-nez v1, :cond_18

    .line 23
    add-int/lit8 p3, p3, -0x1

    .line 25
    :cond_18
    new-instance v1, Ljava/lang/String;

    .line 27
    sget-object v2, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    .line 29
    invoke-direct {v1, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1f} :catch_20

    .line 32
    goto :goto_2b

    .line 33
    :catch_20
    move-exception p1

    .line 34
    sget p2, Ljcifs/util/LogStream;->level:I

    .line 36
    if-le p2, v0, :cond_2a

    .line 38
    sget-object p2, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 43
    :cond_2a
    const/4 v1, 0x0

    .line 44
    :goto_2b
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-byte v0, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_8

    .line 6
    const-string v0, "Trans2FindFirst2Response["

    .line 8
    goto :goto_a

    .line 9
    :cond_8
    const-string v0, "Trans2FindNext2Response["

    .line 11
    :goto_a
    new-instance v1, Ljava/lang/String;

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v0, ",sid="

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->sid:I

    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v0, ",searchCount="

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget v0, p0, Ljcifs/smb/SmbComTransactionResponse;->numEntries:I

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v0, ",isEndOfSearch="

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-boolean v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->isEndOfSearch:Z

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    const-string v0, ",eaErrorOffset="

    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->eaErrorOffset:I

    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string v0, ",lastNameOffset="

    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastNameOffset:I

    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v0, ",lastName="

    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v0, p0, Ljcifs/smb/Trans2FindFirst2Response;->lastName:Ljava/lang/String;

    .line 82
    const-string v3, "]"

    .line 84
    invoke-static {v2, v0, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 91
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
