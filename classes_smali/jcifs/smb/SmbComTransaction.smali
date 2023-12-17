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

    .line 1
    const-string v0, "jcifs.smb.client.transaction_buf_size"

    .line 3
    const v1, 0xffff

    .line 6
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 9
    move-result v0

    .line 10
    add-int/lit16 v0, v0, -0x200

    .line 12
    sput v0, Ljcifs/smb/SmbComTransaction;->DEFAULT_MAX_DATA_COUNT:I

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->flags:I

    .line 7
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    .line 9
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    .line 14
    iput-boolean v1, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    .line 16
    sget v2, Ljcifs/smb/SmbComTransaction;->DEFAULT_MAX_DATA_COUNT:I

    .line 18
    iput v2, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 20
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    .line 22
    iput v1, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    .line 24
    const-string v0, ""

    .line 26
    iput-object v0, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    .line 28
    const/16 v0, 0x400

    .line 30
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 32
    const/16 v0, 0x3d

    .line 34
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->primarySetupOffset:I

    .line 36
    const/16 v0, 0x33

    .line 38
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->secondaryParameterOffset:I

    .line 40
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    .line 3
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 6

    .line 1
    iget-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    .line 3
    const/16 v1, -0x60

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_82

    .line 8
    iput-boolean v2, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    .line 10
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->primarySetupOffset:I

    .line 12
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    .line 14
    mul-int/lit8 v3, v3, 0x2

    .line 16
    add-int/2addr v3, v0

    .line 17
    add-int/lit8 v3, v3, 0x2

    .line 19
    iput v3, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 21
    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 23
    if-eq v0, v1, :cond_2e

    .line 25
    const/16 v1, 0x25

    .line 27
    if-ne v0, v1, :cond_34

    .line 29
    invoke-virtual {p0}, Ljcifs/smb/ServerMessageBlock;->isResponse()Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_34

    .line 35
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 37
    iget-object v1, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, v1, v0}, Ljcifs/smb/ServerMessageBlock;->stringWireLength(Ljava/lang/String;I)I

    .line 42
    move-result v1

    .line 43
    add-int/2addr v0, v1

    .line 44
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 46
    goto :goto_34

    .line 47
    :cond_2e
    if-ne v0, v1, :cond_34

    .line 49
    add-int/lit8 v3, v3, 0x2

    .line 51
    iput v3, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 53
    :cond_34
    :goto_34
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 55
    rem-int/lit8 v1, v0, 0x2

    .line 57
    iput v1, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    .line 59
    if-nez v1, :cond_3e

    .line 61
    move v1, v2

    .line 62
    goto :goto_40

    .line 63
    :cond_3e
    rsub-int/lit8 v1, v1, 0x2

    .line 65
    :goto_40
    iput v1, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    .line 67
    add-int/2addr v0, v1

    .line 68
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 70
    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    .line 72
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->bufParameterOffset:I

    .line 74
    invoke-virtual {p0, v0, v1}, Ljcifs/smb/SmbComTransaction;->writeParametersWireFormat([BI)I

    .line 77
    move-result v0

    .line 78
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    .line 80
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    .line 82
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->maxBufferSize:I

    .line 84
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 86
    sub-int/2addr v1, v3

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 90
    move-result v0

    .line 91
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    .line 93
    sub-int/2addr v1, v0

    .line 94
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 96
    add-int/2addr v3, v0

    .line 97
    iput v3, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    .line 99
    rem-int/lit8 v0, v3, 0x2

    .line 101
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    .line 103
    if-nez v0, :cond_6a

    .line 105
    move v0, v2

    .line 106
    goto :goto_6c

    .line 107
    :cond_6a
    rsub-int/lit8 v0, v0, 0x2

    .line 109
    :goto_6c
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    .line 111
    add-int/2addr v3, v0

    .line 112
    iput v3, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    .line 114
    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    .line 116
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    .line 118
    invoke-virtual {p0, v0, v3}, Ljcifs/smb/SmbComTransaction;->writeDataWireFormat([BI)I

    .line 121
    move-result v0

    .line 122
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 127
    move-result v0

    .line 128
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    .line 130
    goto :goto_e6

    .line 131
    :cond_82
    iget-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 133
    if-eq v0, v1, :cond_8b

    .line 135
    const/16 v0, 0x26

    .line 137
    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 139
    goto :goto_8f

    .line 140
    :cond_8b
    const/16 v0, -0x5f

    .line 142
    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 144
    :goto_8f
    const/16 v0, 0x33

    .line 146
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 148
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    .line 150
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    .line 152
    sub-int v4, v1, v3

    .line 154
    if-lez v4, :cond_ac

    .line 156
    const/16 v4, 0x33

    .line 158
    rem-int/lit8 v4, v4, 0x2

    .line 160
    iput v4, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    .line 162
    if-nez v4, :cond_a5

    .line 164
    move v4, v2

    .line 165
    goto :goto_a7

    .line 166
    :cond_a5
    rsub-int/lit8 v4, v4, 0x2

    .line 168
    :goto_a7
    iput v4, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    .line 170
    add-int/2addr v0, v4

    .line 171
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 173
    :cond_ac
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    .line 175
    add-int/2addr v3, v0

    .line 176
    iput v3, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    .line 178
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->maxBufferSize:I

    .line 180
    iget v4, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 182
    sub-int/2addr v0, v4

    .line 183
    iget v4, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    .line 185
    sub-int/2addr v0, v4

    .line 186
    sub-int/2addr v1, v3

    .line 187
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 190
    move-result v1

    .line 191
    iput v1, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    .line 193
    sub-int/2addr v0, v1

    .line 194
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 196
    add-int/2addr v3, v1

    .line 197
    iput v3, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    .line 199
    rem-int/lit8 v1, v3, 0x2

    .line 201
    iput v1, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    .line 203
    if-nez v1, :cond_ce

    .line 205
    move v1, v2

    .line 206
    goto :goto_d0

    .line 207
    :cond_ce
    rsub-int/lit8 v1, v1, 0x2

    .line 209
    :goto_d0
    iput v1, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    .line 211
    add-int/2addr v3, v1

    .line 212
    iput v3, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    .line 214
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    .line 216
    iget v4, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    .line 218
    add-int/2addr v3, v4

    .line 219
    iput v3, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    .line 221
    sub-int/2addr v0, v1

    .line 222
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    .line 224
    sub-int/2addr v1, v3

    .line 225
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 228
    move-result v0

    .line 229
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    .line 231
    :goto_e6
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    .line 233
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    .line 235
    add-int/2addr v0, v1

    .line 236
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    .line 238
    if-lt v0, v1, :cond_fa

    .line 240
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    .line 242
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    .line 244
    add-int/2addr v0, v1

    .line 245
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    .line 247
    if-lt v0, v1, :cond_fa

    .line 249
    iput-boolean v2, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    .line 251
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

    .line 1
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->reset()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->hasMore:Z

    iput-boolean v0, p0, Ljcifs/smb/SmbComTransaction;->isPrimary:Z

    return-void
.end method

.method public reset(ILjava/lang/String;)V
    .registers 3

    .line 3
    invoke-virtual {p0}, Ljcifs/smb/SmbComTransaction;->reset()V

    return-void
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
    const-string v2, ",totalParameterCount="

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v2, ",totalDataCount="

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, ",maxParameterCount="

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v2, ",maxDataCount="

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v2, ",maxSetupCount="

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-byte v2, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v2, ",flags=0x"

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->flags:I

    .line 73
    const/4 v3, 0x2

    .line 74
    const-string v4, ",timeout="

    .line 76
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 79
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v2, ",parameterCount="

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v2, ",parameterOffset="

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v2, ",parameterDisplacement="

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v2, ",dataCount="

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v2, ",dataOffset="

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v2, ",dataDisplacement="

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    const-string v2, ",setupCount="

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const-string v2, ",pad="

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    const-string v2, ",pad1="

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object v1

    .line 178
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 181
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .registers 8

    .line 1
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad:I

    .line 3
    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 5
    const/16 v2, 0x25

    .line 7
    if-ne v1, v2, :cond_16

    .line 9
    invoke-virtual {p0}, Ljcifs/smb/ServerMessageBlock;->isResponse()Z

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_16

    .line 15
    iget-object v1, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    .line 20
    move-result v1

    .line 21
    add-int/2addr v1, p2

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    move v1, p2

    .line 24
    :goto_17
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    .line 26
    const/4 v3, 0x0

    .line 27
    if-lez v2, :cond_34

    .line 29
    :goto_1c
    add-int/lit8 v2, v0, -0x1

    .line 31
    if-gtz v0, :cond_2d

    .line 33
    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    .line 35
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->bufParameterOffset:I

    .line 37
    iget v4, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    .line 39
    invoke-static {v0, v2, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    .line 44
    add-int/2addr v1, v0

    .line 45
    goto :goto_34

    .line 46
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    .line 48
    aput-byte v3, p1, v1

    .line 50
    move v1, v0

    .line 51
    move v0, v2

    .line 52
    goto :goto_1c

    .line 53
    :cond_34
    :goto_34
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    .line 55
    if-lez v0, :cond_57

    .line 57
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->pad1:I

    .line 59
    :goto_3a
    add-int/lit8 v2, v0, -0x1

    .line 61
    if-gtz v0, :cond_50

    .line 63
    iget-object v0, p0, Ljcifs/smb/SmbComTransaction;->txn_buf:[B

    .line 65
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    .line 67
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    .line 69
    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget p1, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    .line 74
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    .line 76
    add-int/2addr p1, v0

    .line 77
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->bufDataOffset:I

    .line 79
    add-int/2addr v1, v0

    .line 80
    goto :goto_57

    .line 81
    :cond_50
    add-int/lit8 v0, v1, 0x1

    .line 83
    aput-byte v3, p1, v1

    .line 85
    move v1, v0

    .line 86
    move v0, v2

    .line 87
    goto :goto_3a

    .line 88
    :cond_57
    :goto_57
    sub-int/2addr v1, p2

    .line 89
    return v1
.end method

.method public abstract writeDataWireFormat([BI)I
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 9

    .line 1
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->totalParameterCount:I

    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 7
    add-int/lit8 v0, p2, 0x2

    .line 9
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 15
    add-int/lit8 v0, v0, 0x2

    .line 17
    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 19
    const/16 v2, 0x26

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eq v1, v2, :cond_49

    .line 24
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 26
    int-to-long v4, v1

    .line 27
    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 30
    add-int/lit8 v0, v0, 0x2

    .line 32
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 34
    int-to-long v4, v1

    .line 35
    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 38
    add-int/lit8 v0, v0, 0x2

    .line 40
    add-int/lit8 v1, v0, 0x1

    .line 42
    iget-byte v4, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 44
    aput-byte v4, p1, v0

    .line 46
    add-int/lit8 v0, v1, 0x1

    .line 48
    aput-byte v3, p1, v1

    .line 50
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->flags:I

    .line 52
    int-to-long v4, v1

    .line 53
    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 56
    add-int/lit8 v0, v0, 0x2

    .line 58
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    .line 60
    int-to-long v4, v1

    .line 61
    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 64
    add-int/lit8 v0, v0, 0x4

    .line 66
    add-int/lit8 v1, v0, 0x1

    .line 68
    aput-byte v3, p1, v0

    .line 70
    add-int/lit8 v0, v1, 0x1

    .line 72
    aput-byte v3, p1, v1

    .line 74
    :cond_49
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterCount:I

    .line 76
    int-to-long v4, v1

    .line 77
    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 80
    add-int/lit8 v0, v0, 0x2

    .line 82
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterOffset:I

    .line 84
    int-to-long v4, v1

    .line 85
    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 88
    add-int/lit8 v0, v0, 0x2

    .line 90
    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 92
    if-ne v1, v2, :cond_65

    .line 94
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->parameterDisplacement:I

    .line 96
    int-to-long v4, v1

    .line 97
    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 100
    add-int/lit8 v0, v0, 0x2

    .line 102
    :cond_65
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    .line 104
    int-to-long v4, v1

    .line 105
    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 108
    add-int/lit8 v0, v0, 0x2

    .line 110
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataCount:I

    .line 112
    if-nez v1, :cond_73

    .line 114
    move v1, v3

    .line 115
    goto :goto_75

    .line 116
    :cond_73
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataOffset:I

    .line 118
    :goto_75
    int-to-long v4, v1

    .line 119
    invoke-static {v4, v5, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 122
    add-int/lit8 v0, v0, 0x2

    .line 124
    iget-byte v1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 126
    if-ne v1, v2, :cond_88

    .line 128
    iget v1, p0, Ljcifs/smb/SmbComTransaction;->dataDisplacement:I

    .line 130
    int-to-long v1, v1

    .line 131
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 134
    add-int/lit8 v0, v0, 0x2

    .line 136
    goto :goto_98

    .line 137
    :cond_88
    add-int/lit8 v1, v0, 0x1

    .line 139
    iget v2, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    .line 141
    int-to-byte v2, v2

    .line 142
    aput-byte v2, p1, v0

    .line 144
    add-int/lit8 v0, v1, 0x1

    .line 146
    aput-byte v3, p1, v1

    .line 148
    invoke-virtual {p0, p1, v0}, Ljcifs/smb/SmbComTransaction;->writeSetupWireFormat([BI)I

    .line 151
    move-result p1

    .line 152
    add-int/2addr v0, p1

    .line 153
    :goto_98
    sub-int/2addr v0, p2

    .line 154
    return v0
.end method

.method public abstract writeParametersWireFormat([BI)I
.end method

.method public abstract writeSetupWireFormat([BI)I
.end method
