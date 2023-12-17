.class Ljcifs/smb/NetServerEnum2;
.super Ljcifs/smb/SmbComTransaction;
.source "NetServerEnum2.java"


# static fields
.field public static final DESCR:[Ljava/lang/String;

.field public static final SV_TYPE_ALL:I = -0x1

.field public static final SV_TYPE_DOMAIN_ENUM:I = -0x80000000


# instance fields
.field public domain:Ljava/lang/String;

.field public lastName:Ljava/lang/String;

.field public serverTypes:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "WrLehDO\u0000B16BBDz\u0000"

    .line 3
    const-string v1, "WrLehDz\u0000B16BBDz\u0000"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Ljcifs/smb/NetServerEnum2;->DESCR:[Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ljcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Ljcifs/smb/NetServerEnum2;->domain:Ljava/lang/String;

    .line 9
    iput p2, p0, Ljcifs/smb/NetServerEnum2;->serverTypes:I

    .line 11
    const/16 p1, 0x25

    .line 13
    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 15
    const/16 p1, 0x68

    .line 17
    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 19
    const-string p1, "\\PIPE\\LANMAN"

    .line 21
    iput-object p1, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    .line 23
    const/16 p1, 0x8

    .line 25
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 27
    const/16 p1, 0x4000

    .line 29
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 31
    const/4 p1, 0x0

    .line 32
    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 34
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    .line 36
    const/16 p1, 0x1388

    .line 38
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

    .line 40
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

.method public reset(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->reset()V

    .line 4
    iput-object p2, p0, Ljcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "NetServerEnum2["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",name="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v2, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ",serverTypes="

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v2, p0, Ljcifs/smb/NetServerEnum2;->serverTypes:I

    .line 34
    const/4 v3, -0x1

    .line 35
    if-ne v2, v3, :cond_27

    .line 37
    const-string v2, "SV_TYPE_ALL"

    .line 39
    goto :goto_29

    .line 40
    :cond_27
    const-string v2, "SV_TYPE_DOMAIN_ENUM"

    .line 42
    :goto_29
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

.method public writeDataWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .registers 10

    .line 1
    iget-byte v0, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x68

    .line 7
    if-ne v0, v3, :cond_a

    .line 9
    move v0, v2

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v0, v1

    .line 12
    :goto_b
    :try_start_b
    sget-object v3, Ljcifs/smb/NetServerEnum2;->DESCR:[Ljava/lang/String;

    .line 14
    aget-object v3, v3, v0

    .line 16
    const-string v4, "ASCII"

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 21
    move-result-object v3
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_15} :catch_56

    .line 22
    iget-byte v4, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 24
    and-int/lit16 v4, v4, 0xff

    .line 26
    int-to-long v4, v4

    .line 27
    invoke-static {v4, v5, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 30
    add-int/lit8 v4, p2, 0x2

    .line 32
    array-length v5, v3

    .line 33
    invoke-static {v3, v2, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    array-length v3, v3

    .line 37
    add-int/2addr v4, v3

    .line 38
    const-wide/16 v5, 0x1

    .line 40
    invoke-static {v5, v6, p1, v4}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 43
    add-int/lit8 v4, v4, 0x2

    .line 45
    iget v3, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 47
    int-to-long v5, v3

    .line 48
    invoke-static {v5, v6, p1, v4}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 51
    add-int/lit8 v4, v4, 0x2

    .line 53
    iget v3, p0, Ljcifs/smb/NetServerEnum2;->serverTypes:I

    .line 55
    int-to-long v5, v3

    .line 56
    invoke-static {v5, v6, p1, v4}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 59
    add-int/lit8 v4, v4, 0x4

    .line 61
    iget-object v3, p0, Ljcifs/smb/NetServerEnum2;->domain:Ljava/lang/String;

    .line 63
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {p0, v3, p1, v4, v2}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BIZ)I

    .line 70
    move-result v3

    .line 71
    add-int/2addr v4, v3

    .line 72
    if-ne v0, v1, :cond_54

    .line 74
    iget-object v0, p0, Ljcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p0, v0, p1, v4, v2}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BIZ)I

    .line 83
    move-result p1

    .line 84
    add-int/2addr v4, p1

    .line 85
    :cond_54
    sub-int/2addr v4, p2

    .line 86
    return v4

    .line 87
    :catch_56
    return v2
.end method

.method public writeSetupWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
