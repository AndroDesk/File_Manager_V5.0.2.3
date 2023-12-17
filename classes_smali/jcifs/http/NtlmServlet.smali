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
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public init(Ljavax/servlet/ServletConfig;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServlet;->init(Ljavax/servlet/ServletConfig;)V

    .line 4
    const-string v0, "jcifs.smb.client.soTimeout"

    .line 6
    const-string v1, "300000"

    .line 8
    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    const-string v0, "jcifs.netbios.cachePolicy"

    .line 13
    const-string v1, "600"

    .line 15
    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    invoke-interface {p1}, Ljavax/servlet/ServletConfig;->getInitParameterNames()Ljava/util/Enumeration;

    .line 21
    move-result-object v0

    .line 22
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_69

    .line 28
    const-string p1, "jcifs.smb.client.domain"

    .line 30
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Ljcifs/http/NtlmServlet;->defaultDomain:Ljava/lang/String;

    .line 36
    const-string p1, "jcifs.http.domainController"

    .line 38
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    .line 44
    if-nez p1, :cond_3a

    .line 46
    iget-object p1, p0, Ljcifs/http/NtlmServlet;->defaultDomain:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    .line 50
    const/4 p1, 0x1

    .line 51
    const-string v0, "jcifs.http.loadBalance"

    .line 53
    invoke-static {v0, p1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 56
    move-result p1

    .line 57
    iput-boolean p1, p0, Ljcifs/http/NtlmServlet;->loadBalance:Z

    .line 59
    :cond_3a
    const-string p1, "jcifs.http.enableBasic"

    .line 61
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    move-result p1

    .line 73
    iput-boolean p1, p0, Ljcifs/http/NtlmServlet;->enableBasic:Z

    .line 75
    const-string p1, "jcifs.http.insecureBasic"

    .line 77
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    move-result p1

    .line 89
    iput-boolean p1, p0, Ljcifs/http/NtlmServlet;->insecureBasic:Z

    .line 91
    const-string p1, "jcifs.http.basicRealm"

    .line 93
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    iput-object p1, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    .line 99
    if-nez p1, :cond_68

    .line 101
    const-string p1, "jCIFS"

    .line 103
    iput-object p1, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    .line 105
    :cond_68
    return-void

    .line 106
    :cond_69
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Ljava/lang/String;

    .line 112
    const-string v2, "jcifs."

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_15

    .line 120
    invoke-interface {p1, v1}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    invoke-static {v1, v2}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    goto :goto_15
.end method

.method public service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .registers 16

    .line 1
    iget-boolean v0, p0, Ljcifs/http/NtlmServlet;->enableBasic:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_11

    .line 6
    iget-boolean v0, p0, Ljcifs/http/NtlmServlet;->insecureBasic:Z

    .line 8
    if-nez v0, :cond_f

    .line 10
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_11

    .line 16
    :cond_f
    move v0, v1

    .line 17
    goto :goto_12

    .line 18
    :cond_11
    const/4 v0, 0x0

    .line 19
    :goto_12
    const-string v2, "Authorization"

    .line 21
    invoke-interface {p1, v2}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    const-string v3, "\""

    .line 27
    const-string v4, "Basic realm=\""

    .line 29
    const-string v5, "NtlmHttpAuth"

    .line 31
    const-string v6, "NTLM"

    .line 33
    const-string v7, "WWW-Authenticate"

    .line 35
    if-eqz v2, :cond_ee

    .line 37
    const-string v8, "NTLM "

    .line 39
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    move-result v9

    .line 43
    if-nez v9, :cond_36

    .line 45
    if-eqz v0, :cond_ee

    .line 47
    const-string v9, "Basic "

    .line 49
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_ee

    .line 55
    :cond_36
    iget-boolean v9, p0, Ljcifs/http/NtlmServlet;->loadBalance:Z

    .line 57
    if-eqz v9, :cond_49

    .line 59
    new-instance v9, Ljcifs/UniAddress;

    .line 61
    iget-object v10, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    .line 63
    const/16 v11, 0x1c

    .line 65
    const/4 v12, 0x0

    .line 66
    invoke-static {v10, v11, v12}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;ILjava/lang/String;)Ljcifs/netbios/NbtAddress;

    .line 69
    move-result-object v10

    .line 70
    invoke-direct {v9, v10}, Ljcifs/UniAddress;-><init>(Ljava/lang/Object;)V

    .line 73
    goto :goto_4f

    .line 74
    :cond_49
    iget-object v9, p0, Ljcifs/http/NtlmServlet;->domainController:Ljava/lang/String;

    .line 76
    invoke-static {v9, v1}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    .line 79
    move-result-object v9

    .line 80
    :goto_4f
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_60

    .line 86
    invoke-static {v9}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;)[B

    .line 89
    move-result-object v1

    .line 90
    invoke-static {p1, p2, v1}, Ljcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;

    .line 93
    move-result-object v1

    .line 94
    if-nez v1, :cond_ae

    .line 96
    return-void

    .line 97
    :cond_60
    new-instance v8, Ljava/lang/String;

    .line 99
    const/4 v10, 0x6

    .line 100
    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 103
    move-result-object v2

    .line 104
    invoke-static {v2}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    .line 107
    move-result-object v2

    .line 108
    const-string v10, "US-ASCII"

    .line 110
    invoke-direct {v8, v2, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 113
    const/16 v2, 0x3a

    .line 115
    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(I)I

    .line 118
    move-result v2

    .line 119
    const/4 v10, -0x1

    .line 120
    if-eq v2, v10, :cond_7f

    .line 122
    const/4 v11, 0x0

    .line 123
    invoke-virtual {v8, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 126
    move-result-object v11

    .line 127
    goto :goto_80

    .line 128
    :cond_7f
    move-object v11, v8

    .line 129
    :goto_80
    if-eq v2, v10, :cond_88

    .line 131
    add-int/2addr v2, v1

    .line 132
    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 135
    move-result-object v2

    .line 136
    goto :goto_8a

    .line 137
    :cond_88
    const-string v2, ""

    .line 139
    :goto_8a
    const/16 v8, 0x5c

    .line 141
    invoke-virtual {v11, v8}, Ljava/lang/String;->indexOf(I)I

    .line 144
    move-result v8

    .line 145
    if-ne v8, v10, :cond_98

    .line 147
    const/16 v8, 0x2f

    .line 149
    invoke-virtual {v11, v8}, Ljava/lang/String;->indexOf(I)I

    .line 152
    move-result v8

    .line 153
    :cond_98
    if-eq v8, v10, :cond_a0

    .line 155
    const/4 v12, 0x0

    .line 156
    invoke-virtual {v11, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 159
    move-result-object v12

    .line 160
    goto :goto_a2

    .line 161
    :cond_a0
    iget-object v12, p0, Ljcifs/http/NtlmServlet;->defaultDomain:Ljava/lang/String;

    .line 163
    :goto_a2
    if-eq v8, v10, :cond_a9

    .line 165
    add-int/2addr v8, v1

    .line 166
    invoke-virtual {v11, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 169
    move-result-object v11

    .line 170
    :cond_a9
    new-instance v1, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 172
    invoke-direct {v1, v12, v11, v2}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_ae
    :try_start_ae
    invoke-static {v9, v1}, Ljcifs/smb/SmbSession;->logon(Ljcifs/UniAddress;Ljcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_b1
    .catch Ljcifs/smb/SmbAuthException; {:try_start_ae .. :try_end_b1} :catch_cb

    .line 178
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    .line 181
    move-result-object v0

    .line 182
    invoke-interface {v0, v5, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    invoke-virtual {v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getDomain()Ljava/lang/String;

    .line 188
    move-result-object v2

    .line 189
    const-string v3, "ntlmdomain"

    .line 191
    invoke-interface {v0, v3, v2}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getUsername()Ljava/lang/String;

    .line 197
    move-result-object v1

    .line 198
    const-string v2, "ntlmuser"

    .line 200
    invoke-interface {v0, v2, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    goto :goto_fc

    .line 204
    :catch_cb
    invoke-interface {p2, v7, v6}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    if-eqz v0, :cond_de

    .line 209
    new-instance p1, Ljava/lang/StringBuilder;

    .line 211
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    .line 216
    invoke-static {p1, v0, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    move-result-object p1

    .line 220
    invoke-interface {p2, v7, p1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_de
    const-string p1, "Connection"

    .line 225
    const-string v0, "close"

    .line 227
    invoke-interface {p2, p1, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/16 p1, 0x191

    .line 232
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 235
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 238
    return-void

    .line 239
    :cond_ee
    const/4 v1, 0x0

    .line 240
    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    .line 243
    move-result-object v1

    .line 244
    if-eqz v1, :cond_100

    .line 246
    invoke-interface {v1, v5}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    move-result-object v1

    .line 250
    if-nez v1, :cond_fc

    .line 252
    goto :goto_100

    .line 253
    :cond_fc
    :goto_fc
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 256
    return-void

    .line 257
    :cond_100
    :goto_100
    invoke-interface {p2, v7, v6}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    if-eqz v0, :cond_113

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    .line 264
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Ljcifs/http/NtlmServlet;->realm:Ljava/lang/String;

    .line 269
    invoke-static {p1, v0, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    move-result-object p1

    .line 273
    invoke-interface {p2, v7, p1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_113
    const/16 p1, 0x191

    .line 278
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 281
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 284
    return-void
.end method
