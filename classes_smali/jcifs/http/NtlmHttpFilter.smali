.class public Ljcifs/http/NtlmHttpFilter;
.super Ljava/lang/Object;
.source "NtlmHttpFilter.java"

# interfaces
.implements Ljavax/servlet/Filter;


# static fields
.field private static log:Ljcifs/util/LogStream;


# instance fields
.field private defaultDomain:Ljava/lang/String;

.field private domainController:Ljava/lang/String;

.field private enableBasic:Z

.field private insecureBasic:Z

.field private loadBalance:Z

.field private realm:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    move-result-object v0

    sput-object v0, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .registers 6

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    move-object v0, p2

    check-cast v0, Ljavax/servlet/http/HttpServletResponse;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ljcifs/http/NtlmHttpFilter;->negotiate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Z)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    new-instance v1, Ljcifs/http/NtlmHttpServletRequest;

    invoke-direct {v1, p1, v0}, Ljcifs/http/NtlmHttpServletRequest;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljava/security/Principal;)V

    invoke-interface {p3, v1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    return-void
.end method

.method public getFilterConfig()Ljavax/servlet/FilterConfig;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .registers 5

    const-string v0, "jcifs.smb.client.soTimeout"

    const-string v1, "1800000"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "jcifs.netbios.cachePolicy"

    const-string v1, "1200"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "jcifs.smb.lmCompatibility"

    const-string v1, "0"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "jcifs.smb.client.useExtendedSecurity"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Ljavax/servlet/FilterConfig;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_8c

    const-string p1, "jcifs.smb.client.domain"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->defaultDomain:Ljava/lang/String;

    const-string p1, "jcifs.http.domainController"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    if-nez p1, :cond_45

    iget-object p1, p0, Ljcifs/http/NtlmHttpFilter;->defaultDomain:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    const/4 p1, 0x1

    const-string v0, "jcifs.http.loadBalance"

    invoke-static {v0, p1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/http/NtlmHttpFilter;->loadBalance:Z

    :cond_45
    const-string p1, "jcifs.http.enableBasic"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/http/NtlmHttpFilter;->enableBasic:Z

    const-string p1, "jcifs.http.insecureBasic"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/http/NtlmHttpFilter;->insecureBasic:Z

    const-string p1, "jcifs.http.basicRealm"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    if-nez p1, :cond_73

    const-string p1, "jCIFS"

    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    :cond_73
    const-string p1, "jcifs.util.loglevel"

    const/4 v0, -0x1

    invoke-static {p1, v0}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_7f

    invoke-static {p1}, Ljcifs/util/LogStream;->setLevel(I)V

    :cond_7f
    sget p1, Ljcifs/util/LogStream;->level:I

    const/4 v0, 0x2

    if-le p1, v0, :cond_8b

    :try_start_84
    sget-object p1, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    const-string v0, "JCIFS PROPERTIES"

    invoke-static {p1, v0}, Ljcifs/Config;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_8b} :catch_8b

    :catch_8b
    :cond_8b
    return-void

    :cond_8c
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "jcifs."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {p1, v1}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_20
.end method

.method public negotiate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Z)Ljcifs/smb/NtlmPasswordAuthentication;
    .registers 16

    const-string v0, "NtlmHttpFilter: "

    const-string v1, "Authorization"

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Ljcifs/http/NtlmHttpFilter;->enableBasic:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_19

    iget-boolean v2, p0, Ljcifs/http/NtlmHttpFilter;->insecureBasic:Z

    if-nez v2, :cond_17

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_17
    move v2, v3

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    const-string v4, "\""

    const-string v5, "Basic realm=\""

    const-string v6, "NTLM"

    const-string v7, "NtlmHttpAuth"

    const-string v8, "WWW-Authenticate"

    const/4 v9, 0x0

    if-eqz v1, :cond_157

    const-string v10, "NTLM "

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_39

    if-eqz v2, :cond_157

    const-string v11, "Basic "

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_157

    :cond_39
    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_72

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object p3

    iget-boolean v1, p0, Ljcifs/http/NtlmHttpFilter;->loadBalance:Z

    const-string v10, "NtlmHttpChal"

    if-eqz v1, :cond_5d

    invoke-interface {p3, v10}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljcifs/smb/NtlmChallenge;

    if-nez v1, :cond_58

    invoke-static {}, Ljcifs/smb/SmbSession;->getChallengeForDomain()Ljcifs/smb/NtlmChallenge;

    move-result-object v1

    invoke-interface {p3, v10, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_58
    iget-object v11, v1, Ljcifs/smb/NtlmChallenge;->dc:Ljcifs/UniAddress;

    iget-object v1, v1, Ljcifs/smb/NtlmChallenge;->challenge:[B

    goto :goto_67

    :cond_5d
    iget-object v1, p0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    invoke-static {v1, v3}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v11

    invoke-static {v11}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;)[B

    move-result-object v1

    :goto_67
    invoke-static {p1, p2, v1}, Ljcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v1

    if-nez v1, :cond_6e

    return-object v9

    :cond_6e
    invoke-interface {p3, v10}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    goto :goto_c6

    :cond_72
    new-instance p3, Ljava/lang/String;

    const/4 v9, 0x6

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    const-string v9, "US-ASCII"

    invoke-direct {p3, v1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v1, 0x3a

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v9, -0x1

    if-eq v1, v9, :cond_91

    const/4 v10, 0x0

    invoke-virtual {p3, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_92

    :cond_91
    move-object v10, p3

    :goto_92
    if-eq v1, v9, :cond_9a

    add-int/2addr v1, v3

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_9c

    :cond_9a
    const-string p3, ""

    :goto_9c
    const/16 v1, 0x5c

    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v9, :cond_aa

    const/16 v1, 0x2f

    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    :cond_aa
    if-eq v1, v9, :cond_b2

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_b4

    :cond_b2
    iget-object v11, p0, Ljcifs/http/NtlmHttpFilter;->defaultDomain:Ljava/lang/String;

    :goto_b4
    if-eq v1, v9, :cond_bb

    add-int/2addr v1, v3

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :cond_bb
    new-instance v1, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v1, v11, v10, p3}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    invoke-static {p3, v3}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v11

    :goto_c6
    :try_start_c6
    invoke-static {v11, v1}, Ljcifs/smb/SmbSession;->logon(Ljcifs/UniAddress;Ljcifs/smb/NtlmPasswordAuthentication;)V

    sget p3, Ljcifs/util/LogStream;->level:I

    const/4 v9, 0x2

    if-le p3, v9, :cond_e7

    sget-object p3, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " successfully authenticated against "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_e7
    .catch Ljcifs/smb/SmbAuthException; {:try_start_c6 .. :try_end_e7} :catch_f0

    :cond_e7
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object p1

    invoke-interface {p1, v7, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_18b

    :catch_f0
    move-exception p3

    sget v9, Ljcifs/util/LogStream;->level:I

    if-le v9, v3, :cond_124

    sget-object v3, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": 0x"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_124
    invoke-virtual {p3}, Ljcifs/smb/SmbException;->getNtStatus()I

    move-result p3

    const v0, -0x3ffffffb  # -2.0000012f

    if-ne p3, v0, :cond_137

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p1

    if-eqz p1, :cond_137

    invoke-interface {p1, v7}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    :cond_137
    invoke-interface {p2, v8, v6}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_14a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    invoke-static {p1, p3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v8, p1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14a
    const/16 p1, 0x191

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    goto :goto_188

    :cond_157
    const/4 v0, 0x0

    if-nez p3, :cond_18a

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object p1

    if-eqz p1, :cond_169

    invoke-interface {p1, v7}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljcifs/smb/NtlmPasswordAuthentication;

    if-nez v1, :cond_18b

    :cond_169
    invoke-interface {p2, v8, v6}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_17c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    invoke-static {p1, p3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v8, p1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17c
    const/16 p1, 0x191

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    :goto_188
    const/4 p1, 0x0

    return-object p1

    :cond_18a
    const/4 v1, 0x0

    :cond_18b
    :goto_18b
    return-object v1
.end method

.method public setFilterConfig(Ljavax/servlet/FilterConfig;)V
    .registers 2

    :try_start_0
    invoke-virtual {p0, p1}, Ljcifs/http/NtlmHttpFilter;->init(Ljavax/servlet/FilterConfig;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    return-void
.end method
