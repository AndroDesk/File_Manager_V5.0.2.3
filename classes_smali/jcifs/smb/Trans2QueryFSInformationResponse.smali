.class Ljcifs/smb/Trans2QueryFSInformationResponse;
.super Ljcifs/smb/SmbComTransactionResponse;
.source "Trans2QueryFSInformationResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;
    }
.end annotation


# static fields
.field public static final SMB_FS_FULL_SIZE_INFORMATION:I

.field public static final SMB_INFO_ALLOCATION:I

.field public static final SMB_QUERY_FS_SIZE_INFO:I


# instance fields
.field public info:Ljcifs/smb/AllocInfo;

.field private informationLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92e79

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->SMB_FS_FULL_SIZE_INFORMATION:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->SMB_INFO_ALLOCATION:I

    const v0, 0x92c95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/Trans2QueryFSInformationResponse;->SMB_QUERY_FS_SIZE_INFO:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    iput p1, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->informationLevel:I

    const/16 p1, 0x32

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 p1, 0x3

    iput-byte p1, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .registers 5

    iget p3, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->informationLevel:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_19

    const/16 v0, 0x103

    if-eq p3, v0, :cond_14

    const/16 v0, 0x3ef

    if-eq p3, v0, :cond_f

    const/4 p1, 0x0

    return p1

    :cond_f
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readFsFullSizeInformationWireFormat([BI)I

    move-result p1

    return p1

    :cond_14
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readSmbQueryFSSizeInfoWireFormat([BI)I

    move-result p1

    return p1

    :cond_19
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readSmbInfoAllocationWireFormat([BI)I

    move-result p1

    return p1
.end method

.method public readFsFullSizeInformationWireFormat([BI)I
    .registers 7

    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;

    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;-><init>(Ljcifs/smb/Trans2QueryFSInformationResponse;)V

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result p1

    iput p1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    add-int/lit8 v1, v1, 0x4

    iput-object v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    sub-int/2addr v1, p2

    return v1
.end method

.method public readParametersWireFormat([BII)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public readSetupWireFormat([BII)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public readSmbInfoAllocationWireFormat([BI)I
    .registers 7

    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;

    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;-><init>(Ljcifs/smb/Trans2QueryFSInformationResponse;)V

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result p1

    iput p1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    add-int/lit8 v1, v1, 0x4

    iput-object v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    sub-int/2addr v1, p2

    return v1
.end method

.method public readSmbQueryFSSizeInfoWireFormat([BI)I
    .registers 7

    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;

    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;-><init>(Ljcifs/smb/Trans2QueryFSInformationResponse;)V

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    move-result-wide v1

    iput-wide v1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    move-result-wide v2

    iput-wide v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    add-int/lit8 v1, v1, 0x8

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result p1

    iput p1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    add-int/lit8 v1, v1, 0x4

    iput-object v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    sub-int/2addr v1, p2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trans2QueryFSInformationResponse["

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
