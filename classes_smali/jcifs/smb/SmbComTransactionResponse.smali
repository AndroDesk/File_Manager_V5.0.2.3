.class abstract Ljcifs/smb/SmbComTransactionResponse;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComTransactionResponse.java"

# interfaces
.implements Ljava/util/Enumeration;


# static fields
.field private static final DISCONNECT_TID:I = 0x1

.field private static final ONE_WAY_TRANSACTION:I = 0x2

.field private static final SETUP_OFFSET:I = 0x3d


# instance fields
.field public bufDataStart:I

.field public bufParameterStart:I

.field public dataCount:I

.field public dataDisplacement:I

.field private dataDone:Z

.field public dataOffset:I

.field public hasMore:Z

.field public isPrimary:Z

.field public numEntries:I

.field private pad:I

.field private pad1:I

.field public parameterCount:I

.field public parameterDisplacement:I

.field public parameterOffset:I

.field private parametersDone:Z

.field public results:[Ljcifs/smb/FileEntry;

.field public setupCount:I

.field public status:I

.field public subCommand:B

.field public totalDataCount:I

.field public totalParameterCount:I

.field public txn_buf:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->hasMore:Z

    .line 7
    iput-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->isPrimary:Z

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    .line 12
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .line 1
    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 3
    if-nez v0, :cond_a

    .line 5
    iget-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->hasMore:Z

    .line 7
    if-eqz v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->isPrimary:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->isPrimary:Z

    .line 8
    :cond_7
    return-object p0
.end method

.method public readBytesWireFormat([BI)I
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ljcifs/smb/SmbComTransactionResponse;->pad1:I

    .line 4
    iput v0, p0, Ljcifs/smb/SmbComTransactionResponse;->pad:I

    .line 6
    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    .line 8
    if-lez v1, :cond_20

    .line 10
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterOffset:I

    .line 12
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    .line 14
    sub-int v3, p2, v3

    .line 16
    sub-int/2addr v2, v3

    .line 17
    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->pad:I

    .line 19
    add-int/2addr p2, v2

    .line 20
    iget-object v2, p0, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    .line 22
    iget v3, p0, Ljcifs/smb/SmbComTransactionResponse;->bufParameterStart:I

    .line 24
    iget v4, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    .line 26
    add-int/2addr v3, v4

    .line 27
    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    .line 32
    add-int/2addr p2, v1

    .line 33
    :cond_20
    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    .line 35
    if-lez v1, :cond_38

    .line 37
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataOffset:I

    .line 39
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    .line 41
    sub-int v3, p2, v3

    .line 43
    sub-int/2addr v2, v3

    .line 44
    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->pad1:I

    .line 46
    add-int/2addr p2, v2

    .line 47
    iget-object v2, p0, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    .line 49
    iget v3, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    .line 51
    iget v4, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    .line 53
    add-int/2addr v3, v4

    .line 54
    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    :cond_38
    iget-boolean p1, p0, Ljcifs/smb/SmbComTransactionResponse;->parametersDone:Z

    .line 59
    const/4 p2, 0x1

    .line 60
    if-nez p1, :cond_48

    .line 62
    iget p1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    .line 64
    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    .line 66
    add-int/2addr p1, v1

    .line 67
    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    .line 69
    if-ne p1, v1, :cond_48

    .line 71
    iput-boolean p2, p0, Ljcifs/smb/SmbComTransactionResponse;->parametersDone:Z

    .line 73
    :cond_48
    iget-boolean p1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDone:Z

    .line 75
    if-nez p1, :cond_57

    .line 77
    iget p1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    .line 79
    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    .line 81
    add-int/2addr p1, v1

    .line 82
    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    .line 84
    if-ne p1, v1, :cond_57

    .line 86
    iput-boolean p2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDone:Z

    .line 88
    :cond_57
    iget-boolean p1, p0, Ljcifs/smb/SmbComTransactionResponse;->parametersDone:Z

    .line 90
    if-eqz p1, :cond_73

    .line 92
    iget-boolean p1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDone:Z

    .line 94
    if-eqz p1, :cond_73

    .line 96
    iput-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->hasMore:Z

    .line 98
    iget-object p1, p0, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    .line 100
    iget p2, p0, Ljcifs/smb/SmbComTransactionResponse;->bufParameterStart:I

    .line 102
    iget v0, p0, Ljcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    .line 104
    invoke-virtual {p0, p1, p2, v0}, Ljcifs/smb/SmbComTransactionResponse;->readParametersWireFormat([BII)I

    .line 107
    iget-object p1, p0, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    .line 109
    iget p2, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    .line 111
    iget v0, p0, Ljcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    .line 113
    invoke-virtual {p0, p1, p2, v0}, Ljcifs/smb/SmbComTransactionResponse;->readDataWireFormat([BII)I

    .line 116
    :cond_73
    iget p1, p0, Ljcifs/smb/SmbComTransactionResponse;->pad:I

    .line 118
    iget p2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    .line 120
    add-int/2addr p1, p2

    .line 121
    iget p2, p0, Ljcifs/smb/SmbComTransactionResponse;->pad1:I

    .line 123
    add-int/2addr p1, p2

    .line 124
    iget p2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    .line 126
    add-int/2addr p1, p2

    .line 127
    return p1
.end method

.method public abstract readDataWireFormat([BII)I
.end method

.method public readParameterWordsWireFormat([BI)I
    .registers 6

    .line 1
    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 4
    move-result v0

    .line 5
    iput v0, p0, Ljcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    .line 7
    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    .line 9
    if-nez v1, :cond_c

    .line 11
    iput v0, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    .line 13
    :cond_c
    add-int/lit8 v0, p2, 0x2

    .line 15
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 18
    move-result v1

    .line 19
    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    .line 21
    add-int/lit8 v0, v0, 0x4

    .line 23
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 26
    move-result v1

    .line 27
    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    .line 29
    const/4 v1, 0x2

    .line 30
    add-int/2addr v0, v1

    .line 31
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 34
    move-result v2

    .line 35
    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterOffset:I

    .line 37
    add-int/2addr v0, v1

    .line 38
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 41
    move-result v2

    .line 42
    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    .line 44
    add-int/2addr v0, v1

    .line 45
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 48
    move-result v2

    .line 49
    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    .line 51
    add-int/2addr v0, v1

    .line 52
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 55
    move-result v2

    .line 56
    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataOffset:I

    .line 58
    add-int/2addr v0, v1

    .line 59
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 62
    move-result v2

    .line 63
    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    .line 65
    add-int/2addr v0, v1

    .line 66
    aget-byte p1, p1, v0

    .line 68
    and-int/lit16 p1, p1, 0xff

    .line 70
    iput p1, p0, Ljcifs/smb/SmbComTransactionResponse;->setupCount:I

    .line 72
    add-int/2addr v0, v1

    .line 73
    if-eqz p1, :cond_63

    .line 75
    sget p1, Ljcifs/util/LogStream;->level:I

    .line 77
    if-le p1, v1, :cond_63

    .line 79
    sget-object p1, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    const-string v2, "setupCount is not zero: "

    .line 85
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->setupCount:I

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    :cond_63
    sub-int/2addr v0, p2

    .line 101
    return v0
.end method

.method public abstract readParametersWireFormat([BII)I
.end method

.method public abstract readSetupWireFormat([BII)I
.end method

.method public reset()V
    .registers 3

    .line 1
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->reset()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Ljcifs/smb/SmbComTransactionResponse;->hasMore:Z

    .line 10
    iput-boolean v1, p0, Ljcifs/smb/SmbComTransactionResponse;->isPrimary:Z

    .line 12
    iput-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDone:Z

    .line 14
    iput-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->parametersDone:Z

    .line 16
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v2, ",totalParameterCount="

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v2, ",totalDataCount="

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, ",parameterCount="

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v2, ",parameterOffset="

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterOffset:I

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v2, ",parameterDisplacement="

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v2, ",dataCount="

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v2, ",dataOffset="

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataOffset:I

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v2, ",dataDisplacement="

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    const-string v2, ",setupCount="

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->setupCount:I

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v2, ",pad="

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->pad:I

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v2, ",pad1="

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->pad1:I

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v1

    .line 130
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 133
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public abstract writeDataWireFormat([BI)I
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public abstract writeParametersWireFormat([BI)I
.end method

.method public abstract writeSetupWireFormat([BI)I
.end method
