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
.field public static final SMB_FS_FULL_SIZE_INFORMATION:I = 0x3ef

.field public static final SMB_INFO_ALLOCATION:I = 0x1

.field public static final SMB_QUERY_FS_SIZE_INFO:I = 0x103


# instance fields
.field public info:Ljcifs/smb/AllocInfo;

.field private informationLevel:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 4
    iput p1, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->informationLevel:I

    .line 6
    const/16 p1, 0x32

    .line 8
    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 10
    const/4 p1, 0x3

    .line 11
    iput-byte p1, p0, Ljcifs/smb/SmbComTransactionResponse;->subCommand:B

    .line 13
    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .registers 5

    .line 1
    iget p3, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->informationLevel:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p3, v0, :cond_19

    .line 6
    const/16 v0, 0x103

    .line 8
    if-eq p3, v0, :cond_14

    .line 10
    const/16 v0, 0x3ef

    .line 12
    if-eq p3, v0, :cond_f

    .line 14
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_f
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readFsFullSizeInformationWireFormat([BI)I

    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_14
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readSmbQueryFSSizeInfoWireFormat([BI)I

    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_19
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/Trans2QueryFSInformationResponse;->readSmbInfoAllocationWireFormat([BI)I

    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public readFsFullSizeInformationWireFormat([BI)I
    .registers 7

    .line 1
    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;

    .line 3
    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;-><init>(Ljcifs/smb/Trans2QueryFSInformationResponse;)V

    .line 6
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    .line 9
    move-result-wide v1

    .line 10
    iput-wide v1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    .line 12
    add-int/lit8 v1, p2, 0x8

    .line 14
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    .line 17
    move-result-wide v2

    .line 18
    iput-wide v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    .line 20
    add-int/lit8 v1, v1, 0x8

    .line 22
    add-int/lit8 v1, v1, 0x8

    .line 24
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 27
    move-result v2

    .line 28
    iput v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    .line 30
    add-int/lit8 v1, v1, 0x4

    .line 32
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 35
    move-result p1

    .line 36
    iput p1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    .line 38
    add-int/lit8 v1, v1, 0x4

    .line 40
    iput-object v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    .line 42
    sub-int/2addr v1, p2

    .line 43
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

    .line 1
    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;

    .line 3
    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;-><init>(Ljcifs/smb/Trans2QueryFSInformationResponse;)V

    .line 6
    add-int/lit8 v1, p2, 0x4

    .line 8
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 11
    move-result v2

    .line 12
    iput v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    .line 14
    add-int/lit8 v1, v1, 0x4

    .line 16
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 19
    move-result v2

    .line 20
    int-to-long v2, v2

    .line 21
    iput-wide v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    .line 23
    add-int/lit8 v1, v1, 0x4

    .line 25
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 28
    move-result v2

    .line 29
    int-to-long v2, v2

    .line 30
    iput-wide v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    .line 32
    add-int/lit8 v1, v1, 0x4

    .line 34
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 37
    move-result p1

    .line 38
    iput p1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    .line 40
    add-int/lit8 v1, v1, 0x4

    .line 42
    iput-object v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    .line 44
    sub-int/2addr v1, p2

    .line 45
    return v1
.end method

.method public readSmbQueryFSSizeInfoWireFormat([BI)I
    .registers 7

    .line 1
    new-instance v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;

    .line 3
    invoke-direct {v0, p0}, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;-><init>(Ljcifs/smb/Trans2QueryFSInformationResponse;)V

    .line 6
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    .line 9
    move-result-wide v1

    .line 10
    iput-wide v1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    .line 12
    add-int/lit8 v1, p2, 0x8

    .line 14
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    .line 17
    move-result-wide v2

    .line 18
    iput-wide v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    .line 20
    add-int/lit8 v1, v1, 0x8

    .line 22
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 25
    move-result v2

    .line 26
    iput v2, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    .line 28
    add-int/lit8 v1, v1, 0x4

    .line 30
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 33
    move-result p1

    .line 34
    iput p1, v0, Ljcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    .line 36
    add-int/lit8 v1, v1, 0x4

    .line 38
    iput-object v0, p0, Ljcifs/smb/Trans2QueryFSInformationResponse;->info:Ljcifs/smb/AllocInfo;

    .line 40
    sub-int/2addr v1, p2

    .line 41
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "Trans2QueryFSInformationResponse["

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
