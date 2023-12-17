.class Ljcifs/smb/SmbComNegotiate;
.super Ljcifs/smb/ServerMessageBlock;
.source "SmbComNegotiate.java"


# static fields
.field private static final DIALECTS:Ljava/lang/String; = "\u0002NT LM 0.12\u0000"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/smb/ServerMessageBlock;-><init>()V

    .line 4
    const/16 v0, 0x72

    .line 6
    iput-byte v0, p0, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 8
    sget v0, Ljcifs/smb/SmbConstants;->DEFAULT_FLAGS2:I

    .line 10
    iput v0, p0, Ljcifs/smb/ServerMessageBlock;->flags2:I

    .line 12
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
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string v2, "SmbComNegotiate["

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-super {p0}, Ljcifs/smb/ServerMessageBlock;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ",wordCount="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Ljcifs/smb/ServerMessageBlock;->wordCount:I

    .line 24
    const-string v3, ",dialects=NT LM 0.12]"

    .line 26
    invoke-static {v1, v2, v3}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 33
    return-object v0
.end method

.method public writeBytesWireFormat([BI)I
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "\u0002NT LM 0.12\u0000"

    .line 4
    const-string v2, "ASCII"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 9
    move-result-object v1
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_9} :catch_f

    .line 10
    array-length v2, v1

    .line 11
    invoke-static {v1, v0, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    array-length p1, v1

    .line 15
    return p1

    .line 16
    :catch_f
    return v0
.end method

.method public writeParameterWordsWireFormat([BI)I
    .registers 3

    const/4 p1, 0x0

    return p1
.end method
