.class Ljcifs/smb/SmbComNTCreateAndX;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComNTCreateAndX.java"


# static fields
.field public static final FILE_CREATE:I = 0x2

.field public static final FILE_OPEN:I = 0x1

.field public static final FILE_OPEN_IF:I = 0x3

.field public static final FILE_OVERWRITE:I = 0x4

.field public static final FILE_OVERWRITE_IF:I = 0x5

.field public static final FILE_SEQUENTIAL_ONLY:I = 0x4

.field public static final FILE_SUPERSEDE:I = 0x0

.field public static final FILE_SYNCHRONOUS_IO_ALERT:I = 0x10

.field public static final FILE_SYNCHRONOUS_IO_NONALERT:I = 0x20

.field public static final FILE_WRITE_THROUGH:I = 0x2

.field public static final SECURITY_CONTEXT_TRACKING:I = 0x1

.field public static final SECURITY_EFFECTIVE_ONLY:I = 0x2


# instance fields
.field private allocationSize:J

.field private createDisposition:I

.field private createOptions:I

.field public desiredAccess:I

.field private extFileAttributes:I

.field public flags0:I

.field private impersonationLevel:I

.field private namelen_index:I

.field private rootDirectoryFid:I

.field private securityFlags:B

.field private shareAccess:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIILjcifs/smb/ServerMessageBlock;)V
    .registers 8

    .line 1
    invoke-direct {p0, p7}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 4
    iput-object p1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 6
    const/16 p1, -0x5e

    .line 8
    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 10
    or-int/lit16 p1, p3, 0x89

    .line 12
    iput p1, p0, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    .line 14
    iput p5, p0, Ljcifs/smb/SmbComNTCreateAndX;->extFileAttributes:I

    .line 16
    iput p4, p0, Ljcifs/smb/SmbComNTCreateAndX;->shareAccess:I

    .line 18
    and-int/lit8 p1, p2, 0x40

    .line 20
    const/4 p3, 0x2

    .line 21
    const/4 p4, 0x3

    .line 22
    const/16 p5, 0x40

    .line 24
    const/16 p7, 0x10

    .line 26
    if-ne p1, p5, :cond_27

    .line 28
    and-int/lit8 p1, p2, 0x10

    .line 30
    if-ne p1, p7, :cond_23

    .line 32
    const/4 p1, 0x5

    .line 33
    iput p1, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    .line 35
    goto :goto_39

    .line 36
    :cond_23
    const/4 p1, 0x4

    .line 37
    iput p1, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    .line 39
    goto :goto_39

    .line 40
    :cond_27
    and-int/lit8 p1, p2, 0x10

    .line 42
    if-ne p1, p7, :cond_36

    .line 44
    const/16 p1, 0x20

    .line 46
    and-int/2addr p2, p1

    .line 47
    if-ne p2, p1, :cond_33

    .line 49
    iput p3, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    .line 51
    goto :goto_39

    .line 52
    :cond_33
    iput p4, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    .line 54
    goto :goto_39

    .line 55
    :cond_36
    const/4 p1, 0x1

    .line 56
    iput p1, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    .line 58
    :goto_39
    and-int/lit8 p1, p6, 0x1

    .line 60
    if-nez p1, :cond_42

    .line 62
    or-int/lit8 p1, p6, 0x40

    .line 64
    iput p1, p0, Ljcifs/smb/SmbComNTCreateAndX;->createOptions:I

    .line 66
    goto :goto_44

    .line 67
    :cond_42
    iput p6, p0, Ljcifs/smb/SmbComNTCreateAndX;->createOptions:I

    .line 69
    :goto_44
    iput p3, p0, Ljcifs/smb/SmbComNTCreateAndX;->impersonationLevel:I

    .line 71
    iput-byte p4, p0, Ljcifs/smb/SmbComNTCreateAndX;->securityFlags:B

    .line 73
    return-void
.end method


# virtual methods
.method public readBytesWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public readParameterWordsWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbComNTCreateAndX["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",flags=0x"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    .line 24
    const/4 v3, 0x2

    .line 25
    const-string v4, ",rootDirectoryFid="

    .line 27
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 30
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->rootDirectoryFid:I

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, ",desiredAccess=0x"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    .line 42
    const/4 v4, 0x4

    .line 43
    const-string v5, ",allocationSize="

    .line 45
    invoke-static {v2, v4, v1, v5}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 48
    iget-wide v5, p0, Ljcifs/smb/SmbComNTCreateAndX;->allocationSize:J

    .line 50
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    const-string v2, ",extFileAttributes=0x"

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->extFileAttributes:I

    .line 60
    const-string v5, ",shareAccess=0x"

    .line 62
    invoke-static {v2, v4, v1, v5}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 65
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->shareAccess:I

    .line 67
    const-string v5, ",createDisposition=0x"

    .line 69
    invoke-static {v2, v4, v1, v5}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 72
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    .line 74
    const-string v5, ",createOptions=0x"

    .line 76
    invoke-static {v2, v4, v1, v5}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 79
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->createOptions:I

    .line 81
    const/16 v5, 0x8

    .line 83
    const-string v6, ",impersonationLevel=0x"

    .line 85
    invoke-static {v2, v5, v1, v6}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 88
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->impersonationLevel:I

    .line 90
    const-string v5, ",securityFlags=0x"

    .line 92
    invoke-static {v2, v4, v1, v5}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 95
    iget-byte v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->securityFlags:B

    .line 97
    const-string v4, ",name="

    .line 99
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 104
    const-string v3, "]"

    .line 106
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 110
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 113
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .registers 6

    .line 1
    iget-object v0, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    .line 6
    move-result p2

    .line 7
    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 9
    if-eqz v0, :cond_13

    .line 11
    iget-object v0, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 16
    move-result v0

    .line 17
    mul-int/lit8 v0, v0, 0x2

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v0, p2

    .line 21
    :goto_14
    int-to-long v0, v0

    .line 22
    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->namelen_index:I

    .line 24
    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 27
    return p2
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 6

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    aput-byte v1, p1, p2

    .line 6
    iput v0, p0, Ljcifs/smb/SmbComNTCreateAndX;->namelen_index:I

    .line 8
    add-int/lit8 v0, v0, 0x2

    .line 10
    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    .line 12
    int-to-long v1, v1

    .line 13
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 16
    add-int/lit8 v0, v0, 0x4

    .line 18
    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->rootDirectoryFid:I

    .line 20
    int-to-long v1, v1

    .line 21
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 24
    add-int/lit8 v0, v0, 0x4

    .line 26
    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    .line 28
    int-to-long v1, v1

    .line 29
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 32
    add-int/lit8 v0, v0, 0x4

    .line 34
    iget-wide v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->allocationSize:J

    .line 36
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt8(J[BI)V

    .line 39
    add-int/lit8 v0, v0, 0x8

    .line 41
    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->extFileAttributes:I

    .line 43
    int-to-long v1, v1

    .line 44
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 47
    add-int/lit8 v0, v0, 0x4

    .line 49
    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->shareAccess:I

    .line 51
    int-to-long v1, v1

    .line 52
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 55
    add-int/lit8 v0, v0, 0x4

    .line 57
    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    .line 59
    int-to-long v1, v1

    .line 60
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 63
    add-int/lit8 v0, v0, 0x4

    .line 65
    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->createOptions:I

    .line 67
    int-to-long v1, v1

    .line 68
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 71
    add-int/lit8 v0, v0, 0x4

    .line 73
    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->impersonationLevel:I

    .line 75
    int-to-long v1, v1

    .line 76
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 79
    add-int/lit8 v0, v0, 0x4

    .line 81
    add-int/lit8 v1, v0, 0x1

    .line 83
    iget-byte v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->securityFlags:B

    .line 85
    aput-byte v2, p1, v0

    .line 87
    sub-int/2addr v1, p2

    .line 88
    return v1
.end method
