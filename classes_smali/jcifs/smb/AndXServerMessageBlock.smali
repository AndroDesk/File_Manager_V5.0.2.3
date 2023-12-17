.class abstract Ljcifs/smb/AndXServerMessageBlock;
.super Ljcifs/smb/ServerMessageBlock;
.source "AndXServerMessageBlock.java"


# static fields
.field private static final ANDX_COMMAND_OFFSET:I

.field private static final ANDX_OFFSET_OFFSET:I

.field private static final ANDX_RESERVED_OFFSET:I


# instance fields
.field public andx:Ljcifs/smb/ServerMessageBlock;

.field private andxCommand:B

.field private andxOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/AndXServerMessageBlock;->ANDX_COMMAND_OFFSET:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/AndXServerMessageBlock;->ANDX_OFFSET_OFFSET:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/AndXServerMessageBlock;->ANDX_RESERVED_OFFSET:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/ServerMessageBlock;)V
    .registers 3

    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    if-eqz p1, :cond_14

    iput-object p1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget-byte p1, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    iput-byte p1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    :cond_14
    return-void
.end method


# virtual methods
.method public decode([BI)I
    .registers 4

    iput p2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->readHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/AndXServerMessageBlock;->readAndXWireFormat([BI)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    return v0
.end method

.method public encode([BI)I
    .registers 10

    iput p2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeHeaderWireFormat([BI)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/AndXServerMessageBlock;->writeAndXWireFormat([BI)I

    move-result v1

    add-int/2addr v0, v1

    sub-int v4, v0, p2

    iput v4, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    iget-object v1, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    if-eqz v1, :cond_1d

    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    iget-object v6, p0, Ljcifs/smb/ServerMessageBlock;->response:Ljcifs/smb/ServerMessageBlock;

    move-object v2, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Ljcifs/smb/SigningDigest;->sign([BIILjcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    :cond_1d
    iget p1, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    return p1
.end method

.method public getBatchLimit(B)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public readAndXWireFormat([BI)I
    .registers 9

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_3a

    aget-byte v1, p1, v0

    iput-byte v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    add-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    if-nez v1, :cond_1a

    iput-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    :cond_1a
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    if-le v1, v3, :cond_36

    add-int/lit8 v1, v0, 0x4

    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->readParameterWordsWireFormat([BI)I

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 v4, -0x5e

    if-ne v1, v4, :cond_36

    move-object v1, p0

    check-cast v1, Ljcifs/smb/SmbComNTCreateAndXResponse;

    iget-boolean v1, v1, Ljcifs/smb/SmbComNTCreateAndXResponse;->isExtended:Z

    if-eqz v1, :cond_36

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    :cond_36
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    :cond_3a
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr v0, v3

    if-eqz v1, :cond_49

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->readBytesWireFormat([BI)I

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr v0, v1

    :cond_49
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    if-nez v1, :cond_c5

    iget-byte v4, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    if-ne v4, v2, :cond_53

    goto/16 :goto_c5

    :cond_53
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    if-eqz v0, :cond_bb

    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    iget v5, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    add-int/2addr v5, v2

    iput v2, v0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    iput-byte v4, v0, Ljcifs/smb/ServerMessageBlock;->command:B

    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    iput-byte v1, v0, Ljcifs/smb/ServerMessageBlock;->flags:B

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->tid:I

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->pid:I

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->uid:I

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->mid:I

    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    iput-boolean v1, v0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    instance-of v1, v0, Ljcifs/smb/AndXServerMessageBlock;

    if-eqz v1, :cond_8b

    check-cast v0, Ljcifs/smb/AndXServerMessageBlock;

    invoke-virtual {v0, p1, v5}, Ljcifs/smb/AndXServerMessageBlock;->readAndXWireFormat([BI)I

    move-result p1

    add-int/2addr v5, p1

    move v0, v5

    goto :goto_b5

    :cond_8b
    add-int/lit8 v1, v5, 0x1

    iget v2, v0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v5

    if-eqz v2, :cond_9d

    if-le v2, v3, :cond_9d

    invoke-virtual {v0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->readParameterWordsWireFormat([BI)I

    move-result v0

    add-int/2addr v1, v0

    :cond_9d
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v2

    iput v2, v0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr v1, v3

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v2, v0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    if-eqz v2, :cond_b4

    invoke-virtual {v0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->readBytesWireFormat([BI)I

    iget-object p1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget p1, p1, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/2addr v1, p1

    :cond_b4
    move v0, v1

    :goto_b5
    iget-object p1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    const/4 v1, 0x1

    iput-boolean v1, p1, Ljcifs/smb/ServerMessageBlock;->received:Z

    goto :goto_ca

    :cond_bb
    iput-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "no andx command supplied with response"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c5
    :goto_c5
    iput-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    const/4 p1, 0x0

    iput-object p1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    :goto_ca
    sub-int/2addr v0, p2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ",andxCommand=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    const/4 v3, 0x2

    const-string v4, ",andxOffset="

    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeAndXWireFormat([BI)I
    .registers 8

    add-int/lit8 v0, p2, 0x3

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeParameterWordsWireFormat([BI)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    add-int/lit8 v2, v1, 0x1

    add-int/2addr v2, p2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v2, 0x2

    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeBytesWireFormat([BI)I

    move-result v1

    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/lit8 v3, v2, 0x1

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/2addr v2, v1

    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    const/4 v3, 0x0

    if-eqz v1, :cond_ac

    sget-boolean v4, Ljcifs/smb/SmbConstants;->USE_BATCHING:Z

    if-eqz v4, :cond_ac

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->batchLevel:I

    iget-byte v1, v1, Ljcifs/smb/ServerMessageBlock;->command:B

    invoke-virtual {p0, v1}, Ljcifs/smb/AndXServerMessageBlock;->getBatchLimit(B)I

    move-result v1

    if-lt v4, v1, :cond_45

    goto :goto_ac

    :cond_45
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->batchLevel:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Ljcifs/smb/ServerMessageBlock;->batchLevel:I

    add-int/lit8 v1, p2, 0x1

    iget-byte v4, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    aput-byte v4, p1, v1

    add-int/lit8 v1, p2, 0x2

    aput-byte v3, p1, v1

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    sub-int v1, v2, v1

    iput v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    int-to-long v3, v1

    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    iput-boolean v1, v0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    instance-of v1, v0, Ljcifs/smb/AndXServerMessageBlock;

    if-eqz v1, :cond_77

    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->uid:I

    check-cast v0, Ljcifs/smb/AndXServerMessageBlock;

    invoke-virtual {v0, p1, v2}, Ljcifs/smb/AndXServerMessageBlock;->writeAndXWireFormat([BI)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_aa

    :cond_77
    invoke-virtual {v0, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeParameterWordsWireFormat([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v1, v0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    add-int/lit8 v1, v3, 0x2

    invoke-virtual {v0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeBytesWireFormat([BI)I

    move-result v1

    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    add-int/lit8 v0, v3, 0x1

    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    iget v1, v1, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v3

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/2addr v2, v1

    :goto_aa
    sub-int/2addr v2, p2

    return v2

    :cond_ac
    :goto_ac
    const/4 v1, -0x1

    iput-byte v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    const/4 v4, 0x0

    iput-object v4, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    add-int/lit8 v4, p2, 0x1

    aput-byte v1, p1, v4

    add-int/lit8 v1, p2, 0x2

    aput-byte v3, p1, v1

    const/16 v1, -0x22

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    aput-byte v1, p1, v0

    sub-int/2addr v2, p2

    return v2
.end method
