.class Ljcifs/smb/SmbComNTCreateAndX;
.super Ljcifs/smb/AndXServerMessageBlock;
.source "SmbComNTCreateAndX.java"


# static fields
.field public static final FILE_CREATE:I

.field public static final FILE_OPEN:I

.field public static final FILE_OPEN_IF:I

.field public static final FILE_OVERWRITE:I

.field public static final FILE_OVERWRITE_IF:I

.field public static final FILE_SEQUENTIAL_ONLY:I

.field public static final FILE_SUPERSEDE:I

.field public static final FILE_SYNCHRONOUS_IO_ALERT:I

.field public static final FILE_SYNCHRONOUS_IO_NONALERT:I

.field public static final FILE_WRITE_THROUGH:I

.field public static final SECURITY_CONTEXT_TRACKING:I

.field public static final SECURITY_EFFECTIVE_ONLY:I


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
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComNTCreateAndX;->FILE_CREATE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComNTCreateAndX;->FILE_OPEN:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComNTCreateAndX;->FILE_OPEN_IF:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComNTCreateAndX;->FILE_OVERWRITE:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComNTCreateAndX;->FILE_OVERWRITE_IF:I

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComNTCreateAndX;->FILE_SEQUENTIAL_ONLY:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComNTCreateAndX;->FILE_SUPERSEDE:I

    const v0, 0x92d86

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComNTCreateAndX;->FILE_SYNCHRONOUS_IO_ALERT:I

    const v0, 0x92db6

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComNTCreateAndX;->FILE_SYNCHRONOUS_IO_NONALERT:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComNTCreateAndX;->FILE_WRITE_THROUGH:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComNTCreateAndX;->SECURITY_CONTEXT_TRACKING:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Ljcifs/smb/SmbComNTCreateAndX;->SECURITY_EFFECTIVE_ONLY:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIILjcifs/smb/ServerMessageBlock;)V
    .registers 8

    invoke-direct {p0, p7}, Ljcifs/smb/AndXServerMessageBlock;-><init>(Ljcifs/smb/ServerMessageBlock;)V

    iput-object p1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    const/16 p1, -0x5e

    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    or-int/lit16 p1, p3, 0x89

    iput p1, p0, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    iput p5, p0, Ljcifs/smb/SmbComNTCreateAndX;->extFileAttributes:I

    iput p4, p0, Ljcifs/smb/SmbComNTCreateAndX;->shareAccess:I

    and-int/lit8 p1, p2, 0x40

    const/4 p3, 0x2

    const/4 p4, 0x3

    const/16 p5, 0x40

    const/16 p7, 0x10

    if-ne p1, p5, :cond_27

    and-int/lit8 p1, p2, 0x10

    if-ne p1, p7, :cond_23

    const/4 p1, 0x5

    iput p1, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    goto :goto_39

    :cond_23
    const/4 p1, 0x4

    iput p1, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    goto :goto_39

    :cond_27
    and-int/lit8 p1, p2, 0x10

    if-ne p1, p7, :cond_36

    const/16 p1, 0x20

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_33

    iput p3, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    goto :goto_39

    :cond_33
    iput p4, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    goto :goto_39

    :cond_36
    const/4 p1, 0x1

    iput p1, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    :goto_39
    and-int/lit8 p1, p6, 0x1

    if-nez p1, :cond_42

    or-int/lit8 p1, p6, 0x40

    iput p1, p0, Ljcifs/smb/SmbComNTCreateAndX;->createOptions:I

    goto :goto_44

    :cond_42
    iput p6, p0, Ljcifs/smb/SmbComNTCreateAndX;->createOptions:I

    :goto_44
    iput p3, p0, Ljcifs/smb/SmbComNTCreateAndX;->impersonationLevel:I

    iput-byte p4, p0, Ljcifs/smb/SmbComNTCreateAndX;->securityFlags:B

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

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SmbComNTCreateAndX["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljcifs/smb/AndXServerMessageBlock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    const/4 v3, 0x2

    const-string v4, ",rootDirectoryFid="

    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->rootDirectoryFid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",desiredAccess=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    const/4 v4, 0x4

    const-string v5, ",allocationSize="

    invoke-static {v2, v4, v1, v5}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-wide v5, p0, Ljcifs/smb/SmbComNTCreateAndX;->allocationSize:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",extFileAttributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->extFileAttributes:I

    const-string v5, ",shareAccess=0x"

    invoke-static {v2, v4, v1, v5}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->shareAccess:I

    const-string v5, ",createDisposition=0x"

    invoke-static {v2, v4, v1, v5}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    const-string v5, ",createOptions=0x"

    invoke-static {v2, v4, v1, v5}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->createOptions:I

    const/16 v5, 0x8

    const-string v6, ",impersonationLevel=0x"

    invoke-static {v2, v5, v1, v6}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->impersonationLevel:I

    const-string v5, ",securityFlags=0x"

    invoke-static {v2, v4, v1, v5}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-byte v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->securityFlags:B

    const-string v4, ",name="

    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    const-string v3, "]"

    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .registers 6

    iget-object v0, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    move-result p2

    iget-boolean v0, p0, Ljcifs/smb/ServerMessageBlock;->useUnicode:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_14

    :cond_13
    move v0, p2

    :goto_14
    int-to-long v0, v0

    iget v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->namelen_index:I

    invoke-static {v0, v1, p1, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    return p2
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 6

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    aput-byte v1, p1, p2

    iput v0, p0, Ljcifs/smb/SmbComNTCreateAndX;->namelen_index:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->flags0:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->rootDirectoryFid:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->desiredAccess:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget-wide v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->allocationSize:J

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt8(J[BI)V

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->extFileAttributes:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->shareAccess:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->createDisposition:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->createOptions:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Ljcifs/smb/SmbComNTCreateAndX;->impersonationLevel:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    iget-byte v2, p0, Ljcifs/smb/SmbComNTCreateAndX;->securityFlags:B

    aput-byte v2, p1, v0

    sub-int/2addr v1, p2

    return v1
.end method
