.class public Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;
.super Ljava/lang/Object;
.source "FirebaseInstallationServiceClient.java"


# static fields
.field private static final ACCEPT_HEADER_KEY:Ljava/lang/String; = "Accept"

.field private static final API_KEY_HEADER:Ljava/lang/String; = "x-goog-api-key"

.field private static final CACHE_CONTROL_DIRECTIVE:Ljava/lang/String; = "no-cache"

.field private static final CACHE_CONTROL_HEADER_KEY:Ljava/lang/String; = "Cache-Control"

.field private static final CONTENT_ENCODING_HEADER_KEY:Ljava/lang/String; = "Content-Encoding"

.field private static final CONTENT_TYPE_HEADER_KEY:Ljava/lang/String; = "Content-Type"

.field private static final CREATE_REQUEST_RESOURCE_NAME_FORMAT:Ljava/lang/String; = "projects/%s/installations"

.field private static final DELETE_REQUEST_RESOURCE_NAME_FORMAT:Ljava/lang/String; = "projects/%s/installations/%s"

.field private static final EXPIRATION_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIREBASE_INSTALLATIONS_API_DOMAIN:Ljava/lang/String; = "firebaseinstallations.googleapis.com"

.field private static final FIREBASE_INSTALLATIONS_API_VERSION:Ljava/lang/String; = "v1"

.field private static final FIREBASE_INSTALLATIONS_ID_HEARTBEAT_TAG:Ljava/lang/String; = "fire-installations-id"

.field private static final FIREBASE_INSTALLATION_AUTH_VERSION:Ljava/lang/String; = "FIS_v2"

.field private static final FIS_TAG:Ljava/lang/String; = "Firebase-Installations"

.field private static final GENERATE_AUTH_TOKEN_REQUEST_RESOURCE_NAME_FORMAT:Ljava/lang/String; = "projects/%s/installations/%s/authTokens:generate"

.field private static final GZIP_CONTENT_ENCODING:Ljava/lang/String; = "gzip"

.field private static final HEART_BEAT_HEADER:Ljava/lang/String; = "x-firebase-client-log-type"

.field private static final JSON_CONTENT_TYPE:Ljava/lang/String; = "application/json"

.field private static final MAX_RETRIES:I = 0x1

.field private static final NETWORK_TIMEOUT_MILLIS:I = 0x2710

.field public static final PARSING_EXPIRATION_TIME_ERROR_MESSAGE:Ljava/lang/String; = "Invalid Expiration Timestamp."
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private static final SDK_VERSION_PREFIX:Ljava/lang/String; = "a:"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "x-firebase-client"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final X_ANDROID_CERT_HEADER_KEY:Ljava/lang/String; = "X-Android-Cert"

.field private static final X_ANDROID_IID_MIGRATION_KEY:Ljava/lang/String; = "x-goog-fis-android-iid-migration-auth"

.field private static final X_ANDROID_PACKAGE_HEADER_KEY:Ljava/lang/String; = "X-Android-Package"


# instance fields
.field private final context:Landroid/content/Context;

.field private final heartbeatInfo:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final requestLimiter:Lcom/google/firebase/installations/remote/RequestLimiter;

.field private shouldServerErrorRetry:Z

.field private final userAgentPublisher:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/platforminfo/UserAgentPublisher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "[0-9]+s"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->EXPIRATION_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    const-string v0, "UTF-8"

    .line 11
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->UTF_8:Ljava/nio/charset/Charset;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/platforminfo/UserAgentPublisher;",
            ">;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->context:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->userAgentPublisher:Lcom/google/firebase/inject/Provider;

    .line 8
    iput-object p3, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->heartbeatInfo:Lcom/google/firebase/inject/Provider;

    .line 10
    new-instance p1, Lcom/google/firebase/installations/remote/RequestLimiter;

    .line 12
    invoke-direct {p1}, Lcom/google/firebase/installations/remote/RequestLimiter;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->requestLimiter:Lcom/google/firebase/installations/remote/RequestLimiter;

    .line 17
    return-void
.end method

.method private static availableFirebaseOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 p1, 0x1

    .line 8
    aput-object p2, v0, p1

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_12

    .line 16
    const-string p0, ""

    .line 18
    goto :goto_18

    .line 19
    :cond_12
    const-string p1, ", "

    .line 21
    invoke-static {p1, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    :goto_18
    const/4 p1, 0x2

    .line 26
    aput-object p0, v0, p1

    .line 28
    const-string p0, "Firebase options used while communicating with Firebase server APIs: %s, %s%s"

    .line 30
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method private static buildCreateFirebaseInstallationRequestBody(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "fid"

    .line 8
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string p0, "appId"

    .line 13
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    const-string p0, "authVersion"

    .line 18
    const-string p1, "FIS_v2"

    .line 20
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string p0, "sdkVersion"

    .line 25
    const-string p1, "a:16.3.5"

    .line 27
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 30
    return-object v0

    .line 31
    :catch_1e
    move-exception p0

    .line 32
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    throw p1
.end method

.method private static buildGenerateAuthTokenRequestBody()Lorg/json/JSONObject;
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v1, "sdkVersion"

    .line 8
    const-string v2, "a:16.3.5"

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    new-instance v1, Lorg/json/JSONObject;

    .line 15
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 18
    const-string v2, "installation"

    .line 20
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    .line 23
    return-object v1

    .line 24
    :catch_17
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 27
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 30
    throw v1
.end method

.method private getFingerprintHashForPackage()Ljava/lang/String;
    .registers 6

    .line 1
    const-string v0, "ContentValues"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    iget-object v2, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->context:Landroid/content/Context;

    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    move-result-object v3

    .line 10
    invoke-static {v2, v3}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->getPackageCertificateHashBytes(Landroid/content/Context;Ljava/lang/String;)[B

    .line 13
    move-result-object v2

    .line 14
    if-nez v2, :cond_2a

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    const-string v3, "Could not get fingerprint hash for package: "

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v3, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->context:Landroid/content/Context;

    .line 28
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-object v1

    .line 43
    :cond_2a
    const/4 v3, 0x0

    .line 44
    invoke-static {v2, v3}, Lcom/google/android/gms/common/util/Hex;->bytesToStringUppercase([BZ)Ljava/lang/String;

    .line 47
    move-result-object v0
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_2f} :catch_30

    .line 48
    return-object v0

    .line 49
    :catch_30
    move-exception v2

    .line 50
    const-string v3, "No such package: "

    .line 52
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    move-result-object v3

    .line 56
    iget-object v4, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->context:Landroid/content/Context;

    .line 58
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    return-object v1
.end method

.method private getFullyQualifiedRequestUri(Ljava/lang/String;)Ljava/net/URL;
    .registers 7

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 3
    const-string v1, "https://%s/%s/%s"

    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    const/4 v3, 0x0

    .line 9
    const-string v4, "firebaseinstallations.googleapis.com"

    .line 11
    aput-object v4, v2, v3

    .line 13
    const/4 v3, 0x1

    .line 14
    const-string v4, "v1"

    .line 16
    aput-object v4, v2, v3

    .line 18
    const/4 v3, 0x2

    .line 19
    aput-object p1, v2, v3

    .line 21
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 28
    return-object v0

    .line 29
    :catch_1c
    move-exception p1

    .line 30
    new-instance v0, Lcom/google/firebase/installations/FirebaseInstallationsException;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    sget-object v1, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    .line 38
    invoke-direct {v0, p1, v1}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    .line 41
    throw v0
.end method

.method private static getJsonBytes(Lorg/json/JSONObject;)[B
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "UTF-8"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static isSuccessfulResponseCode(I)Z
    .registers 2

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_a

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static logBadConfigError()V
    .registers 2

    .line 1
    const-string v0, "Firebase-Installations"

    .line 3
    const-string v1, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method private static logFisCommunicationError(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->readErrorResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_16

    .line 11
    const-string v0, "Firebase-Installations"

    .line 13
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {p1, p2, p3}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->availableFirebaseOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_16
    return-void
.end method

.method private openHttpURLConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_86

    .line 7
    const/16 v0, 0x2710

    .line 9
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 16
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 19
    const-string v0, "Content-Type"

    .line 21
    const-string v1, "application/json"

    .line 23
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v0, "Accept"

    .line 28
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "Content-Encoding"

    .line 33
    const-string v1, "gzip"

    .line 35
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "Cache-Control"

    .line 40
    const-string v1, "no-cache"

    .line 42
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->context:Landroid/content/Context;

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    const-string v1, "X-Android-Package"

    .line 53
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->heartbeatInfo:Lcom/google/firebase/inject/Provider;

    .line 58
    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_77

    .line 64
    iget-object v0, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->userAgentPublisher:Lcom/google/firebase/inject/Provider;

    .line 66
    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_77

    .line 72
    iget-object v0, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->heartbeatInfo:Lcom/google/firebase/inject/Provider;

    .line 74
    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;

    .line 80
    const-string v1, "fire-installations-id"

    .line 82
    invoke-interface {v0, v1}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo;->getHeartBeatCode(Ljava/lang/String;)Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 85
    move-result-object v0

    .line 86
    sget-object v1, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->NONE:Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;

    .line 88
    if-eq v0, v1, :cond_77

    .line 90
    iget-object v1, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->userAgentPublisher:Lcom/google/firebase/inject/Provider;

    .line 92
    invoke-interface {v1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Lcom/google/firebase/platforminfo/UserAgentPublisher;

    .line 98
    invoke-interface {v1}, Lcom/google/firebase/platforminfo/UserAgentPublisher;->getUserAgent()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    const-string v2, "x-firebase-client"

    .line 104
    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;->getCode()I

    .line 110
    move-result v0

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    const-string v1, "x-firebase-client-log-type"

    .line 117
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_77
    invoke-direct {p0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->getFingerprintHashForPackage()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    const-string v1, "X-Android-Cert"

    .line 126
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "x-goog-api-key"

    .line 131
    invoke-virtual {p1, v0, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object p1

    .line 135
    :catch_86
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    .line 137
    sget-object p2, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    .line 139
    const-string v0, "Firebase Installations Service is unavailable. Please try again later."

    .line 141
    invoke-direct {p1, v0, p2}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    .line 144
    throw p1
.end method

.method public static parseTokenExpirationTimestamp(Ljava/lang/String;)J
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->EXPIRATION_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 10
    move-result v0

    .line 11
    const-string v1, "Invalid Expiration Timestamp."

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 16
    if-eqz p0, :cond_28

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_18

    .line 24
    goto :goto_28

    .line 25
    :cond_18
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 29
    move-result v1

    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 32
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 39
    move-result-wide v0

    .line 40
    goto :goto_2a

    .line 41
    :cond_28
    :goto_28
    const-wide/16 v0, 0x0

    .line 43
    :goto_2a
    return-wide v0
.end method

.method private readCreateResponse(Ljava/net/HttpURLConnection;)Lcom/google/firebase/installations/remote/InstallationResponse;
    .registers 7

    .line 1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Landroid/util/JsonReader;

    .line 7
    new-instance v1, Ljava/io/InputStreamReader;

    .line 9
    sget-object v2, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 14
    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 17
    invoke-static {}, Lcom/google/firebase/installations/remote/TokenResult;->builder()Lcom/google/firebase/installations/remote/TokenResult$Builder;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {}, Lcom/google/firebase/installations/remote/InstallationResponse;->builder()Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 28
    :goto_1b
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_a3

    .line 34
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    const-string v4, "name"

    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_35

    .line 46
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->setUri(Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    .line 53
    goto :goto_1b

    .line 54
    :cond_35
    const-string v4, "fid"

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_45

    .line 62
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->setFid(Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    .line 69
    goto :goto_1b

    .line 70
    :cond_45
    const-string v4, "refreshToken"

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_55

    .line 78
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->setRefreshToken(Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    .line 85
    goto :goto_1b

    .line 86
    :cond_55
    const-string v4, "authToken"

    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_9e

    .line 94
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 97
    :goto_60
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_92

    .line 103
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 106
    move-result-object v3

    .line 107
    const-string v4, "token"

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_7a

    .line 115
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v1, v3}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setToken(Ljava/lang/String;)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    .line 122
    goto :goto_60

    .line 123
    :cond_7a
    const-string v4, "expiresIn"

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_8e

    .line 131
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 134
    move-result-object v3

    .line 135
    invoke-static {v3}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->parseTokenExpirationTimestamp(Ljava/lang/String;)J

    .line 138
    move-result-wide v3

    .line 139
    invoke-virtual {v1, v3, v4}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setTokenExpirationTimestamp(J)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    .line 142
    goto :goto_60

    .line 143
    :cond_8e
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    .line 146
    goto :goto_60

    .line 147
    :cond_92
    invoke-virtual {v1}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->build()Lcom/google/firebase/installations/remote/TokenResult;

    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v2, v3}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->setAuthToken(Lcom/google/firebase/installations/remote/TokenResult;)Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    .line 154
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 157
    goto/16 :goto_1b

    .line 159
    :cond_9e
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    .line 162
    goto/16 :goto_1b

    .line 164
    :cond_a3
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 167
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 170
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 173
    sget-object p1, Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;->OK:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    .line 175
    invoke-virtual {v2, p1}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->setResponseCode(Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;)Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->build()Lcom/google/firebase/installations/remote/InstallationResponse;

    .line 182
    move-result-object p1

    .line 183
    return-object p1
.end method

.method private static readErrorResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 8

    .line 1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_8

    .line 8
    return-object v1

    .line 9
    :cond_8
    new-instance v2, Ljava/io/BufferedReader;

    .line 11
    new-instance v3, Ljava/io/InputStreamReader;

    .line 13
    sget-object v4, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->UTF_8:Ljava/nio/charset/Charset;

    .line 15
    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 18
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 21
    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    :goto_19
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_28

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const/16 v3, 0xa

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    goto :goto_19

    .line 41
    :cond_28
    const-string v3, "Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]"

    .line 43
    const/4 v4, 0x3

    .line 44
    new-array v4, v4, [Ljava/lang/Object;

    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 50
    move-result v6

    .line 51
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v6

    .line 55
    aput-object v6, v4, v5

    .line 57
    const/4 v5, 0x1

    .line 58
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    aput-object p0, v4, v5

    .line 64
    const/4 p0, 0x2

    .line 65
    aput-object v0, v4, p0

    .line 67
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    move-result-object p0
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_46} :catch_4f
    .catchall {:try_start_14 .. :try_end_46} :catchall_4a

    .line 71
    :try_start_46
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_49

    .line 74
    :catch_49
    return-object p0

    .line 75
    :catchall_4a
    move-exception p0

    .line 76
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4e

    .line 79
    :catch_4e
    throw p0

    .line 80
    :catch_4f
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_52

    .line 83
    :catch_52
    return-object v1
.end method

.method private readGenerateAuthTokenResponse(Ljava/net/HttpURLConnection;)Lcom/google/firebase/installations/remote/TokenResult;
    .registers 6

    .line 1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Landroid/util/JsonReader;

    .line 7
    new-instance v1, Ljava/io/InputStreamReader;

    .line 9
    sget-object v2, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->UTF_8:Ljava/nio/charset/Charset;

    .line 11
    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 14
    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 17
    invoke-static {}, Lcom/google/firebase/installations/remote/TokenResult;->builder()Lcom/google/firebase/installations/remote/TokenResult$Builder;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 24
    :goto_17
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_49

    .line 30
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    const-string v3, "token"

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_31

    .line 42
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setToken(Ljava/lang/String;)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    .line 49
    goto :goto_17

    .line 50
    :cond_31
    const-string v3, "expiresIn"

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_45

    .line 58
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->parseTokenExpirationTimestamp(Ljava/lang/String;)J

    .line 65
    move-result-wide v2

    .line 66
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setTokenExpirationTimestamp(J)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    .line 69
    goto :goto_17

    .line 70
    :cond_45
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    .line 73
    goto :goto_17

    .line 74
    :cond_49
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 77
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 80
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 83
    sget-object p1, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->OK:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    .line 85
    invoke-virtual {v1, p1}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setResponseCode(Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->build()Lcom/google/firebase/installations/remote/TokenResult;

    .line 92
    move-result-object p1

    .line 93
    return-object p1
.end method

.method private writeFIDCreateRequestBodyToOutputStream(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->buildCreateFirebaseInstallationRequestBody(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    move-result-object p2

    .line 5
    invoke-static {p2}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->getJsonBytes(Lorg/json/JSONObject;)[B

    .line 8
    move-result-object p2

    .line 9
    invoke-static {p1, p2}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->writeRequestBodyToOutputStream(Ljava/net/URLConnection;[B)V

    .line 12
    return-void
.end method

.method private writeGenerateAuthTokenRequestBodyToOutputStream(Ljava/net/HttpURLConnection;)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->buildGenerateAuthTokenRequestBody()Lorg/json/JSONObject;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->getJsonBytes(Lorg/json/JSONObject;)[B

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->writeRequestBodyToOutputStream(Ljava/net/URLConnection;[B)V

    .line 12
    return-void
.end method

.method private static writeRequestBodyToOutputStream(Ljava/net/URLConnection;[B)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1d

    .line 7
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    .line 9
    invoke-direct {v0, p0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 12
    :try_start_b
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_15

    .line 15
    :try_start_e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 18
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_14} :catch_14

    .line 21
    :catch_14
    return-void

    .line 22
    :catchall_15
    move-exception p1

    .line 23
    :try_start_16
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 26
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1c} :catch_1c

    .line 29
    :catch_1c
    throw p1

    .line 30
    :cond_1d
    new-instance p0, Ljava/io/IOException;

    .line 32
    const-string p1, "Cannot send request to FIS servers. No OutputStream available."

    .line 34
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0
.end method


# virtual methods
.method public createFirebaseInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/InstallationResponse;
    .registers 14

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->requestLimiter:Lcom/google/firebase/installations/remote/RequestLimiter;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/RequestLimiter;->isRequestAllowed()Z

    .line 6
    move-result v0

    .line 7
    const-string v1, "Firebase Installations Service is unavailable. Please try again later."

    .line 9
    if-eqz v0, :cond_8b

    .line 11
    const/4 v0, 0x1

    .line 12
    new-array v2, v0, [Ljava/lang/Object;

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object p3, v2, v3

    .line 17
    const-string v4, "projects/%s/installations"

    .line 19
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-direct {p0, v2}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->getFullyQualifiedRequestUri(Ljava/lang/String;)Ljava/net/URL;

    .line 26
    move-result-object v2

    .line 27
    :goto_1a
    if-gt v3, v0, :cond_83

    .line 29
    invoke-direct {p0, v2, p1}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->openHttpURLConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 32
    move-result-object v4

    .line 33
    :try_start_20
    const-string v5, "POST"

    .line 35
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 41
    if-eqz p5, :cond_2f

    .line 43
    const-string v5, "x-goog-fis-android-iid-migration-auth"

    .line 45
    invoke-virtual {v4, v5, p5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_2f
    invoke-direct {p0, v4, p2, p4}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->writeFIDCreateRequestBodyToOutputStream(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 54
    move-result v5

    .line 55
    iget-object v6, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->requestLimiter:Lcom/google/firebase/installations/remote/RequestLimiter;

    .line 57
    invoke-virtual {v6, v5}, Lcom/google/firebase/installations/remote/RequestLimiter;->setNextRequestTime(I)V

    .line 60
    invoke-static {v5}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->isSuccessfulResponseCode(I)Z

    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_49

    .line 66
    invoke-direct {p0, v4}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->readCreateResponse(Ljava/net/HttpURLConnection;)Lcom/google/firebase/installations/remote/InstallationResponse;

    .line 69
    move-result-object p1
    :try_end_45
    .catch Ljava/lang/AssertionError; {:try_start_20 .. :try_end_45} :catch_7d
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_45} :catch_7d
    .catchall {:try_start_20 .. :try_end_45} :catchall_78

    .line 70
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 73
    return-object p1

    .line 74
    :cond_49
    :try_start_49
    invoke-static {v4, p4, p1, p3}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->logFisCommunicationError(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/16 v6, 0x1ad

    .line 79
    if-eq v5, v6, :cond_6e

    .line 81
    const/16 v6, 0x1f4

    .line 83
    if-lt v5, v6, :cond_59

    .line 85
    const/16 v6, 0x258

    .line 87
    if-ge v5, v6, :cond_59

    .line 89
    goto :goto_7d

    .line 90
    :cond_59
    invoke-static {}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->logBadConfigError()V

    .line 93
    invoke-static {}, Lcom/google/firebase/installations/remote/InstallationResponse;->builder()Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    .line 96
    move-result-object v5

    .line 97
    sget-object v6, Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;->BAD_CONFIG:Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;

    .line 99
    invoke-virtual {v5, v6}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->setResponseCode(Lcom/google/firebase/installations/remote/InstallationResponse$ResponseCode;)Lcom/google/firebase/installations/remote/InstallationResponse$Builder;

    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v5}, Lcom/google/firebase/installations/remote/InstallationResponse$Builder;->build()Lcom/google/firebase/installations/remote/InstallationResponse;

    .line 106
    move-result-object p1
    :try_end_6a
    .catch Ljava/lang/AssertionError; {:try_start_49 .. :try_end_6a} :catch_7d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_6a} :catch_7d
    .catchall {:try_start_49 .. :try_end_6a} :catchall_78

    .line 107
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 110
    return-object p1

    .line 111
    :cond_6e
    :try_start_6e
    new-instance v5, Lcom/google/firebase/installations/FirebaseInstallationsException;

    .line 113
    const-string v6, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    .line 115
    sget-object v7, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->TOO_MANY_REQUESTS:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    .line 117
    invoke-direct {v5, v6, v7}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    .line 120
    throw v5
    :try_end_78
    .catch Ljava/lang/AssertionError; {:try_start_6e .. :try_end_78} :catch_7d
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_78} :catch_7d
    .catchall {:try_start_6e .. :try_end_78} :catchall_78

    .line 121
    :catchall_78
    move-exception p1

    .line 122
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 125
    throw p1

    .line 126
    :catch_7d
    :goto_7d
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 129
    add-int/lit8 v3, v3, 0x1

    .line 131
    goto :goto_1a

    .line 132
    :cond_83
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    .line 134
    sget-object p2, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    .line 136
    invoke-direct {p1, v1, p2}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    .line 139
    throw p1

    .line 140
    :cond_8b
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    .line 142
    sget-object p2, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    .line 144
    invoke-direct {p1, v1, p2}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    .line 147
    throw p1
.end method

.method public deleteFirebaseInstallation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p3, v0, v1

    .line 7
    const/4 v2, 0x1

    .line 8
    aput-object p2, v0, v2

    .line 10
    const-string p2, "projects/%s/installations/%s"

    .line 12
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    invoke-direct {p0, p2}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->getFullyQualifiedRequestUri(Ljava/lang/String;)Ljava/net/URL;

    .line 19
    move-result-object p2

    .line 20
    :goto_13
    if-gt v1, v2, :cond_72

    .line 22
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->openHttpURLConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 25
    move-result-object v0

    .line 26
    :try_start_19
    const-string v3, "DELETE"

    .line 28
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 31
    const-string v3, "Authorization"

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v5, "FIS_v2 "

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v0, v3, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 56
    move-result v3

    .line 57
    const/16 v4, 0xc8

    .line 59
    if-eq v3, v4, :cond_69

    .line 61
    const/16 v4, 0x191

    .line 63
    if-eq v3, v4, :cond_69

    .line 65
    const/16 v4, 0x194

    .line 67
    if-ne v3, v4, :cond_45

    .line 69
    goto :goto_69

    .line 70
    :cond_45
    const/4 v4, 0x0

    .line 71
    invoke-static {v0, v4, p1, p3}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->logFisCommunicationError(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/16 v4, 0x1ad

    .line 76
    if-eq v3, v4, :cond_63

    .line 78
    const/16 v4, 0x1f4

    .line 80
    if-lt v3, v4, :cond_56

    .line 82
    const/16 v4, 0x258

    .line 84
    if-ge v3, v4, :cond_56

    .line 86
    goto :goto_63

    .line 87
    :cond_56
    invoke-static {}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->logBadConfigError()V

    .line 90
    new-instance v3, Lcom/google/firebase/installations/FirebaseInstallationsException;

    .line 92
    const-string v4, "Bad config while trying to delete FID"

    .line 94
    sget-object v5, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->BAD_CONFIG:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    .line 96
    invoke-direct {v3, v4, v5}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    .line 99
    throw v3
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_63} :catch_63
    .catchall {:try_start_19 .. :try_end_63} :catchall_6d

    .line 100
    :catch_63
    :cond_63
    :goto_63
    add-int/lit8 v1, v1, 0x1

    .line 102
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 105
    goto :goto_13

    .line 106
    :cond_69
    :goto_69
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 109
    return-void

    .line 110
    :catchall_6d
    move-exception p1

    .line 111
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 114
    throw p1

    .line 115
    :cond_72
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    .line 117
    sget-object p2, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    .line 119
    const-string p3, "Firebase Installations Service is unavailable. Please try again later."

    .line 121
    invoke-direct {p1, p3, p2}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    .line 124
    throw p1
.end method

.method public generateAuthToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/installations/remote/TokenResult;
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->requestLimiter:Lcom/google/firebase/installations/remote/RequestLimiter;

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/installations/remote/RequestLimiter;->isRequestAllowed()Z

    .line 6
    move-result v0

    .line 7
    const-string v1, "Firebase Installations Service is unavailable. Please try again later."

    .line 9
    if-eqz v0, :cond_ba

    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object p3, v0, v2

    .line 17
    const/4 v3, 0x1

    .line 18
    aput-object p2, v0, v3

    .line 20
    const-string p2, "projects/%s/installations/%s/authTokens:generate"

    .line 22
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    invoke-direct {p0, p2}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->getFullyQualifiedRequestUri(Ljava/lang/String;)Ljava/net/URL;

    .line 29
    move-result-object p2

    .line 30
    :goto_1d
    if-gt v2, v3, :cond_b2

    .line 32
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->openHttpURLConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 35
    move-result-object v0

    .line 36
    :try_start_23
    const-string v4, "POST"

    .line 38
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 41
    const-string v4, "Authorization"

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v6, "FIS_v2 "

    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v0, v4, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 66
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->writeGenerateAuthTokenRequestBodyToOutputStream(Ljava/net/HttpURLConnection;)V

    .line 69
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 72
    move-result v4

    .line 73
    iget-object v5, p0, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->requestLimiter:Lcom/google/firebase/installations/remote/RequestLimiter;

    .line 75
    invoke-virtual {v5, v4}, Lcom/google/firebase/installations/remote/RequestLimiter;->setNextRequestTime(I)V

    .line 78
    invoke-static {v4}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->isSuccessfulResponseCode(I)Z

    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_5b

    .line 84
    invoke-direct {p0, v0}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->readGenerateAuthTokenResponse(Ljava/net/HttpURLConnection;)Lcom/google/firebase/installations/remote/TokenResult;

    .line 87
    move-result-object p1
    :try_end_57
    .catch Ljava/lang/AssertionError; {:try_start_23 .. :try_end_57} :catch_ab
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_57} :catch_ab
    .catchall {:try_start_23 .. :try_end_57} :catchall_a6

    .line 88
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 91
    return-object p1

    .line 92
    :cond_5b
    const/4 v5, 0x0

    .line 93
    :try_start_5c
    invoke-static {v0, v5, p1, p3}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->logFisCommunicationError(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/16 v5, 0x191

    .line 98
    if-eq v4, v5, :cond_94

    .line 100
    const/16 v5, 0x194

    .line 102
    if-ne v4, v5, :cond_68

    .line 104
    goto :goto_94

    .line 105
    :cond_68
    const/16 v5, 0x1ad

    .line 107
    if-eq v4, v5, :cond_8a

    .line 109
    const/16 v5, 0x1f4

    .line 111
    if-lt v4, v5, :cond_75

    .line 113
    const/16 v5, 0x258

    .line 115
    if-ge v4, v5, :cond_75

    .line 117
    goto :goto_ab

    .line 118
    :cond_75
    invoke-static {}, Lcom/google/firebase/installations/remote/FirebaseInstallationServiceClient;->logBadConfigError()V

    .line 121
    invoke-static {}, Lcom/google/firebase/installations/remote/TokenResult;->builder()Lcom/google/firebase/installations/remote/TokenResult$Builder;

    .line 124
    move-result-object v4

    .line 125
    sget-object v5, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->BAD_CONFIG:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    .line 127
    invoke-virtual {v4, v5}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setResponseCode(Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->build()Lcom/google/firebase/installations/remote/TokenResult;

    .line 134
    move-result-object p1
    :try_end_86
    .catch Ljava/lang/AssertionError; {:try_start_5c .. :try_end_86} :catch_ab
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_86} :catch_ab
    .catchall {:try_start_5c .. :try_end_86} :catchall_a6

    .line 135
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 138
    return-object p1

    .line 139
    :cond_8a
    :try_start_8a
    new-instance v4, Lcom/google/firebase/installations/FirebaseInstallationsException;

    .line 141
    const-string v5, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    .line 143
    sget-object v6, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->TOO_MANY_REQUESTS:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    .line 145
    invoke-direct {v4, v5, v6}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    .line 148
    throw v4

    .line 149
    :cond_94
    :goto_94
    invoke-static {}, Lcom/google/firebase/installations/remote/TokenResult;->builder()Lcom/google/firebase/installations/remote/TokenResult$Builder;

    .line 152
    move-result-object v4

    .line 153
    sget-object v5, Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;->AUTH_ERROR:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    .line 155
    invoke-virtual {v4, v5}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->setResponseCode(Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;)Lcom/google/firebase/installations/remote/TokenResult$Builder;

    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v4}, Lcom/google/firebase/installations/remote/TokenResult$Builder;->build()Lcom/google/firebase/installations/remote/TokenResult;

    .line 162
    move-result-object p1
    :try_end_a2
    .catch Ljava/lang/AssertionError; {:try_start_8a .. :try_end_a2} :catch_ab
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_a2} :catch_ab
    .catchall {:try_start_8a .. :try_end_a2} :catchall_a6

    .line 163
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    return-object p1

    .line 167
    :catchall_a6
    move-exception p1

    .line 168
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 171
    throw p1

    .line 172
    :catch_ab
    :goto_ab
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 175
    add-int/lit8 v2, v2, 0x1

    .line 177
    goto/16 :goto_1d

    .line 179
    :cond_b2
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    .line 181
    sget-object p2, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    .line 183
    invoke-direct {p1, v1, p2}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    .line 186
    throw p1

    .line 187
    :cond_ba
    new-instance p1, Lcom/google/firebase/installations/FirebaseInstallationsException;

    .line 189
    sget-object p2, Lcom/google/firebase/installations/FirebaseInstallationsException$Status;->UNAVAILABLE:Lcom/google/firebase/installations/FirebaseInstallationsException$Status;

    .line 191
    invoke-direct {p1, v1, p2}, Lcom/google/firebase/installations/FirebaseInstallationsException;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/FirebaseInstallationsException$Status;)V

    .line 194
    throw p1
.end method
