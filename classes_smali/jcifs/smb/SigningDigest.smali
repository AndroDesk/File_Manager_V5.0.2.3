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

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>(Ljcifs/smb/SmbTransport;Ljcifs/smb/NtlmPasswordAuthentication;)V
    .registers 10

    const-string v0, "MD5"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    :try_start_8
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    iput-object v2, p0, Ljcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_e} :catch_8d

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

    iput-object v3, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    iget-object v6, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v6, v6, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {p2, v6, v3, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    iget-object p1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object p1, p1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {p2, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    move-result-object p1

    iget-object p2, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    invoke-static {p1, v1, p2, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_64

    :cond_40
    new-array v2, v5, [B

    iput-object v2, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    iget-object p1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object p1, p1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {p2, p1, v2, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    goto :goto_64

    :cond_4c
    new-array v3, v3, [B

    iput-object v3, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    iget-object v6, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object v6, v6, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {p2, v6, v3, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    iget-object p1, p1, Ljcifs/smb/SmbTransport;->server:Ljcifs/smb/SmbTransport$ServerData;

    iget-object p1, p1, Ljcifs/smb/SmbTransport$ServerData;->encryptionKey:[B

    invoke-virtual {p2, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    move-result-object p1

    iget-object p2, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    invoke-static {p1, v1, p2, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_64} :catch_84

    :goto_64
    sget p1, Ljcifs/util/LogStream;->level:I

    if-lt p1, v4, :cond_83

    sget-object p1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "LM_COMPATIBILITY="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    iget-object p2, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    array-length v0, p2

    invoke-static {p1, p2, v1, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_83
    return-void

    :catch_84
    move-exception p1

    new-instance p2, Ljcifs/smb/SmbException;

    const-string v0, ""

    invoke-direct {p2, v0, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_8d
    move-exception p1

    sget p2, Ljcifs/util/LogStream;->level:I

    if-lez p2, :cond_97

    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_97
    new-instance p2, Ljcifs/smb/SmbException;

    invoke-direct {p2, v0, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>([BZ)V
    .registers 6

    const-string v0, "MD5"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    :try_start_8
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    iput-object v2, p0, Ljcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_e} :catch_29

    iput-object p1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    iput-boolean p2, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    iput v1, p0, Ljcifs/smb/SigningDigest;->updates:I

    iput v1, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    sget p2, Ljcifs/util/LogStream;->level:I

    const/4 v0, 0x5

    if-lt p2, v0, :cond_28

    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    const-string v0, "macSigningKey:"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    array-length v0, p1

    invoke-static {p2, p1, v1, v0}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_28
    return-void

    :catch_29
    move-exception p1

    sget p2, Ljcifs/util/LogStream;->level:I

    if-lez p2, :cond_33

    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_33
    new-instance p2, Ljcifs/smb/SmbException;

    invoke-direct {p2, v0, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public digest()[B
    .registers 5

    iget-object v0, p0, Ljcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    sget v1, Ljcifs/util/LogStream;->level:I

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-lt v1, v3, :cond_1e

    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    const-string v3, "digest: "

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    array-length v3, v0

    invoke-static {v1, v0, v2, v3}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    sget-object v1, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    :cond_1e
    iput v2, p0, Ljcifs/smb/SigningDigest;->updates:I

    return-object v0
.end method

.method public sign([BIILjcifs/smb/ServerMessageBlock;Ljcifs/smb/ServerMessageBlock;)V
    .registers 10

    iget v0, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    iput v0, p4, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    const/4 p4, 0x0

    if-eqz p5, :cond_d

    add-int/lit8 v0, v0, 0x1

    iput v0, p5, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    iput-boolean p4, p5, Ljcifs/smb/ServerMessageBlock;->verifyFailed:Z

    :cond_d
    :try_start_d
    iget-object p5, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    array-length v0, p5

    invoke-virtual {p0, p5, p4, v0}, Ljcifs/smb/SigningDigest;->update([BII)V

    add-int/lit8 p5, p2, 0xe

    move v0, p4

    :goto_16
    const/16 v1, 0x8

    if-lt v0, v1, :cond_3a

    iget v0, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, p5}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    invoke-virtual {p0, p1, p2, p3}, Ljcifs/smb/SigningDigest;->update([BII)V

    invoke-virtual {p0}, Ljcifs/smb/SigningDigest;->digest()[B

    move-result-object p2

    invoke-static {p2, p4, p1, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p2, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    if-eqz p2, :cond_4d

    iput-boolean p4, p0, Ljcifs/smb/SigningDigest;->bypass:Z

    const-string p2, "BSRSPYL "

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2, p4, p1, p5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4d

    :cond_3a
    add-int v1, p5, v0

    aput-byte p4, p1, v1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3e} :catch_43
    .catchall {:try_start_d .. :try_end_3e} :catchall_41

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :catchall_41
    move-exception p1

    goto :goto_54

    :catch_43
    move-exception p1

    :try_start_44
    sget p2, Ljcifs/util/LogStream;->level:I

    if-lez p2, :cond_4d

    sget-object p2, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_41

    :cond_4d
    :goto_4d
    iget p1, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    return-void

    :goto_54
    iget p2, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Ljcifs/smb/SigningDigest;->signSequence:I

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LM_COMPATIBILITY="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Ljcifs/smb/SmbConstants;->LM_COMPATIBILITY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " MacSigningKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update([BII)V
    .registers 7

    sget v0, Ljcifs/util/LogStream;->level:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3a

    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Ljcifs/smb/SigningDigest;->updates:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    const/16 v1, 0x100

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_3a
    if-nez p3, :cond_3d

    return-void

    :cond_3d
    iget-object v0, p0, Ljcifs/smb/SigningDigest;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    iget p1, p0, Ljcifs/smb/SigningDigest;->updates:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljcifs/smb/SigningDigest;->updates:I

    return-void
.end method

.method public verify([BILjcifs/smb/ServerMessageBlock;)Z
    .registers 11

    iget-object v0, p0, Ljcifs/smb/SigningDigest;->macSigningKey:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljcifs/smb/SigningDigest;->update([BII)V

    const/16 v0, 0xe

    invoke-virtual {p0, p1, p2, v0}, Ljcifs/smb/SigningDigest;->update([BII)V

    add-int/2addr p2, v0

    const/16 v1, 0x8

    new-array v3, v1, [B

    iget v4, p3, Ljcifs/smb/ServerMessageBlock;->signSeq:I

    int-to-long v4, v4

    invoke-static {v4, v5, v3, v2}, Ljcifs/smb/ServerMessageBlock;->writeInt4(J[BI)V

    invoke-virtual {p0, v3, v2, v1}, Ljcifs/smb/SigningDigest;->update([BII)V

    add-int/lit8 v3, p2, 0x8

    iget-byte v4, p3, Ljcifs/smb/ServerMessageBlock;->command:B

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_39

    move-object v4, p3

    check-cast v4, Ljcifs/smb/SmbComReadAndXResponse;

    iget v5, p3, Ljcifs/smb/ServerMessageBlock;->length:I

    iget v6, v4, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    sub-int/2addr v5, v1

    invoke-virtual {p0, p1, v3, v5}, Ljcifs/smb/SigningDigest;->update([BII)V

    iget-object v0, v4, Ljcifs/smb/SmbComReadAndXResponse;->b:[B

    iget v3, v4, Ljcifs/smb/SmbComReadAndXResponse;->off:I

    iget v4, v4, Ljcifs/smb/SmbComReadAndXResponse;->dataLength:I

    invoke-virtual {p0, v0, v3, v4}, Ljcifs/smb/SigningDigest;->update([BII)V

    goto :goto_40

    :cond_39
    iget v4, p3, Ljcifs/smb/ServerMessageBlock;->length:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, v1

    invoke-virtual {p0, p1, v3, v4}, Ljcifs/smb/SigningDigest;->update([BII)V

    :goto_40
    invoke-virtual {p0}, Ljcifs/smb/SigningDigest;->digest()[B

    move-result-object v0

    move v3, v2

    :goto_45
    if-lt v3, v1, :cond_4a

    iput-boolean v2, p3, Ljcifs/smb/ServerMessageBlock;->verifyFailed:Z

    return v2

    :cond_4a
    aget-byte v4, v0, v3

    add-int v5, p2, v3

    aget-byte v5, p1, v5

    if-eq v4, v5, :cond_6c

    sget v3, Ljcifs/util/LogStream;->level:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_68

    sget-object v3, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    const-string v4, "signature verification failure"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-static {v3, v0, v2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    sget-object v0, Ljcifs/smb/SigningDigest;->log:Ljcifs/util/LogStream;

    invoke-static {v0, p1, p2, v1}, Ljcifs/util/Hexdump;->hexdump(Ljava/io/PrintStream;[BII)V

    :cond_68
    const/4 p1, 0x1

    iput-boolean p1, p3, Ljcifs/smb/ServerMessageBlock;->verifyFailed:Z

    return p1

    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_45
.end method
