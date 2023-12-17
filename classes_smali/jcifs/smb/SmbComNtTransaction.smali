.class abstract Ljcifs/smb/SmbComNtTransaction;
.super Ljcifs/smb/SmbComTransaction;
.source "SmbComNtTransaction.java"


# static fields
.field private static final NTT_PRIMARY_SETUP_OFFSET:I

.field private static final NTT_SECONDARY_PARAMETER_OFFSET:I

.field public static final NT_TRANSACT_QUERY_SECURITY_DESC:I


# instance fields
.field public function:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92dd3

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComNtTransaction;->NTT_PRIMARY_SETUP_OFFSET:I

    const v0, 0x92da5

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComNtTransaction;->NTT_SECONDARY_PARAMETER_OFFSET:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComNtTransaction;->NT_TRANSACT_QUERY_SECURITY_DESC:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    const/16 v0, 0x45

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->primarySetupOffset:I

    const/16 v0, 0x33

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->secondaryParameterOffset:I

    return-void
.end method


# virtual methods
.method public writeParameterWordsWireFormat([BI)I
    .registers 8

    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 v1, -0x5f

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e

    add-int/lit8 v0, p2, 0x1

    iget-byte v3, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    aput-byte v3, p1, p2

    goto :goto_12

    :cond_e
    add-int/lit8 v0, p2, 0x1

    aput-byte v2, p1, p2

    :goto_12
    add-int/lit8 v3, v0, 0x1

    aput-byte v2, p1, v0

    add-int/lit8 v0, v3, 0x1

    aput-byte v2, p1, v3

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget-byte v3, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    if-eq v3, v1, :cond_3e

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    :cond_3e
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    if-nez v3, :cond_4c

    move v3, v2

    goto :goto_4e

    :cond_4c
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    :goto_4e
    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget-byte v3, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    if-ne v3, v1, :cond_60

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    :cond_60
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    if-nez v3, :cond_6e

    move v3, v2

    goto :goto_70

    :cond_6e
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    :goto_70
    int-to-long v3, v3

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget-byte v3, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    if-ne v3, v1, :cond_87

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    int-to-long v3, v1

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    aput-byte v2, p1, v0

    goto :goto_9b

    :cond_87
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    iget v0, p0, Ljcifs/smb/SmbComNtTransaction;->function:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, p1, v1}, Ljcifs/smb/SmbComTransaction;->writeSetupWireFormat([BI)I

    move-result p1

    add-int/2addr v1, p1

    :goto_9b
    sub-int/2addr v1, p2

    return v1
.end method
