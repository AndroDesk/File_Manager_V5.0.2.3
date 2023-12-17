.class public final Ljcifs/smb/NtlmPasswordAuthentication;
.super Ljava/lang/Object;
.source "NtlmPasswordAuthentication.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# static fields
.field public static final ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

.field public static final BLANK:Ljava/lang/String; = ""

.field public static final DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

.field public static DEFAULT_DOMAIN:Ljava/lang/String;

.field public static DEFAULT_PASSWORD:Ljava/lang/String;

.field public static DEFAULT_USERNAME:Ljava/lang/String;

.field public static final GUEST:Ljcifs/smb/NtlmPasswordAuthentication;

.field private static final LM_COMPATIBILITY:I

.field public static final NULL:Ljcifs/smb/NtlmPasswordAuthentication;

.field private static final RANDOM:Ljava/util/Random;

.field private static final S8:[B

.field private static log:Ljcifs/util/LogStream;


# instance fields
.field public ansiHash:[B

.field public challenge:[B

.field public clientChallenge:[B

.field public domain:Ljava/lang/String;

.field public hashesExternal:Z

.field public password:Ljava/lang/String;

.field public unicodeHash:[B

.field public username:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-string v0, "jcifs.smb.lmCompatibility"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->RANDOM:Ljava/util/Random;

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_44

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->S8:[B

    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v0, v1, v1, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const-string v2, "?"

    const-string v3, "GUEST"

    invoke-direct {v0, v2, v3, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->GUEST:Ljcifs/smb/NtlmPasswordAuthentication;

    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

    return-void

    nop

    :array_44
    .array-data 1
        0x4bt
        0x47t
        0x53t
        0x21t
        0x40t
        0x23t
        0x24t
        0x25t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    const/4 v1, 0x0

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    if-eqz p1, :cond_47

    :try_start_13
    invoke-static {p1}, Ljcifs/smb/NtlmPasswordAuthentication;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_17
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_17} :catch_17

    :catch_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v0

    move v3, v2

    :goto_1d
    if-lt v2, v1, :cond_20

    goto :goto_3d

    :cond_20
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_31

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    goto :goto_44

    :cond_31
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_44

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    :goto_3d
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    goto :goto_47

    :cond_44
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_47
    :goto_47
    invoke-static {}, Ljcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    iget-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    if-nez p1, :cond_52

    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    :cond_52
    iget-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    if-nez p1, :cond_5a

    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    :cond_5a
    iget-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    if-nez p1, :cond_62

    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    :cond_62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    const/4 v1, 0x0

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    if-eqz p2, :cond_32

    const/16 v1, 0x40

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_20

    add-int/lit8 p1, v1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_32

    :cond_20
    const/16 v1, 0x5c

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_32

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_32
    :goto_32
    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    iput-object p2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iput-object p3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {}, Ljcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    if-nez p1, :cond_41

    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    :cond_41
    if-nez p2, :cond_47

    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    :cond_47
    if-nez p3, :cond_4d

    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    :cond_4d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B[B[B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    if-eqz p1, :cond_23

    if-eqz p2, :cond_23

    if-eqz p4, :cond_23

    if-eqz p5, :cond_23

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    iput-object p2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iput-object p3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    iput-object p4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    iput-object p5, p0, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    return-void

    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "External credentials cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static E([B[B[B)V
    .registers 10

    const/4 v0, 0x7

    new-array v1, v0, [B

    const/16 v2, 0x8

    new-array v3, v2, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_9
    array-length v6, p0

    div-int/2addr v6, v0

    if-lt v5, v6, :cond_e

    return-void

    :cond_e
    mul-int/lit8 v6, v5, 0x7

    invoke-static {p0, v6, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v6, Ljcifs/util/DES;

    invoke-direct {v6, v1}, Ljcifs/util/DES;-><init>([B)V

    invoke-virtual {v6, p1, v3}, Ljcifs/util/DES;->encrypt([B[B)V

    mul-int/lit8 v6, v5, 0x8

    invoke-static {v3, v4, p2, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9
.end method

.method public static computeResponse([B[B[BII)[B
    .registers 6

    new-instance v0, Ljcifs/util/HMACT64;

    invoke-direct {v0, p0}, Ljcifs/util/HMACT64;-><init>([B)V

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0, p2, p3, p4}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    array-length p1, p0

    array-length p3, p2

    add-int/2addr p1, p3

    new-array p1, p1, [B

    array-length p3, p0

    const/4 p4, 0x0

    invoke-static {p0, p4, p1, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length p3, p2

    invoke-static {p2, p4, p1, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .registers 8

    const-string v0, "UTF-16LE"

    const/16 v1, 0x18

    :try_start_4
    new-array v1, v1, [B

    new-instance v2, Ljcifs/util/MD4;

    invoke-direct {v2}, Ljcifs/util/MD4;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/security/MessageDigest;->update([B)V

    new-instance p2, Ljcifs/util/HMACT64;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {p2, v2}, Ljcifs/util/HMACT64;-><init>([B)V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/security/MessageDigest;->update([B)V

    new-instance p0, Ljcifs/util/HMACT64;

    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljcifs/util/HMACT64;-><init>([B)V

    invoke-virtual {p0, p3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p0, p4}, Ljava/security/MessageDigest;->update([B)V

    const/16 p1, 0x10

    const/4 p2, 0x0

    invoke-virtual {p0, v1, p2, p1}, Ljava/security/MessageDigest;->digest([BII)I

    const/16 p0, 0x8

    invoke-static {p4, p2, v1, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4b} :catch_4c

    return-object v1

    :catch_4c
    move-exception p0

    sget p1, Ljcifs/util/LogStream;->level:I

    if-lez p1, :cond_56

    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_56
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLMv2Response([B[B[B)[B
    .registers 5

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->computeResponse([B[B[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static getNTLM2Response([B[B[B)[B
    .registers 7

    const-string v0, "MD5"

    const/16 v1, 0x8

    new-array v2, v1, [B

    :try_start_6
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update([B)V

    const/4 p1, 0x0

    invoke-virtual {v3, p2, p1, v1}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    invoke-static {p2, p1, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_18
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_18} :catch_29

    const/16 p2, 0x15

    new-array p2, p2, [B

    const/16 v0, 0x10

    invoke-static {p0, p1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p0, 0x18

    new-array p0, p0, [B

    invoke-static {p2, v2, p0}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    return-object p0

    :catch_29
    move-exception p0

    sget p1, Ljcifs/util/LogStream;->level:I

    if-lez p1, :cond_33

    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_33
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getNTLMResponse(Ljava/lang/String;[B)[B
    .registers 6

    const/16 v0, 0x15

    new-array v0, v0, [B

    const/16 v1, 0x18

    new-array v1, v1, [B

    :try_start_8
    const-string v2, "UTF-16LE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_1a

    :catch_f
    move-exception p0

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lez v2, :cond_19

    sget-object v2, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    new-instance v2, Ljcifs/util/MD4;

    invoke-direct {v2}, Ljcifs/util/MD4;-><init>()V

    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    const/4 p0, 0x0

    const/16 v3, 0x10

    :try_start_25
    invoke-virtual {v2, v0, p0, v3}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_33

    :catch_29
    move-exception p0

    sget v2, Ljcifs/util/LogStream;->level:I

    if-lez v2, :cond_33

    sget-object v2, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_33
    :goto_33
    invoke-static {v0, p1, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    return-object v1
.end method

.method public static getNTLMv2Response([B[B[BJ[B)[B
    .registers 12

    const/4 v0, 0x0

    if-eqz p5, :cond_5

    array-length v1, p5

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    add-int/lit8 v2, v1, 0x1c

    add-int/lit8 v3, v2, 0x4

    new-array v4, v3, [B

    const/16 v5, 0x101

    invoke-static {v5, v4, v0}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    const/4 v5, 0x4

    invoke-static {v0, v4, v5}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    const/16 v5, 0x8

    invoke-static {p3, p4, v4, v5}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    const/16 p3, 0x10

    invoke-static {p2, v0, v4, p3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0x18

    invoke-static {v0, v4, p2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    if-eqz p5, :cond_2b

    const/16 p2, 0x1c

    invoke-static {p5, v0, v4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2b
    invoke-static {v0, v4, v2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    invoke-static {p0, p1, v4, v0, v3}, Ljcifs/smb/NtlmPasswordAuthentication;->computeResponse([B[B[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static getPreNTLMResponse(Ljava/lang/String;[B)[B
    .registers 7

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/16 v2, 0x15

    new-array v2, v2, [B

    const/16 v3, 0x18

    new-array v3, v3, [B

    :try_start_c
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    sget-object v4, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_16} :catch_28

    array-length v4, p0

    if-le v4, v0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v4

    :goto_1b
    const/4 v4, 0x0

    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object p0, Ljcifs/smb/NtlmPasswordAuthentication;->S8:[B

    invoke-static {v1, p0, v2}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    invoke-static {v2, p1, v3}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    return-object v3

    :catch_28
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Try setting jcifs.encoding=US-ASCII"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static initDefaults()V
    .registers 2

    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "jcifs.smb.client.domain"

    const-string v1, "?"

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.username"

    const-string v1, "GUEST"

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.password"

    const-string v1, ""

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    return-void
.end method

.method public static nTOWFv1(Ljava/lang/String;)[B
    .registers 3

    if-eqz p0, :cond_20

    :try_start_2
    new-instance v0, Ljcifs/util/MD4;

    invoke-direct {v0}, Ljcifs/util/MD4;-><init>()V

    const-string v1, "UTF-16LE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Password parameter is required"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static nTOWFv2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 5

    const-string v0, "UTF-16LE"

    :try_start_2
    new-instance v1, Ljcifs/util/MD4;

    invoke-direct {v1}, Ljcifs/util/MD4;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->update([B)V

    new-instance p2, Ljcifs/util/HMACT64;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {p2, v1}, Ljcifs/util/HMACT64;-><init>([B)V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2d} :catch_2e

    return-object p0

    :catch_2e
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x1

    new-array v1, v0, [B

    if-nez p0, :cond_7

    const/4 p0, 0x0

    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v3, v2, [C

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_11
    if-lt v5, v2, :cond_19

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v4, v7}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_19
    if-eqz v6, :cond_43

    if-eq v6, v0, :cond_1e

    goto :goto_52

    :cond_1e
    add-int/lit8 v6, v5, 0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x10

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    add-int/lit8 v6, v7, 0x1

    new-instance v8, Ljava/lang/String;

    const-string v9, "ASCII"

    invoke-direct {v8, v1, v4, v0, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v3, v7

    add-int/lit8 v5, v5, 0x1

    move v7, v6

    move v6, v4

    goto :goto_52

    :cond_43
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x25

    if-ne v8, v9, :cond_4d

    move v6, v0

    goto :goto_52

    :cond_4d
    add-int/lit8 v9, v7, 0x1

    aput-char v8, v3, v7

    move v7, v9

    :goto_52
    add-int/2addr v5, v0

    goto :goto_11
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    check-cast p1, Ljcifs/smb/NtlmPasswordAuthentication;

    iget-object v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_4a

    iget-boolean v3, p1, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v3, :cond_4a

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    iget-object v3, p1, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    iget-object p1, p1, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_49

    return v2

    :cond_49
    return v1

    :cond_4a
    if-nez v0, :cond_57

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iget-object p1, p1, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    return v2

    :cond_57
    return v1
.end method

.method public getAnsiHash([B)[B
    .registers 6

    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_7

    iget-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    return-object p1

    :cond_7
    sget v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    if-eqz v0, :cond_44

    const/4 v1, 0x1

    if-eq v0, v1, :cond_44

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    const/4 v1, 0x5

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getPreNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1

    :cond_21
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    if-nez v0, :cond_30

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->RANDOM:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    :cond_30
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iget-object v3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-static {v0, v1, v2, p1, v3}, Ljcifs/smb/NtlmPasswordAuthentication;->getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object p1

    return-object p1

    :cond_3d
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1

    :cond_44
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getPreNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_31
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    :goto_33
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSigningKey([B)[B
    .registers 6

    sget v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    const/4 p1, 0x3

    if-eq v0, p1, :cond_15

    const/4 p1, 0x4

    if-eq v0, p1, :cond_15

    const/4 p1, 0x5

    if-eq v0, p1, :cond_15

    const/4 p1, 0x0

    return-object p1

    :cond_15
    new-instance p1, Ljcifs/smb/SmbException;

    const-string v0, "NTLMv2 requires extended security (jcifs.smb.client.useExtendedSecurity must be true if jcifs.smb.lmCompatibility >= 3)"

    invoke-direct {p1, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    const/16 v0, 0x28

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    invoke-virtual {p0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    move-result-object p1

    const/16 v2, 0x10

    const/16 v3, 0x18

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getUnicodeHash([B)[B
    .registers 4

    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_7

    iget-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    return-object p1

    :cond_7
    sget v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    const/4 v1, 0x5

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1

    :cond_21
    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    :cond_25
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getUserSessionKey([B[BI)V
    .registers 9

    const-string v0, "UTF-16LE"

    iget-boolean v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    new-instance v1, Ljcifs/util/MD4;

    invoke-direct {v1}, Ljcifs/util/MD4;-><init>()V

    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    sget v2, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    const/16 v3, 0x10

    if-eqz v2, :cond_88

    const/4 v4, 0x1

    if-eq v2, v4, :cond_88

    const/4 v4, 0x2

    if-eq v2, v4, :cond_88

    const/4 v4, 0x3

    if-eq v2, v4, :cond_35

    const/4 v4, 0x4

    if-eq v2, v4, :cond_35

    const/4 v4, 0x5

    if-eq v2, v4, :cond_35

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1, p2, p3, v3}, Ljava/security/MessageDigest;->digest([BII)I

    goto :goto_92

    :cond_35
    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    if-nez v2, :cond_44

    const/16 v2, 0x8

    new-array v2, v2, [B

    iput-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    sget-object v4, Ljcifs/smb/NtlmPasswordAuthentication;->RANDOM:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextBytes([B)V

    :cond_44
    new-instance v2, Ljcifs/util/HMACT64;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljcifs/util/HMACT64;-><init>([B)V

    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    new-instance v1, Ljcifs/util/HMACT64;

    invoke-direct {v1, v0}, Ljcifs/util/HMACT64;-><init>([B)V

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    iget-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    new-instance p1, Ljcifs/util/HMACT64;

    invoke-direct {p1, v0}, Ljcifs/util/HMACT64;-><init>([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1, p2, p3, v3}, Ljava/security/MessageDigest;->digest([BII)I

    goto :goto_92

    :cond_88
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1, p2, p3, v3}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_92} :catch_93

    :goto_92
    return-void

    :catch_93
    move-exception p1

    new-instance p2, Ljcifs/smb/SmbException;

    const-string p3, ""

    invoke-direct {p2, p3, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getUserSessionKey([B)[B
    .registers 4

    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_19

    :catch_f
    move-exception p1

    sget v1, Ljcifs/util/LogStream;->level:I

    if-lez v1, :cond_19

    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Ljcifs/smb/NtlmPasswordAuthentication;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljcifs/smb/NtlmPasswordAuthentication;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
