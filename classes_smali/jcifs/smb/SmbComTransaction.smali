.class abstract Ljcifs/smb/SmbComTransaction;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComTransaction.java"

# interfaces
.implements Ljava/util/Enumeration;


# static fields
.field private static final DEFAULT_MAX_DATA_COUNT:I

.field private static final DISCONNECT_TID:I = 0x1

.field public static final NET_SERVER_ENUM2:I = 0x68

.field public static final NET_SERVER_ENUM3:I = 0xd7

.field public static final NET_SHARE_ENUM:I = 0x0

.field private static final ONE_WAY_TRANSACTION:I = 0x2

.field private static final PADDING_SIZE:I = 0x2

.field private static final PRIMARY_SETUP_OFFSET:I = 0x3d

.field private static final SECONDARY_PARAMETER_OFFSET:I = 0x33

.field public static final TRANS2_FIND_FIRST2:B = 0x1t

.field public static final TRANS2_FIND_NEXT2:B = 0x2t

.field public static final TRANS2_GET_DFS_REFERRAL:B = 0x10t

.field public static final TRANS2_QUERY_FS_INFORMATION:B = 0x3t

.field public static final TRANS2_QUERY_PATH_INFORMATION:B = 0x5t

.field public static final TRANS2_SET_FILE_INFORMATION:B = 0x8t

.field public static final TRANSACTION_BUF_SIZE:I = 0xffff

.field public static final TRANS_CALL_NAMED_PIPE:B = 0x54t

.field public static final TRANS_PEEK_NAMED_PIPE:B = 0x23t

.field public static final TRANS_TRANSACT_NAMED_PIPE:B = 0x26t

.field public static final TRANS_WAIT_NAMED_PIPE:B = 0x53t


# instance fields
.field private bufDataOffset:I

.field private bufParameterOffset:I

.field public dataCount:I

.field public dataDisplacement:I

.field public dataOffset:I

.field private fid:I

.field private flags:I

.field private hasMore:Z

.field private isPrimary:Z

.field public maxBufferSize:I

.field public maxDataCount:I

.field public maxParameterCount:I

.field public maxSetupCount:B

.field public name:Ljava/lang/String;

.field private pad:I

.field private pad1:I

.field public parameterCount:I

.field public parameterDisplacement:I

.field public parameterOffset:I

.field public primarySetupOffset:I

.field public secondaryParameterOffset:I

.field public setupCount:I

.field public subCommand:B

.field public timeout:I

.field public totalDataCount:I

.field public totalParameterCount:I

.field public txn_buf:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "jcifs.smb.client.transaction_buf_size"

    const v1, 0xffff

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit16 v0, v0, -0x200

    sput v0, Ljcifs/smb/SmbComTransaction;->DEFAULT_MAX_DATA_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->flags:I

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    iput-boolean v1, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    sget v2, Ljcifs/smb/SmbComTransaction;->DEFAULT_MAX_DATA_COUNT:I

    iput v2, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    const-string v0, ""

    iput-object v0, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    const/16 v0, 0x400

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    const/16 v0, 0x3d

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->primarySetupOffset:I

    const/16 v0, 0x33

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->secondaryParameterOffset:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    iget-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 6

    iget-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    const/16 v1, -0x60

    const/4 v2, 0x0

    if-eqz v0, :cond_82

    iput-boolean v2, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->primarySetupOffset:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x25

    if-ne v0, v1, :cond_34

    invoke-virtual {p0}, Ljcifs/smb/ServerMessageBlock;->isResponse()Z

    move-result v0

    if-nez v0, :cond_34

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget-object v1, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljcifs/smb/ServerMessageBlock;->stringWireLength(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    goto :goto_34

    :cond_2e
    if-ne v0, v1, :cond_34

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    :cond_34
    :goto_34
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    rem-int/lit8 v1, v0, 0x2

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    if-nez v1, :cond_3e

    move v1, v2

    goto :goto_40

    :cond_3e
    rsub-int/lit8 v1, v1, 0x2

    :goto_40
    iput v1, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    add-int/2addr v0, v1

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->bufParameterOffset:I

    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbComTransaction;->writeParametersWireFormat([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->maxBufferSize:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    sub-int/2addr v1, v0

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    rem-int/lit8 v0, v3, 0x2

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    if-nez v0, :cond_6a

    move v0, v2

    goto :goto_6c

    :cond_6a
    rsub-int/lit8 v0, v0, 0x2

    :goto_6c
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    add-int/2addr v3, v0

    iput v3, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    invoke-virtual {p0, v0, v3}, Ljcifs/smb/SmbComTransaction;->writeDataWireFormat([BI)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    goto :goto_e6

    :cond_82
    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    if-eq v0, v1, :cond_8b

    const/16 v0, 0x26

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    goto :goto_8f

    :cond_8b
    const/16 v0, -0x5f

    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    :goto_8f
    const/16 v0, 0x33

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    sub-int v4, v1, v3

    if-lez v4, :cond_ac

    const/16 v4, 0x33

    rem-int/lit8 v4, v4, 0x2

    iput v4, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    if-nez v4, :cond_a5

    move v4, v2

    goto :goto_a7

    :cond_a5
    rsub-int/lit8 v4, v4, 0x2

    :goto_a7
    iput v4, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    add-int/2addr v0, v4

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    :cond_ac
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v3, v0

    iput v3, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->maxBufferSize:I

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    sub-int/2addr v0, v4

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    sub-int/2addr v0, v4

    sub-int/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    sub-int/2addr v0, v1

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    add-int/2addr v3, v1

    iput v3, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    rem-int/lit8 v1, v3, 0x2

    iput v1, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    if-nez v1, :cond_ce

    move v1, v2

    goto :goto_d0

    :cond_ce
    rsub-int/lit8 v1, v1, 0x2

    :goto_d0
    iput v1, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    add-int/2addr v3, v1

    iput v3, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    add-int/2addr v3, v4

    iput v3, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    sub-int/2addr v0, v1

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    sub-int/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    :goto_e6
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v0, v1

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    if-lt v0, v1, :cond_fa

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    add-int/2addr v0, v1

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    if-lt v0, v1, :cond_fa

    iput-boolean v2, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    :cond_fa
    return-object p0
.end method

.method public readBytesWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public abstract readDataWireFormat([BII)I
.end method

.method public readParameterWordsWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public abstract readParametersWireFormat([BII)I
.end method

.method public abstract readSetupWireFormat([BII)I
.end method

.method public reset()V
    .registers 2

    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    iput-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    return-void
.end method

.method public reset(ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Ljcifs/smb/SmbComTransaction;->reset()V

    return-void
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

    const-string v2, ",totalParameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",totalDataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",maxParameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",maxDataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",maxSetupCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->flags:I

    const/4 v3, 0x2

    const-string v4, ",timeout="

    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",parameterCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",parameterOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",parameterDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",dataDisplacement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",setupCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pad1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .registers 8

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 v2, 0x25

    if-ne v1, v2, :cond_16

    invoke-virtual {p0}, Ljcifs/smb/ServerMessageBlock;->isResponse()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr v1, p2

    goto :goto_17

    :cond_16
    move v1, p2

    :goto_17
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    const/4 v3, 0x0

    if-lez v2, :cond_34

    :goto_1c
    add-int/lit8 v2, v0, -0x1

    if-gtz v0, :cond_2d

    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->bufParameterOffset:I

    iget v4, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    invoke-static {v0, v2, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    add-int/2addr v1, v0

    goto :goto_34

    :cond_2d
    add-int/lit8 v0, v1, 0x1

    aput-byte v3, p1, v1

    move v1, v0

    move v0, v2

    goto :goto_1c

    :cond_34
    :goto_34
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    if-lez v0, :cond_57

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    :goto_3a
    add-int/lit8 v2, v0, -0x1

    if-gtz v0, :cond_50

    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    add-int/2addr p1, v0

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    add-int/2addr v1, v0

    goto :goto_57

    :cond_50
    add-int/lit8 v0, v1, 0x1

    aput-byte v3, p1, v1

    move v1, v0

    move v0, v2

    goto :goto_3a

    :cond_57
    :goto_57
    sub-int/2addr v1, p2

    return v1
.end method

.method public abstract writeDataWireFormat([BI)I
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 9

    iget v0, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 v2, 0x26

    const/4 v3, 0x0

    if-eq v1, v2, :cond_49

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x1

    iget-byte v4, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    aput-byte v4, p1, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v3, p1, v1

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->flags:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    aput-byte v3, p1, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v3, p1, v1

    :cond_49
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    if-ne v1, v2, :cond_65

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    :cond_65
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    if-nez v1, :cond_73

    move v1, v3

    goto :goto_75

    :cond_73
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    :goto_75
    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    if-ne v1, v2, :cond_88

    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_98

    :cond_88
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    aput-byte v3, p1, v1

    invoke-virtual {p0, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeSetupWireFormat([BI)I

    move-result p1

    add-int/2addr v0, p1

    :goto_98
    sub-int/2addr v0, p2

    return v0
.end method

.method public abstract writeParametersWireFormat([BI)I
.end method

.method public abstract writeSetupWireFormat([BI)I
.end method
