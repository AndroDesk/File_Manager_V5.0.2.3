.class public abstract Ljcifs/http/NtlmServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "NtlmServlet.java"


# instance fields
.field private defaultDomain:Ljava/lang/String;

.field private domainController:Ljava/lang/String;

.field private enableBasic:Z

.field private insecureBasic:Z

.field private loadBalance:Z

.field private realm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Ljavax/servlet/ServletConfig;)V
    .registers 5

    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServlet;->init(Ljavax/servlet/ServletConfig;)V

    const-string v0, "jcifs.smb.client.soTimeout"

    const-string v1, "300000"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "jcifs.netbios.cachePolicy"

    const-string v1, "600"

    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Ljavax/servlet/ServletConfig;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_69

    const-string p1, "jcifs.smb.client.domain"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/http/NtlmServlet;->defaultDomain:Ljava/lang/String;

    const-string p1, "jcifs.http.domainController"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    if-nez p1, :cond_3a

    iget-object p1, p0, Ljcifs/http/NtlmServlet;->defaultDomain:Ljava/lang/String;

    iput-object p1, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    const/4 p1, 0x1

    const-string v0, "jcifs.http.loadBalance"

    invoke-static {v0, p1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/http/NtlmServlet;->loadBalance:Z

    :cond_3a
    const-string p1, "jcifs.http.enableBasic"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/http/NtlmServlet;->enableBasic:Z

    const-string p1, "jcifs.http.insecureBasic"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Ljcifs/http/NtlmServlet;->insecureBasic:Z

    const-string p1, "jcifs.http.basicRealm"

    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    if-nez p1, :cond_68

    const-string p1, "jCIFS"

    iput-object p1, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    :cond_68
    return-void

    :cond_69
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "jcifs."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {p1, v1}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_15
.end method

.method public service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .registers 16

    iget-boolean v0, p0, Ljcifs/http/NtlmServlet;->enableBasic:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Ljcifs/http/NtlmServlet;->insecureBasic:Z

    if-nez v0, :cond_f

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const-string v2, "Authorization"

    invoke-interface {p1, v2}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, "Basic realm=\""

    const-string v5, "NtlmHttpAuth"

    const-string v6, "NTLM"

    const-string v7, "WWW-Authenticate"

    if-eqz v2, :cond_ee

    const-string v8, "NTLM "

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_36

    if-eqz v0, :cond_ee

    const-string v9, "Basic "

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ee

    :cond_36
    iget-boolean v9, p0, Ljcifs/http/NtlmServlet;->loadBalance:Z

    if-eqz v9, :cond_49

    new-instance v9, Ljcifs/UniAddress;

    iget-object v10, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    const/16 v11, 0x1c

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object v10

    invoke-direct {v9, v10}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    goto :goto_4f

    :cond_49
    iget-object v9, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    invoke-static {v9, v1}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    move-result-object v9

    :goto_4f
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_60

    invoke-static {v9}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;)[B

    move-result-object v1

    invoke-static {p1, p2, v1}, Ljcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;

    move-result-object v1

    if-nez v1, :cond_ae

    return-void

    :cond_60
    new-instance v8, Ljava/lang/String;

    const/4 v10, 0x6

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    const-string v10, "US-ASCII"

    invoke-direct {v8, v2, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v2, 0x3a

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v10, -0x1

    if-eq v2, v10, :cond_7f

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_80

    :cond_7f
    move-object v11, v8

    :goto_80
    if-eq v2, v10, :cond_88

    add-int/2addr v2, v1

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8a

    :cond_88
    const-string v2, ""

    :goto_8a
    const/16 v8, 0x5c

    invoke-virtual {v11, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v10, :cond_98

    const/16 v8, 0x2f

    invoke-virtual {v11, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    :cond_98
    if-eq v8, v10, :cond_a0

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_a2

    :cond_a0
    iget-object v12, p0, Ljcifs/http/NtlmServlet;->defaultDomain:Ljava/lang/String;

    :goto_a2
    if-eq v8, v10, :cond_a9

    add-int/2addr v8, v1

    invoke-virtual {v11, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    :cond_a9
    new-instance v1, Ljcifs/smb/NtlmPasswordAuthentication;

    invoke-direct {v1, v12, v11, v2}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_ae
    :try_start_ae
    invoke-static {v9, v1}, Ljcifs/smb/SmbSession;->logon(Ljcifs/UniAddress;Ljcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_b1
    .catch Ljcifs/smb/SmbAuthException; {:try_start_ae .. :try_end_b1} :catch_cb

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    move-result-object v0

    invoke-interface {v0, v5, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ntlmdomain"

    invoke-interface {v0, v3, v2}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUsername()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ntlmuser"

    invoke-interface {v0, v2, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_fc

    :catch_cb
    invoke-interface {p2, v7, v6}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_de

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v7, p1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_de
    const-string p1, "Connection"

    const-string v0, "close"

    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x191

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    return-void

    :cond_ee
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v1

    if-eqz v1, :cond_100

    invoke-interface {v1, v5}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_fc

    goto :goto_100

    :cond_fc
    :goto_fc
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-void

    :cond_100
    :goto_100
    invoke-interface {p2, v7, v6}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_113

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v7, p1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_113
    const/16 p1, 0x191

    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    return-void
.end method
