.class abstract Ljcifs/smb/AndXServerMessageBlock;
.super Ljcifs/smb/ServerMessageBlock;
.source "AndXServerMessageBlock.java"


# static fields
.field private static final ANDX_COMMAND_OFFSET:I = 0x1

.field private static final ANDX_OFFSET_OFFSET:I = 0x3

.field private static final ANDX_RESERVED_OFFSET:I = 0x2


# instance fields
.field public andx:Ljcifs/smb/ServerMessageBlock;

.field private andxCommand:B

.field private andxOffset:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/ServerMessageBlock;)V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    if-eqz p1, :cond_14

    .line 9
    iput-object p1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    .line 10
    iget-byte p1, p1, Ljcifs/smb/ServerMessageBlock;->command:B

    iput-byte p1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    :cond_14
    return-void
.end method


# virtual methods
.method public decode([BI)I
    .registers 4

    .line 1
    iput p2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    .line 3
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->readHeaderWireFormat([BI)I

    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p2

    .line 8
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/AndXServerMessageBlock;->readAndXWireFormat([BI)I

    .line 11
    move-result p1

    .line 12
    add-int/2addr v0, p1

    .line 13
    sub-int/2addr v0, p2

    .line 14
    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    .line 16
    return v0
.end method

.method public encode([BI)I
    .registers 10

    .line 1
    iput p2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    .line 3
    invoke-virtual {p0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeHeaderWireFormat([BI)I

    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p2

    .line 8
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/AndXServerMessageBlock;->writeAndXWireFormat([BI)I

    .line 11
    move-result v1

    .line 12
    add-int/2addr v0, v1

    .line 13
    sub-int v4, v0, p2

    .line 15
    iput v4, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    .line 17
    iget-object v1, p0, Ljcifs/smb/ServerMessageBlock;->digest:Ljcifs/smb/SigningDigest;

    .line 19
    if-eqz v1, :cond_1d

    .line 21
    iget v3, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    .line 23
    iget-object v6, p0, Ljcifs/smb/ServerMessageBlock;->response:Ljcifs/smb/ServerMessageBlock;

    .line 25
    move-object v2, p1

    .line 26
    move-object v5, p0

    .line 27
    invoke-virtual/range {v1 .. v6}, Ljcifs/smb/SigningDigest;->sign([BIILjcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V

    .line 30
    :cond_1d
    iget p1, p0, Ljcifs/smb/ServerMessageBlock;->length:I

    .line 32
    return p1
.end method

.method public getBatchLimit(B)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public readAndXWireFormat([BI)I
    .registers 9

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    aget-byte v1, p1, p2

    .line 5
    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    if-eqz v1, :cond_3a

    .line 11
    aget-byte v1, p1, v0

    .line 13
    iput-byte v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    .line 15
    add-int/lit8 v1, v0, 0x2

    .line 17
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 20
    move-result v1

    .line 21
    iput v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    .line 23
    if-nez v1, :cond_1a

    .line 25
    iput-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    .line 27
    :cond_1a
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 29
    if-le v1, v3, :cond_36

    .line 31
    add-int/lit8 v1, v0, 0x4

    .line 33
    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->readParameterWordsWireFormat([BI)I

    .line 36
    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 38
    const/16 v4, -0x5e

    .line 40
    if-ne v1, v4, :cond_36

    .line 42
    move-object v1, p0

    .line 43
    check-cast v1, Ljcifs/smb/SmbComNTCreateAndXResponse;

    .line 45
    iget-boolean v1, v1, Ljcifs/smb/SmbComNTCreateAndXResponse;->isExtended:Z

    .line 47
    if-eqz v1, :cond_36

    .line 49
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 51
    add-int/lit8 v1, v1, 0x8

    .line 53
    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 55
    :cond_36
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 57
    mul-int/2addr v1, v3

    .line 58
    add-int/2addr v0, v1

    .line 59
    :cond_3a
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 62
    move-result v1

    .line 63
    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 65
    add-int/2addr v0, v3

    .line 66
    if-eqz v1, :cond_49

    .line 68
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/ServerMessageBlock;->readBytesWireFormat([BI)I

    .line 71
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 73
    add-int/2addr v0, v1

    .line 74
    :cond_49
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 76
    if-nez v1, :cond_c5

    .line 78
    iget-byte v4, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    .line 80
    if-ne v4, v2, :cond_53

    .line 82
    goto/16 :goto_c5

    .line 84
    :cond_53
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    .line 86
    if-eqz v0, :cond_bb

    .line 88
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    .line 90
    iget v5, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    .line 92
    add-int/2addr v5, v2

    .line 93
    iput v2, v0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    .line 95
    iput-byte v4, v0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 97
    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->errorCode:I

    .line 99
    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->flags:B

    .line 101
    iput-byte v1, v0, Ljcifs/smb/ServerMessageBlock;->flags:B

    .line 103
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 105
    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 107
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->tid:I

    .line 109
    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->tid:I

    .line 111
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->pid:I

    .line 113
    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->pid:I

    .line 115
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 117
    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 119
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->mid:I

    .line 121
    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->mid:I

    .line 123
    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 125
    iput-boolean v1, v0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 127
    instance-of v1, v0, Ljcifs/smb/AndXServerMessageBlock;

    .line 129
    if-eqz v1, :cond_8b

    .line 131
    check-cast v0, Ljcifs/smb/AndXServerMessageBlock;

    .line 133
    invoke-virtual {v0, p1, v5}, Ljcifs/smb/AndXServerMessageBlock;->readAndXWireFormat([BI)I

    .line 136
    move-result p1

    .line 137
    add-int/2addr v5, p1

    .line 138
    move v0, v5

    .line 139
    goto :goto_b5

    .line 140
    :cond_8b
    add-int/lit8 v1, v5, 0x1

    .line 142
    iget v2, v0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 144
    and-int/lit16 v4, v2, 0xff

    .line 146
    int-to-byte v4, v4

    .line 147
    aput-byte v4, p1, v5

    .line 149
    if-eqz v2, :cond_9d

    .line 151
    if-le v2, v3, :cond_9d

    .line 153
    invoke-virtual {v0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->readParameterWordsWireFormat([BI)I

    .line 156
    move-result v0

    .line 157
    add-int/2addr v1, v0

    .line 158
    :cond_9d
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    .line 160
    invoke-static {p1, v1}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 163
    move-result v2

    .line 164
    iput v2, v0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 166
    add-int/2addr v1, v3

    .line 167
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    .line 169
    iget v2, v0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 171
    if-eqz v2, :cond_b4

    .line 173
    invoke-virtual {v0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->readBytesWireFormat([BI)I

    .line 176
    iget-object p1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    .line 178
    iget p1, p1, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 180
    add-int/2addr v1, p1

    .line 181
    :cond_b4
    move v0, v1

    .line 182
    :goto_b5
    iget-object p1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    .line 184
    const/4 v1, 0x1

    .line 185
    iput-boolean v1, p1, Ljcifs/smb/ServerMessageBlock;->received:Z

    .line 187
    goto :goto_ca

    .line 188
    :cond_bb
    iput-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    .line 190
    new-instance p1, Ljava/lang/RuntimeException;

    .line 192
    const-string p2, "no andx command supplied with response"

    .line 194
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 197
    throw p1

    .line 198
    :cond_c5
    :goto_c5
    iput-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    .line 200
    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    .line 203
    :goto_ca
    sub-int/2addr v0, p2

    .line 204
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

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
    const-string v2, ",andxCommand=0x"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-byte v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    .line 23
    const/4 v3, 0x2

    .line 24
    const-string v4, ",andxOffset="

    .line 26
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 29
    iget v2, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 41
    return-object v0
.end method

.method public writeAndXWireFormat([BI)I
    .registers 8

    .line 1
    add-int/lit8 v0, p2, 0x3

    .line 3
    add-int/lit8 v1, v0, 0x2

    .line 5
    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeParameterWordsWireFormat([BI)I

    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, 0x4

    .line 11
    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 13
    add-int/lit8 v2, v1, 0x1

    .line 15
    add-int/2addr v2, p2

    .line 16
    div-int/lit8 v1, v1, 0x2

    .line 18
    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 22
    int-to-byte v1, v1

    .line 23
    aput-byte v1, p1, p2

    .line 25
    add-int/lit8 v1, v2, 0x2

    .line 27
    invoke-virtual {p0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeBytesWireFormat([BI)I

    .line 30
    move-result v1

    .line 31
    iput v1, p0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 33
    add-int/lit8 v3, v2, 0x1

    .line 35
    and-int/lit16 v4, v1, 0xff

    .line 37
    int-to-byte v4, v4

    .line 38
    aput-byte v4, p1, v2

    .line 40
    add-int/lit8 v2, v3, 0x1

    .line 42
    shr-int/lit8 v4, v1, 0x8

    .line 44
    and-int/lit16 v4, v4, 0xff

    .line 46
    int-to-byte v4, v4

    .line 47
    aput-byte v4, p1, v3

    .line 49
    add-int/2addr v2, v1

    .line 50
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    .line 52
    const/4 v3, 0x0

    .line 53
    if-eqz v1, :cond_ac

    .line 55
    sget-boolean v4, Ljcifs/smb/SmbConstants;->USE_BATCHING:Z

    .line 57
    if-eqz v4, :cond_ac

    .line 59
    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->batchLevel:I

    .line 61
    iget-byte v1, v1, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 63
    invoke-virtual {p0, v1}, Ljcifs/smb/AndXServerMessageBlock;->getBatchLimit(B)I

    .line 66
    move-result v1

    .line 67
    if-lt v4, v1, :cond_45

    .line 69
    goto :goto_ac

    .line 70
    :cond_45
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    .line 72
    iget v4, p0, Ljcifs/smb/ServerMessageBlock;->batchLevel:I

    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 76
    iput v4, v1, Ljcifs/smb/ServerMessageBlock;->batchLevel:I

    .line 78
    add-int/lit8 v1, p2, 0x1

    .line 80
    iget-byte v4, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    .line 82
    aput-byte v4, p1, v1

    .line 84
    add-int/lit8 v1, p2, 0x2

    .line 86
    aput-byte v3, p1, v1

    .line 88
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->headerStart:I

    .line 90
    sub-int v1, v2, v1

    .line 92
    iput v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxOffset:I

    .line 94
    int-to-long v3, v1

    .line 95
    invoke-static {v3, v4, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 98
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    .line 100
    iget-boolean v1, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 102
    iput-boolean v1, v0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 104
    instance-of v1, v0, Ljcifs/smb/AndXServerMessageBlock;

    .line 106
    if-eqz v1, :cond_77

    .line 108
    iget v1, p0, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 110
    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->uid:I

    .line 112
    check-cast v0, Ljcifs/smb/AndXServerMessageBlock;

    .line 114
    invoke-virtual {v0, p1, v2}, Ljcifs/smb/AndXServerMessageBlock;->writeAndXWireFormat([BI)I

    .line 117
    move-result p1

    .line 118
    add-int/2addr v2, p1

    .line 119
    goto :goto_aa

    .line 120
    :cond_77
    invoke-virtual {v0, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeParameterWordsWireFormat([BI)I

    .line 123
    move-result v1

    .line 124
    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 126
    iget-object v0, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    .line 128
    iget v1, v0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 130
    add-int/lit8 v3, v1, 0x1

    .line 132
    add-int/2addr v3, v2

    .line 133
    div-int/lit8 v1, v1, 0x2

    .line 135
    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 137
    and-int/lit16 v1, v1, 0xff

    .line 139
    int-to-byte v1, v1

    .line 140
    aput-byte v1, p1, v2

    .line 142
    add-int/lit8 v1, v3, 0x2

    .line 144
    invoke-virtual {v0, p1, v1}, Ljcifs/smb/ServerMessageBlock;->writeBytesWireFormat([BI)I

    .line 147
    move-result v1

    .line 148
    iput v1, v0, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 150
    add-int/lit8 v0, v3, 0x1

    .line 152
    iget-object v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    .line 154
    iget v1, v1, Ljcifs/smb/ServerMessageBlock;->byteCount:I

    .line 156
    and-int/lit16 v2, v1, 0xff

    .line 158
    int-to-byte v2, v2

    .line 159
    aput-byte v2, p1, v3

    .line 161
    add-int/lit8 v2, v0, 0x1

    .line 163
    shr-int/lit8 v3, v1, 0x8

    .line 165
    and-int/lit16 v3, v3, 0xff

    .line 167
    int-to-byte v3, v3

    .line 168
    aput-byte v3, p1, v0

    .line 170
    add-int/2addr v2, v1

    .line 171
    :goto_aa
    sub-int/2addr v2, p2

    .line 172
    return v2

    .line 173
    :cond_ac
    :goto_ac
    const/4 v1, -0x1

    .line 174
    iput-byte v1, p0, Ljcifs/smb/AndXServerMessageBlock;->andxCommand:B

    .line 176
    const/4 v4, 0x0

    .line 177
    iput-object v4, p0, Ljcifs/smb/AndXServerMessageBlock;->andx:Ljcifs/smb/ServerMessageBlock;

    .line 179
    add-int/lit8 v4, p2, 0x1

    .line 181
    aput-byte v1, p1, v4

    .line 183
    add-int/lit8 v1, p2, 0x2

    .line 185
    aput-byte v3, p1, v1

    .line 187
    const/16 v1, -0x22

    .line 189
    aput-byte v1, p1, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    .line 193
    aput-byte v1, p1, v0

    .line 195
    sub-int/2addr v2, p2

    .line 196
    return v2
.end method
