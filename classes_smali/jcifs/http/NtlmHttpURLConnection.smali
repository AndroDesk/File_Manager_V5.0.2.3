.class public Ljcifs/http/NtlmHttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "NtlmHttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcifs/http/NtlmHttpURLConnection$CacheStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_DOMAIN:Ljava/lang/String;

.field private static final LM_COMPATIBILITY:I

.field private static final MAX_REDIRECTS:I


# instance fields
.field private authMethod:Ljava/lang/String;

.field private authProperty:Ljava/lang/String;

.field private cachedOutput:Ljava/io/ByteArrayOutputStream;

.field private connection:Ljava/net/HttpURLConnection;

.field private handshakeComplete:Z

.field private headerFields:Ljava/util/Map;

.field private requestProperties:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "http.maxRedirects"

    .line 3
    const-string v1, "20"

    .line 5
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    move-result v0

    .line 13
    sput v0, Ljcifs/http/NtlmHttpURLConnection;->MAX_REDIRECTS:I

    .line 15
    const-string v0, "jcifs.smb.lmCompatibility"

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1}, Ljcifs/Config;->getInt(Ljava/lang/String;I)I

    .line 21
    move-result v0

    .line 22
    sput v0, Ljcifs/http/NtlmHttpURLConnection;->LM_COMPATIBILITY:I

    .line 24
    const-string v0, "http.auth.ntlm.domain"

    .line 26
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_23

    .line 32
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultDomain()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    :cond_23
    sput-object v0, Ljcifs/http/NtlmHttpURLConnection;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 8
    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 10
    new-instance p1, Ljava/util/HashMap;

    .line 12
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 15
    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    .line 17
    return-void
.end method

.method private attemptNegotiation(I)Ljcifs/ntlmssp/NtlmMessage;
    .registers 14

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, -0x1

    .line 14
    if-eqz v1, :cond_1f

    .line 16
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_1f

    .line 22
    const/16 v4, 0x400

    .line 24
    new-array v5, v4, [B

    .line 26
    :cond_19
    invoke-virtual {v1, v5, v2, v4}, Ljava/io/InputStream;->read([BII)I

    .line 29
    move-result v6

    .line 30
    if-ne v6, v3, :cond_19

    .line 32
    :cond_1f
    const/16 v1, 0x191

    .line 34
    if-ne p1, v1, :cond_2a

    .line 36
    const-string p1, "Authorization"

    .line 38
    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    .line 40
    const-string p1, "WWW-Authenticate"

    .line 42
    goto :goto_30

    .line 43
    :cond_2a
    const-string p1, "Proxy-Authorization"

    .line 45
    iput-object p1, p0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    .line 47
    const-string p1, "Proxy-Authenticate"

    .line 49
    :goto_30
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->getHeaderFields0()Ljava/util/Map;

    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/util/List;

    .line 59
    if-nez p1, :cond_3d

    .line 61
    return-object v0

    .line 62
    :cond_3d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object p1

    .line 66
    :cond_41
    :goto_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v1

    .line 70
    const/4 v4, 0x4

    .line 71
    if-nez v1, :cond_49

    .line 73
    goto :goto_87

    .line 74
    :cond_49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/lang/String;

    .line 80
    const-string v5, "NTLM"

    .line 82
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 85
    move-result v6

    .line 86
    const/16 v7, 0x20

    .line 88
    if-eqz v6, :cond_75

    .line 90
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 93
    move-result v6

    .line 94
    if-ne v6, v4, :cond_62

    .line 96
    iput-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    .line 98
    goto :goto_87

    .line 99
    :cond_62
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    .line 102
    move-result v6

    .line 103
    if-eq v6, v4, :cond_69

    .line 105
    goto :goto_41

    .line 106
    :cond_69
    iput-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    .line 108
    const/4 p1, 0x5

    .line 109
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    goto :goto_9c

    .line 118
    :cond_75
    const-string v5, "Negotiate"

    .line 120
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 123
    move-result v6

    .line 124
    if-eqz v6, :cond_41

    .line 126
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 129
    move-result v6

    .line 130
    const/16 v8, 0x9

    .line 132
    if-ne v6, v8, :cond_89

    .line 134
    iput-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    .line 136
    :goto_87
    move-object p1, v0

    .line 137
    goto :goto_9c

    .line 138
    :cond_89
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    .line 141
    move-result v6

    .line 142
    if-eq v6, v8, :cond_90

    .line 144
    goto :goto_41

    .line 145
    :cond_90
    iput-object v5, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    .line 147
    const/16 p1, 0xa

    .line 149
    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 156
    move-result-object p1

    .line 157
    :goto_9c
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    .line 159
    if-nez v1, :cond_a1

    .line 161
    return-object v0

    .line 162
    :cond_a1
    if-eqz p1, :cond_ae

    .line 164
    new-instance v1, Ljcifs/ntlmssp/Type2Message;

    .line 166
    invoke-static {p1}, Ljcifs/util/Base64;->decode(Ljava/lang/String;)[B

    .line 169
    move-result-object p1

    .line 170
    invoke-direct {v1, p1}, Ljcifs/ntlmssp/Type2Message;-><init>([B)V

    .line 173
    move-object v6, v1

    .line 174
    goto :goto_af

    .line 175
    :cond_ae
    move-object v6, v0

    .line 176
    :goto_af
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->reconnect()V

    .line 179
    const/4 p1, 0x1

    .line 180
    if-nez v6, :cond_c4

    .line 182
    new-instance v0, Ljcifs/ntlmssp/Type1Message;

    .line 184
    invoke-direct {v0}, Ljcifs/ntlmssp/Type1Message;-><init>()V

    .line 187
    sget v1, Ljcifs/http/NtlmHttpURLConnection;->LM_COMPATIBILITY:I

    .line 189
    const/4 v2, 0x2

    .line 190
    if-le v1, v2, :cond_158

    .line 192
    invoke-virtual {v0, v4, p1}, Ljcifs/ntlmssp/NtlmMessage;->setFlag(IZ)V

    .line 195
    goto/16 :goto_158

    .line 197
    :cond_c4
    sget-object v1, Ljcifs/http/NtlmHttpURLConnection;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 199
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultUser()Ljava/lang/String;

    .line 202
    move-result-object v4

    .line 203
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultPassword()Ljava/lang/String;

    .line 206
    move-result-object v5

    .line 207
    iget-object v7, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    .line 209
    invoke-virtual {v7}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    .line 212
    move-result-object v7

    .line 213
    if-eqz v7, :cond_10d

    .line 215
    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    move-result-object v4

    .line 219
    const/16 v7, 0x3a

    .line 221
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    .line 224
    move-result v7

    .line 225
    if-eq v7, v3, :cond_e7

    .line 227
    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 230
    move-result-object v8

    .line 231
    goto :goto_e8

    .line 232
    :cond_e7
    move-object v8, v4

    .line 233
    :goto_e8
    if-eq v7, v3, :cond_ef

    .line 235
    add-int/2addr v7, p1

    .line 236
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 239
    move-result-object v5

    .line 240
    :cond_ef
    const/16 v4, 0x5c

    .line 242
    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    .line 245
    move-result v4

    .line 246
    if-ne v4, v3, :cond_fd

    .line 248
    const/16 v4, 0x2f

    .line 250
    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    .line 253
    move-result v4

    .line 254
    :cond_fd
    if-eq v4, v3, :cond_103

    .line 256
    invoke-virtual {v8, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 259
    move-result-object v1

    .line 260
    :cond_103
    if-eq v4, v3, :cond_10c

    .line 262
    add-int/2addr v4, p1

    .line 263
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 266
    move-result-object p1

    .line 267
    move-object v4, p1

    .line 268
    goto :goto_10d

    .line 269
    :cond_10c
    move-object v4, v8

    .line 270
    :cond_10d
    :goto_10d
    move-object v8, v1

    .line 271
    if-nez v4, :cond_14b

    .line 273
    iget-boolean p1, p0, Ljava/net/HttpURLConnection;->allowUserInteraction:Z

    .line 275
    if-nez p1, :cond_115

    .line 277
    return-object v0

    .line 278
    :cond_115
    :try_start_115
    invoke-virtual {p0}, Ljcifs/http/NtlmHttpURLConnection;->getURL()Ljava/net/URL;

    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    .line 289
    move-result p1

    .line 290
    if-ne p1, v3, :cond_130

    .line 292
    const-string p1, "https"

    .line 294
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 297
    move-result p1

    .line 298
    if-eqz p1, :cond_12e

    .line 300
    const/16 p1, 0x1bb

    .line 302
    goto :goto_130

    .line 303
    :cond_12e
    const/16 p1, 0x50

    .line 305
    :cond_130
    :goto_130
    const-string v2, ""

    .line 307
    iget-object v3, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    .line 309
    invoke-static {v0, p1, v1, v2, v3}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    .line 312
    move-result-object p1

    .line 313
    if-nez p1, :cond_13b

    .line 315
    return-object v0

    .line 316
    :cond_13b
    invoke-virtual {p1}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    .line 319
    move-result-object v4

    .line 320
    new-instance v0, Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Ljava/net/PasswordAuthentication;->getPassword()[C

    .line 325
    move-result-object p1

    .line 326
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_148} :catch_14b

    .line 329
    move-object v7, v0

    .line 330
    move-object v9, v4

    .line 331
    goto :goto_14d

    .line 332
    :catch_14b
    :cond_14b
    move-object v9, v4

    .line 333
    move-object v7, v5

    .line 334
    :goto_14d
    new-instance v0, Ljcifs/ntlmssp/Type3Message;

    .line 336
    invoke-static {}, Ljcifs/ntlmssp/Type3Message;->getDefaultWorkstation()Ljava/lang/String;

    .line 339
    move-result-object v10

    .line 340
    const/4 v11, 0x0

    .line 341
    move-object v5, v0

    .line 342
    invoke-direct/range {v5 .. v11}, Ljcifs/ntlmssp/Type3Message;-><init>(Ljcifs/ntlmssp/Type2Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 345
    :cond_158
    :goto_158
    return-object v0
.end method

.method private doHandshake()V
    .registers 13

    .line 1
    invoke-virtual {p0}, Ljcifs/http/NtlmHttpURLConnection;->connect()V

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_4
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->parseResponseCode()I

    .line 8
    move-result v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c3

    .line 9
    const/16 v2, 0x197

    .line 11
    const/16 v3, 0x191

    .line 13
    if-eq v1, v3, :cond_13

    .line 15
    if-eq v1, v2, :cond_13

    .line 17
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    .line 19
    return-void

    .line 20
    :cond_13
    :try_start_13
    invoke-direct {p0, v1}, Ljcifs/http/NtlmHttpURLConnection;->attemptNegotiation(I)Ljcifs/ntlmssp/NtlmMessage;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljcifs/ntlmssp/Type1Message;
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_c3

    .line 26
    if-nez v1, :cond_1e

    .line 28
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    .line 30
    return-void

    .line 31
    :cond_1e
    const/4 v4, 0x0

    .line 32
    :goto_1f
    :try_start_1f
    sget v5, Ljcifs/http/NtlmHttpURLConnection;->MAX_REDIRECTS:I

    .line 34
    if-ge v4, v5, :cond_bb

    .line 36
    iget-object v6, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 38
    iget-object v7, p0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    .line 40
    new-instance v8, Ljava/lang/StringBuilder;

    .line 42
    iget-object v9, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    .line 44
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    move-result-object v9

    .line 48
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    const/16 v9, 0x20

    .line 53
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljcifs/ntlmssp/Type1Message;->toByteArray()[B

    .line 59
    move-result-object v10

    .line 60
    invoke-static {v10}, Ljcifs/util/Base64;->encode([B)Ljava/lang/String;

    .line 63
    move-result-object v10

    .line 64
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v8

    .line 71
    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v6, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 76
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 79
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->parseResponseCode()I

    .line 82
    move-result v6
    :try_end_52
    .catchall {:try_start_1f .. :try_end_52} :catchall_c3

    .line 83
    if-eq v6, v3, :cond_59

    .line 85
    if-eq v6, v2, :cond_59

    .line 87
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    .line 89
    return-void

    .line 90
    :cond_59
    :try_start_59
    invoke-direct {p0, v6}, Ljcifs/http/NtlmHttpURLConnection;->attemptNegotiation(I)Ljcifs/ntlmssp/NtlmMessage;

    .line 93
    move-result-object v6

    .line 94
    check-cast v6, Ljcifs/ntlmssp/Type3Message;
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_c3

    .line 96
    if-nez v6, :cond_64

    .line 98
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    .line 100
    return-void

    .line 101
    :cond_64
    :try_start_64
    iget-object v7, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 103
    iget-object v8, p0, Ljcifs/http/NtlmHttpURLConnection;->authProperty:Ljava/lang/String;

    .line 105
    new-instance v10, Ljava/lang/StringBuilder;

    .line 107
    iget-object v11, p0, Ljcifs/http/NtlmHttpURLConnection;->authMethod:Ljava/lang/String;

    .line 109
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    move-result-object v11

    .line 113
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v6}, Ljcifs/ntlmssp/Type3Message;->toByteArray()[B

    .line 122
    move-result-object v6

    .line 123
    invoke-static {v6}, Ljcifs/util/Base64;->encode([B)Ljava/lang/String;

    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v6

    .line 134
    invoke-virtual {v7, v8, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v6, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 139
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 142
    iget-object v6, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    .line 144
    if-eqz v6, :cond_a3

    .line 146
    iget-boolean v6, p0, Ljava/net/HttpURLConnection;->doOutput:Z

    .line 148
    if-eqz v6, :cond_a3

    .line 150
    iget-object v6, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 152
    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 155
    move-result-object v6

    .line 156
    iget-object v7, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    .line 158
    invoke-virtual {v7, v6}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 161
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 164
    :cond_a3
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->parseResponseCode()I

    .line 167
    move-result v6
    :try_end_a7
    .catchall {:try_start_64 .. :try_end_a7} :catchall_c3

    .line 168
    if-eq v6, v3, :cond_ae

    .line 170
    if-eq v6, v2, :cond_ae

    .line 172
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    .line 174
    return-void

    .line 175
    :cond_ae
    add-int/lit8 v4, v4, 0x1

    .line 177
    :try_start_b0
    iget-boolean v6, p0, Ljava/net/HttpURLConnection;->allowUserInteraction:Z

    .line 179
    if-eqz v6, :cond_bb

    .line 181
    if-ge v4, v5, :cond_bb

    .line 183
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->reconnect()V

    .line 186
    goto/16 :goto_1f

    .line 188
    :cond_bb
    new-instance v1, Ljava/io/IOException;

    .line 190
    const-string v2, "Unable to negotiate NTLM authentication."

    .line 192
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 195
    throw v1
    :try_end_c3
    .catchall {:try_start_b0 .. :try_end_c3} :catchall_c3

    .line 196
    :catchall_c3
    move-exception v1

    .line 197
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    .line 199
    throw v1
.end method

.method private getHeaderFields0()Ljava/util/Map;
    .registers 7

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    iget-object v3, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 20
    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x1

    .line 25
    move v4, v3

    .line 26
    :goto_19
    if-nez v1, :cond_46

    .line 28
    if-nez v2, :cond_46

    .line 30
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v5

    .line 38
    :goto_25
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_32

    .line 44
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    .line 50
    return-object v0

    .line 51
    :cond_32
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/util/List;

    .line 63
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    goto :goto_25

    .line 71
    :cond_46
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Ljava/util/List;

    .line 77
    if-nez v5, :cond_56

    .line 79
    new-instance v5, Ljava/util/ArrayList;

    .line 81
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_56
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 92
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    iget-object v2, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 98
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    .line 101
    move-result-object v2

    .line 102
    add-int/2addr v4, v3

    .line 103
    goto :goto_19
.end method

.method private handshake()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Ljcifs/http/NtlmHttpURLConnection;->handshakeComplete:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->doHandshake()V

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Ljcifs/http/NtlmHttpURLConnection;->handshakeComplete:Z

    .line 12
    return-void
.end method

.method private parseResponseCode()I
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const/16 v1, 0x20

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 13
    move-result v2

    .line 14
    :goto_d
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 17
    move-result v3

    .line 18
    if-eq v3, v1, :cond_1e

    .line 20
    add-int/lit8 v1, v2, 0x3

    .line 22
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    move-result v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_21

    .line 30
    return v0

    .line 31
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_d

    .line 34
    :catch_21
    move-exception v0

    .line 35
    new-instance v1, Ljava/io/IOException;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 44
    throw v1
.end method

.method private reconnect()V
    .registers 6

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 13
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 15
    iget-object v1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    .line 23
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    .line 25
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v0

    .line 33
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_4a

    .line 39
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 41
    iget-boolean v1, p0, Ljava/net/HttpURLConnection;->allowUserInteraction:Z

    .line 43
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 46
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 48
    iget-boolean v1, p0, Ljava/net/HttpURLConnection;->doInput:Z

    .line 50
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 53
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 55
    iget-boolean v1, p0, Ljava/net/HttpURLConnection;->doOutput:Z

    .line 57
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 60
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 62
    iget-wide v1, p0, Ljava/net/HttpURLConnection;->ifModifiedSince:J

    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    .line 67
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 69
    iget-boolean v1, p0, Ljava/net/HttpURLConnection;->useCaches:Z

    .line 71
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 74
    return-void

    .line 75
    :cond_4a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Ljava/lang/String;

    .line 87
    new-instance v3, Ljava/lang/StringBuffer;

    .line 89
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Ljava/util/List;

    .line 98
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    move-result-object v1

    .line 102
    :cond_65
    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_75

    .line 108
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    goto :goto_20

    .line 118
    :cond_75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_65

    .line 131
    const-string v4, ", "

    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    goto :goto_65
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    .line 7
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v1

    .line 15
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_15

    .line 21
    goto :goto_30

    .line 22
    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 34
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_e

    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/util/List;

    .line 46
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :goto_30
    if-nez v0, :cond_3f

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object p2, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    .line 61
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_3f
    new-instance v2, Ljava/lang/StringBuffer;

    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object v3

    .line 73
    :cond_48
    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_58

    .line 79
    iget-object p2, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 81
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p2, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void

    .line 89
    :cond_58
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 96
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_48

    .line 102
    const-string p2, ", "

    .line 104
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    goto :goto_48
.end method

.method public connect()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 8
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    .line 14
    return-void
.end method

.method public disconnect()V
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Ljcifs/http/NtlmHttpURLConnection;->handshakeComplete:Z

    .line 9
    iput-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    .line 11
    return-void
.end method

.method public getAllowUserInteraction()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0}, Ljava/net/URLConnection;->getAllowUserInteraction()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .registers 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 2
    :catch_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    .line 3
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 4
    :catch_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 4
    :catch_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getContentLength()I
    .registers 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 4
    :catch_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 4
    :catch_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getDate()J
    .registers 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 4
    :catch_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v0}, Ljava/net/URLConnection;->getDate()J

    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0}, Ljava/net/URLConnection;->getDefaultUseCaches()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDoInput()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoInput()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDoOutput()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0}, Ljava/net/URLConnection;->getDoOutput()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 4
    :catch_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getExpiration()J
    .registers 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 4
    :catch_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v0}, Ljava/net/URLConnection;->getExpiration()J

    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3

    .line 3
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 4
    :catch_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 2
    :catch_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 5

    .line 1
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 4
    :catch_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    .line 9
    move-result-wide p1

    .line 10
    return-wide p1
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 4
    :catch_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 4
    :catch_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->headerFields:Ljava/util/Map;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-object v0

    .line 6
    :cond_5
    :try_start_5
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_8

    .line 9
    :catch_8
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->getHeaderFields0()Ljava/util/Map;

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getIfModifiedSince()J
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0}, Ljava/net/URLConnection;->getIfModifiedSince()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 4
    :catch_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLastModified()J
    .registers 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 4
    :catch_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljcifs/http/NtlmHttpURLConnection;->connect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 4
    :catch_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 12
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 15
    iput-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    .line 17
    new-instance v1, Ljcifs/http/NtlmHttpURLConnection$CacheStream;

    .line 19
    iget-object v2, p0, Ljcifs/http/NtlmHttpURLConnection;->cachedOutput:Ljava/io/ByteArrayOutputStream;

    .line 21
    invoke-direct {v1, v0, v2}, Ljcifs/http/NtlmHttpURLConnection$CacheStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 24
    return-object v1
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    .line 8
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1a

    .line 22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/util/Map$Entry;

    .line 33
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/List;

    .line 43
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    goto :goto_f
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getResponseCode()I
    .registers 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 4
    :catch_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Ljcifs/http/NtlmHttpURLConnection;->handshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 4
    :catch_3
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getUseCaches()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0}, Ljava/net/URLConnection;->getUseCaches()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setAllowUserInteraction(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 6
    iput-boolean p1, p0, Ljava/net/HttpURLConnection;->allowUserInteraction:Z

    .line 8
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDefaultUseCaches(Z)V

    .line 6
    return-void
.end method

.method public setDoInput(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 6
    iput-boolean p1, p0, Ljava/net/HttpURLConnection;->doInput:Z

    .line 8
    return-void
.end method

.method public setDoOutput(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 6
    iput-boolean p1, p0, Ljava/net/HttpURLConnection;->doOutput:Z

    .line 8
    return-void
.end method

.method public setIfModifiedSince(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    .line 6
    iput-wide p1, p0, Ljava/net/HttpURLConnection;->ifModifiedSince:J

    .line 8
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 6
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    const/4 v1, 0x0

    .line 13
    iget-object v2, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    .line 15
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v2

    .line 23
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_1d

    .line 29
    goto :goto_33

    .line 30
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/String;

    .line 42
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_16

    .line 48
    invoke-interface {v3, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const/4 v1, 0x1

    .line 52
    :goto_33
    if-nez v1, :cond_3a

    .line 54
    iget-object v1, p0, Ljcifs/http/NtlmHttpURLConnection;->requestProperties:Ljava/util/Map;

    .line 56
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_3a
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 61
    invoke-virtual {v0, p1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public setUseCaches(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 6
    iput-boolean p1, p0, Ljava/net/HttpURLConnection;->useCaches:Z

    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public usingProxy()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpURLConnection;->connection:Ljava/net/HttpURLConnection;

    .line 3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
