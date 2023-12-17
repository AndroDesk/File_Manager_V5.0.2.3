.class Ljcifs/smb/SmbComRename;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComRename.java"


# instance fields
.field private newFileName:Ljava/lang/String;

.field private oldFileName:Ljava/lang/String;

.field private searchAttributes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    .line 4
    const/4 v0, 0x7

    .line 5
    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 7
    iput-object p1, p0, Ljcifs/smb/SmbComRename;->oldFileName:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Ljcifs/smb/SmbComRename;->newFileName:Ljava/lang/String;

    .line 11
    const/16 p1, 0x16

    .line 13
    iput p1, p0, Ljcifs/smb/SmbComRename;->searchAttributes:I

    .line 15
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
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbComRename["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",searchAttributes=0x"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Ljcifs/smb/SmbComRename;->searchAttributes:I

    .line 24
    const/4 v3, 0x4

    .line 25
    const-string v4, ",oldFileName="

    .line 27
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 30
    iget-object v2, p0, Ljcifs/smb/SmbComRename;->oldFileName:Ljava/lang/String;

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, ",newFileName="

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v2, p0, Ljcifs/smb/SmbComRename;->newFileName:Ljava/lang/String;

    .line 42
    const-string v3, "]"

    .line 44
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 51
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .registers 6

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    const/4 v1, 0x4

    .line 4
    aput-byte v1, p1, p2

    .line 6
    iget-object v2, p0, Ljcifs/smb/SmbComRename;->oldFileName:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    .line 11
    move-result v2

    .line 12
    add-int/2addr v0, v2

    .line 13
    add-int/lit8 v2, v0, 0x1

    .line 15
    aput-byte v1, p1, v0

    .line 17
    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 19
    if-eqz v0, :cond_1a

    .line 21
    add-int/lit8 v0, v2, 0x1

    .line 23
    const/4 v1, 0x0

    .line 24
    aput-byte v1, p1, v2

    .line 26
    move v2, v0

    .line 27
    :cond_1a
    iget-object v0, p0, Ljcifs/smb/SmbComRename;->newFileName:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, v0, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    .line 32
    move-result p1

    .line 33
    add-int/2addr v2, p1

    .line 34
    sub-int/2addr v2, p2

    .line 35
    return v2
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 5

    .line 1
    iget v0, p0, Ljcifs/smb/SmbComRename;->searchAttributes:I

    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 7
    const/4 p1, 0x2

    .line 8
    return p1
.end method
