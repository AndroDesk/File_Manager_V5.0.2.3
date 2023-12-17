.class public Ljcifs/ntlmssp/Type3Message;
.super Ljcifs/ntlmssp/NtlmMessage;
.source "Type3Message.java"


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field private static final DEFAULT_FLAGS:I

.field private static final DEFAULT_PASSWORD:Ljava/lang/String;

.field private static final DEFAULT_USER:Ljava/lang/String;

.field private static final DEFAULT_WORKSTATION:Ljava/lang/String;

.field private static final LM_COMPATIBILITY:I

.field public static final MILLISECONDS_BETWEEN_1970_AND_1601:J = 0xa9730b66800L

.field private static final RANDOM:Ljava/security/SecureRandom;


# instance fields
.field private domain:Ljava/lang/String;

.field private lmResponse:[B

.field private masterKey:[B

.field private ntResponse:[B

.field private sessionKey:[B

.field private user:Ljava/lang/String;

.field private workstation:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    .line 3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 6
    sput-object v0, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    .line 8
    const-string v0, "jcifs.smb.client.useUnicode"

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v1, 0x2

    .line 19
    :goto_12
    or-int/lit16 v0, v1, 0x200

    .line 21
    sput v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_FLAGS:I

    .line 23
    const-string v0, "jcifs.smb.client.domain"

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 32
    const-string v0, "jcifs.smb.client.username"

    .line 34
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_USER:Ljava/lang/String;

    .line 40
    const-string v0, "jcifs.smb.client.password"

    .line 42
    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_PASSWORD:Ljava/lang/String;

    .line 48
    :try_start_2f
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;

    .line 55
    move-result-object v1
    :try_end_37
    .catch Ljava/net/UnknownHostException; {:try_start_2f .. :try_end_37} :catch_37

    .line 56
    :catch_37
    sput-object v1, Ljcifs/ntlmssp/Type3Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    .line 58
    const/4 v0, 0x3

    .line 59
    const-string v1, "jcifs.smb.lmCompatibility"

    .line 61
    invoke-static {v1, v0}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 64
    move-result v0

    .line 65
    sput v0, Ljcifs/ntlmssp/Type3Message;->LM_COMPATIBILITY:I

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 3
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    .line 4
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    .line 5
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 86
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 88
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    .line 89
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    .line 90
    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 91
    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    .line 92
    invoke-virtual {p0, p4}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p5}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p6}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type2Message;)V
    .registers 7

    .line 8
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 10
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    .line 11
    invoke-static {p1}, Ljcifs/ntlmssp/Type3Message;->getDefaultFlags(Ljcifs/ntlmssp/Type2Message;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    .line 12
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultUser()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultPassword()Ljava/lang/String;

    move-result-object v2

    .line 18
    sget v3, Ljcifs/ntlmssp/Type3Message;->LM_COMPATIBILITY:I

    if-eqz v3, :cond_66

    const/4 v4, 0x1

    if-eq v3, v4, :cond_66

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5b

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4a

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4a

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4a

    .line 19
    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 20
    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto :goto_74

    :cond_4a
    const/16 v3, 0x8

    new-array v3, v3, [B

    .line 21
    sget-object v4, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 22
    invoke-static {p1, v0, v1, v2, v3}, Ljcifs/ntlmssp/Type3Message;->getLMv2Response(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    goto :goto_74

    .line 23
    :cond_5b
    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 25
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto :goto_74

    .line 26
    :cond_66
    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 27
    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    :goto_74
    return-void
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 19

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    .line 28
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v5, 0x0

    .line 29
    iput-object v5, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 30
    iput-object v5, v0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    .line 31
    invoke-static {p1}, Ljcifs/ntlmssp/Type3Message;->getDefaultFlags(Ljcifs/ntlmssp/Type2Message;)I

    move-result v5

    or-int v5, p6, v5

    invoke-virtual {p0, v5}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    if-nez p5, :cond_1e

    .line 32
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v5

    goto :goto_20

    :cond_1e
    move-object/from16 v5, p5

    .line 33
    :goto_20
    invoke-virtual {p0, v5}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, v4}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    .line 36
    sget v5, Ljcifs/ntlmssp/Type3Message;->LM_COMPATIBILITY:I

    const/high16 v6, 0x40000000  # 2.0f

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/16 v9, 0x10

    if-eqz v5, :cond_c5

    const/4 v10, 0x1

    if-eq v5, v10, :cond_c5

    const/4 v10, 0x2

    if-eq v5, v10, :cond_b9

    const/4 v10, 0x3

    if-eq v5, v10, :cond_53

    const/4 v10, 0x4

    if-eq v5, v10, :cond_53

    const/4 v10, 0x5

    if-eq v5, v10, :cond_53

    .line 37
    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 38
    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto/16 :goto_157

    .line 39
    :cond_53
    invoke-static {p3, v4, p2}, Ljcifs/smb/NtlmPasswordAuthentication;->nTOWFv2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    new-array v10, v8, [B

    .line 40
    sget-object v11, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v11, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 41
    invoke-static {p1, p3, v4, p2, v10}, Ljcifs/ntlmssp/Type3Message;->getLMv2Response(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    new-array v2, v8, [B

    .line 42
    invoke-virtual {v11, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 43
    invoke-static {p1, v5, v2}, Ljcifs/ntlmssp/Type3Message;->getNTLMv2Response(Ljcifs/ntlmssp/Type2Message;[B[B)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    .line 44
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v1

    and-int/2addr v1, v9

    if-ne v1, v9, :cond_157

    .line 45
    new-instance v1, Ljcifs/util/HMACT64;

    invoke-direct {v1, v5}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 46
    iget-object v2, v0, Ljcifs/ntlmssp/Type3Message;->ntResponse:[B

    invoke-virtual {v1, v2, v7, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 47
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v2

    and-int/2addr v2, v6

    if-eqz v2, :cond_b2

    new-array v2, v9, [B

    .line 49
    iput-object v2, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 50
    invoke-virtual {v11, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v2, v9, [B

    .line 51
    new-instance v3, Ljcifs/util/RC4;

    invoke-direct {v3, v1}, Ljcifs/util/RC4;-><init>([B)V

    .line 52
    iget-object v1, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object p1, v3

    move-object p2, v1

    move p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v2

    move/from16 p6, v6

    invoke-virtual/range {p1 .. p6}, Ljcifs/util/RC4;->update([BII[BI)V

    .line 53
    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto/16 :goto_157

    .line 54
    :cond_b2
    iput-object v1, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 55
    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto/16 :goto_157

    .line 56
    :cond_b9
    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v1

    .line 57
    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 58
    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto/16 :goto_157

    .line 59
    :cond_c5
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v3

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_de

    .line 60
    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 61
    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto/16 :goto_157

    :cond_de
    const/16 v3, 0x18

    new-array v4, v3, [B

    .line 62
    sget-object v5, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 63
    invoke-static {v4, v8, v3, v7}, Ljava/util/Arrays;->fill([BIIB)V

    .line 64
    invoke-static {p2}, Ljcifs/smb/NtlmPasswordAuthentication;->nTOWFv1(Ljava/lang/String;)[B

    move-result-object v2

    .line 65
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v3

    .line 66
    invoke-static {v2, v3, v4}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLM2Response([B[B[B)[B

    move-result-object v3

    .line 67
    invoke-virtual {p0, v4}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 68
    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    .line 69
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v3

    and-int/2addr v3, v9

    if-ne v3, v9, :cond_157

    new-array v3, v9, [B

    .line 70
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v1

    invoke-static {v1, v7, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    invoke-static {v4, v7, v3, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    new-instance v1, Ljcifs/util/MD4;

    invoke-direct {v1}, Ljcifs/util/MD4;-><init>()V

    .line 73
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 74
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 75
    new-instance v2, Ljcifs/util/HMACT64;

    invoke-direct {v2, v1}, Ljcifs/util/HMACT64;-><init>([B)V

    .line 76
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 77
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 78
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v2

    and-int/2addr v2, v6

    if-eqz v2, :cond_152

    new-array v2, v9, [B

    .line 79
    iput-object v2, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 80
    invoke-virtual {v5, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v2, v9, [B

    .line 81
    new-instance v3, Ljcifs/util/RC4;

    invoke-direct {v3, v1}, Ljcifs/util/RC4;-><init>([B)V

    .line 82
    iget-object v1, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object p1, v3

    move-object p2, v1

    move p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v2

    move/from16 p6, v6

    invoke-virtual/range {p1 .. p6}, Ljcifs/util/RC4;->update([BII[BI)V

    .line 83
    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto :goto_157

    .line 84
    :cond_152
    iput-object v1, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 85
    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    :cond_157
    :goto_157
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 97
    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    .line 98
    invoke-direct {p0, p1}, Ljcifs/ntlmssp/Type3Message;->parse([B)V

    return-void
.end method

.method public static getDefaultDomain()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getDefaultFlags()I
    .registers 1

    .line 1
    sget v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_FLAGS:I

    return v0
.end method

.method public static getDefaultFlags(Ljcifs/ntlmssp/Type2Message;)I
    .registers 2

    if-nez p0, :cond_5

    .line 2
    sget p0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_FLAGS:I

    return p0

    .line 3
    :cond_5
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x2

    :goto_f
    or-int/lit16 p0, v0, 0x200

    return p0
.end method

.method public static getDefaultPassword()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_PASSWORD:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getDefaultUser()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_USER:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getDefaultWorkstation()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B
    .registers 2

    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 2
    :cond_5
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object p0

    .line 3
    invoke-static {p1, p0}, Ljcifs/smb/NtlmPasswordAuthentication;->getPreNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLMv2Response(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 5

    .line 1
    if-eqz p0, :cond_14

    .line 3
    if-eqz p1, :cond_14

    .line 5
    if-eqz p2, :cond_14

    .line 7
    if-eqz p3, :cond_14

    .line 9
    if-nez p4, :cond_b

    .line 11
    goto :goto_14

    .line 12
    :cond_b
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    .line 15
    move-result-object p0

    .line 16
    invoke-static {p1, p2, p3, p0, p4}, Ljcifs/smb/NtlmPasswordAuthentication;->getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_14
    :goto_14
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public static getNTLMv2Response(Ljcifs/ntlmssp/Type2Message;[B[B)[B
    .registers 13

    .line 1
    if-eqz p0, :cond_24

    .line 3
    if-eqz p1, :cond_24

    .line 5
    if-nez p2, :cond_7

    .line 7
    goto :goto_24

    .line 8
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    move-result-wide v0

    .line 12
    const-wide v2, 0xa9730b66800L

    .line 17
    add-long/2addr v0, v2

    .line 18
    const-wide/16 v2, 0x2710

    .line 20
    mul-long v7, v0, v2

    .line 22
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTargetInformation()[B

    .line 29
    move-result-object v9

    .line 30
    move-object v4, p1

    .line 31
    move-object v6, p2

    .line 32
    invoke-static/range {v4 .. v9}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMv2Response([B[B[BJ[B)[B

    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_24
    :goto_24
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public static getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B
    .registers 2

    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    .line 2
    :cond_5
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object p0

    .line 3
    invoke-static {p1, p0}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMResponse(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method

.method private parse([B)V
    .registers 14

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    const/16 v1, 0x8

    .line 4
    if-lt v0, v1, :cond_9f

    .line 6
    invoke-static {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x3

    .line 11
    if-ne v0, v1, :cond_97

    .line 13
    const/16 v0, 0xc

    .line 15
    invoke-static {p1, v0}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    .line 18
    move-result-object v0

    .line 19
    const/16 v1, 0x10

    .line 21
    invoke-static {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    .line 24
    move-result v1

    .line 25
    const/16 v2, 0x14

    .line 27
    invoke-static {p1, v2}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    .line 30
    move-result-object v2

    .line 31
    const/16 v3, 0x18

    .line 33
    invoke-static {p1, v3}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    .line 36
    move-result v3

    .line 37
    const/16 v4, 0x1c

    .line 39
    invoke-static {p1, v4}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    .line 42
    move-result-object v4

    .line 43
    const/16 v5, 0x20

    .line 45
    invoke-static {p1, v5}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    .line 48
    move-result v5

    .line 49
    const/16 v6, 0x24

    .line 51
    invoke-static {p1, v6}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    .line 54
    move-result-object v6

    .line 55
    const/16 v7, 0x28

    .line 57
    invoke-static {p1, v7}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    .line 60
    move-result v7

    .line 61
    const/16 v8, 0x2c

    .line 63
    invoke-static {p1, v8}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    .line 66
    move-result-object v8

    .line 67
    const/16 v9, 0x30

    .line 69
    invoke-static {p1, v9}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    .line 72
    move-result v9

    .line 73
    const/4 v10, 0x0

    .line 74
    const/16 v11, 0x34

    .line 76
    if-eq v1, v11, :cond_6c

    .line 78
    if-eq v3, v11, :cond_6c

    .line 80
    if-eq v5, v11, :cond_6c

    .line 82
    if-eq v7, v11, :cond_6c

    .line 84
    if-ne v9, v11, :cond_56

    .line 86
    goto :goto_6c

    .line 87
    :cond_56
    invoke-static {p1, v11}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    .line 90
    move-result-object v10

    .line 91
    const/16 v1, 0x3c

    .line 93
    invoke-static {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    .line 96
    move-result p1

    .line 97
    and-int/lit8 v1, p1, 0x1

    .line 99
    if-eqz v1, :cond_67

    .line 101
    const-string v1, "UTF-16LE"

    .line 103
    goto :goto_72

    .line 104
    :cond_67
    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    goto :goto_72

    .line 109
    :cond_6c
    :goto_6c
    const/16 p1, 0x202

    .line 111
    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    :goto_72
    invoke-virtual {p0, v10}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    .line 118
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    .line 121
    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    .line 124
    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    .line 127
    new-instance p1, Ljava/lang/String;

    .line 129
    invoke-direct {p1, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 132
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    .line 135
    new-instance p1, Ljava/lang/String;

    .line 137
    invoke-direct {p1, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 140
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    .line 143
    new-instance p1, Ljava/lang/String;

    .line 145
    invoke-direct {p1, v8, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 148
    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    .line 151
    return-void

    .line 152
    :cond_97
    new-instance p1, Ljava/io/IOException;

    .line 154
    const-string v0, "Not a Type 3 message."

    .line 156
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 159
    throw p1

    .line 160
    :cond_9f
    aget-byte v1, p1, v0

    .line 162
    sget-object v2, Ljcifs/ntlmssp/NtlmMessage;->NTLMSSP_SIGNATURE:[B

    .line 164
    aget-byte v2, v2, v0

    .line 166
    if-ne v1, v2, :cond_ab

    .line 168
    add-int/lit8 v0, v0, 0x1

    .line 170
    goto/16 :goto_1

    .line 172
    :cond_ab
    new-instance p1, Ljava/io/IOException;

    .line 174
    const-string v0, "Not an NTLMSSP message."

    .line 176
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 179
    throw p1
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->domain:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLMResponse()[B
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->lmResponse:[B

    return-object v0
.end method

.method public getMasterKey()[B
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    .line 3
    return-object v0
.end method

.method public getNTResponse()[B
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->ntResponse:[B

    return-object v0
.end method

.method public getSessionKey()[B
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    .line 3
    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->user:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getWorkstation()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->workstation:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->domain:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setLMResponse([B)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->lmResponse:[B

    .line 3
    return-void
.end method

.method public setNTResponse([B)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->ntResponse:[B

    .line 3
    return-void
.end method

.method public setSessionKey([B)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    .line 3
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->user:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setWorkstation(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->workstation:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public toByteArray()[B
    .registers 17

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_b

    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move v1, v2

    .line 13
    :goto_c
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_11

    .line 16
    move-object v4, v3

    .line 17
    goto :goto_15

    .line 18
    :cond_11
    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 22
    :goto_15
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getDomain()Ljava/lang/String;

    .line 25
    move-result-object v5
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_d2

    .line 26
    const-string v6, "UTF-16LE"

    .line 28
    if-eqz v5, :cond_2f

    .line 30
    :try_start_1d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 33
    move-result v7

    .line 34
    if-eqz v7, :cond_2f

    .line 36
    if-eqz v1, :cond_2a

    .line 38
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 41
    move-result-object v5

    .line 42
    goto :goto_30

    .line 43
    :cond_2a
    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 46
    move-result-object v5

    .line 47
    goto :goto_30

    .line 48
    :cond_2f
    move-object v5, v3

    .line 49
    :goto_30
    if-eqz v5, :cond_34

    .line 51
    array-length v7, v5

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    move v7, v2

    .line 54
    :goto_35
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getUser()Ljava/lang/String;

    .line 57
    move-result-object v8

    .line 58
    if-eqz v8, :cond_51

    .line 60
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 63
    move-result v9

    .line 64
    if-eqz v9, :cond_51

    .line 66
    if-eqz v1, :cond_48

    .line 68
    invoke-virtual {v8, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 71
    move-result-object v8

    .line 72
    goto :goto_52

    .line 73
    :cond_48
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 76
    move-result-object v8

    .line 77
    invoke-virtual {v8, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 80
    move-result-object v8

    .line 81
    goto :goto_52

    .line 82
    :cond_51
    move-object v8, v3

    .line 83
    :goto_52
    if-eqz v8, :cond_56

    .line 85
    array-length v9, v8

    .line 86
    goto :goto_57

    .line 87
    :cond_56
    move v9, v2

    .line 88
    :goto_57
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getWorkstation()Ljava/lang/String;

    .line 91
    move-result-object v10

    .line 92
    if-eqz v10, :cond_73

    .line 94
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 97
    move-result v11

    .line 98
    if-eqz v11, :cond_73

    .line 100
    if-eqz v1, :cond_6a

    .line 102
    invoke-virtual {v10, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 105
    move-result-object v1

    .line 106
    goto :goto_72

    .line 107
    :cond_6a
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 114
    move-result-object v1

    .line 115
    :goto_72
    move-object v3, v1

    .line 116
    :cond_73
    if-eqz v3, :cond_77

    .line 118
    array-length v1, v3

    .line 119
    goto :goto_78

    .line 120
    :cond_77
    move v1, v2

    .line 121
    :goto_78
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getLMResponse()[B

    .line 124
    move-result-object v4

    .line 125
    if-eqz v4, :cond_80

    .line 127
    array-length v6, v4

    .line 128
    goto :goto_81

    .line 129
    :cond_80
    move v6, v2

    .line 130
    :goto_81
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getNTResponse()[B

    .line 133
    move-result-object v10

    .line 134
    if-eqz v10, :cond_89

    .line 136
    array-length v11, v10

    .line 137
    goto :goto_8a

    .line 138
    :cond_89
    move v11, v2

    .line 139
    :goto_8a
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getSessionKey()[B

    .line 142
    move-result-object v12

    .line 143
    if-eqz v12, :cond_92

    .line 145
    array-length v13, v12

    .line 146
    goto :goto_93

    .line 147
    :cond_92
    move v13, v2

    .line 148
    :goto_93
    add-int/lit8 v14, v7, 0x40

    .line 150
    add-int/2addr v14, v9

    .line 151
    add-int/2addr v14, v1

    .line 152
    add-int/2addr v14, v6

    .line 153
    add-int/2addr v14, v11

    .line 154
    add-int/2addr v14, v13

    .line 155
    new-array v13, v14, [B

    .line 157
    sget-object v14, Ljcifs/ntlmssp/NtlmMessage;->NTLMSSP_SIGNATURE:[B

    .line 159
    const/16 v15, 0x8

    .line 161
    invoke-static {v14, v2, v13, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    const/4 v2, 0x3

    .line 165
    invoke-static {v13, v15, v2}, Ljcifs/ntlmssp/NtlmMessage;->writeULong([BII)V

    .line 168
    const/16 v2, 0xc

    .line 170
    const/16 v14, 0x40

    .line 172
    invoke-static {v13, v2, v14, v4}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    .line 175
    add-int/2addr v6, v14

    .line 176
    const/16 v2, 0x14

    .line 178
    invoke-static {v13, v2, v6, v10}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    .line 181
    add-int/2addr v6, v11

    .line 182
    const/16 v2, 0x1c

    .line 184
    invoke-static {v13, v2, v6, v5}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    .line 187
    add-int/2addr v6, v7

    .line 188
    const/16 v2, 0x24

    .line 190
    invoke-static {v13, v2, v6, v8}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    .line 193
    add-int/2addr v6, v9

    .line 194
    const/16 v2, 0x2c

    .line 196
    invoke-static {v13, v2, v6, v3}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    .line 199
    add-int/2addr v6, v1

    .line 200
    const/16 v1, 0x34

    .line 202
    invoke-static {v13, v1, v6, v12}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    .line 205
    const/16 v1, 0x3c

    .line 207
    invoke-static {v13, v1, v0}, Ljcifs/ntlmssp/NtlmMessage;->writeULong([BII)V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_d1} :catch_d2

    .line 210
    return-object v13

    .line 211
    :catch_d2
    move-exception v0

    .line 212
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 214
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 217
    move-result-object v0

    .line 218
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 221
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 1
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getUser()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getDomain()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getWorkstation()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getLMResponse()[B

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getNTResponse()[B

    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getSessionKey()[B

    .line 24
    move-result-object v5

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    .line 27
    const-string v7, "Type3Message[domain="

    .line 29
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ",user="

    .line 37
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v0, ",workstation="

    .line 45
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v0, ",lmResponse="

    .line 53
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v0, "null"

    .line 58
    const-string v1, " bytes>"

    .line 60
    const-string v2, "<"

    .line 62
    if-nez v3, :cond_41

    .line 64
    move-object v3, v0

    .line 65
    goto :goto_4b

    .line 66
    :cond_41
    new-instance v7, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    array-length v3, v3

    .line 72
    invoke-static {v7, v3, v1}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v3

    .line 76
    :goto_4b
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v3, ",ntResponse="

    .line 81
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    if-nez v4, :cond_57

    .line 86
    move-object v3, v0

    .line 87
    goto :goto_61

    .line 88
    :cond_57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    array-length v4, v4

    .line 94
    invoke-static {v3, v4, v1}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 98
    :goto_61
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v3, ",sessionKey="

    .line 103
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    if-nez v5, :cond_6c

    .line 108
    goto :goto_76

    .line 109
    :cond_6c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    array-length v2, v5

    .line 115
    invoke-static {v0, v2, v1}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    :goto_76
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v0, ",flags=0x"

    .line 124
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    .line 130
    move-result v0

    .line 131
    const/16 v1, 0x8

    .line 133
    invoke-static {v0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v0, "]"

    .line 142
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 149
    return-object v0
.end method
