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

    const-string v0, "WrLehDO\u0000B16BBDz\u0000"

    const-string v1, "WrLehDz\u0000B16BBDz\u0000"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NetServerEnum2;->DESCR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NetServerEnum2;->domain:Ljava/lang/String;

    iput p2, p0, Ljcifs/smb/NetServerEnum2;->serverTypes:I

    const/16 p1, 0x25

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 p1, 0x68

    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    const-string p1, "\\PIPE\\LANMAN"

    iput-object p1, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    const/16 p1, 0x8

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    const/16 p1, 0x4000

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    const/4 p1, 0x0

    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->setupCount:I

    const/16 p1, 0x1388

    iput p1, p0, Ljcifs/smb/SmbComTransaction;->timeout:I

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

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->reset()V

    iput-object p2, p0, Ljcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetServerEnum2["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/SmbComTransaction;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",serverTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/NetServerEnum2;->serverTypes:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    const-string v2, "SV_TYPE_ALL"

    goto :goto_29

    :cond_27
    const-string v2, "SV_TYPE_DOMAIN_ENUM"

    :goto_29
    const-string v3, "]"

    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .registers 10

    iget-byte v0, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x68

    if-ne v0, v3, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    :try_start_b
    sget-object v3, Ljcifs/smb/NetServerEnum2;->DESCR:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, "ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_15} :catch_56

    iget-byte v4, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    invoke-static {v4, v5, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v4, p2, 0x2

    array-length v5, v3

    invoke-static {v3, v2, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v4, v3

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, p1, v4}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v4, v4, 0x2

    iget v3, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    int-to-long v5, v3

    invoke-static {v5, v6, p1, v4}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v4, v4, 0x2

    iget v3, p0, Ljcifs/smb/NetServerEnum2;->serverTypes:I

    int-to-long v5, v3

    invoke-static {v5, v6, p1, v4}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v4, v4, 0x4

    iget-object v3, p0, Ljcifs/smb/NetServerEnum2;->domain:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1, v4, v2}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BIZ)I

    move-result v3

    add-int/2addr v4, v3

    if-ne v0, v1, :cond_54

    iget-object v0, p0, Ljcifs/smb/NetServerEnum2;->lastName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v4, v2}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BIZ)I

    move-result p1

    add-int/2addr v4, p1

    :cond_54
    sub-int/2addr v4, p2

    return v4

    :catch_56
    return v2
.end method

.method public writeSetupWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
