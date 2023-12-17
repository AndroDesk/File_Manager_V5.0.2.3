.class public Ljcifs/smb/SigningDigest;
.super Ljava/lang/Object;
.source "SigningDigest.java"

# interfaces
.implements Ljcifs/smb/SmbConstants;


# static fields
.field public static log:Ljcifs/util/LogStream;


# instance fields
.field private bypass:Z

.field private digest:Ljava/security/MessageDigest;

.field private macSigningKey:[B

.field private signSequence:I

.field private updates:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    .line 7
    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbTransport;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 10

    const-string v0, "MD5"

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    .line 16
    :try_start_8
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    iput-object v2, p0, Ljcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_e} :catch_8d

    .line 17
    :try_start_e
    sget v0, Ljcifs/smb/SmbConstants;->LM_COMPATIBILITY:I

    const/16 v2, 0x18

    const/16 v3, 0x28

    const/4 v4, 0x5

    const/16 v5, 0x10

    if-eqz v0, :cond_4c

    const/4 v6, 0x1

    if-eq v0, v6, :cond_4c

    const/4 v6, 0x2

    if-eq v0, v6, :cond_4c

    const/4 v6, 0x3

    if-eq v0, v6, :cond_40

    const/4 v6, 0x4

    if-eq v0, v6, :cond_40

    if-eq v0, v4, :cond_40

    new-array v3, v3, [B

    .line 18
    iput-object v3, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    .line 19
    iget-object v6, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v6, v6, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {p2, v6, v3, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    .line 20
    iget-object p1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object p1, p1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {p2, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    move-result-object p1

    .line 21
    iget-object p2, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    .line 22
    invoke-static {p1, v1, p2, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_64

    :cond_40
    new-array v2, v5, [B

    .line 23
    iput-object v2, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    .line 24
    iget-object p1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object p1, p1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {p2, p1, v2, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    goto :goto_64

    :cond_4c
    new-array v3, v3, [B

    .line 25
    iput-object v3, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    .line 26
    iget-object v6, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v6, v6, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {p2, v6, v3, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    .line 27
    iget-object p1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object p1, p1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {p2, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    move-result-object p1

    .line 28
    iget-object p2, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    .line 29
    invoke-static {p1, v1, p2, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_64} :catch_84

    .line 30
    :goto_64
    sget p1, Ljcifs/util/LogStream;->level:I

    if-lt p1, v4, :cond_83

    .line 31
    sget-object p1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "LM_COMPATIBILITY="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    sget-object p1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    iget-object p2, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    array-length v0, p2

    invoke-static {p1, p2, v1, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_83
    return-void

    :catch_84
    move-exception p1

    .line 33
    new-instance p2, Ljcifs/smb/SmbException;

    const-string v0, ""

    invoke-direct {p2, v0, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_8d
    move-exception p1

    .line 34
    sget p2, Ljcifs/util/LogStream;->level:I

    if-lez p2, :cond_97

    .line 35
    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 36
    :cond_97
    new-instance p2, Ljcifs/smb/SmbException;

    invoke-direct {p2, v0, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>([BZ)V
    .registers 6

    const-string v0, "MD5"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    .line 3
    :try_start_8
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    iput-object v2, p0, Ljcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_e} :catch_29

    .line 4
    iput-object p1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    .line 5
    iput-boolean p2, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    .line 6
    iput v1, p0, Ljcifs/smb/SigningDigest;->updates:I

    .line 7
    iput v1, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    .line 8
    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 v0, 0x5

    if-lt p2, v0, :cond_28

    .line 9
    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    const-string v0, "macSigningKey:"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 10
    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    array-length v0, p1

    invoke-static {p2, p1, v1, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_28
    return-void

    :catch_29
    move-exception p1

    .line 11
    sget p2, Ljcifs/util/LogStream;->level:I

    if-lez p2, :cond_33

    .line 12
    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 13
    :cond_33
    new-instance p2, Ljcifs/smb/SmbException;

    invoke-direct {p2, v0, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public digest()[B
    .registers 5

    .line 1
    iget-object v0, p0, Ljcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;

    .line 3
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 6
    move-result-object v0

    .line 7
    sget v1, Ljcifs/util/LogStream;->level:I

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x5

    .line 11
    if-lt v1, v3, :cond_1e

    .line 13
    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    .line 15
    const-string v3, "digest: "

    .line 17
    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    .line 22
    array-length v3, v0

    .line 23
    invoke-static {v1, v0, v2, v3}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 26
    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    .line 28
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 31
    :cond_1e
    iput v2, p0, Ljcifs/smb/SigningDigest;->updates:I

    .line 33
    return-object v0
.end method

.method public sign([BIILjcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 10

    .line 1
    iget v0, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    .line 3
    iput v0, p4, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    .line 5
    const/4 p4, 0x0

    .line 6
    if-eqz p5, :cond_d

    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 10
    iput v0, p5, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    .line 12
    iput-boolean p4, p5, Ljcifs/smb/ServerMessageBlock;->verifyFailed:Z

    .line 14
    :cond_d
    :try_start_d
    iget-object p5, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    .line 16
    array-length v0, p5

    .line 17
    invoke-virtual {p0, p5, p4, v0}, Ljcifs/smb/SigningDigest;->update([BII)V

    .line 20
    add-int/lit8 p5, p2, 0xe

    .line 22
    move v0, p4

    .line 23
    :goto_16
    const/16 v1, 0x8

    .line 25
    if-lt v0, v1, :cond_3a

    .line 27
    iget v0, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    .line 29
    int-to-long v2, v0

    .line 30
    invoke-static {v2, v3, p1, p5}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Ljcifs/smb/SigningDigest;->update([BII)V

    .line 36
    invoke-virtual {p0}, Ljcifs/smb/SigningDigest;->digest()[B

    .line 39
    move-result-object p2

    .line 40
    invoke-static {p2, p4, p1, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iget-boolean p2, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    .line 45
    if-eqz p2, :cond_4d

    .line 47
    iput-boolean p4, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    .line 49
    const-string p2, "BSRSPYL "

    .line 51
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 54
    move-result-object p2

    .line 55
    invoke-static {p2, p4, p1, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    goto :goto_4d

    .line 59
    :cond_3a
    add-int v1, p5, v0

    .line 61
    aput-byte p4, p1, v1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3e} :catch_43
    .catchall {:try_start_d .. :try_end_3e} :catchall_41

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 65
    goto :goto_16

    .line 66
    :catchall_41
    move-exception p1

    .line 67
    goto :goto_54

    .line 68
    :catch_43
    move-exception p1

    .line 69
    :try_start_44
    sget p2, Ljcifs/util/LogStream;->level:I

    .line 71
    if-lez p2, :cond_4d

    .line 73
    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_41

    .line 78
    :cond_4d
    :goto_4d
    iget p1, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    .line 80
    add-int/lit8 p1, p1, 0x2

    .line 82
    iput p1, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    .line 84
    return-void

    .line 85
    :goto_54
    iget p2, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    .line 87
    add-int/lit8 p2, p2, 0x2

    .line 89
    iput p2, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    .line 91
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "LM_COMPATIBILITY="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    sget v1, Ljcifs/smb/SmbConstants;->LM_COMPATIBILITY:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " MacSigningKey="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    .line 20
    array-length v2, v1

    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v1, v3, v2}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public update([BII)V
    .registers 7

    .line 1
    sget v0, Ljcifs/util/LogStream;->level:I

    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt v0, v1, :cond_3a

    .line 6
    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string v2, "update: "

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget v2, p0, Ljcifs/smb/SigningDigest;->updates:I

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, " "

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    const-string v2, ":"

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    .line 45
    const/16 v1, 0x100

    .line 47
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    .line 50
    move-result v1

    .line 51
    invoke-static {v0, p1, p2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 54
    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    .line 56
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 59
    :cond_3a
    if-nez p3, :cond_3d

    .line 61
    return-void

    .line 62
    :cond_3d
    iget-object v0, p0, Ljcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;

    .line 64
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 67
    iget p1, p0, Ljcifs/smb/SigningDigest;->updates:I

    .line 69
    add-int/lit8 p1, p1, 0x1

    .line 71
    iput p1, p0, Ljcifs/smb/SigningDigest;->updates:I

    .line 73
    return-void
.end method

.method public verify([BILjcifs/smb/ServerMessageBlock;)Z
    .registers 11

    .line 1
    iget-object v0, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SigningDigest;->update([BII)V

    .line 8
    const/16 v0, 0xe

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Ljcifs/smb/SigningDigest;->update([BII)V

    .line 13
    add-int/2addr p2, v0

    .line 14
    const/16 v1, 0x8

    .line 16
    new-array v3, v1, [B

    .line 18
    iget v4, p3, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    .line 20
    int-to-long v4, v4

    .line 21
    invoke-static {v4, v5, v3, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    .line 24
    invoke-virtual {p0, v3, v2, v1}, Ljcifs/smb/SigningDigest;->update([BII)V

    .line 27
    add-int/lit8 v3, p2, 0x8

    .line 29
    iget-byte v4, p3, Ljcifs/smb/ServerMessageBlock;->command:B

    .line 31
    const/16 v5, 0x2e

    .line 33
    if-ne v4, v5, :cond_39

    .line 35
    move-object v4, p3

    .line 36
    check-cast v4, Ljcifs/smb/SmbComReadAndXResponse;

    .line 38
    iget v5, p3, Ljcifs/smb/ServerMessageBlock;->length:I

    .line 40
    iget v6, v4, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    .line 42
    sub-int/2addr v5, v6

    .line 43
    sub-int/2addr v5, v0

    .line 44
    sub-int/2addr v5, v1

    .line 45
    invoke-virtual {p0, p1, v3, v5}, Ljcifs/smb/SigningDigest;->update([BII)V

    .line 48
    iget-object v0, v4, Ljcifs/smb/SmbComReadAndXResponse;->b:[B

    .line 50
    iget v3, v4, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    .line 52
    iget v4, v4, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    .line 54
    invoke-virtual {p0, v0, v3, v4}, Ljcifs/smb/SigningDigest;->update([BII)V

    .line 57
    goto :goto_40

    .line 58
    :cond_39
    iget v4, p3, Ljcifs/smb/ServerMessageBlock;->length:I

    .line 60
    sub-int/2addr v4, v0

    .line 61
    sub-int/2addr v4, v1

    .line 62
    invoke-virtual {p0, p1, v3, v4}, Ljcifs/smb/SigningDigest;->update([BII)V

    .line 65
    :goto_40
    invoke-virtual {p0}, Ljcifs/smb/SigningDigest;->digest()[B

    .line 68
    move-result-object v0

    .line 69
    move v3, v2

    .line 70
    :goto_45
    if-lt v3, v1, :cond_4a

    .line 72
    iput-boolean v2, p3, Ljcifs/smb/ServerMessageBlock;->verifyFailed:Z

    .line 74
    return v2

    .line 75
    :cond_4a
    aget-byte v4, v0, v3

    .line 77
    add-int v5, p2, v3

    .line 79
    aget-byte v5, p1, v5

    .line 81
    if-eq v4, v5, :cond_6c

    .line 83
    sget v3, Ljcifs/util/LogStream;->level:I

    .line 85
    const/4 v4, 0x2

    .line 86
    if-lt v3, v4, :cond_68

    .line 88
    sget-object v3, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    .line 90
    const-string v4, "signature verification failure"

    .line 92
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    sget-object v3, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    .line 97
    invoke-static {v3, v0, v2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 100
    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    .line 102
    invoke-static {v0, p1, p2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    .line 105
    :cond_68
    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p3, Ljcifs/smb/ServerMessageBlock;->verifyFailed:Z

    .line 108
    return p1

    .line 109
    :cond_6c
    add-int/lit8 v3, v3, 0x1

    .line 111
    goto :goto_45
.end method
