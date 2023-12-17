.class Ljcifs/smb/SmbComNTCreateAndXResponse;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComNTCreateAndXResponse.java"


# static fields
.field public static final BATCH_OPLOCK_GRANTED:I = 0x2

.field public static final EXCLUSIVE_OPLOCK_GRANTED:I = 0x1

.field public static final LEVEL_II_OPLOCK_GRANTED:I = 0x3


# instance fields
.field public allocationSize:J

.field public changeTime:J

.field public createAction:I

.field public creationTime:J

.field public deviceState:I

.field public directory:Z

.field public endOfFile:J

.field public extFileAttributes:I

.field public fid:I

.field public fileType:I

.field public isExtended:Z

.field public lastAccessTime:J

.field public lastWriteTime:J

.field public oplockLevel:B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljcifs/smb/AndXServerMessageBlock;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public readBytesWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public readParameterWordsWireFormat([BI)I
    .registers 6

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    aget-byte v1, p1, p2

    .line 5
    iput-byte v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->oplockLevel:B

    .line 7
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 10
    move-result v1

    .line 11
    iput v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fid:I

    .line 13
    add-int/lit8 v0, v0, 0x2

    .line 15
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 18
    move-result v1

    .line 19
    iput v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->createAction:I

    .line 21
    add-int/lit8 v0, v0, 0x4

    .line 23
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    .line 26
    move-result-wide v1

    .line 27
    iput-wide v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->creationTime:J

    .line 29
    add-int/lit8 v0, v0, 0x8

    .line 31
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    .line 34
    move-result-wide v1

    .line 35
    iput-wide v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->lastAccessTime:J

    .line 37
    add-int/lit8 v0, v0, 0x8

    .line 39
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    .line 42
    move-result-wide v1

    .line 43
    iput-wide v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->lastWriteTime:J

    .line 45
    add-int/lit8 v0, v0, 0x8

    .line 47
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readTime([BI)J

    .line 50
    move-result-wide v1

    .line 51
    iput-wide v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->changeTime:J

    .line 53
    add-int/lit8 v0, v0, 0x8

    .line 55
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 58
    move-result v1

    .line 59
    iput v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->extFileAttributes:I

    .line 61
    add-int/lit8 v0, v0, 0x4

    .line 63
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    .line 66
    move-result-wide v1

    .line 67
    iput-wide v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->allocationSize:J

    .line 69
    add-int/lit8 v0, v0, 0x8

    .line 71
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt8([BI)J

    .line 74
    move-result-wide v1

    .line 75
    iput-wide v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->endOfFile:J

    .line 77
    add-int/lit8 v0, v0, 0x8

    .line 79
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 82
    move-result v1

    .line 83
    iput v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fileType:I

    .line 85
    add-int/lit8 v0, v0, 0x2

    .line 87
    invoke-static {p1, v0}, Ljcifs/smb/ServerMessageBlock;->readInt2([BI)I

    .line 90
    move-result v1

    .line 91
    iput v1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->deviceState:I

    .line 93
    add-int/lit8 v0, v0, 0x2

    .line 95
    add-int/lit8 v1, v0, 0x1

    .line 97
    aget-byte p1, p1, v0

    .line 99
    and-int/lit16 p1, p1, 0xff

    .line 101
    if-lez p1, :cond_68

    .line 103
    const/4 p1, 0x1

    .line 104
    goto :goto_69

    .line 105
    :cond_68
    const/4 p1, 0x0

    .line 106
    :goto_69
    iput-boolean p1, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->directory:Z

    .line 108
    sub-int/2addr v1, p2

    .line 109
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbComNTCreateAndXResponse["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",oplockLevel="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-byte v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->oplockLevel:B

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ",fid="

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fid:I

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, ",createAction=0x"

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->createAction:I

    .line 44
    const/4 v3, 0x4

    .line 45
    invoke-static {v2, v3}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v2, ",creationTime="

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    new-instance v2, Ljava/util/Date;

    .line 59
    iget-wide v4, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->creationTime:J

    .line 61
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    const-string v2, ",lastAccessTime="

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    new-instance v2, Ljava/util/Date;

    .line 74
    iget-wide v4, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->lastAccessTime:J

    .line 76
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    const-string v2, ",lastWriteTime="

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    new-instance v2, Ljava/util/Date;

    .line 89
    iget-wide v4, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->lastWriteTime:J

    .line 91
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    const-string v2, ",changeTime="

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    new-instance v2, Ljava/util/Date;

    .line 104
    iget-wide v4, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->changeTime:J

    .line 106
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    const-string v2, ",extFileAttributes=0x"

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->extFileAttributes:I

    .line 119
    const-string v4, ",allocationSize="

    .line 121
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 124
    iget-wide v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->allocationSize:J

    .line 126
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    const-string v2, ",endOfFile="

    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-wide v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->endOfFile:J

    .line 136
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    const-string v2, ",fileType="

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->fileType:I

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string v2, ",deviceState="

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->deviceState:I

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string v2, ",directory="

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-boolean v2, p0, Ljcifs/smb/SmbComNTCreateAndXResponse;->directory:Z

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 169
    const-string v2, "]"

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
