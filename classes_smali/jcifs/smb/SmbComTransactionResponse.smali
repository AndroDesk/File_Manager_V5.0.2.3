.class abstract Ljcifs/smb/SmbComTransactionResponse;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComTransactionResponse.java"

# interfaces
.implements Ljava/util/Enumeration;


# static fields
.field private static final DISCONNECT_TID:I

.field private static final ONE_WAY_TRANSACTION:I

.field private static final SETUP_OFFSET:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComTransactionResponse;->DISCONNECT_TID:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComTransactionResponse;->ONE_WAY_TRANSACTION:I

    const v0, 0x92dab

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComTransactionResponse;->SETUP_OFFSET:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->hasMore:Z

    iput-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->isPrimary:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    iget v0, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-nez v0, :cond_a

    iget-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->hasMore:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 2

    iget-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->isPrimary:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->isPrimary:Z

    :cond_7
    return-object p0
.end method

.method public readBytesWireFormat([BI)I
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/SmbComTransactionResponse;->pad1:I

    iput v0, p0, Ljcifs/smb/SmbComTransactionResponse;->pad:I

    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    if-lez v1, :cond_20

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterOffset:I

    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v3, p2, v3

    sub-int/2addr v2, v3

    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->pad:I

    add-int/2addr p2, v2

    iget-object v2, p0, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    iget v3, p0, Ljcifs/smb/SmbComTransactionResponse;->bufParameterStart:I

    iget v4, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    add-int/2addr v3, v4

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    add-int/2addr p2, v1

    :cond_20
    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    if-lez v1, :cond_38

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataOffset:I

    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v3, p2, v3

    sub-int/2addr v2, v3

    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->pad1:I

    add-int/2addr p2, v2

    iget-object v2, p0, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    iget v3, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    iget v4, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    add-int/2addr v3, v4

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_38
    iget-boolean p1, p0, Ljcifs/smb/SmbComTransactionResponse;->parametersDone:Z

    const/4 p2, 0x1

    if-nez p1, :cond_48

    iget p1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    add-int/2addr p1, v1

    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    if-ne p1, v1, :cond_48

    iput-boolean p2, p0, Ljcifs/smb/SmbComTransactionResponse;->parametersDone:Z

    :cond_48
    iget-boolean p1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDone:Z

    if-nez p1, :cond_57

    iget p1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    add-int/2addr p1, v1

    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    if-ne p1, v1, :cond_57

    iput-boolean p2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDone:Z

    :cond_57
    iget-boolean p1, p0, Ljcifs/smb/SmbComTransactionResponse;->parametersDone:Z

    if-eqz p1, :cond_73

    iget-boolean p1, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDone:Z

    if-eqz p1, :cond_73

    iput-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->hasMore:Z

    iget-object p1, p0, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    iget p2, p0, Ljcifs/smb/SmbComTransactionResponse;->bufParameterStart:I

    iget v0, p0, Ljcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    invoke-virtual {p0, p1, p2, v0}, Ljcifs/smb/SmbComTransactionResponse;->readParametersWireFormat([BII)I

    iget-object p1, p0, Ljcifs/smb/SmbComTransactionResponse;->txn_buf:[B

    iget p2, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    iget v0, p0, Ljcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    invoke-virtual {p0, p1, p2, v0}, Ljcifs/smb/SmbComTransactionResponse;->readDataWireFormat([BII)I

    :cond_73
    iget p1, p0, Ljcifs/smb/SmbComTransactionResponse;->pad:I

    iget p2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    add-int/2addr p1, p2

    iget p2, p0, Ljcifs/smb/SmbComTransactionResponse;->pad1:I

    add-int/2addr p1, p2

    iget p2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    add-int/2addr p1, p2

    return p1
.end method

.method public abstract readDataWireFormat([BII)I
.end method

.method public readParameterWordsWireFormat([BI)I
    .registers 6

    invoke-static {p1, p2}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    iget v1, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    if-nez v1, :cond_c

    iput v0, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    :cond_c
    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterOffset:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataOffset:I

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v2

    iput v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    add-int/2addr v0, v1

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Ljcifs/smb/SmbComTransactionResponse;->setupCount:I

    add-int/2addr v0, v1

    if-eqz p1, :cond_63

    sget p1, Ljcifs/util/LogStream;->level:I

    if-le p1, v1, :cond_63

    sget-object p1, Ljcifs/smb/ServerMessageBlock;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setupCount is not zero: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->setupCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_63
    sub-int/2addr v0, p2

    return v0
.end method

.method public abstract readParametersWireFormat([BII)I
.end method

.method public abstract readSetupWireFormat([BII)I
.end method

.method public reset()V
    .registers 3

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/SmbComTransactionResponse;->bufDataStart:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljcifs/smb/SmbComTransactionResponse;->hasMore:Z

    iput-boolean v1, p0, Ljcifs/smb/SmbComTransactionResponse;->isPrimary:Z

    iput-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDone:Z

    iput-boolean v0, p0, Ljcifs/smb/SmbComTransactionResponse;->parametersDone:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ",totalParameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->totalParameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",totalDataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->totalDataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",parameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",parameterOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",parameterDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->parameterDisplacement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->dataDisplacement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",setupCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->setupCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->pad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pad1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransactionResponse;->pad1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

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
