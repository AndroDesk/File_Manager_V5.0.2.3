.class abstract Ljcifs/smb/SmbComNtTransaction;
.super Ljcifs/smb/SmbComTransaction;
.source "SmbComNtTransaction.java"


# static fields
.field private static final NTT_PRIMARY_SETUP_OFFSET:I = 0x45

.field private static final NTT_SECONDARY_PARAMETER_OFFSET:I = 0x33

.field public static final NT_TRANSACT_QUERY_SECURITY_DESC:I = 0x6


# instance fields
.field public function:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 4
    const/16 v0, 0x45

    .line 6
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->primarySetupOffset:I

    .line 8
    const/16 v0, 0x33

    .line 10
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->secondaryParameterOffset:I

    .line 12
    return-void
.end method


# virtual methods
.method public writeParameterWordsWireFormat([BI)I
    .registers 8

    .line 1
    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 3
    const/16 v1, -0x5f

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_e

    .line 8
    add-int/lit8 v0, p2, 0x1

    .line 10
    iget-byte v3, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 12
    aput-byte v3, p1, p2

    .line 14
    goto :goto_12

    .line 15
    :cond_e
    add-int/lit8 v0, p2, 0x1

    .line 17
    aput-byte v2, p1, p2

    .line 19
    :goto_12
    add-int/lit8 v3, v0, 0x1

    .line 21
    aput-byte v2, p1, v0

    .line 23
    add-int/lit8 v0, v3, 0x1

    .line 25
    aput-byte v2, p1, v3

    .line 27
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    .line 29
    int-to-long v3, v3

    .line 30
    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 33
    add-int/lit8 v0, v0, 0x4

    .line 35
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    .line 37
    int-to-long v3, v3

    .line 38
    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 41
    add-int/lit8 v0, v0, 0x4

    .line 43
    iget-byte v3, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 45
    if-eq v3, v1, :cond_3e

    .line 47
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 49
    int-to-long v3, v3

    .line 50
    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 53
    add-int/lit8 v0, v0, 0x4

    .line 55
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 57
    int-to-long v3, v3

    .line 58
    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 61
    add-int/lit8 v0, v0, 0x4

    .line 63
    :cond_3e
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    .line 65
    int-to-long v3, v3

    .line 66
    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 69
    add-int/lit8 v0, v0, 0x4

    .line 71
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    .line 73
    if-nez v3, :cond_4c

    .line 75
    move v3, v2

    .line 76
    goto :goto_4e

    .line 77
    :cond_4c
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 79
    :goto_4e
    int-to-long v3, v3

    .line 80
    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 83
    add-int/lit8 v0, v0, 0x4

    .line 85
    iget-byte v3, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 87
    if-ne v3, v1, :cond_60

    .line 89
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    .line 91
    int-to-long v3, v3

    .line 92
    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 95
    add-int/lit8 v0, v0, 0x4

    .line 97
    :cond_60
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    .line 99
    int-to-long v3, v3

    .line 100
    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 103
    add-int/lit8 v0, v0, 0x4

    .line 105
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    .line 107
    if-nez v3, :cond_6e

    .line 109
    move v3, v2

    .line 110
    goto :goto_70

    .line 111
    :cond_6e
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    .line 113
    :goto_70
    int-to-long v3, v3

    .line 114
    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 117
    add-int/lit8 v0, v0, 0x4

    .line 119
    iget-byte v3, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 121
    if-ne v3, v1, :cond_87

    .line 123
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    .line 125
    int-to-long v3, v1

    .line 126
    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 129
    add-int/lit8 v0, v0, 0x4

    .line 131
    add-int/lit8 v1, v0, 0x1

    .line 133
    aput-byte v2, p1, v0

    .line 135
    goto :goto_9b

    .line 136
    :cond_87
    add-int/lit8 v1, v0, 0x1

    .line 138
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    .line 140
    int-to-byte v2, v2

    .line 141
    aput-byte v2, p1, v0

    .line 143
    iget v0, p0, Ljcifs/smb/SmbComNtTransaction;->function:I

    .line 145
    int-to-long v2, v0

    .line 146
    invoke-static {v2, v3, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 149
    add-int/lit8 v1, v1, 0x2

    .line 151
    invoke-virtual {p0, p1, v1}, Ljcifs/smb/SmbComTransaction;->writeSetupWireFormat([BI)I

    .line 154
    move-result p1

    .line 155
    add-int/2addr v1, p1

    .line 156
    :goto_9b
    sub-int/2addr v1, p2

    .line 157
    return v1
.end method
