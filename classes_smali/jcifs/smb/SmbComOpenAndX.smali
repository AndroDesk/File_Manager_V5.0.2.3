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

    .line 1
    const-string v0, "jcifs.smb.client.OpenAndX.ReadAndX"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    sput v0, Ljcifs/smb/SmbComOpenAndX;->BATCH_LIMIT:I

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjcifs/smb/ServerMessageBlock;)V
    .registers 6

    .line 1
    invoke-direct {p0, p4}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    .line 4
    iput-object p1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 6
    const/16 p1, 0x2d

    .line 8
    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 10
    const/4 p1, 0x3

    .line 11
    and-int/2addr p2, p1

    .line 12
    iput p2, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    .line 14
    const/4 p4, 0x2

    .line 15
    if-ne p2, p1, :cond_12

    .line 17
    iput p4, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    .line 19
    :cond_12
    iget p1, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    .line 21
    const/16 p2, 0x40

    .line 23
    or-int/2addr p1, p2

    .line 24
    and-int/lit8 p1, p1, -0x2

    .line 26
    iput p1, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    .line 28
    const/16 p1, 0x16

    .line 30
    iput p1, p0, Ljcifs/smb/SmbComOpenAndX;->searchAttributes:I

    .line 32
    const/4 p1, 0x0

    .line 33
    iput p1, p0, Ljcifs/smb/SmbComOpenAndX;->fileAttributes:I

    .line 35
    and-int/lit8 p1, p3, 0x40

    .line 37
    const/16 v0, 0x10

    .line 39
    if-ne p1, p2, :cond_34

    .line 41
    and-int/lit8 p1, p3, 0x10

    .line 43
    if-ne p1, v0, :cond_31

    .line 45
    const/16 p1, 0x12

    .line 47
    iput p1, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    .line 49
    goto :goto_49

    .line 50
    :cond_31
    iput p4, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    .line 52
    goto :goto_49

    .line 53
    :cond_34
    and-int/lit8 p1, p3, 0x10

    .line 55
    if-ne p1, v0, :cond_46

    .line 57
    const/16 p1, 0x20

    .line 59
    and-int/lit8 p2, p3, 0x20

    .line 61
    if-ne p2, p1, :cond_41

    .line 63
    iput v0, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    .line 65
    goto :goto_49

    .line 66
    :cond_41
    const/16 p1, 0x11

    .line 68
    iput p1, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    .line 70
    goto :goto_49

    .line 71
    :cond_46
    const/4 p1, 0x1

    .line 72
    iput p1, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    .line 74
    :goto_49
    return-void
.end method


# virtual methods
.method public getBatchLimit(B)I
    .registers 3

    .line 1
    const/16 v0, 0x2e

    .line 3
    if-ne p1, v0, :cond_7

    .line 5
    sget p1, Ljcifs/smb/SmbComOpenAndX;->BATCH_LIMIT:I

    .line 7
    goto :goto_8

    .line 8
    :cond_7
    const/4 p1, 0x0

    .line 9
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

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbComOpenAndX["

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
    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->flags:I

    .line 24
    const/4 v3, 0x2

    .line 25
    const-string v4, ",desiredAccess=0x"

    .line 27
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 30
    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    .line 32
    const/4 v4, 0x4

    .line 33
    const-string v5, ",searchAttributes=0x"

    .line 35
    invoke-static {v2, v4, v1, v5}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 38
    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->searchAttributes:I

    .line 40
    const-string v5, ",fileAttributes=0x"

    .line 42
    invoke-static {v2, v4, v1, v5}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 45
    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->fileAttributes:I

    .line 47
    invoke-static {v2, v4}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v2, ",creationTime="

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    new-instance v2, Ljava/util/Date;

    .line 61
    iget v4, p0, Ljcifs/smb/SmbComOpenAndX;->creationTime:I

    .line 63
    int-to-long v4, v4

    .line 64
    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v2, ",openFunction=0x"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    .line 77
    const-string v4, ",allocationSize="

    .line 79
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 82
    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->allocationSize:I

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const-string v2, ",fileName="

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v2, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 94
    const-string v3, "]"

    .line 96
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 103
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .registers 5

    .line 1
    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    add-int/lit8 v0, p2, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    aput-byte v1, p1, p2

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    move v0, p2

    .line 12
    :goto_b
    iget-object v1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    .line 17
    move-result p1

    .line 18
    add-int/2addr v0, p1

    .line 19
    sub-int/2addr v0, p2

    .line 20
    return v0
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 7

    .line 1
    iget v0, p0, Ljcifs/smb/SmbComOpenAndX;->flags:I

    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 7
    add-int/lit8 v0, p2, 0x2

    .line 9
    iget v1, p0, Ljcifs/smb/SmbComOpenAndX;->desiredAccess:I

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 15
    add-int/lit8 v0, v0, 0x2

    .line 17
    iget v1, p0, Ljcifs/smb/SmbComOpenAndX;->searchAttributes:I

    .line 19
    int-to-long v1, v1

    .line 20
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 23
    add-int/lit8 v0, v0, 0x2

    .line 25
    iget v1, p0, Ljcifs/smb/SmbComOpenAndX;->fileAttributes:I

    .line 27
    int-to-long v1, v1

    .line 28
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 31
    add-int/lit8 v0, v0, 0x2

    .line 33
    const/4 v1, 0x0

    .line 34
    iput v1, p0, Ljcifs/smb/SmbComOpenAndX;->creationTime:I

    .line 36
    int-to-long v2, v1

    .line 37
    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 40
    add-int/lit8 v0, v0, 0x4

    .line 42
    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->openFunction:I

    .line 44
    int-to-long v2, v2

    .line 45
    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 48
    add-int/lit8 v0, v0, 0x2

    .line 50
    iget v2, p0, Ljcifs/smb/SmbComOpenAndX;->allocationSize:I

    .line 52
    int-to-long v2, v2

    .line 53
    invoke-static {v2, v3, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 56
    add-int/lit8 v0, v0, 0x4

    .line 58
    move v2, v1

    .line 59
    :goto_3a
    const/16 v3, 0x8

    .line 61
    if-lt v2, v3, :cond_40

    .line 63
    sub-int/2addr v0, p2

    .line 64
    return v0

    .line 65
    :cond_40
    add-int/lit8 v3, v0, 0x1

    .line 67
    aput-byte v1, p1, v0

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 71
    move v0, v3

    .line 72
    goto :goto_3a
.end method
