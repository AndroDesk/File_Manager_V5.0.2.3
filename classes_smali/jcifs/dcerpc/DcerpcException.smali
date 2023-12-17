.class public Ljcifs/dcerpc/DcerpcException;
.super Ljava/io/IOException;
.source "DcerpcException.java"

# interfaces
.implements Ljcifs/dcerpc/DcerpcError;
.implements Ljcifs/smb/WinError;


# instance fields
.field private error:I

.field private rootCause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljcifs/dcerpc/DcerpcException;->getMessageByDcerpcError(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Ljcifs/dcerpc/DcerpcException;->error:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 4
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 5
    iput-object p2, p0, Ljcifs/dcerpc/DcerpcException;->rootCause:Ljava/lang/Throwable;

    return-void
.end method

.method public static getMessageByDcerpcError(I)Ljava/lang/String;
    .registers 5

    .line 1
    sget-object v0, Ljcifs/dcerpc/DcerpcError;->DCERPC_FAULT_CODES:[I

    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_4
    if-ge v0, v1, :cond_1b

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string v1, "0x"

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    const/16 v1, 0x8

    .line 16
    invoke-static {p0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1b
    add-int v2, v1, v0

    .line 30
    div-int/lit8 v2, v2, 0x2

    .line 32
    sget-object v3, Ljcifs/dcerpc/DcerpcError;->DCERPC_FAULT_CODES:[I

    .line 34
    aget v3, v3, v2

    .line 36
    if-le p0, v3, :cond_28

    .line 38
    add-int/lit8 v1, v2, 0x1

    .line 40
    goto :goto_4

    .line 41
    :cond_28
    if-ge p0, v3, :cond_2d

    .line 43
    add-int/lit8 v0, v2, -0x1

    .line 45
    goto :goto_4

    .line 46
    :cond_2d
    sget-object p0, Ljcifs/dcerpc/DcerpcError;->DCERPC_FAULT_MESSAGES:[Ljava/lang/String;

    .line 48
    aget-object p0, p0, v2

    .line 50
    return-object p0
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 1
    iget v0, p0, Ljcifs/dcerpc/DcerpcException;->error:I

    .line 3
    return v0
.end method

.method public getRootCause()Ljava/lang/Throwable;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcException;->rootCause:Ljava/lang/Throwable;

    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcException;->rootCause:Ljava/lang/Throwable;

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
    iget-object v2, p0, Ljcifs/dcerpc/DcerpcException;->rootCause:Ljava/lang/Throwable;

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
