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

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    const-string v0, "jcifs.smb.client.useUnicode"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x2

    :goto_12
    or-int/lit16 v0, v1, 0x200

    sput v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_FLAGS:I

    const-string v0, "jcifs.smb.client.domain"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.username"

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_USER:Ljava/lang/String;

    const-string v0, "jcifs.smb.client.password"

    invoke-static {v0, v1}, Ljcifs/Config;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_PASSWORD:Ljava/lang/String;

    :try_start_2f
    invoke-static {}, Ljcifs/netbios/NbtAddress;->getLocalHost()Ljcifs/netbios/NbtAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;

    move-result-object v1
    :try_end_37
    .catch Ljava/net/UnknownHostException; {:try_start_2f .. :try_end_37} :catch_37

    :catch_37
    sput-object v1, Ljcifs/ntlmssp/Type3Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    const/4 v0, 0x3

    const-string v1, "jcifs.smb.lmCompatibility"

    invoke-static {v1, v0}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljcifs/ntlmssp/Type3Message;->LM_COMPATIBILITY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultFlags()I

    move-result v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    invoke-virtual {p0, p2}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    invoke-virtual {p0, p4}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljcifs/ntlmssp/Type2Message;)V
    .registers 7

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    invoke-static {p1}, Ljcifs/ntlmssp/Type3Message;->getDefaultFlags(Ljcifs/ntlmssp/Type2Message;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultPassword()Ljava/lang/String;

    move-result-object v2

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

    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto :goto_74

    :cond_4a
    const/16 v3, 0x8

    new-array v3, v3, [B

    sget-object v4, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1, v0, v1, v2, v3}, Ljcifs/ntlmssp/Type3Message;->getLMv2Response(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    goto :goto_74

    :cond_5b
    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto :goto_74

    :cond_66
    invoke-static {p1, v2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

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

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v5, 0x0

    iput-object v5, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    iput-object v5, v0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    invoke-static {p1}, Ljcifs/ntlmssp/Type3Message;->getDefaultFlags(Ljcifs/ntlmssp/Type2Message;)I

    move-result v5

    or-int v5, p6, v5

    invoke-virtual {p0, v5}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    if-nez p5, :cond_1e

    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    move-result-object v5

    goto :goto_20

    :cond_1e
    move-object/from16 v5, p5

    :goto_20
    invoke-virtual {p0, v5}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

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

    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto/16 :goto_157

    :cond_53
    invoke-static {p3, v4, p2}, Ljcifs/smb/NtlmPasswordAuthentication;->nTOWFv2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    new-array v10, v8, [B

    sget-object v11, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v11, v10}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1, p3, v4, p2, v10}, Ljcifs/ntlmssp/Type3Message;->getLMv2Response(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    new-array v2, v8, [B

    invoke-virtual {v11, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1, v5, v2}, Ljcifs/ntlmssp/Type3Message;->getNTLMv2Response(Ljcifs/ntlmssp/Type2Message;[B[B)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v1

    and-int/2addr v1, v9

    if-ne v1, v9, :cond_157

    new-instance v1, Ljcifs/util/HMACT64;

    invoke-direct {v1, v5}, Ljcifs/util/HMACT64;-><init>([B)V

    iget-object v2, v0, Ljcifs/ntlmssp/Type3Message;->ntResponse:[B

    invoke-virtual {v1, v2, v7, v9}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v2

    and-int/2addr v2, v6

    if-eqz v2, :cond_b2

    new-array v2, v9, [B

    iput-object v2, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    invoke-virtual {v11, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v2, v9, [B

    new-instance v3, Ljcifs/util/RC4;

    invoke-direct {v3, v1}, Ljcifs/util/RC4;-><init>([B)V

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

    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto/16 :goto_157

    :cond_b2
    iput-object v1, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto/16 :goto_157

    :cond_b9
    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto/16 :goto_157

    :cond_c5
    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v3

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_de

    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-static {p1, p2}, Ljcifs/ntlmssp/Type3Message;->getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    goto/16 :goto_157

    :cond_de
    const/16 v3, 0x18

    new-array v4, v3, [B

    sget-object v5, Ljcifs/ntlmssp/Type3Message;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v4, v8, v3, v7}, Ljava/util/Arrays;->fill([BIIB)V

    invoke-static {p2}, Ljcifs/smb/NtlmPasswordAuthentication;->nTOWFv1(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v3

    invoke-static {v2, v3, v4}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLM2Response([B[B[B)[B

    move-result-object v3

    invoke-virtual {p0, v4}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-virtual {p0, v3}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v3

    and-int/2addr v3, v9

    if-ne v3, v9, :cond_157

    new-array v3, v9, [B

    invoke-virtual {p1}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v1

    invoke-static {v1, v7, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v7, v3, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljcifs/util/MD4;

    invoke-direct {v1}, Ljcifs/util/MD4;-><init>()V

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljcifs/util/HMACT64;

    invoke-direct {v2, v1}, Ljcifs/util/HMACT64;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v2

    and-int/2addr v2, v6

    if-eqz v2, :cond_152

    new-array v2, v9, [B

    iput-object v2, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    invoke-virtual {v5, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v2, v9, [B

    new-instance v3, Ljcifs/util/RC4;

    invoke-direct {v3, v1}, Ljcifs/util/RC4;-><init>([B)V

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

    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    goto :goto_157

    :cond_152
    iput-object v1, v0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    invoke-virtual {p0, v1}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    :cond_157
    :goto_157
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljcifs/ntlmssp/NtlmMessage;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    iput-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    invoke-direct {p0, p1}, Ljcifs/ntlmssp/Type3Message;->parse([B)V

    return-void
.end method

.method public static getDefaultDomain()Ljava/lang/String;
    .registers 1

    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultFlags()I
    .registers 1

    sget v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_FLAGS:I

    return v0
.end method

.method public static getDefaultFlags(Ljcifs/ntlmssp/Type2Message;)I
    .registers 2

    if-nez p0, :cond_5

    sget p0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_FLAGS:I

    return p0

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

    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_PASSWORD:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultUser()Ljava/lang/String;
    .registers 1

    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_USER:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultWorkstation()Ljava/lang/String;
    .registers 1

    sget-object v0, Ljcifs/ntlmssp/Type3Message;->DEFAULT_WORKSTATION:Ljava/lang/String;

    return-object v0
.end method

.method public static getLMResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B
    .registers 2

    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    :cond_5
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object p0

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

    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    if-eqz p2, :cond_14

    if-eqz p3, :cond_14

    if-nez p4, :cond_b

    goto :goto_14

    :cond_b
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object p0

    invoke-static {p1, p2, p3, p0, p4}, Ljcifs/smb/NtlmPasswordAuthentication;->getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object p0

    return-object p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNTLMv2Response(Ljcifs/ntlmssp/Type2Message;[B[B)[B
    .registers 13

    if-eqz p0, :cond_24

    if-eqz p1, :cond_24

    if-nez p2, :cond_7

    goto :goto_24

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0xa9730b66800L

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    mul-long v7, v0, v2

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object v5

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getTargetInformation()[B

    move-result-object v9

    move-object v4, p1

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Ljcifs/smb/NtlmPasswordAuthentication;->getNTLMv2Response([B[B[BJ[B)[B

    move-result-object p0

    return-object p0

    :cond_24
    :goto_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNTResponse(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;)[B
    .registers 2

    if-eqz p0, :cond_e

    if-nez p1, :cond_5

    goto :goto_e

    :cond_5
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->getChallenge()[B

    move-result-object p0

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

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x8

    if-lt v0, v1, :cond_9f

    invoke-static {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_97

    const/16 v0, 0xc

    invoke-static {p1, v0}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v1

    const/16 v2, 0x14

    invoke-static {p1, v2}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    move-result-object v2

    const/16 v3, 0x18

    invoke-static {p1, v3}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v3

    const/16 v4, 0x1c

    invoke-static {p1, v4}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    move-result-object v4

    const/16 v5, 0x20

    invoke-static {p1, v5}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v5

    const/16 v6, 0x24

    invoke-static {p1, v6}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    move-result-object v6

    const/16 v7, 0x28

    invoke-static {p1, v7}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v7

    const/16 v8, 0x2c

    invoke-static {p1, v8}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    move-result-object v8

    const/16 v9, 0x30

    invoke-static {p1, v9}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0x34

    if-eq v1, v11, :cond_6c

    if-eq v3, v11, :cond_6c

    if-eq v5, v11, :cond_6c

    if-eq v7, v11, :cond_6c

    if-ne v9, v11, :cond_56

    goto :goto_6c

    :cond_56
    invoke-static {p1, v11}, Ljcifs/ntlmssp/NtlmMessage;->readSecurityBuffer([BI)[B

    move-result-object v10

    const/16 v1, 0x3c

    invoke-static {p1, v1}, Ljcifs/ntlmssp/NtlmMessage;->readULong([BI)I

    move-result p1

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_67

    const-string v1, "UTF-16LE"

    goto :goto_72

    :cond_67
    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    move-result-object v1

    goto :goto_72

    :cond_6c
    :goto_6c
    const/16 p1, 0x202

    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    move-result-object v1

    :goto_72
    invoke-virtual {p0, v10}, Ljcifs/ntlmssp/Type3Message;->setSessionKey([B)V

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/NtlmMessage;->setFlags(I)V

    invoke-virtual {p0, v0}, Ljcifs/ntlmssp/Type3Message;->setLMResponse([B)V

    invoke-virtual {p0, v2}, Ljcifs/ntlmssp/Type3Message;->setNTResponse([B)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setDomain(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setUser(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v8, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljcifs/ntlmssp/Type3Message;->setWorkstation(Ljava/lang/String;)V

    return-void

    :cond_97
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not a Type 3 message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9f
    aget-byte v1, p1, v0

    sget-object v2, Ljcifs/ntlmssp/NtlmMessage;->NTLMSSP_SIGNATURE:[B

    aget-byte v2, v2, v0

    if-ne v1, v2, :cond_ab

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_ab
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Not an NTLMSSP message."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getLMResponse()[B
    .registers 2

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->lmResponse:[B

    return-object v0
.end method

.method public getMasterKey()[B
    .registers 2

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->masterKey:[B

    return-object v0
.end method

.method public getNTResponse()[B
    .registers 2

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->ntResponse:[B

    return-object v0
.end method

.method public getSessionKey()[B
    .registers 2

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->user:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkstation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljcifs/ntlmssp/Type3Message;->workstation:Ljava/lang/String;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->domain:Ljava/lang/String;

    return-void
.end method

.method public setLMResponse([B)V
    .registers 2

    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->lmResponse:[B

    return-void
.end method

.method public setNTResponse([B)V
    .registers 2

    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->ntResponse:[B

    return-void
.end method

.method public setSessionKey([B)V
    .registers 2

    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->sessionKey:[B

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->user:Ljava/lang/String;

    return-void
.end method

.method public setWorkstation(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljcifs/ntlmssp/Type3Message;->workstation:Ljava/lang/String;

    return-void
.end method

.method public toByteArray()[B
    .registers 17

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    const/4 v3, 0x0

    if-eqz v1, :cond_11

    move-object v4, v3

    goto :goto_15

    :cond_11
    invoke-static {}, Ljcifs/ntlmssp/NtlmMessage;->getOEMEncoding()Ljava/lang/String;

    move-result-object v4

    :goto_15
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getDomain()Ljava/lang/String;

    move-result-object v5
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_d2

    const-string v6, "UTF-16LE"

    if-eqz v5, :cond_2f

    :try_start_1d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2f

    if-eqz v1, :cond_2a

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    goto :goto_30

    :cond_2a
    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    goto :goto_30

    :cond_2f
    move-object v5, v3

    :goto_30
    if-eqz v5, :cond_34

    array-length v7, v5

    goto :goto_35

    :cond_34
    move v7, v2

    :goto_35
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getUser()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_51

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_51

    if-eqz v1, :cond_48

    invoke-virtual {v8, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    goto :goto_52

    :cond_48
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    goto :goto_52

    :cond_51
    move-object v8, v3

    :goto_52
    if-eqz v8, :cond_56

    array-length v9, v8

    goto :goto_57

    :cond_56
    move v9, v2

    :goto_57
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getWorkstation()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_73

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_73

    if-eqz v1, :cond_6a

    invoke-virtual {v10, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_72

    :cond_6a
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    :goto_72
    move-object v3, v1

    :cond_73
    if-eqz v3, :cond_77

    array-length v1, v3

    goto :goto_78

    :cond_77
    move v1, v2

    :goto_78
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getLMResponse()[B

    move-result-object v4

    if-eqz v4, :cond_80

    array-length v6, v4

    goto :goto_81

    :cond_80
    move v6, v2

    :goto_81
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getNTResponse()[B

    move-result-object v10

    if-eqz v10, :cond_89

    array-length v11, v10

    goto :goto_8a

    :cond_89
    move v11, v2

    :goto_8a
    invoke-virtual/range {p0 .. p0}, Ljcifs/ntlmssp/Type3Message;->getSessionKey()[B

    move-result-object v12

    if-eqz v12, :cond_92

    array-length v13, v12

    goto :goto_93

    :cond_92
    move v13, v2

    :goto_93
    add-int/lit8 v14, v7, 0x40

    add-int/2addr v14, v9

    add-int/2addr v14, v1

    add-int/2addr v14, v6

    add-int/2addr v14, v11

    add-int/2addr v14, v13

    new-array v13, v14, [B

    sget-object v14, Ljcifs/ntlmssp/NtlmMessage;->NTLMSSP_SIGNATURE:[B

    const/16 v15, 0x8

    invoke-static {v14, v2, v13, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x3

    invoke-static {v13, v15, v2}, Ljcifs/ntlmssp/NtlmMessage;->writeULong([BII)V

    const/16 v2, 0xc

    const/16 v14, 0x40

    invoke-static {v13, v2, v14, v4}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    add-int/2addr v6, v14

    const/16 v2, 0x14

    invoke-static {v13, v2, v6, v10}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    add-int/2addr v6, v11

    const/16 v2, 0x1c

    invoke-static {v13, v2, v6, v5}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    add-int/2addr v6, v7

    const/16 v2, 0x24

    invoke-static {v13, v2, v6, v8}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    add-int/2addr v6, v9

    const/16 v2, 0x2c

    invoke-static {v13, v2, v6, v3}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    add-int/2addr v6, v1

    const/16 v1, 0x34

    invoke-static {v13, v1, v6, v12}, Ljcifs/ntlmssp/NtlmMessage;->writeSecurityBuffer([BII[B)V

    const/16 v1, 0x3c

    invoke-static {v13, v1, v0}, Ljcifs/ntlmssp/NtlmMessage;->writeULong([BII)V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_d1} :catch_d2

    return-object v13

    :catch_d2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getWorkstation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getLMResponse()[B

    move-result-object v3

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getNTResponse()[B

    move-result-object v4

    invoke-virtual {p0}, Ljcifs/ntlmssp/Type3Message;->getSessionKey()[B

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Type3Message[domain="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",user="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",workstation="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",lmResponse="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "null"

    const-string v1, " bytes>"

    const-string v2, "<"

    if-nez v3, :cond_41

    move-object v3, v0

    goto :goto_4b

    :cond_41
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v3

    invoke-static {v7, v3, v1}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_4b
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",ntResponse="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_57

    move-object v3, v0

    goto :goto_61

    :cond_57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v4

    invoke-static {v3, v4, v1}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_61
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",sessionKey="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_6c

    goto :goto_76

    :cond_6c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v5

    invoke-static {v0, v2, v1}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_76
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",flags=0x"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljcifs/ntlmssp/NtlmMessage;->getFlags()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
