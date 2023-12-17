.class final Lcom/google/android/datatransport/cct/CctTransportBackend;
.super Ljava/lang/Object;
.source "CctTransportBackend.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/backends/TransportBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;,
        Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;
    }
.end annotation


# static fields
.field private static final ACCEPT_ENCODING_HEADER_KEY:Ljava/lang/String; = "Accept-Encoding"

.field public static final API_KEY_HEADER_KEY:Ljava/lang/String; = "X-Goog-Api-Key"

.field private static final CONNECTION_TIME_OUT:I = 0x7530

.field private static final CONTENT_ENCODING_HEADER_KEY:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_TYPE_HEADER_KEY:Ljava/lang/String; = "Content-Type"

.field private static final GZIP_CONTENT_ENCODING:Ljava/lang/String; = "gzip"

.field private static final INVALID_VERSION_CODE:I = -0x1

.field private static final JSON_CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field private static final KEY_APPLICATION_BUILD:Ljava/lang/String; = "application_build"

.field private static final KEY_COUNTRY:Ljava/lang/String; = "country"

.field private static final KEY_DEVICE:Ljava/lang/String; = "device"

.field private static final KEY_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final KEY_HARDWARE:Ljava/lang/String; = "hardware"

.field private static final KEY_LOCALE:Ljava/lang/String; = "locale"

.field private static final KEY_MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field private static final KEY_MCC_MNC:Ljava/lang/String; = "mcc_mnc"

.field public static final KEY_MOBILE_SUBTYPE:Ljava/lang/String; = "mobile-subtype"

.field private static final KEY_MODEL:Ljava/lang/String; = "model"

.field public static final KEY_NETWORK_TYPE:Ljava/lang/String; = "net-type"

.field private static final KEY_OS_BUILD:Ljava/lang/String; = "os-uild"

.field private static final KEY_PRODUCT:Ljava/lang/String; = "product"

.field private static final KEY_SDK_VERSION:Ljava/lang/String; = "sdk-version"

.field private static final KEY_TIMEZONE_OFFSET:Ljava/lang/String; = "tz-offset"

.field private static final LOG_TAG:Ljava/lang/String; = "CctTransportBackend"

.field private static final READ_TIME_OUT:I = 0x9c40


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final connectivityManager:Landroid/net/ConnectivityManager;

.field private final dataEncoder:Lcom/google/firebase/encoders/DataEncoder;

.field public final endPoint:Ljava/net/URL;

.field private final readTimeout:I

.field private final uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

.field private final wallTimeClock:Lcom/google/android/datatransport/runtime/time/Clock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;)V
    .registers 5

    const v0, 0x9c40

    .line 9
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/datatransport/cct/CctTransportBackend;-><init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;->createDataEncoder()Lcom/google/firebase/encoders/DataEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->dataEncoder:Lcom/google/firebase/encoders/DataEncoder;

    .line 3
    iput-object p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->applicationContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 5
    sget-object p1, Lcom/google/android/datatransport/cct/CCTDestination;->DEFAULT_END_POINT:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/datatransport/cct/CctTransportBackend;->parseUrlOrThrow(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->endPoint:Ljava/net/URL;

    .line 6
    iput-object p3, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 7
    iput-object p2, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->wallTimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 8
    iput p4, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->readTimeout:I

    return-void
.end method

.method public static synthetic access$lambda$0(Lcom/google/android/datatransport/cct/CctTransportBackend;Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;)Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/datatransport/cct/CctTransportBackend;->doSend(Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;)Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method private doSend(Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;)Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;
    .registers 14

    .line 1
    iget-object v0, p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->url:Ljava/net/URL;

    .line 3
    const-string v1, "CctTransportBackend"

    .line 5
    const-string v2, "Making request to: %s"

    .line 7
    invoke-static {v1, v2, v0}, Lcom/google/android/datatransport/runtime/logging/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object v0, p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->url:Ljava/net/URL;

    .line 12
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 18
    const/16 v2, 0x7530

    .line 20
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 23
    iget v2, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->readTimeout:I

    .line 25
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 36
    const-string v4, "POST"

    .line 38
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 41
    new-array v2, v2, [Ljava/lang/Object;

    .line 43
    const-string v4, "2.3.3"

    .line 45
    aput-object v4, v2, v3

    .line 47
    const-string v3, "datatransport/%s android/"

    .line 49
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    const-string v3, "User-Agent"

    .line 55
    invoke-virtual {v0, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v2, "Content-Encoding"

    .line 60
    const-string v3, "gzip"

    .line 62
    invoke-virtual {v0, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v4, "Content-Type"

    .line 67
    const-string v5, "application/json"

    .line 69
    invoke-virtual {v0, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v5, "Accept-Encoding"

    .line 74
    invoke-virtual {v0, v5, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v3, p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->apiKey:Ljava/lang/String;

    .line 79
    if-eqz v3, :cond_55

    .line 81
    const-string v5, "X-Goog-Api-Key"

    .line 83
    invoke-virtual {v0, v5, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_55
    const-wide/16 v5, 0x0

    .line 88
    const/4 v3, 0x0

    .line 89
    :try_start_58
    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 92
    move-result-object v7
    :try_end_5c
    .catch Ljava/net/ConnectException; {:try_start_58 .. :try_end_5c} :catch_144
    .catch Ljava/net/UnknownHostException; {:try_start_58 .. :try_end_5c} :catch_142
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_58 .. :try_end_5c} :catch_134
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5c} :catch_132

    .line 93
    :try_start_5c
    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    .line 95
    invoke-direct {v8, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_12b

    .line 98
    :try_start_61
    iget-object v9, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->dataEncoder:Lcom/google/firebase/encoders/DataEncoder;

    .line 100
    iget-object p1, p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->requestBody:Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;

    .line 102
    new-instance v10, Ljava/io/BufferedWriter;

    .line 104
    new-instance v11, Ljava/io/OutputStreamWriter;

    .line 106
    invoke-direct {v11, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 109
    invoke-direct {v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 112
    invoke-interface {v9, p1, v10}, Lcom/google/firebase/encoders/DataEncoder;->encode(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_72
    .catchall {:try_start_61 .. :try_end_72} :catchall_126

    .line 115
    :try_start_72
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_12b

    .line 118
    if-eqz v7, :cond_7a

    .line 120
    :try_start_77
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7a
    .catch Ljava/net/ConnectException; {:try_start_77 .. :try_end_7a} :catch_144
    .catch Ljava/net/UnknownHostException; {:try_start_77 .. :try_end_7a} :catch_142
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_77 .. :try_end_7a} :catch_134
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_132

    .line 123
    :cond_7a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 126
    move-result p1

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    .line 129
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    const-string v8, "Status Code: "

    .line 134
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v7

    .line 144
    invoke-static {v1, v7}, Lcom/google/android/datatransport/runtime/logging/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    .line 149
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    const-string v8, "Content-Type: "

    .line 154
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v4

    .line 168
    invoke-static {v1, v4}, Lcom/google/android/datatransport/runtime/logging/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    const-string v7, "Content-Encoding: "

    .line 178
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    move-result-object v7

    .line 185
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v4

    .line 192
    invoke-static {v1, v4}, Lcom/google/android/datatransport/runtime/logging/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/16 v1, 0x12e

    .line 197
    if-eq p1, v1, :cond_115

    .line 199
    const/16 v1, 0x12d

    .line 201
    if-eq p1, v1, :cond_115

    .line 203
    const/16 v1, 0x133

    .line 205
    if-ne p1, v1, :cond_cf

    .line 207
    goto :goto_115

    .line 208
    :cond_cf
    const/16 v1, 0xc8

    .line 210
    if-eq p1, v1, :cond_d9

    .line 212
    new-instance v0, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    .line 214
    invoke-direct {v0, p1, v3, v5, v6}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;-><init>(ILjava/net/URL;J)V

    .line 217
    return-object v0

    .line 218
    :cond_d9
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 221
    move-result-object v1

    .line 222
    :try_start_dd
    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    move-result-object v0

    .line 226
    invoke-static {v1, v0}, Lcom/google/android/datatransport/cct/CctTransportBackend;->maybeUnGzip(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    .line 229
    move-result-object v0
    :try_end_e5
    .catchall {:try_start_dd .. :try_end_e5} :catchall_10e

    .line 230
    :try_start_e5
    new-instance v2, Ljava/io/BufferedReader;

    .line 232
    new-instance v4, Ljava/io/InputStreamReader;

    .line 234
    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 237
    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 240
    invoke-static {v2}, Lcom/google/android/datatransport/cct/internal/LogResponse;->fromJson(Ljava/io/Reader;)Lcom/google/android/datatransport/cct/internal/LogResponse;

    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v2}, Lcom/google/android/datatransport/cct/internal/LogResponse;->getNextRequestWaitMillis()J

    .line 247
    move-result-wide v4

    .line 248
    new-instance v2, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    .line 250
    invoke-direct {v2, p1, v3, v4, v5}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;-><init>(ILjava/net/URL;J)V
    :try_end_fc
    .catchall {:try_start_e5 .. :try_end_fc} :catchall_107

    .line 253
    if-eqz v0, :cond_101

    .line 255
    :try_start_fe
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_101
    .catchall {:try_start_fe .. :try_end_101} :catchall_10e

    .line 258
    :cond_101
    if-eqz v1, :cond_106

    .line 260
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 263
    :cond_106
    return-object v2

    .line 264
    :catchall_107
    move-exception p1

    .line 265
    if-eqz v0, :cond_10d

    .line 267
    :try_start_10a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_10d

    .line 270
    :catchall_10d
    :cond_10d
    :try_start_10d
    throw p1
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_10e

    .line 271
    :catchall_10e
    move-exception p1

    .line 272
    if-eqz v1, :cond_114

    .line 274
    :try_start_111
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_114
    .catchall {:try_start_111 .. :try_end_114} :catchall_114

    .line 277
    :catchall_114
    :cond_114
    throw p1

    .line 278
    :cond_115
    :goto_115
    const-string v1, "Location"

    .line 280
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    move-result-object v0

    .line 284
    new-instance v1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    .line 286
    new-instance v2, Ljava/net/URL;

    .line 288
    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-direct {v1, p1, v2, v5, v6}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;-><init>(ILjava/net/URL;J)V

    .line 294
    return-object v1

    .line 295
    :catchall_126
    move-exception p1

    .line 296
    :try_start_127
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_12a
    .catchall {:try_start_127 .. :try_end_12a} :catchall_12a

    .line 299
    :catchall_12a
    :try_start_12a
    throw p1
    :try_end_12b
    .catchall {:try_start_12a .. :try_end_12b} :catchall_12b

    .line 300
    :catchall_12b
    move-exception p1

    .line 301
    if-eqz v7, :cond_131

    .line 303
    :try_start_12e
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_131
    .catchall {:try_start_12e .. :try_end_131} :catchall_131

    .line 306
    :catchall_131
    :cond_131
    :try_start_131
    throw p1
    :try_end_132
    .catch Ljava/net/ConnectException; {:try_start_131 .. :try_end_132} :catch_144
    .catch Ljava/net/UnknownHostException; {:try_start_131 .. :try_end_132} :catch_142
    .catch Lcom/google/firebase/encoders/EncodingException; {:try_start_131 .. :try_end_132} :catch_134
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_132} :catch_132

    .line 307
    :catch_132
    move-exception p1

    .line 308
    goto :goto_135

    .line 309
    :catch_134
    move-exception p1

    .line 310
    :goto_135
    const-string v0, "Couldn\'t encode request, returning with 400"

    .line 312
    invoke-static {v1, v0, p1}, Lcom/google/android/datatransport/runtime/logging/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    new-instance p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    .line 317
    const/16 v0, 0x190

    .line 319
    invoke-direct {p1, v0, v3, v5, v6}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;-><init>(ILjava/net/URL;J)V

    .line 322
    return-object p1

    .line 323
    :catch_142
    move-exception p1

    .line 324
    goto :goto_145

    .line 325
    :catch_144
    move-exception p1

    .line 326
    :goto_145
    const-string v0, "Couldn\'t open connection, returning with 500"

    .line 328
    invoke-static {v1, v0, p1}, Lcom/google/android/datatransport/runtime/logging/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    new-instance p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    .line 333
    const/16 v0, 0x1f4

    .line 335
    invoke-direct {p1, v0, v3, v5, v6}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;-><init>(ILjava/net/URL;J)V

    .line 338
    return-object p1
.end method

.method private static getNetSubtypeValue(Landroid/net/NetworkInfo;)I
    .registers 2

    .line 1
    if-nez p0, :cond_9

    .line 3
    sget-object p0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->UNKNOWN_MOBILE_SUBTYPE:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->getValue()I

    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_9
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 13
    move-result p0

    .line 14
    const/4 v0, -0x1

    .line 15
    if-ne p0, v0, :cond_17

    .line 17
    sget-object p0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->COMBINED:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->getValue()I

    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_17
    invoke-static {p0}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->forNumber(I)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1e

    .line 30
    goto :goto_1f

    .line 31
    :cond_1e
    const/4 p0, 0x0

    .line 32
    :goto_1f
    return p0
.end method

.method private static getNetTypeValue(Landroid/net/NetworkInfo;)I
    .registers 1

    .line 1
    if-nez p0, :cond_9

    .line 3
    sget-object p0, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->NONE:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->getValue()I

    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_9
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method private static getPackageVersionCode(Landroid/content/Context;)I
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 13
    move-result-object p0

    .line 14
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    .line 16
    return p0

    .line 17
    :catch_10
    move-exception p0

    .line 18
    const-string v0, "CctTransportBackend"

    .line 20
    const-string v1, "Unable to find version code for package"

    .line 22
    invoke-static {v0, v1, p0}, Lcom/google/android/datatransport/runtime/logging/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    const/4 p0, -0x1

    .line 26
    return p0
.end method

.method private getRequestBody(Lcom/google/android/datatransport/runtime/backends/BackendRequest;)Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;
    .registers 11

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->getEvents()Ljava/lang/Iterable;

    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_39

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/EventInternal;->getTransportName()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_2f

    .line 36
    new-instance v3, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    goto :goto_d

    .line 48
    :cond_2f
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/util/List;

    .line 54
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    goto :goto_d

    .line 58
    :cond_39
    new-instance p1, Ljava/util/ArrayList;

    .line 60
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object v0

    .line 71
    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_1f1

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Ljava/util/Map$Entry;

    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Ljava/util/List;

    .line 89
    const/4 v3, 0x0

    .line 90
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 96
    invoke-static {}, Lcom/google/android/datatransport/cct/internal/LogRequest;->builder()Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    .line 99
    move-result-object v3

    .line 100
    sget-object v4, Lcom/google/android/datatransport/cct/internal/QosTier;->DEFAULT:Lcom/google/android/datatransport/cct/internal/QosTier;

    .line 102
    invoke-virtual {v3, v4}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->setQosTier(Lcom/google/android/datatransport/cct/internal/QosTier;)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    .line 105
    move-result-object v3

    .line 106
    iget-object v4, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->wallTimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 108
    invoke-interface {v4}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    .line 111
    move-result-wide v4

    .line 112
    invoke-virtual {v3, v4, v5}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->setRequestTimeMs(J)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    .line 115
    move-result-object v3

    .line 116
    iget-object v4, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->uptimeClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 118
    invoke-interface {v4}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    .line 121
    move-result-wide v4

    .line 122
    invoke-virtual {v3, v4, v5}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->setRequestUptimeMs(J)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    .line 125
    move-result-object v3

    .line 126
    invoke-static {}, Lcom/google/android/datatransport/cct/internal/ClientInfo;->builder()Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;

    .line 129
    move-result-object v4

    .line 130
    sget-object v5, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->ANDROID_FIREBASE:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 132
    invoke-virtual {v4, v5}, Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;->setClientType(Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;)Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;

    .line 135
    move-result-object v4

    .line 136
    invoke-static {}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->builder()Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 139
    move-result-object v5

    .line 140
    const-string v6, "sdk-version"

    .line 142
    invoke-virtual {v2, v6}, Lcom/google/android/datatransport/runtime/EventInternal;->getInteger(Ljava/lang/String;)I

    .line 145
    move-result v6

    .line 146
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    move-result-object v6

    .line 150
    invoke-virtual {v5, v6}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setSdkVersion(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 153
    move-result-object v5

    .line 154
    const-string v6, "model"

    .line 156
    invoke-virtual {v2, v6}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object v6

    .line 160
    invoke-virtual {v5, v6}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setModel(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 163
    move-result-object v5

    .line 164
    const-string v6, "hardware"

    .line 166
    invoke-virtual {v2, v6}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object v6

    .line 170
    invoke-virtual {v5, v6}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setHardware(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 173
    move-result-object v5

    .line 174
    const-string v6, "device"

    .line 176
    invoke-virtual {v2, v6}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    move-result-object v6

    .line 180
    invoke-virtual {v5, v6}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setDevice(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 183
    move-result-object v5

    .line 184
    const-string v6, "product"

    .line 186
    invoke-virtual {v2, v6}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    move-result-object v6

    .line 190
    invoke-virtual {v5, v6}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setProduct(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 193
    move-result-object v5

    .line 194
    const-string v6, "os-uild"

    .line 196
    invoke-virtual {v2, v6}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    move-result-object v6

    .line 200
    invoke-virtual {v5, v6}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setOsBuild(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 203
    move-result-object v5

    .line 204
    const-string v6, "manufacturer"

    .line 206
    invoke-virtual {v2, v6}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    move-result-object v6

    .line 210
    invoke-virtual {v5, v6}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setManufacturer(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 213
    move-result-object v5

    .line 214
    const-string v6, "fingerprint"

    .line 216
    invoke-virtual {v2, v6}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    move-result-object v6

    .line 220
    invoke-virtual {v5, v6}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setFingerprint(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 223
    move-result-object v5

    .line 224
    const-string v6, "country"

    .line 226
    invoke-virtual {v2, v6}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    move-result-object v6

    .line 230
    invoke-virtual {v5, v6}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setCountry(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 233
    move-result-object v5

    .line 234
    const-string v6, "locale"

    .line 236
    invoke-virtual {v2, v6}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    move-result-object v6

    .line 240
    invoke-virtual {v5, v6}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setLocale(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 243
    move-result-object v5

    .line 244
    const-string v6, "mcc_mnc"

    .line 246
    invoke-virtual {v2, v6}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    move-result-object v6

    .line 250
    invoke-virtual {v5, v6}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setMccMnc(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 253
    move-result-object v5

    .line 254
    const-string v6, "application_build"

    .line 256
    invoke-virtual {v2, v6}, Lcom/google/android/datatransport/runtime/EventInternal;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    move-result-object v2

    .line 260
    invoke-virtual {v5, v2}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->setApplicationBuild(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;

    .line 263
    move-result-object v2

    .line 264
    invoke-virtual {v2}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo$Builder;->build()Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v4, v2}, Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;->setAndroidClientInfo(Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;)Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;

    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v2}, Lcom/google/android/datatransport/cct/internal/ClientInfo$Builder;->build()Lcom/google/android/datatransport/cct/internal/ClientInfo;

    .line 275
    move-result-object v2

    .line 276
    invoke-virtual {v3, v2}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->setClientInfo(Lcom/google/android/datatransport/cct/internal/ClientInfo;)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    .line 279
    move-result-object v2

    .line 280
    :try_start_117
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 283
    move-result-object v3

    .line 284
    check-cast v3, Ljava/lang/String;

    .line 286
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 289
    move-result v3

    .line 290
    invoke-virtual {v2, v3}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->setSource(I)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;
    :try_end_124
    .catch Ljava/lang/NumberFormatException; {:try_start_117 .. :try_end_124} :catch_125

    .line 293
    goto :goto_12e

    .line 294
    :catch_125
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 297
    move-result-object v3

    .line 298
    check-cast v3, Ljava/lang/String;

    .line 300
    invoke-virtual {v2, v3}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->setSource(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    .line 303
    :goto_12e
    new-instance v3, Ljava/util/ArrayList;

    .line 305
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 308
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 311
    move-result-object v1

    .line 312
    check-cast v1, Ljava/util/List;

    .line 314
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 317
    move-result-object v1

    .line 318
    :goto_13d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 321
    move-result v4

    .line 322
    if-eqz v4, :cond_1e5

    .line 324
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 327
    move-result-object v4

    .line 328
    check-cast v4, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 330
    invoke-virtual {v4}, Lcom/google/android/datatransport/runtime/EventInternal;->getEncodedPayload()Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 333
    move-result-object v5

    .line 334
    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/EncodedPayload;->getEncoding()Lcom/google/android/datatransport/Encoding;

    .line 337
    move-result-object v6

    .line 338
    const-string v7, "proto"

    .line 340
    invoke-static {v7}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    .line 343
    move-result-object v7

    .line 344
    invoke-virtual {v6, v7}, Lcom/google/android/datatransport/Encoding;->equals(Ljava/lang/Object;)Z

    .line 347
    move-result v7

    .line 348
    if-eqz v7, :cond_166

    .line 350
    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/EncodedPayload;->getBytes()[B

    .line 353
    move-result-object v5

    .line 354
    invoke-static {v5}, Lcom/google/android/datatransport/cct/internal/LogEvent;->protoBuilder([B)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 357
    move-result-object v5

    .line 358
    goto :goto_185

    .line 359
    :cond_166
    const-string v7, "json"

    .line 361
    invoke-static {v7}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    .line 364
    move-result-object v7

    .line 365
    invoke-virtual {v6, v7}, Lcom/google/android/datatransport/Encoding;->equals(Ljava/lang/Object;)Z

    .line 368
    move-result v7

    .line 369
    if-eqz v7, :cond_1dc

    .line 371
    new-instance v6, Ljava/lang/String;

    .line 373
    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/EncodedPayload;->getBytes()[B

    .line 376
    move-result-object v5

    .line 377
    const-string v7, "UTF-8"

    .line 379
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 382
    move-result-object v7

    .line 383
    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 386
    invoke-static {v6}, Lcom/google/android/datatransport/cct/internal/LogEvent;->jsonBuilder(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 389
    move-result-object v5

    .line 390
    :goto_185
    invoke-virtual {v4}, Lcom/google/android/datatransport/runtime/EventInternal;->getEventMillis()J

    .line 393
    move-result-wide v6

    .line 394
    invoke-virtual {v5, v6, v7}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->setEventTimeMs(J)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 397
    move-result-object v6

    .line 398
    invoke-virtual {v4}, Lcom/google/android/datatransport/runtime/EventInternal;->getUptimeMillis()J

    .line 401
    move-result-wide v7

    .line 402
    invoke-virtual {v6, v7, v8}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->setEventUptimeMs(J)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 405
    move-result-object v6

    .line 406
    const-string v7, "tz-offset"

    .line 408
    invoke-virtual {v4, v7}, Lcom/google/android/datatransport/runtime/EventInternal;->getLong(Ljava/lang/String;)J

    .line 411
    move-result-wide v7

    .line 412
    invoke-virtual {v6, v7, v8}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->setTimezoneOffsetSeconds(J)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 415
    move-result-object v6

    .line 416
    invoke-static {}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;->builder()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;

    .line 419
    move-result-object v7

    .line 420
    const-string v8, "net-type"

    .line 422
    invoke-virtual {v4, v8}, Lcom/google/android/datatransport/runtime/EventInternal;->getInteger(Ljava/lang/String;)I

    .line 425
    move-result v8

    .line 426
    invoke-static {v8}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;->forNumber(I)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;

    .line 429
    move-result-object v8

    .line 430
    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;->setNetworkType(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$NetworkType;)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;

    .line 433
    move-result-object v7

    .line 434
    const-string v8, "mobile-subtype"

    .line 436
    invoke-virtual {v4, v8}, Lcom/google/android/datatransport/runtime/EventInternal;->getInteger(Ljava/lang/String;)I

    .line 439
    move-result v8

    .line 440
    invoke-static {v8}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;->forNumber(I)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;

    .line 443
    move-result-object v8

    .line 444
    invoke-virtual {v7, v8}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;->setMobileSubtype(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$MobileSubtype;)Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;

    .line 447
    move-result-object v7

    .line 448
    invoke-virtual {v7}, Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo$Builder;->build()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    .line 451
    move-result-object v7

    .line 452
    invoke-virtual {v6, v7}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->setNetworkConnectionInfo(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 455
    invoke-virtual {v4}, Lcom/google/android/datatransport/runtime/EventInternal;->getCode()Ljava/lang/Integer;

    .line 458
    move-result-object v6

    .line 459
    if-eqz v6, :cond_1d3

    .line 461
    invoke-virtual {v4}, Lcom/google/android/datatransport/runtime/EventInternal;->getCode()Ljava/lang/Integer;

    .line 464
    move-result-object v4

    .line 465
    invoke-virtual {v5, v4}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->setEventCode(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;

    .line 468
    :cond_1d3
    invoke-virtual {v5}, Lcom/google/android/datatransport/cct/internal/LogEvent$Builder;->build()Lcom/google/android/datatransport/cct/internal/LogEvent;

    .line 471
    move-result-object v4

    .line 472
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    goto/16 :goto_13d

    .line 477
    :cond_1dc
    const-string v4, "CctTransportBackend"

    .line 479
    const-string v5, "Received event of unsupported encoding %s. Skipping..."

    .line 481
    invoke-static {v4, v5, v6}, Lcom/google/android/datatransport/runtime/logging/Logging;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    goto/16 :goto_13d

    .line 486
    :cond_1e5
    invoke-virtual {v2, v3}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->setLogEvents(Ljava/util/List;)Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;

    .line 489
    invoke-virtual {v2}, Lcom/google/android/datatransport/cct/internal/LogRequest$Builder;->build()Lcom/google/android/datatransport/cct/internal/LogRequest;

    .line 492
    move-result-object v1

    .line 493
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    goto/16 :goto_46

    .line 498
    :cond_1f1
    invoke-static {p1}, Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;->create(Ljava/util/List;)Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;

    .line 501
    move-result-object p1

    .line 502
    return-object p1
.end method

.method private static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 2

    .line 1
    const-string v0, "phone"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 9
    return-object p0
.end method

.method public static getTzOffset()J
    .registers 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    .line 19
    move-result v0

    .line 20
    div-int/lit16 v0, v0, 0x3e8

    .line 22
    int-to-long v0, v0

    .line 23
    return-wide v0
.end method

.method public static synthetic lambda$send$0(Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;)Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;
    .registers 5

    .line 1
    iget-object v0, p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->redirectUrl:Ljava/net/URL;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    const-string v1, "CctTransportBackend"

    .line 7
    const-string v2, "Following redirect to: %s"

    .line 9
    invoke-static {v1, v2, v0}, Lcom/google/android/datatransport/runtime/logging/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    iget-object p1, p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->redirectUrl:Ljava/net/URL;

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;->withUrl(Ljava/net/URL;)Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;

    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method private static maybeUnGzip(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    .line 1
    const-string v0, "gzip"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_e

    .line 9
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    .line 11
    invoke-direct {p1, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 14
    return-object p1

    .line 15
    :cond_e
    return-object p0
.end method

.method private static parseUrlOrThrow(Ljava/lang/String;)Ljava/net/URL;
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 3
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5} :catch_6

    .line 6
    return-object v0

    .line 7
    :catch_6
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string v2, "Invalid url: "

    .line 12
    invoke-static {v2, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    throw v1
.end method


# virtual methods
.method public decorate(Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/EventInternal;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->toBuilder()Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 10
    move-result-object p1

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    const-string v2, "sdk-version"

    .line 15
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;I)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 18
    move-result-object p1

    .line 19
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 21
    const-string v2, "model"

    .line 23
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 26
    move-result-object p1

    .line 27
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 29
    const-string v2, "hardware"

    .line 31
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 34
    move-result-object p1

    .line 35
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 37
    const-string v2, "device"

    .line 39
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 42
    move-result-object p1

    .line 43
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 45
    const-string v2, "product"

    .line 47
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 50
    move-result-object p1

    .line 51
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 53
    const-string v2, "os-uild"

    .line 55
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 58
    move-result-object p1

    .line 59
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 61
    const-string v2, "manufacturer"

    .line 63
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 66
    move-result-object p1

    .line 67
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 69
    const-string v2, "fingerprint"

    .line 71
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 74
    move-result-object p1

    .line 75
    invoke-static {}, Lcom/google/android/datatransport/cct/CctTransportBackend;->getTzOffset()J

    .line 78
    move-result-wide v1

    .line 79
    const-string v3, "tz-offset"

    .line 81
    invoke-virtual {p1, v3, v1, v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 84
    move-result-object p1

    .line 85
    invoke-static {v0}, Lcom/google/android/datatransport/cct/CctTransportBackend;->getNetTypeValue(Landroid/net/NetworkInfo;)I

    .line 88
    move-result v1

    .line 89
    const-string v2, "net-type"

    .line 91
    invoke-virtual {p1, v2, v1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;I)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 94
    move-result-object p1

    .line 95
    invoke-static {v0}, Lcom/google/android/datatransport/cct/CctTransportBackend;->getNetSubtypeValue(Landroid/net/NetworkInfo;)I

    .line 98
    move-result v0

    .line 99
    const-string v1, "mobile-subtype"

    .line 101
    invoke-virtual {p1, v1, v0}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;I)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 104
    move-result-object p1

    .line 105
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    const-string v1, "country"

    .line 115
    invoke-virtual {p1, v1, v0}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 118
    move-result-object p1

    .line 119
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 127
    const-string v1, "locale"

    .line 129
    invoke-virtual {p1, v1, v0}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 132
    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->applicationContext:Landroid/content/Context;

    .line 135
    invoke-static {v0}, Lcom/google/android/datatransport/cct/CctTransportBackend;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 142
    move-result-object v0

    .line 143
    const-string v1, "mcc_mnc"

    .line 145
    invoke-virtual {p1, v1, v0}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 148
    move-result-object p1

    .line 149
    iget-object v0, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->applicationContext:Landroid/content/Context;

    .line 151
    invoke-static {v0}, Lcom/google/android/datatransport/cct/CctTransportBackend;->getPackageVersionCode(Landroid/content/Context;)I

    .line 154
    move-result v0

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 158
    move-result-object v0

    .line 159
    const-string v1, "application_build"

    .line 161
    invoke-virtual {p1, v1, v0}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->build()Lcom/google/android/datatransport/runtime/EventInternal;

    .line 168
    move-result-object p1

    .line 169
    return-object p1
.end method

.method public send(Lcom/google/android/datatransport/runtime/backends/BackendRequest;)Lcom/google/android/datatransport/runtime/backends/BackendResponse;
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/datatransport/cct/CctTransportBackend;->getRequestBody(Lcom/google/android/datatransport/runtime/backends/BackendRequest;)Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/datatransport/cct/CctTransportBackend;->endPoint:Ljava/net/URL;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->getExtras()[B

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_35

    .line 14
    :try_start_d
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/backends/BackendRequest;->getExtras()[B

    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/google/android/datatransport/cct/CCTDestination;->fromByteArray([B)Lcom/google/android/datatransport/cct/CCTDestination;

    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/CCTDestination;->getAPIKey()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_20

    .line 28
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/CCTDestination;->getAPIKey()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    move-object v3, v2

    .line 33
    :cond_20
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/CCTDestination;->getEndPoint()Ljava/lang/String;

    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_35

    .line 39
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/CCTDestination;->getEndPoint()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/google/android/datatransport/cct/CctTransportBackend;->parseUrlOrThrow(Ljava/lang/String;)Ljava/net/URL;

    .line 46
    move-result-object p1
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_2e} :catch_30

    .line 47
    move-object v1, p1

    .line 48
    goto :goto_35

    .line 49
    :catch_30
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->fatalError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_35
    :goto_35
    const/4 p1, 0x5

    .line 55
    :try_start_36
    new-instance v2, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;

    .line 57
    invoke-direct {v2, v1, v0, v3}, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpRequest;-><init>(Ljava/net/URL;Lcom/google/android/datatransport/cct/internal/BatchedLogRequest;Ljava/lang/String;)V

    .line 60
    invoke-static {p0}, Lcom/google/android/datatransport/cct/CctTransportBackend$$Lambda$1;->lambdaFactory$(Lcom/google/android/datatransport/cct/CctTransportBackend;)Lcom/google/android/datatransport/runtime/retries/Function;

    .line 63
    move-result-object v0

    .line 64
    invoke-static {}, Lcom/google/android/datatransport/cct/CctTransportBackend$$Lambda$4;->lambdaFactory$()Lcom/google/android/datatransport/runtime/retries/RetryStrategy;

    .line 67
    move-result-object v1

    .line 68
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/datatransport/runtime/retries/Retries;->retry(ILjava/lang/Object;Lcom/google/android/datatransport/runtime/retries/Function;Lcom/google/android/datatransport/runtime/retries/RetryStrategy;)Ljava/lang/Object;

    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;

    .line 74
    iget v0, p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->code:I

    .line 76
    const/16 v1, 0xc8

    .line 78
    if-ne v0, v1, :cond_56

    .line 80
    iget-wide v0, p1, Lcom/google/android/datatransport/cct/CctTransportBackend$HttpResponse;->nextRequestMillis:J

    .line 82
    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->ok(J)Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    :cond_56
    const/16 p1, 0x1f4

    .line 89
    if-ge v0, p1, :cond_64

    .line 91
    const/16 p1, 0x194

    .line 93
    if-ne v0, p1, :cond_5f

    .line 95
    goto :goto_64

    .line 96
    :cond_5f
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->fatalError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 99
    move-result-object p1

    .line 100
    return-object p1

    .line 101
    :cond_64
    :goto_64
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->transientError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 104
    move-result-object p1
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_68} :catch_69

    .line 105
    return-object p1

    .line 106
    :catch_69
    move-exception p1

    .line 107
    const-string v0, "CctTransportBackend"

    .line 109
    const-string v1, "Could not make request to the backend"

    .line 111
    invoke-static {v0, v1, p1}, Lcom/google/android/datatransport/runtime/logging/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    invoke-static {}, Lcom/google/android/datatransport/runtime/backends/BackendResponse;->transientError()Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 117
    move-result-object p1

    .line 118
    return-object p1
.end method
