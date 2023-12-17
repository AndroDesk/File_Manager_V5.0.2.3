.class Ljcifs/smb/NetShareEnum;
.super Ljcifs/smb/SmbComTransaction;
.source "NetShareEnum.java"


# static fields
.field private static final DESCR:Ljava/lang/String; = "WrLeh\u0000B13BWz\u0000"


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 4
    const/16 v0, 0x25

    .line 6
    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-byte v0, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 11
    new-instance v1, Ljava/lang/String;

    .line 13
    const-string v2, "\\PIPE\\LANMAN"

    .line 15
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object v1, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    .line 20
    const/16 v1, 0x8

    .line 22
    iput v1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 24
    iput-byte v0, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 26
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    .line 28
    const/16 v0, 0x1388

    .line 30
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    .line 32
    return-void
.end method


# virtual methods
.method public readDataWireFormat([BII)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public readParametersWireFormat([BII)I
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public readSetupWireFormat([BII)I
    .registers 4

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
    const-string v2, "NetShareEnum["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    const-string v3, "]"

    .line 16
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 23
    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "WrLeh\u0000B13BWz\u0000"

    .line 4
    const-string v2, "ASCII"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 9
    move-result-object v1
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_9} :catch_27

    .line 10
    const-wide/16 v2, 0x0

    .line 12
    invoke-static {v2, v3, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 15
    add-int/lit8 v2, p2, 0x2

    .line 17
    array-length v3, v1

    .line 18
    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    array-length v0, v1

    .line 22
    add-int/2addr v2, v0

    .line 23
    const-wide/16 v0, 0x1

    .line 25
    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 28
    add-int/lit8 v2, v2, 0x2

    .line 30
    iget v0, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 32
    int-to-long v0, v0

    .line 33
    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 36
    add-int/lit8 v2, v2, 0x2

    .line 38
    sub-int/2addr v2, p2

    .line 39
    return v2

    .line 40
    :catch_27
    return v0
.end method

.method public writeSetupWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
