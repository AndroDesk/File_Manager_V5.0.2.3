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

    .line 1
    invoke-static {}, Ljcifs/util/LogStream;->getInstance()Ljcifs/util/LogStream;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    .line 7
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

    .line 1
    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .line 3
    move-object v0, p2

    .line 4
    check-cast v0, Ljavax/servlet/http/HttpServletResponse;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Ljcifs/http/NtlmHttpFilter;->negotiate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Z)Ljcifs/smb/NtlmPasswordAuthentication;

    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    return-void

    .line 14
    :cond_d
    new-instance v1, Ljcifs/http/NtlmHttpServletRequest;

    .line 16
    invoke-direct {v1, p1, v0}, Ljcifs/http/NtlmHttpServletRequest;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljava/security/Principal;)V

    .line 19
    invoke-interface {p3, v1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 22
    return-void
.end method

.method public getFilterConfig()Ljavax/servlet/FilterConfig;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .registers 5

    .line 1
    const-string v0, "jcifs.smb.client.soTimeout"

    .line 3
    const-string v1, "1800000"

    .line 5
    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    const-string v0, "jcifs.netbios.cachePolicy"

    .line 10
    const-string v1, "1200"

    .line 12
    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    const-string v0, "jcifs.smb.lmCompatibility"

    .line 17
    const-string v1, "0"

    .line 19
    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    const-string v0, "jcifs.smb.client.useExtendedSecurity"

    .line 24
    const-string v1, "false"

    .line 26
    invoke-static {v0, v1}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    invoke-interface {p1}, Ljavax/servlet/FilterConfig;->getInitParameterNames()Ljava/util/Enumeration;

    .line 32
    move-result-object v0

    .line 33
    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_8c

    .line 39
    const-string p1, "jcifs.smb.client.domain"

    .line 41
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->defaultDomain:Ljava/lang/String;

    .line 47
    const-string p1, "jcifs.http.domainController"

    .line 49
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    .line 55
    if-nez p1, :cond_45

    .line 57
    iget-object p1, p0, Ljcifs/http/NtlmHttpFilter;->defaultDomain:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    .line 61
    const/4 p1, 0x1

    .line 62
    const-string v0, "jcifs.http.loadBalance"

    .line 64
    invoke-static {v0, p1}, Ljcifs/Config;->getBoolean(Ljava/lang/String;Z)Z

    .line 67
    move-result p1

    .line 68
    iput-boolean p1, p0, Ljcifs/http/NtlmHttpFilter;->loadBalance:Z

    .line 70
    :cond_45
    const-string p1, "jcifs.http.enableBasic"

    .line 72
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    move-result p1

    .line 84
    iput-boolean p1, p0, Ljcifs/http/NtlmHttpFilter;->enableBasic:Z

    .line 86
    const-string p1, "jcifs.http.insecureBasic"

    .line 88
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    move-result p1

    .line 100
    iput-boolean p1, p0, Ljcifs/http/NtlmHttpFilter;->insecureBasic:Z

    .line 102
    const-string p1, "jcifs.http.basicRealm"

    .line 104
    invoke-static {p1}, Ljcifs/Config;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    .line 110
    if-nez p1, :cond_73

    .line 112
    const-string p1, "jCIFS"

    .line 114
    iput-object p1, p0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    .line 116
    :cond_73
    const-string p1, "jcifs.util.loglevel"

    .line 118
    const/4 v0, -0x1

    .line 119
    invoke-static {p1, v0}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 122
    move-result p1

    .line 123
    if-eq p1, v0, :cond_7f

    .line 125
    invoke-static {p1}, Ljcifs/util/LogStream;->setLevel(I)V

    .line 128
    :cond_7f
    sget p1, Ljcifs/util/LogStream;->level:I

    .line 130
    const/4 v0, 0x2

    .line 131
    if-le p1, v0, :cond_8b

    .line 133
    :try_start_84
    sget-object p1, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    .line 135
    const-string v0, "JCIFS PROPERTIES"

    .line 137
    invoke-static {p1, v0}, Ljcifs/Config;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_8b} :catch_8b

    .line 140
    :catch_8b
    :cond_8b
    return-void

    .line 141
    :cond_8c
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Ljava/lang/String;

    .line 147
    const-string v2, "jcifs."

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_20

    .line 155
    invoke-interface {p1, v1}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    move-result-object v2

    .line 159
    invoke-static {v1, v2}, Ljcifs/Config;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    goto/16 :goto_20
.end method

.method public negotiate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Z)Ljcifs/smb/NtlmPasswordAuthentication;
    .registers 16

    .line 1
    const-string v0, "NtlmHttpFilter: "

    .line 3
    const-string v1, "Authorization"

    .line 5
    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    iget-boolean v2, p0, Ljcifs/http/NtlmHttpFilter;->enableBasic:Z

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v2, :cond_19

    .line 14
    iget-boolean v2, p0, Ljcifs/http/NtlmHttpFilter;->insecureBasic:Z

    .line 16
    if-nez v2, :cond_17

    .line 18
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->isSecure()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_19

    .line 24
    :cond_17
    move v2, v3

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 v2, 0x0

    .line 27
    :goto_1a
    const-string v4, "\""

    .line 29
    const-string v5, "Basic realm=\""

    .line 31
    const-string v6, "NTLM"

    .line 33
    const-string v7, "NtlmHttpAuth"

    .line 35
    const-string v8, "WWW-Authenticate"

    .line 37
    const/4 v9, 0x0

    .line 38
    if-eqz v1, :cond_157

    .line 40
    const-string v10, "NTLM "

    .line 42
    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    move-result v11

    .line 46
    if-nez v11, :cond_39

    .line 48
    if-eqz v2, :cond_157

    .line 50
    const-string v11, "Basic "

    .line 52
    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 55
    move-result v11

    .line 56
    if-eqz v11, :cond_157

    .line 58
    :cond_39
    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 61
    move-result p3

    .line 62
    if-eqz p3, :cond_72

    .line 64
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    .line 67
    move-result-object p3

    .line 68
    iget-boolean v1, p0, Ljcifs/http/NtlmHttpFilter;->loadBalance:Z

    .line 70
    const-string v10, "NtlmHttpChal"

    .line 72
    if-eqz v1, :cond_5d

    .line 74
    invoke-interface {p3, v10}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljcifs/smb/NtlmChallenge;

    .line 80
    if-nez v1, :cond_58

    .line 82
    invoke-static {}, Ljcifs/smb/SmbSession;->getChallengeForDomain()Ljcifs/smb/NtlmChallenge;

    .line 85
    move-result-object v1

    .line 86
    invoke-interface {p3, v10, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    :cond_58
    iget-object v11, v1, Ljcifs/smb/NtlmChallenge;->dc:Ljcifs/UniAddress;

    .line 91
    iget-object v1, v1, Ljcifs/smb/NtlmChallenge;->challenge:[B

    .line 93
    goto :goto_67

    .line 94
    :cond_5d
    iget-object v1, p0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    .line 96
    invoke-static {v1, v3}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    .line 99
    move-result-object v11

    .line 100
    invoke-static {v11}, Ljcifs/smb/SmbSession;->getChallenge(Ljcifs/UniAddress;)[B

    .line 103
    move-result-object v1

    .line 104
    :goto_67
    invoke-static {p1, p2, v1}, Ljcifs/http/NtlmSsp;->authenticate(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;[B)Ljcifs/smb/NtlmPasswordAuthentication;

    .line 107
    move-result-object v1

    .line 108
    if-nez v1, :cond_6e

    .line 110
    return-object v9

    .line 111
    :cond_6e
    invoke-interface {p3, v10}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 114
    goto :goto_c6

    .line 115
    :cond_72
    new-instance p3, Ljava/lang/String;

    .line 117
    const/4 v9, 0x6

    .line 118
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 121
    move-result-object v1

    .line 122
    invoke-static {v1}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    .line 125
    move-result-object v1

    .line 126
    const-string v9, "US-ASCII"

    .line 128
    invoke-direct {p3, v1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 131
    const/16 v1, 0x3a

    .line 133
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    .line 136
    move-result v1

    .line 137
    const/4 v9, -0x1

    .line 138
    if-eq v1, v9, :cond_91

    .line 140
    const/4 v10, 0x0

    .line 141
    invoke-virtual {p3, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 144
    move-result-object v10

    .line 145
    goto :goto_92

    .line 146
    :cond_91
    move-object v10, p3

    .line 147
    :goto_92
    if-eq v1, v9, :cond_9a

    .line 149
    add-int/2addr v1, v3

    .line 150
    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 153
    move-result-object p3

    .line 154
    goto :goto_9c

    .line 155
    :cond_9a
    const-string p3, ""

    .line 157
    :goto_9c
    const/16 v1, 0x5c

    .line 159
    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(I)I

    .line 162
    move-result v1

    .line 163
    if-ne v1, v9, :cond_aa

    .line 165
    const/16 v1, 0x2f

    .line 167
    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(I)I

    .line 170
    move-result v1

    .line 171
    :cond_aa
    if-eq v1, v9, :cond_b2

    .line 173
    const/4 v11, 0x0

    .line 174
    invoke-virtual {v10, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 177
    move-result-object v11

    .line 178
    goto :goto_b4

    .line 179
    :cond_b2
    iget-object v11, p0, Ljcifs/http/NtlmHttpFilter;->defaultDomain:Ljava/lang/String;

    .line 181
    :goto_b4
    if-eq v1, v9, :cond_bb

    .line 183
    add-int/2addr v1, v3

    .line 184
    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 187
    move-result-object v10

    .line 188
    :cond_bb
    new-instance v1, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 190
    invoke-direct {v1, v11, v10, p3}, Ljcifs/smb/NtlmPasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object p3, p0, Ljcifs/http/NtlmHttpFilter;->domainController:Ljava/lang/String;

    .line 195
    invoke-static {p3, v3}, Ljcifs/UniAddress;->getByName(Ljava/lang/String;Z)Ljcifs/UniAddress;

    .line 198
    move-result-object v11

    .line 199
    :goto_c6
    :try_start_c6
    invoke-static {v11, v1}, Ljcifs/smb/SmbSession;->logon(Ljcifs/UniAddress;Ljcifs/smb/NtlmPasswordAuthentication;)V

    .line 202
    sget p3, Ljcifs/util/LogStream;->level:I

    .line 204
    const/4 v9, 0x2

    .line 205
    if-le p3, v9, :cond_e7

    .line 207
    sget-object p3, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    .line 209
    new-instance v9, Ljava/lang/StringBuilder;

    .line 211
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    const-string v10, " successfully authenticated against "

    .line 219
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v9

    .line 229
    invoke-virtual {p3, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_e7
    .catch Ljcifs/smb/SmbAuthException; {:try_start_c6 .. :try_end_e7} :catch_f0

    .line 232
    :cond_e7
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getSession()Ljavax/servlet/http/HttpSession;

    .line 235
    move-result-object p1

    .line 236
    invoke-interface {p1, v7, v1}, Ljavax/servlet/http/HttpSession;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    goto/16 :goto_18b

    .line 241
    :catch_f0
    move-exception p3

    .line 242
    sget v9, Ljcifs/util/LogStream;->level:I

    .line 244
    if-le v9, v3, :cond_124

    .line 246
    sget-object v3, Ljcifs/http/NtlmHttpFilter;->log:Ljcifs/util/LogStream;

    .line 248
    new-instance v9, Ljava/lang/StringBuilder;

    .line 250
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1}, Ljcifs/smb/NtlmPasswordAuthentication;->getName()Ljava/lang/String;

    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v0, ": 0x"

    .line 262
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p3}, Ljcifs/smb/SmbException;->getNtStatus()I

    .line 268
    move-result v0

    .line 269
    const/16 v1, 0x8

    .line 271
    invoke-static {v0, v1}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v0, ": "

    .line 280
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 293
    :cond_124
    invoke-virtual {p3}, Ljcifs/smb/SmbException;->getNtStatus()I

    .line 296
    move-result p3

    .line 297
    const v0, -0x3ffffffb  # -2.0000012f

    .line 300
    if-ne p3, v0, :cond_137

    .line 302
    const/4 p3, 0x0

    .line 303
    invoke-interface {p1, p3}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    .line 306
    move-result-object p1

    .line 307
    if-eqz p1, :cond_137

    .line 309
    invoke-interface {p1, v7}, Ljavax/servlet/http/HttpSession;->removeAttribute(Ljava/lang/String;)V

    .line 312
    :cond_137
    invoke-interface {p2, v8, v6}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    if-eqz v2, :cond_14a

    .line 317
    new-instance p1, Ljava/lang/StringBuilder;

    .line 319
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    iget-object p3, p0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    .line 324
    invoke-static {p1, p3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    move-result-object p1

    .line 328
    invoke-interface {p2, v8, p1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_14a
    const/16 p1, 0x191

    .line 333
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 336
    const/4 p1, 0x0

    .line 337
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 340
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 343
    goto :goto_188

    .line 344
    :cond_157
    const/4 v0, 0x0

    .line 345
    if-nez p3, :cond_18a

    .line 347
    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getSession(Z)Ljavax/servlet/http/HttpSession;

    .line 350
    move-result-object p1

    .line 351
    if-eqz p1, :cond_169

    .line 353
    invoke-interface {p1, v7}, Ljavax/servlet/http/HttpSession;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 356
    move-result-object p1

    .line 357
    move-object v1, p1

    .line 358
    check-cast v1, Ljcifs/smb/NtlmPasswordAuthentication;

    .line 360
    if-nez v1, :cond_18b

    .line 362
    :cond_169
    invoke-interface {p2, v8, v6}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    if-eqz v2, :cond_17c

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    .line 369
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 372
    iget-object p3, p0, Ljcifs/http/NtlmHttpFilter;->realm:Ljava/lang/String;

    .line 374
    invoke-static {p1, p3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 377
    move-result-object p1

    .line 378
    invoke-interface {p2, v8, p1}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_17c
    const/16 p1, 0x191

    .line 383
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 386
    const/4 p1, 0x0

    .line 387
    invoke-interface {p2, p1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 390
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 393
    :goto_188
    const/4 p1, 0x0

    .line 394
    return-object p1

    .line 395
    :cond_18a
    const/4 v1, 0x0

    .line 396
    :cond_18b
    :goto_18b
    return-object v1
.end method

.method public setFilterConfig(Ljavax/servlet/FilterConfig;)V
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljcifs/http/NtlmHttpFilter;->init(Ljavax/servlet/FilterConfig;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 4
    goto :goto_8

    .line 5
    :catch_4
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :goto_8
    return-void
.end method
