.class Ljcifs/smb/SmbComOpenAndX;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComOpenAndX.java"


# static fields
.field private static final BATCH_LIMIT:I

.field private static final DO_NOT_CACHE:I = 0x1000

.field private static final FLAGS_REQUEST_BATCH_OPLOCK:I = 0x4

.field private static final FLAGS_REQUEST_OPLOCK:I = 0x2

.field private static final FLAGS_RETURN_ADDITIONAL_INFO:I = 0x1

.field private static final OPEN_FN_CREATE:I = 0x10

.field private static final OPEN_FN_FAIL_IF_EXISTS:I = 0x0

.field private static final OPEN_FN_OPEN:I = 0x1

.field private static final OPEN_FN_TRUNC:I = 0x2

.field private static final SHARING_COMPATIBILITY:I = 0x0

.field private static final SHARING_DENY_NONE:I = 0x40

.field private static final SHARING_DENY_READ_EXECUTE:I = 0x30

.field private static final SHARING_DENY_READ_WRITE_EXECUTE:I = 0x10

.field private static final SHARING_DENY_WRITE:I = 0x20

.field private static final WRITE_THROUGH:I = 0x4000


# instance fields
.field public allocationSize:I

.field public creationTime:I

.field public desiredAccess:I

.field public fileAttributes:I

.field public flags:I

.field public openFunction:I

.field public searchAttributes:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "jcifs.smb.client.OpenAndX.ReadAndX"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComOpenAndX;->BATCH_LIMIT:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjcifs/smb/ServerMessageBlock;)V
    .registers 6

    invoke-direct {p0, p4}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    iput-object p1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    const/16 p1, 0x2d

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    const/4 p1, 0x3

    and-int/2addr p2, p1

    iput p2, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    const/4 p4, 0x2

    if-ne p2, p1, :cond_12

    iput p4, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    :cond_12
    iget p1, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    const/16 p2, 0x40

    or-int/2addr p1, p2

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    const/16 p1, 0x16

    iput p1, p0, Ljcifs/smb/SmbComOpenAndX;->searchAttributes:I

    const/4 p1, 0x0

    iput p1, p0, Ljcifs/smb/SmbComOpenAndX;->fileAttributes:I

    and-int/lit8 p1, p3, 0x40

    const/16 v0, 0x10

    if-ne p1, p2, :cond_34

    and-int/lit8 p1, p3, 0x10

    if-ne p1, v0, :cond_31

    const/16 p1, 0x12

    iput p1, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    goto :goto_49

    :cond_31
    iput p4, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    goto :goto_49

    :cond_34
    and-int/lit8 p1, p3, 0x10

    if-ne p1, v0, :cond_46

    const/16 p1, 0x20

    and-int/lit8 p2, p3, 0x20

    if-ne p2, p1, :cond_41

    iput v0, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    goto :goto_49

    :cond_41
    const/16 p1, 0x11

    iput p1, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    goto :goto_49

    :cond_46
    const/4 p1, 0x1

    iput p1, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    :goto_49
    return-void
.end method


# virtual methods
.method public getBatchLimit(B)I
    .registers 3

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_7

    sget p1, Ljcifs/smb/SmbComOpenAndX;->BATCH_LIMIT:I

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

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
    .registers 7

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmbComOpenAndX["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->flags:I

    const/4 v3, 0x2

    const-string v4, ",desiredAccess=0x"

    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    const/4 v4, 0x4

    const-string v5, ",searchAttributes=0x"

    invoke-static {v2, v4, v1, v5}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->searchAttributes:I

    const-string v5, ",fileAttributes=0x"

    invoke-static {v2, v4, v1, v5}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->fileAttributes:I

    invoke-static {v2, v4}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",creationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget v4, p0, Ljcifs/smb/SmbComOpenAndX;->creationTime:I

    int-to-long v4, v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",openFunction=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    const-string v4, ",allocationSize="

    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->allocationSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    const-string v3, "]"

    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .registers 5

    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v0, :cond_a

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, p2

    goto :goto_b

    :cond_a
    move v0, p2

    :goto_b
    iget-object v1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    return v0
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 7

    iget v0, p0, Ljcifs/smb/SmbComOpenAndX;->flags:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/SmbComOpenAndX;->searchAttributes:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/SmbComOpenAndX;->fileAttributes:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    iput v1, p0, Ljcifs/smb/SmbComOpenAndX;->creationTime:I

    int-to-long v2, v1

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->allocationSize:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    move v2, v1

    :goto_3a
    const/16 v3, 0x8

    if-lt v2, v3, :cond_40

    sub-int/2addr v0, p2

    return v0

    :cond_40
    add-int/lit8 v3, v0, 0x1

    aput-byte v1, p1, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_3a
.end method
