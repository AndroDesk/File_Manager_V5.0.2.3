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
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 4

    .line 2
    invoke-static {p1}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    move-result p1

    iput p1, p0, Ljcifs/smb/SmbException;->status:I

    .line 4
    iput-object p2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4

    if-eqz p2, :cond_7

    .line 10
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

    .line 11
    :cond_11
    invoke-static {p1}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    move-result p1

    :goto_15
    iput p1, p0, Ljcifs/smb/SmbException;->status:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 5
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const p1, -0x3fffffff  # -2.0000002f

    .line 6
    iput p1, p0, Ljcifs/smb/SmbException;->status:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 7
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 8
    iput-object p2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    const p1, -0x3fffffff  # -2.0000002f

    .line 9
    iput p1, p0, Ljcifs/smb/SmbException;->status:I

    return-void
.end method

.method public static getMessageByCode(I)Ljava/lang/String;
    .registers 6

    .line 1
    if-nez p0, :cond_5

    .line 3
    const-string p0, "NT_STATUS_SUCCESS"

    .line 5
    return-object p0

    .line 6
    :cond_5
    const/high16 v0, -0x40000000  # -2.0f

    .line 8
    and-int v1, p0, v0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v1, v0, :cond_2a

    .line 13
    sget-object v0, Ljcifs/smb/NtStatus;->NT_STATUS_CODES:[I

    .line 15
    array-length v0, v0

    .line 16
    sub-int/2addr v0, v2

    .line 17
    :goto_10
    if-ge v0, v2, :cond_13

    .line 19
    goto :goto_32

    .line 20
    :cond_13
    add-int v1, v2, v0

    .line 22
    div-int/lit8 v1, v1, 0x2

    .line 24
    sget-object v3, Ljcifs/smb/NtStatus;->NT_STATUS_CODES:[I

    .line 26
    aget v3, v3, v1

    .line 28
    if-le p0, v3, :cond_20

    .line 30
    add-int/lit8 v2, v1, 0x1

    .line 32
    goto :goto_10

    .line 33
    :cond_20
    if-ge p0, v3, :cond_25

    .line 35
    add-int/lit8 v0, v1, -0x1

    .line 37
    goto :goto_10

    .line 38
    :cond_25
    sget-object p0, Ljcifs/smb/NtStatus;->NT_STATUS_MESSAGES:[Ljava/lang/String;

    .line 40
    aget-object p0, p0, v1

    .line 42
    return-object p0

    .line 43
    :cond_2a
    sget-object v0, Ljcifs/smb/DosError;->DOS_ERROR_CODES:[[I

    .line 45
    array-length v0, v0

    .line 46
    sub-int/2addr v0, v2

    .line 47
    const/4 v1, 0x0

    .line 48
    move v2, v1

    .line 49
    :goto_30
    if-ge v0, v2, :cond_47

    .line 51
    :goto_32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "0x"

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    const/16 v1, 0x8

    .line 60
    invoke-static {p0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :cond_47
    add-int v3, v2, v0

    .line 74
    div-int/lit8 v3, v3, 0x2

    .line 76
    sget-object v4, Ljcifs/smb/DosError;->DOS_ERROR_CODES:[[I

    .line 78
    aget-object v4, v4, v3

    .line 80
    aget v4, v4, v1

    .line 82
    if-le p0, v4, :cond_56

    .line 84
    add-int/lit8 v2, v3, 0x1

    .line 86
    goto :goto_30

    .line 87
    :cond_56
    if-ge p0, v4, :cond_5b

    .line 89
    add-int/lit8 v0, v3, -0x1

    .line 91
    goto :goto_30

    .line 92
    :cond_5b
    sget-object p0, Ljcifs/smb/DosError;->DOS_ERROR_MESSAGES:[Ljava/lang/String;

    .line 94
    aget-object p0, p0, v3

    .line 96
    return-object p0
.end method

.method public static getMessageByWinerrCode(I)Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Ljcifs/smb/WinError;->WINERR_CODES:[I

    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    if-ge v0, v1, :cond_16

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_16
    add-int v2, v1, v0

    .line 25
    div-int/lit8 v2, v2, 0x2

    .line 27
    sget-object v3, Ljcifs/smb/WinError;->WINERR_CODES:[I

    .line 29
    aget v3, v3, v2

    .line 31
    if-le p0, v3, :cond_23

    .line 33
    add-int/lit8 v1, v2, 0x1

    .line 35
    goto :goto_6

    .line 36
    :cond_23
    if-ge p0, v3, :cond_28

    .line 38
    add-int/lit8 v0, v2, -0x1

    .line 40
    goto :goto_6

    .line 41
    :cond_28
    sget-object p0, Ljcifs/smb/WinError;->WINERR_MESSAGES:[Ljava/lang/String;

    .line 43
    aget-object p0, p0, v2

    .line 45
    return-object p0
.end method

.method public static getStatusByCode(I)I
    .registers 8

    .line 1
    const/high16 v0, -0x40000000  # -2.0f

    .line 3
    and-int/2addr v0, p0

    .line 4
    if-eqz v0, :cond_6

    .line 6
    return p0

    .line 7
    :cond_6
    sget-object v0, Ljcifs/smb/DosError;->DOS_ERROR_CODES:[[I

    .line 9
    array-length v0, v0

    .line 10
    const/4 v1, 0x1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    const/4 v2, 0x0

    .line 13
    move v3, v2

    .line 14
    :goto_d
    if-ge v0, v3, :cond_13

    .line 16
    const p0, -0x3fffffff  # -2.0000002f

    .line 19
    return p0

    .line 20
    :cond_13
    add-int v4, v3, v0

    .line 22
    div-int/lit8 v4, v4, 0x2

    .line 24
    sget-object v5, Ljcifs/smb/DosError;->DOS_ERROR_CODES:[[I

    .line 26
    aget-object v5, v5, v4

    .line 28
    aget v6, v5, v2

    .line 30
    if-le p0, v6, :cond_22

    .line 32
    add-int/lit8 v3, v4, 0x1

    .line 34
    goto :goto_d

    .line 35
    :cond_22
    if-ge p0, v6, :cond_27

    .line 37
    add-int/lit8 v0, v4, -0x1

    .line 39
    goto :goto_d

    .line 40
    :cond_27
    aget p0, v5, v1

    .line 42
    return p0
.end method


# virtual methods
.method public getNtStatus()I
    .registers 2

    .line 1
    iget v0, p0, Ljcifs/smb/SmbException;->status:I

    .line 3
    return v0
.end method

.method public getRootCause()Ljava/lang/Throwable;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    .line 3
    if-eqz v0, :cond_2d

    .line 5
    new-instance v0, Ljava/io/StringWriter;

    .line 7
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 10
    new-instance v1, Ljava/io/PrintWriter;

    .line 12
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 15
    iget-object v2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v2, "\n"

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    :cond_2d
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
