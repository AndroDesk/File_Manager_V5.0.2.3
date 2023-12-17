.class Ljcifs/smb/SmbComCreateDirectory;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComCreateDirectory.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    .line 4
    iput-object p1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 9
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
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbComCreateDirectory["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",directoryName="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v2, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 24
    const-string v3, "]"

    .line 26
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 33
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .registers 5

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    const/4 v1, 0x4

    .line 4
    aput-byte v1, p1, p2

    .line 6
    iget-object v1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    .line 11
    move-result p1

    .line 12
    add-int/2addr v0, p1

    .line 13
    sub-int/2addr v0, p2

    .line 14
    return v0
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
