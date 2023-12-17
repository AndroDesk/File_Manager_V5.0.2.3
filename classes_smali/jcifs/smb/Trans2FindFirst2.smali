.class Ljcifs/smb/Trans2FindFirst2;
.super Ljcifs/smb/SmbComTransaction;
.source "Trans2FindFirst2.java"


# static fields
.field private static final DEFAULT_LIST_COUNT:I = 0xc8

.field private static final DEFAULT_LIST_SIZE:I = 0xffff

.field private static final FLAGS_CLOSE_AFTER_THIS_REQUEST:I = 0x1

.field private static final FLAGS_CLOSE_IF_END_REACHED:I = 0x2

.field private static final FLAGS_FIND_WITH_BACKUP_INTENT:I = 0x10

.field private static final FLAGS_RESUME_FROM_PREVIOUS_END:I = 0x8

.field private static final FLAGS_RETURN_RESUME_KEYS:I = 0x4

.field public static final LIST_COUNT:I

.field public static final LIST_SIZE:I

.field public static final SMB_FILE_BOTH_DIRECTORY_INFO:I = 0x104

.field public static final SMB_FILE_NAMES_INFO:I = 0x103

.field public static final SMB_FIND_FILE_DIRECTORY_INFO:I = 0x101

.field public static final SMB_FIND_FILE_FULL_DIRECTORY_INFO:I = 0x102

.field public static final SMB_INFO_QUERY_EAS_FROM_LIST:I = 0x3

.field public static final SMB_INFO_QUERY_EA_SIZE:I = 0x2

.field public static final SMB_INFO_STANDARD:I = 0x1


# instance fields
.field private flags:I

.field private informationLevel:I

.field private searchAttributes:I

.field private searchStorageType:I

.field private wildcard:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "jcifs.smb.client.listSize"

    .line 3
    const v1, 0xffff

    .line 6
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 9
    move-result v0

    .line 10
    sput v0, Ljcifs/smb/Trans2FindFirst2;->LIST_SIZE:I

    .line 12
    const-string v0, "jcifs.smb.client.listCount"

    .line 14
    const/16 v1, 0xc8

    .line 16
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 19
    move-result v0

    .line 20
    sput v0, Ljcifs/smb/Trans2FindFirst2;->LIST_COUNT:I

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ljcifs/smb/Trans2FindFirst2;->searchStorageType:I

    .line 7
    const-string v1, "\\"

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_11

    .line 15
    iput-object p1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 17
    goto :goto_1f

    .line 18
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 32
    :goto_1f
    iput-object p2, p0, Ljcifs/smb/Trans2FindFirst2;->wildcard:Ljava/lang/String;

    .line 34
    and-int/lit8 p1, p3, 0x37

    .line 36
    iput p1, p0, Ljcifs/smb/Trans2FindFirst2;->searchAttributes:I

    .line 38
    const/16 p1, 0x32

    .line 40
    iput-byte p1, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 42
    const/4 p1, 0x1

    .line 43
    iput-byte p1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 45
    iput v0, p0, Ljcifs/smb/Trans2FindFirst2;->flags:I

    .line 47
    const/16 p1, 0x104

    .line 49
    iput p1, p0, Ljcifs/smb/Trans2FindFirst2;->informationLevel:I

    .line 51
    iput v0, p0, Ljcifs/smb/SmbComTransaction;->totalDataCount:I

    .line 53
    const/16 p1, 0xa

    .line 55
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxParameterCount:I

    .line 57
    sget p1, Ljcifs/smb/Trans2FindFirst2;->LIST_SIZE:I

    .line 59
    iput p1, p0, Ljcifs/smb/SmbComTransaction;->maxDataCount:I

    .line 61
    iput-byte v0, p0, Ljcifs/smb/SmbComTransaction;->maxSetupCount:B

    .line 63
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
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "Trans2FindFirst2["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",searchAttributes=0x"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2;->searchAttributes:I

    .line 24
    const/4 v3, 0x2

    .line 25
    const-string v4, ",searchCount="

    .line 27
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 30
    sget v2, Ljcifs/smb/Trans2FindFirst2;->LIST_COUNT:I

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, ",flags=0x"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2;->flags:I

    .line 42
    const-string v4, ",informationLevel=0x"

    .line 44
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 47
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2;->informationLevel:I

    .line 49
    const/4 v3, 0x3

    .line 50
    const-string v4, ",searchStorageType="

    .line 52
    invoke-static {v2, v3, v1, v4}, Lf0/e;->k(IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 55
    iget v2, p0, Ljcifs/smb/Trans2FindFirst2;->searchStorageType:I

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, ",filename="

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v2, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 67
    const-string v3, "]"

    .line 69
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 76
    return-object v0
.end method

.method public writeDataWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public writeParametersWireFormat([BI)I
    .registers 6

    .line 1
    iget v0, p0, Ljcifs/smb/Trans2FindFirst2;->searchAttributes:I

    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1, p1, p2}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 7
    add-int/lit8 v0, p2, 0x2

    .line 9
    sget v1, Ljcifs/smb/Trans2FindFirst2;->LIST_COUNT:I

    .line 11
    int-to-long v1, v1

    .line 12
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 15
    add-int/lit8 v0, v0, 0x2

    .line 17
    iget v1, p0, Ljcifs/smb/Trans2FindFirst2;->flags:I

    .line 19
    int-to-long v1, v1

    .line 20
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 23
    add-int/lit8 v0, v0, 0x2

    .line 25
    iget v1, p0, Ljcifs/smb/Trans2FindFirst2;->informationLevel:I

    .line 27
    int-to-long v1, v1

    .line 28
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt2(J[BI)V

    .line 31
    add-int/lit8 v0, v0, 0x2

    .line 33
    iget v1, p0, Ljcifs/smb/Trans2FindFirst2;->searchStorageType:I

    .line 35
    int-to-long v1, v1

    .line 36
    invoke-static {v1, v2, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 39
    add-int/lit8 v0, v0, 0x4

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    iget-object v2, p0, Ljcifs/smb/ServerMessageBlock;->path:Ljava/lang/String;

    .line 45
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Ljcifs/smb/Trans2FindFirst2;->wildcard:Ljava/lang/String;

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p0, v1, p1, v0}, Ljcifs/smb/ServerMessageBlock;->writeString(Ljava/lang/String;[BI)I

    .line 64
    move-result p1

    .line 65
    add-int/2addr v0, p1

    .line 66
    sub-int/2addr v0, p2

    .line 67
    return v0
.end method

.method public writeSetupWireFormat([BI)I
    .registers 5

    .line 1
    add-int/lit8 v0, p2, 0x1

    .line 3
    iget-byte v1, p0, Ljcifs/smb/SmbComTransaction;->subCommand:B

    .line 5
    aput-byte v1, p1, p2

    .line 7
    const/4 p2, 0x0

    .line 8
    aput-byte p2, p1, v0

    .line 10
    const/4 p1, 0x2

    .line 11
    return p1
.end method
