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
.field public static final SMB_QUERY_FILE_BASIC_INFO:I

.field public static final SMB_QUERY_FILE_STANDARD_INFO:I


# instance fields
.field public info:Ljcifs/smb/Info;

.field private informationLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92c97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/Trans2QueryPathInformationResponse;->SMB_QUERY_FILE_BASIC_INFO:I

    const v0, 0x92c94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/Trans2QueryPathInformationResponse;->SMB_QUERY_FILE_STANDARD_INFO:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    iput p1, p0, Ljcifs/smb/Trans2QueryPathInformationResponse;->informationLevel:I

    const/4 p1, 0x5

    iput-byte p1, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .registers 5

    iget p3, p0, Ljcifs/smb/Trans2QueryPathInformationResponse;->informationLevel:I

    const/16 v0, 0x101

    if-eq p3, v0, :cond_11

    const/16 v0, 0x102

    if-eq p3, v0, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryPathInformationResponse;->readSmbQueryFileStandardInfoWireFormat([BI)I

    move-result p1

    return p1

    :cond_11
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryPathInformationResponse;->readSmbQueryFileBasicInfoWireFormat([BI)I

    move-result p1

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

    new-instance v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;

    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;-><init>(Ljcifs/smb/Trans2QueryPathInformationResponse;)V

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->createTime:J

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->lastAccessTime:J

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->lastWriteTime:J

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->changeTime:J

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p1

    iput p1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->attributes:I

    add-int/lit8 v1, v1, 0x2

    iput-object v0, p0, Ljcifs/smb/Trans2QueryPathInformationResponse;->info:Ljcifs/smb/Info;

    sub-int/2addr v1, p2

    return v1
.end method

.method public readSmbQueryFileStandardInfoWireFormat([BI)I
    .registers 8

    new-instance v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;

    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;-><init>(Ljcifs/smb/Trans2QueryPathInformationResponse;)V

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->allocationSize:J

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->endOfFile:J

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->numberOfLinks:I

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_29

    move v1, v4

    goto :goto_2a

    :cond_29
    move v1, v3

    :goto_2a
    iput-boolean v1, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->deletePending:Z

    add-int/lit8 v1, v2, 0x1

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    if-lez p1, :cond_35

    move v3, v4

    :cond_35
    iput-boolean v3, v0, Ljcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->directory:Z

    iput-object v0, p0, Ljcifs/smb/Trans2QueryPathInformationResponse;->info:Ljcifs/smb/Info;

    sub-int/2addr v1, p2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trans2QueryPathInformationResponse["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "]"

    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

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
