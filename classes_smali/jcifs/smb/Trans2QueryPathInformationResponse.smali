.class Ljcifs/smb/Trans2QueryPathInformationResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "Trans2QueryPathInformationResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;,
        Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;
    }
.end annotation


# static fields
.field public static final SMB_QUERY_FILE_BASIC_INFO:I = 0x101

.field public static final SMB_QUERY_FILE_STANDARD_INFO:I = 0x102


# instance fields
.field public info:Ljcifs/smb/Info;

.field private informationLevel:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 4
    iput p1, p0, Ljcifs/smb/Trans2QueryPathInformationResponse;->informationLevel:I

    .line 6
    const/4 p1, 0x5

    .line 7
    iput-byte p1, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    .line 9
    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .registers 5

    .line 1
    iget p3, p0, Ljcifs/smb/Trans2QueryPathInformationResponse;->informationLevel:I

    .line 3
    const/16 v0, 0x101

    .line 5
    if-eq p3, v0, :cond_11

    .line 7
    const/16 v0, 0x102

    .line 9
    if-eq p3, v0, :cond_c

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_c
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryPathInformationResponse;->readSmbQueryFileStandardInfoWireFormat([BI)I

    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_11
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryPathInformationResponse;->readSmbQueryFileBasicInfoWireFormat([BI)I

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public readParametersWireFormat([BII)I
    .registers 4

    const/4 p1, 0x2

    return p1
.end method

.method public readSetupWireFormat([BII)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public readSmbQueryFileBasicInfoWireFormat([BI)I
    .registers 7

    .line 1
    new-instance v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;

    .line 3
    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;-><init>(Ljcifs/smb/Trans2QueryPathInformationResponse;)V

    .line 6
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    .line 9
    move-result-wide v1

    .line 10
    iput-wide v1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->createTime:J

    .line 12
    add-int/lit8 v1, p2, 0x8

    .line 14
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    .line 17
    move-result-wide v2

    .line 18
    iput-wide v2, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->lastAccessTime:J

    .line 20
    add-int/lit8 v1, v1, 0x8

    .line 22
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    .line 25
    move-result-wide v2

    .line 26
    iput-wide v2, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->lastWriteTime:J

    .line 28
    add-int/lit8 v1, v1, 0x8

    .line 30
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    .line 33
    move-result-wide v2

    .line 34
    iput-wide v2, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->changeTime:J

    .line 36
    add-int/lit8 v1, v1, 0x8

    .line 38
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 41
    move-result p1

    .line 42
    iput p1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->attributes:I

    .line 44
    add-int/lit8 v1, v1, 0x2

    .line 46
    iput-object v0, p0, Ljcifs/smb/Trans2QueryPathInformationResponse;->info:Ljcifs/smb/Info;

    .line 48
    sub-int/2addr v1, p2

    .line 49
    return v1
.end method

.method public readSmbQueryFileStandardInfoWireFormat([BI)I
    .registers 8

    .line 1
    new-instance v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;

    .line 3
    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;-><init>(Ljcifs/smb/Trans2QueryPathInformationResponse;)V

    .line 6
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    .line 9
    move-result-wide v1

    .line 10
    iput-wide v1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->allocationSize:J

    .line 12
    add-int/lit8 v1, p2, 0x8

    .line 14
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    .line 17
    move-result-wide v2

    .line 18
    iput-wide v2, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->endOfFile:J

    .line 20
    add-int/lit8 v1, v1, 0x8

    .line 22
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 25
    move-result v2

    .line 26
    iput v2, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->numberOfLinks:I

    .line 28
    add-int/lit8 v1, v1, 0x4

    .line 30
    add-int/lit8 v2, v1, 0x1

    .line 32
    aget-byte v1, p1, v1

    .line 34
    and-int/lit16 v1, v1, 0xff

    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x1

    .line 38
    if-lez v1, :cond_29

    .line 40
    move v1, v4

    .line 41
    goto :goto_2a

    .line 42
    :cond_29
    move v1, v3

    .line 43
    :goto_2a
    iput-boolean v1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->deletePending:Z

    .line 45
    add-int/lit8 v1, v2, 0x1

    .line 47
    aget-byte p1, p1, v2

    .line 49
    and-int/lit16 p1, p1, 0xff

    .line 51
    if-lez p1, :cond_35

    .line 53
    move v3, v4

    .line 54
    :cond_35
    iput-boolean v3, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->directory:Z

    .line 56
    iput-object v0, p0, Ljcifs/smb/Trans2QueryPathInformationResponse;->info:Ljcifs/smb/Info;

    .line 58
    sub-int/2addr v1, p2

    .line 59
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "Trans2QueryPathInformationResponse["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    const-string v3, "]"

    .line 16
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 23
    return-object v0
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
