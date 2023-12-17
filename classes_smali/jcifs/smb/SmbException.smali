.class public Ljcifs/smb/SmbException;
.super Ljava/io/IOException;
.source "SmbException.java"

# interfaces
.implements Ljcifs/smb/NtStatus;
.implements Ljcifs/smb/DosError;
.implements Ljcifs/smb/WinError;


# instance fields
.field private rootCause:Ljava/lang/Throwable;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 4

    invoke-static {p1}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    move-result p1

    iput p1, p0, Ljcifs/smb/SmbException;->status:I

    iput-object p2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4

    if-eqz p2, :cond_7

    invoke-static {p1}, Ljcifs/smb/SmbException;->getMessageByWinerrCode(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {p1}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_11

    goto :goto_15

    :cond_11
    invoke-static {p1}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    move-result p1

    :goto_15
    iput p1, p0, Ljcifs/smb/SmbException;->status:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const p1, -0x3fffffff  # -2.0000002f

    iput p1, p0, Ljcifs/smb/SmbException;->status:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    const p1, -0x3fffffff  # -2.0000002f

    iput p1, p0, Ljcifs/smb/SmbException;->status:I

    return-void
.end method

.method public static getMessageByCode(I)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_5

    const-string p0, "NT_STATUS_SUCCESS"

    return-object p0

    :cond_5
    const/high16 v0, -0x40000000  # -2.0f

    and-int v1, p0, v0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_2a

    sget-object v0, Ljcifs/smb/NtStatus;->NT_STATUS_CODES:[I

    array-length v0, v0

    sub-int/2addr v0, v2

    :goto_10
    if-ge v0, v2, :cond_13

    goto :goto_32

    :cond_13
    add-int v1, v2, v0

    div-int/lit8 v1, v1, 0x2

    sget-object v3, Ljcifs/smb/NtStatus;->NT_STATUS_CODES:[I

    aget v3, v3, v1

    if-le p0, v3, :cond_20

    add-int/lit8 v2, v1, 0x1

    goto :goto_10

    :cond_20
    if-ge p0, v3, :cond_25

    add-int/lit8 v0, v1, -0x1

    goto :goto_10

    :cond_25
    sget-object p0, Ljcifs/smb/NtStatus;->NT_STATUS_MESSAGES:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    :cond_2a
    sget-object v0, Ljcifs/smb/DosError;->DOS_ERROR_CODES:[[I

    array-length v0, v0

    sub-int/2addr v0, v2

    const/4 v1, 0x0

    move v2, v1

    :goto_30
    if-ge v0, v2, :cond_47

    :goto_32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-static {p0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_47
    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    sget-object v4, Ljcifs/smb/DosError;->DOS_ERROR_CODES:[[I

    aget-object v4, v4, v3

    aget v4, v4, v1

    if-le p0, v4, :cond_56

    add-int/lit8 v2, v3, 0x1

    goto :goto_30

    :cond_56
    if-ge p0, v4, :cond_5b

    add-int/lit8 v0, v3, -0x1

    goto :goto_30

    :cond_5b
    sget-object p0, Ljcifs/smb/DosError;->DOS_ERROR_MESSAGES:[Ljava/lang/String;

    aget-object p0, p0, v3

    return-object p0
.end method

.method public static getMessageByWinerrCode(I)Ljava/lang/String;
    .registers 5

    sget-object v0, Ljcifs/smb/WinError;->WINERR_CODES:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_6
    if-ge v0, v1, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    add-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    sget-object v3, Ljcifs/smb/WinError;->WINERR_CODES:[I

    aget v3, v3, v2

    if-le p0, v3, :cond_23

    add-int/lit8 v1, v2, 0x1

    goto :goto_6

    :cond_23
    if-ge p0, v3, :cond_28

    add-int/lit8 v0, v2, -0x1

    goto :goto_6

    :cond_28
    sget-object p0, Ljcifs/smb/WinError;->WINERR_MESSAGES:[Ljava/lang/String;

    aget-object p0, p0, v2

    return-object p0
.end method

.method public static getStatusByCode(I)I
    .registers 8

    const/high16 v0, -0x40000000  # -2.0f

    and-int/2addr v0, p0

    if-eqz v0, :cond_6

    return p0

    :cond_6
    sget-object v0, Ljcifs/smb/DosError;->DOS_ERROR_CODES:[[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v0, v3, :cond_13

    const p0, -0x3fffffff  # -2.0000002f

    return p0

    :cond_13
    add-int v4, v3, v0

    div-int/lit8 v4, v4, 0x2

    sget-object v5, Ljcifs/smb/DosError;->DOS_ERROR_CODES:[[I

    aget-object v5, v5, v4

    aget v6, v5, v2

    if-le p0, v6, :cond_22

    add-int/lit8 v3, v4, 0x1

    goto :goto_d

    :cond_22
    if-ge p0, v6, :cond_27

    add-int/lit8 v0, v4, -0x1

    goto :goto_d

    :cond_27
    aget p0, v5, v1

    return p0
.end method


# virtual methods
.method public getNtStatus()I
    .registers 2

    iget v0, p0, Ljcifs/smb/SmbException;->status:I

    return v0
.end method

.method public getRootCause()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2d
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
