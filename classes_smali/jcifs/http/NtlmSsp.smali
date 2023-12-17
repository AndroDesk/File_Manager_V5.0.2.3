.class public Ljcifs/http/NtlmSsp;
.super Ljava/lang/Object;
.source "NtlmSsp.java"

# interfaces
.implements Ljcifs/ntlmssp/NtlmFlags;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;
    .registers 12

    .line 1
    const-string v0, "Authorization"

    .line 3
    invoke-interface {p0, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    const-string v1, "WWW-Authenticate"

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz p0, :cond_70

    .line 13
    const-string v3, "NTLM "

    .line 15
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_70

    .line 21
    const/4 v4, 0x5

    .line 22
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    .line 29
    move-result-object p0

    .line 30
    const/16 v4, 0x8

    .line 32
    aget-byte v4, p0, v4

    .line 34
    const/4 v5, 0x1

    .line 35
    if-ne v4, v5, :cond_46

    .line 37
    new-instance v4, Ljcifs/ntlmssp/Type1Message;

    .line 39
    invoke-direct {v4, p0}, Ljcifs/ntlmssp/Type1Message;-><init>([B)V

    .line 42
    new-instance p0, Ljcifs/ntlmssp/Type2Message;

    .line 44
    invoke-direct {p0, v4, p2, v0}, Ljcifs/ntlmssp/Type2Message;-><init>(Ljcifs/ntlmssp/Type1Message;[BLjava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Ljcifs/ntlmssp/Type2Message;->toByteArray()[B

    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Ljcifs/util/Base64;->encode([B)Ljava/lang/String;

    .line 54
    move-result-object p0

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    invoke-interface {p1, v1, p0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    goto :goto_75

    .line 71
    :cond_46
    const/4 v1, 0x3

    .line 72
    if-ne v4, v1, :cond_75

    .line 74
    new-instance p1, Ljcifs/ntlmssp/Type3Message;

    .line 76
    invoke-direct {p1, p0}, Ljcifs/ntlmssp/Type3Message;-><init>([B)V

    .line 79
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->getLMResponse()[B

    .line 82
    move-result-object p0

    .line 83
    if-nez p0, :cond_56

    .line 85
    new-array p0, v2, [B

    .line 87
    :cond_56
    move-object v7, p0

    .line 88
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->getNTResponse()[B

    .line 91
    move-result-object p0

    .line 92
    if-nez p0, :cond_5f

    .line 94
    new-array p0, v2, [B

    .line 96
    :cond_5f
    move-object v8, p0

    .line 97
    new-instance p0, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 99
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->getDomain()Ljava/lang/String;

    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {p1}, Ljcifs/ntlmssp/Type3Message;->getUser()Ljava/lang/String;

    .line 106
    move-result-object v5

    .line 107
    move-object v3, p0

    .line 108
    move-object v6, p2

    .line 109
    invoke-direct/range {v3 .. v8}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;[B[B[B)V

    .line 112
    return-object p0

    .line 113
    :cond_70
    const-string p0, "NTLM"

    .line 115
    invoke-interface {p1, v1, p0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_75
    :goto_75
    const/16 p0, 0x191

    .line 120
    invoke-interface {p1, p0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 123
    invoke-interface {p1, v2}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 126
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 129
    return-object v0
.end method


# virtual methods
.method public doAuthentication(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Ljcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
