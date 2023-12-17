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

    .line 1
    const-string v0, "jcifs.smb.lmCompatibility"

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    sput v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    .line 10
    new-instance v0, Ljava/util/Random;

    .line 12
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 15
    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->RANDOM:Ljava/util/Random;

    .line 17
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    .line 23
    const/16 v0, 0x8

    .line 25
    new-array v0, v0, [B

    .line 27
    fill-array-data v0, :array_44

    .line 30
    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->S8:[B

    .line 32
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 34
    const-string v1, ""

    .line 36
    invoke-direct {v0, v1, v1, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->ANONYMOUS:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 41
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 43
    invoke-direct {v0, v1, v1, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->NULL:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 48
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 50
    const-string v2, "?"

    .line 52
    const-string v3, "GUEST"

    .line 54
    invoke-direct {v0, v2, v3, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->GUEST:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 59
    new-instance v0, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-direct {v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;)V

    .line 65
    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT:Ljcifs/smb/NtlmPasswordAuthentication;

    .line 67
    return-void

    .line 68
    nop

    .line 69
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 4
    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    .line 5
    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    if-eqz p1, :cond_47

    .line 6
    :try_start_13
    invoke-static {p1}, Ljcifs/smb/NtlmPasswordAuthentication;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_17
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_17} :catch_17

    .line 7
    :catch_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v0

    move v3, v2

    :goto_1d
    if-lt v2, v1, :cond_20

    goto :goto_3d

    .line 8
    :cond_20
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_31

    .line 9
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    goto :goto_44

    :cond_31
    const/16 v5, 0x3a

    if-ne v4, v5, :cond_44

    add-int/lit8 v0, v2, 0x1

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 11
    :goto_3d
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    goto :goto_47

    :cond_44
    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 12
    :cond_47
    :goto_47
    invoke-static {}, Ljcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    .line 13
    iget-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    if-nez p1, :cond_52

    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 14
    :cond_52
    iget-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    if-nez p1, :cond_5a

    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 15
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 19
    iput-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    if-eqz p2, :cond_32

    const/16 v1, 0x40

    .line 20
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_20

    add-int/lit8 p1, v1, 0x1

    .line 21
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_32

    :cond_20
    const/16 v1, 0x5c

    .line 23
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_32

    .line 24
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    .line 25
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 26
    :cond_32
    :goto_32
    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 29
    invoke-static {}, Ljcifs/smb/NtlmPasswordAuthentication;->initDefaults()V

    if-nez p1, :cond_41

    .line 30
    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    :cond_41
    if-nez p2, :cond_47

    .line 31
    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    :cond_47
    if-nez p3, :cond_4d

    .line 32
    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    :cond_4d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B[B[B)V
    .registers 7

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 36
    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    if-eqz p1, :cond_23

    if-eqz p2, :cond_23

    if-eqz p4, :cond_23

    if-eqz p5, :cond_23

    .line 37
    iput-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->challenge:[B

    .line 41
    iput-object p4, p0, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    .line 42
    iput-object p5, p0, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    return-void

    .line 44
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "External credentials cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static E([B[B[B)V
    .registers 10

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v1, v0, [B

    .line 4
    const/16 v2, 0x8

    .line 6
    new-array v3, v2, [B

    .line 8
    const/4 v4, 0x0

    .line 9
    move v5, v4

    .line 10
    :goto_9
    array-length v6, p0

    .line 11
    div-int/2addr v6, v0

    .line 12
    if-lt v5, v6, :cond_e

    .line 14
    return-void

    .line 15
    :cond_e
    mul-int/lit8 v6, v5, 0x7

    .line 17
    invoke-static {p0, v6, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    new-instance v6, Ljcifs/util/DES;

    .line 22
    invoke-direct {v6, v1}, Ljcifs/util/DES;-><init>([B)V

    .line 25
    invoke-virtual {v6, p1, v3}, Ljcifs/util/DES;->encrypt([B[B)V

    .line 28
    mul-int/lit8 v6, v5, 0x8

    .line 30
    invoke-static {v3, v4, p2, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 35
    goto :goto_9
.end method

.method public static computeResponse([B[B[BII)[B
    .registers 6

    .line 1
    new-instance v0, Ljcifs/util/HMACT64;

    .line 3
    invoke-direct {v0, p0}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 9
    invoke-virtual {v0, p2, p3, p4}, Ljava/security/MessageDigest;->update([BII)V

    .line 12
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 15
    move-result-object p0

    .line 16
    array-length p1, p0

    .line 17
    array-length p3, p2

    .line 18
    add-int/2addr p1, p3

    .line 19
    new-array p1, p1, [B

    .line 21
    array-length p3, p0

    .line 22
    const/4 p4, 0x0

    .line 23
    invoke-static {p0, p4, p1, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    array-length p0, p0

    .line 27
    array-length p3, p2

    .line 28
    invoke-static {p2, p4, p1, p0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    return-object p1
.end method

.method public static getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .registers 8

    const-string v0, "UTF-16LE"

    const/16 v1, 0x18

    :try_start_4
    new-array v1, v1, [B

    .line 1
    new-instance v2, Ljcifs/util/MD4;

    invoke-direct {v2}, Ljcifs/util/MD4;-><init>()V

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    new-instance p2, Ljcifs/util/HMACT64;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {p2, v2}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 6
    new-instance p0, Ljcifs/util/HMACT64;

    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 7
    invoke-virtual {p0, p3}, Ljava/security/MessageDigest;->update([B)V

    .line 8
    invoke-virtual {p0, p4}, Ljava/security/MessageDigest;->update([B)V

    const/16 p1, 0x10

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p0, v1, p2, p1}, Ljava/security/MessageDigest;->digest([BII)I

    const/16 p0, 0x8

    .line 10
    invoke-static {p4, p2, v1, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4b} :catch_4c

    return-object v1

    :catch_4c
    move-exception p0

    .line 11
    sget p1, Ljcifs/util/LogStream;->level:I

    if-lez p1, :cond_56

    .line 12
    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_56
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLMv2Response([B[B[B)[B
    .registers 5

    .line 13
    array-length v0, p2

    const/4 v1, 0x0

    .line 14
    invoke-static {p0, p1, p2, v1, v0}, Ljcifs/smb/NtlmPasswordAuthentication;->computeResponse([B[B[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static getNTLM2Response([B[B[B)[B
    .registers 7

    .line 1
    const-string v0, "MD5"

    .line 3
    const/16 v1, 0x8

    .line 5
    new-array v2, v1, [B

    .line 7
    :try_start_6
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {v3, p2, p1, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 18
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    .line 21
    move-result-object p2

    .line 22
    invoke-static {p2, p1, v2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_18
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_18} :catch_29

    .line 25
    const/16 p2, 0x15

    .line 27
    new-array p2, p2, [B

    .line 29
    const/16 v0, 0x10

    .line 31
    invoke-static {p0, p1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    const/16 p0, 0x18

    .line 36
    new-array p0, p0, [B

    .line 38
    invoke-static {p2, v2, p0}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    .line 41
    return-object p0

    .line 42
    :catch_29
    move-exception p0

    .line 43
    sget p1, Ljcifs/util/LogStream;->level:I

    .line 45
    if-lez p1, :cond_33

    .line 47
    sget-object p1, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 52
    :cond_33
    new-instance p1, Ljava/lang/RuntimeException;

    .line 54
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    throw p1
.end method

.method public static getNTLMResponse(Ljava/lang/String;[B)[B
    .registers 6

    .line 1
    const/16 v0, 0x15

    .line 3
    new-array v0, v0, [B

    .line 5
    const/16 v1, 0x18

    .line 7
    new-array v1, v1, [B

    .line 9
    :try_start_8
    const-string v2, "UTF-16LE"

    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 14
    move-result-object p0
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_e} :catch_f

    .line 15
    goto :goto_1a

    .line 16
    :catch_f
    move-exception p0

    .line 17
    sget v2, Ljcifs/util/LogStream;->level:I

    .line 19
    if-lez v2, :cond_19

    .line 21
    sget-object v2, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 26
    :cond_19
    const/4 p0, 0x0

    .line 27
    :goto_1a
    new-instance v2, Ljcifs/util/MD4;

    .line 29
    invoke-direct {v2}, Ljcifs/util/MD4;-><init>()V

    .line 32
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 35
    const/4 p0, 0x0

    .line 36
    const/16 v3, 0x10

    .line 38
    :try_start_25
    invoke-virtual {v2, v0, p0, v3}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    .line 41
    goto :goto_33

    .line 42
    :catch_29
    move-exception p0

    .line 43
    sget v2, Ljcifs/util/LogStream;->level:I

    .line 45
    if-lez v2, :cond_33

    .line 47
    sget-object v2, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    .line 49
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 52
    :cond_33
    :goto_33
    invoke-static {v0, p1, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    .line 55
    return-object v1
.end method

.method public static getNTLMv2Response([B[B[BJ[B)[B
    .registers 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p5, :cond_5

    .line 4
    array-length v1, p5

    .line 5
    goto :goto_6

    .line 6
    :cond_5
    move v1, v0

    .line 7
    :goto_6
    add-int/lit8 v2, v1, 0x1c

    .line 9
    add-int/lit8 v3, v2, 0x4

    .line 11
    new-array v4, v3, [B

    .line 13
    const/16 v5, 0x101

    .line 15
    invoke-static {v5, v4, v0}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 18
    const/4 v5, 0x4

    .line 19
    invoke-static {v0, v4, v5}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 22
    const/16 v5, 0x8

    .line 24
    invoke-static {p3, p4, v4, v5}, Ljcifs/util/Encdec;->enc_uint64le(J[BI)I

    .line 27
    const/16 p3, 0x10

    .line 29
    invoke-static {p2, v0, v4, p3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    const/16 p2, 0x18

    .line 34
    invoke-static {v0, v4, p2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 37
    if-eqz p5, :cond_2b

    .line 39
    const/16 p2, 0x1c

    .line 41
    invoke-static {p5, v0, v4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    :cond_2b
    invoke-static {v0, v4, v2}, Ljcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 47
    invoke-static {p0, p1, v4, v0, v3}, Ljcifs/smb/NtlmPasswordAuthentication;->computeResponse([B[B[BII)[B

    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method public static getPreNTLMResponse(Ljava/lang/String;[B)[B
    .registers 7

    .line 1
    const/16 v0, 0xe

    .line 3
    new-array v1, v0, [B

    .line 5
    const/16 v2, 0x15

    .line 7
    new-array v2, v2, [B

    .line 9
    const/16 v3, 0x18

    .line 11
    new-array v3, v3, [B

    .line 13
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    sget-object v4, Ljcifs/smb/SmbConstants;->OEM_ENCODING:Ljava/lang/String;

    .line 19
    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 22
    move-result-object p0
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_16} :catch_28

    .line 23
    array-length v4, p0

    .line 24
    if-le v4, v0, :cond_1a

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v0, v4

    .line 28
    :goto_1b
    const/4 v4, 0x0

    .line 29
    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    sget-object p0, Ljcifs/smb/NtlmPasswordAuthentication;->S8:[B

    .line 34
    invoke-static {v1, p0, v2}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    .line 37
    invoke-static {v2, p1, v3}, Ljcifs/smb/NtlmPasswordAuthentication;->E([B[B[B)V

    .line 40
    return-object v3

    .line 41
    :catch_28
    move-exception p0

    .line 42
    new-instance p1, Ljava/lang/RuntimeException;

    .line 44
    const-string v0, "Try setting jcifs.encoding=US-ASCII"

    .line 46
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    throw p1
.end method

.method public static initDefaults()V
    .registers 2

    .line 1
    sget-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const-string v0, "jcifs.smb.client.domain"

    .line 8
    const-string v1, "?"

    .line 10
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 16
    const-string v0, "jcifs.smb.client.username"

    .line 18
    const-string v1, "GUEST"

    .line 20
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_USERNAME:Ljava/lang/String;

    .line 26
    const-string v0, "jcifs.smb.client.password"

    .line 28
    const-string v1, ""

    .line 30
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Ljcifs/smb/NtlmPasswordAuthentication;->DEFAULT_PASSWORD:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static nTOWFv1(Ljava/lang/String;)[B
    .registers 3

    .line 1
    if-eqz p0, :cond_20

    .line 3
    :try_start_2
    new-instance v0, Ljcifs/util/MD4;

    .line 5
    invoke-direct {v0}, Ljcifs/util/MD4;-><init>()V

    .line 8
    const-string v1, "UTF-16LE"

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 17
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 20
    move-result-object p0
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_14} :catch_15

    .line 21
    return-object p0

    .line 22
    :catch_15
    move-exception p0

    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0

    .line 33
    :cond_20
    new-instance p0, Ljava/lang/RuntimeException;

    .line 35
    const-string v0, "Password parameter is required"

    .line 37
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0
.end method

.method public static nTOWFv2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 5

    .line 1
    const-string v0, "UTF-16LE"

    .line 3
    :try_start_2
    new-instance v1, Ljcifs/util/MD4;

    .line 5
    invoke-direct {v1}, Ljcifs/util/MD4;-><init>()V

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {v1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 15
    new-instance p2, Ljcifs/util/HMACT64;

    .line 17
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 20
    move-result-object v1

    .line 21
    invoke-direct {p2, v1}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 42
    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    .line 45
    move-result-object p0
    :try_end_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2d} :catch_2e

    .line 46
    return-object p0

    .line 47
    :catch_2e
    move-exception p0

    .line 48
    new-instance p1, Ljava/lang/RuntimeException;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p1
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [B

    .line 4
    if-nez p0, :cond_7

    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    move-result v2

    .line 12
    new-array v3, v2, [C

    .line 14
    const/4 v4, 0x0

    .line 15
    move v5, v4

    .line 16
    move v6, v5

    .line 17
    move v7, v6

    .line 18
    :goto_11
    if-lt v5, v2, :cond_19

    .line 20
    new-instance p0, Ljava/lang/String;

    .line 22
    invoke-direct {p0, v3, v4, v7}, Ljava/lang/String;-><init>([CII)V

    .line 25
    return-object p0

    .line 26
    :cond_19
    if-eqz v6, :cond_43

    .line 28
    if-eq v6, v0, :cond_1e

    .line 30
    goto :goto_52

    .line 31
    :cond_1e
    add-int/lit8 v6, v5, 0x2

    .line 33
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    move-result-object v6

    .line 37
    const/16 v8, 0x10

    .line 39
    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 42
    move-result v6

    .line 43
    and-int/lit16 v6, v6, 0xff

    .line 45
    int-to-byte v6, v6

    .line 46
    aput-byte v6, v1, v4

    .line 48
    add-int/lit8 v6, v7, 0x1

    .line 50
    new-instance v8, Ljava/lang/String;

    .line 52
    const-string v9, "ASCII"

    .line 54
    invoke-direct {v8, v1, v4, v0, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 57
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    .line 60
    move-result v8

    .line 61
    aput-char v8, v3, v7

    .line 63
    add-int/lit8 v5, v5, 0x1

    .line 65
    move v7, v6

    .line 66
    move v6, v4

    .line 67
    goto :goto_52

    .line 68
    :cond_43
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 71
    move-result v8

    .line 72
    const/16 v9, 0x25

    .line 74
    if-ne v8, v9, :cond_4d

    .line 76
    move v6, v0

    .line 77
    goto :goto_52

    .line 78
    :cond_4d
    add-int/lit8 v9, v7, 0x1

    .line 80
    aput-char v8, v3, v7

    .line 82
    move v7, v9

    .line 83
    :goto_52
    add-int/2addr v5, v0

    .line 84
    goto :goto_11
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    instance-of v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_57

    .line 6
    check-cast p1, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 8
    iget-object v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_57

    .line 26
    iget-object v0, p1, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_57

    .line 44
    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    .line 46
    const/4 v2, 0x1

    .line 47
    if-eqz v0, :cond_4a

    .line 49
    iget-boolean v3, p1, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    .line 51
    if-eqz v3, :cond_4a

    .line 53
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    .line 55
    iget-object v3, p1, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    .line 57
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_49

    .line 63
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    .line 65
    iget-object p1, p1, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    .line 67
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_49

    .line 73
    return v2

    .line 74
    :cond_49
    return v1

    .line 75
    :cond_4a
    if-nez v0, :cond_57

    .line 77
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 79
    iget-object p1, p1, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_57

    .line 87
    return v2

    .line 88
    :cond_57
    return v1
.end method

.method public getAnsiHash([B)[B
    .registers 6

    .line 1
    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->ansiHash:[B

    .line 7
    return-object p1

    .line 8
    :cond_7
    sget v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    .line 10
    if-eqz v0, :cond_44

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq v0, v1, :cond_44

    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq v0, v1, :cond_3d

    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq v0, v1, :cond_21

    .line 21
    const/4 v1, 0x4

    .line 22
    if-eq v0, v1, :cond_21

    .line 24
    const/4 v1, 0x5

    .line 25
    if-eq v0, v1, :cond_21

    .line 27
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 29
    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getPreNTLMResponse(Ljava/lang/String;[B)[B

    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_21
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 36
    if-nez v0, :cond_30

    .line 38
    const/16 v0, 0x8

    .line 40
    new-array v0, v0, [B

    .line 42
    iput-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 44
    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->RANDOM:Ljava/util/Random;

    .line 46
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 49
    :cond_30
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 51
    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 53
    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 55
    iget-object v3, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 57
    invoke-static {v0, v1, v2, p1, v3}, Ljcifs/smb/NtlmPasswordAuthentication;->getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :cond_3d
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 64
    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_44
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 71
    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getPreNTLMResponse(Ljava/lang/String;[B)[B

    .line 74
    move-result-object p1

    .line 75
    return-object p1
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_14

    .line 9
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 11
    const-string v1, "?"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_14

    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 v0, 0x0

    .line 22
    :goto_15
    if-eqz v0, :cond_31

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    .line 28
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    const-string v1, "\\"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    goto :goto_33

    .line 50
    :cond_31
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 52
    :goto_33
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSigningKey([B)[B
    .registers 6

    .line 1
    sget v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    .line 3
    if-eqz v0, :cond_1d

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1d

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_1d

    .line 11
    const/4 p1, 0x3

    .line 12
    if-eq v0, p1, :cond_15

    .line 14
    const/4 p1, 0x4

    .line 15
    if-eq v0, p1, :cond_15

    .line 17
    const/4 p1, 0x5

    .line 18
    if-eq v0, p1, :cond_15

    .line 20
    const/4 p1, 0x0

    .line 21
    return-object p1

    .line 22
    :cond_15
    new-instance p1, Ljcifs/smb/SmbException;

    .line 24
    const-string v0, "NTLMv2 requires extended security (jcifs.smb.client.useExtendedSecurity must be true if jcifs.smb.lmCompatibility >= 3)"

    .line 26
    invoke-direct {p1, v0}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1

    .line 30
    :cond_1d
    const/16 v0, 0x28

    .line 32
    new-array v0, v0, [B

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V

    .line 38
    invoke-virtual {p0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUnicodeHash([B)[B

    .line 41
    move-result-object p1

    .line 42
    const/16 v2, 0x10

    .line 44
    const/16 v3, 0x18

    .line 46
    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    return-object v0
.end method

.method public getUnicodeHash([B)[B
    .registers 4

    .line 1
    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iget-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->unicodeHash:[B

    .line 7
    return-object p1

    .line 8
    :cond_7
    sget v0, Ljcifs/smb/NtlmPasswordAuthentication;->LM_COMPATIBILITY:I

    .line 10
    if-eqz v0, :cond_25

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq v0, v1, :cond_25

    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq v0, v1, :cond_25

    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq v0, v1, :cond_21

    .line 21
    const/4 v1, 0x4

    .line 22
    if-eq v0, v1, :cond_21

    .line 24
    const/4 v1, 0x5

    .line 25
    if-eq v0, v1, :cond_21

    .line 27
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 29
    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_21
    const/4 p1, 0x0

    .line 35
    new-array p1, p1, [B

    .line 37
    return-object p1

    .line 38
    :cond_25
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    .line 40
    invoke-static {v0, p1}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public getUserSessionKey([B[BI)V
    .registers 9

    const-string v0, "UTF-16LE"

    .line 5
    iget-boolean v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v1, :cond_7

    return-void

    .line 6
    :cond_7
    :try_start_7
    new-instance v1, Ljcifs/util/MD4;

    invoke-direct {v1}, Ljcifs/util/MD4;-><init>()V

    .line 7
    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->password:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 8
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

    .line 9
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 10
    invoke-virtual {v1, p2, p3, v3}, Ljava/security/MessageDigest;->digest([BII)I

    goto :goto_92

    .line 11
    :cond_35
    iget-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    if-nez v2, :cond_44

    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 12
    iput-object v2, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    .line 13
    sget-object v4, Ljcifs/smb/NtlmPasswordAuthentication;->RANDOM:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextBytes([B)V

    .line 14
    :cond_44
    new-instance v2, Ljcifs/util/HMACT64;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 15
    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 16
    iget-object v1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->domain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 17
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 18
    new-instance v1, Ljcifs/util/HMACT64;

    invoke-direct {v1, v0}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 19
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 20
    iget-object p1, p0, Ljcifs/smb/NtlmPasswordAuthentication;->clientChallenge:[B

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 21
    new-instance p1, Ljcifs/util/HMACT64;

    invoke-direct {p1, v0}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 22
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 23
    invoke-virtual {p1, p2, p3, v3}, Ljava/security/MessageDigest;->digest([BII)I

    goto :goto_92

    .line 24
    :cond_88
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 25
    invoke-virtual {v1, p2, p3, v3}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_92} :catch_93

    :goto_92
    return-void

    :catch_93
    move-exception p1

    .line 26
    new-instance p2, Ljcifs/smb/SmbException;

    const-string p3, ""

    invoke-direct {p2, p3, p1}, Ljcifs/smb/SmbException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getUserSessionKey([B)[B
    .registers 4

    .line 1
    iget-boolean v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->hashesExternal:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2
    :try_start_b
    invoke-virtual {p0, p1, v0, v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUserSessionKey([B[BI)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_19

    :catch_f
    move-exception p1

    .line 3
    sget v1, Ljcifs/util/LogStream;->level:I

    if-lez v1, :cond_19

    .line 4
    sget-object v1, Ljcifs/smb/NtlmPasswordAuthentication;->log:Ljcifs/util/LogStream;

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/NtlmPasswordAuthentication;->username:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/NtlmPasswordAuthentication;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljcifs/smb/NtlmPasswordAuthentication;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
