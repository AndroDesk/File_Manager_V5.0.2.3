.class public Lcom/miui/privacypolicy/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/privacypolicy/NetUtils$NameValuePair;,
        Lcom/miui/privacypolicy/NetUtils$HttpMethod;
    }
.end annotation


# static fields
.field public static final BASE_URL:Ljava/lang/String; = "https://data.sec.miui.com"

.field private static final DEBUG:Z = false

.field private static final ENCODE_UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final MIUI_VERSION_NAME:Ljava/lang/String;

.field private static final SALT:Ljava/lang/String; = "2dcd9s0c-ad3f-2fas-0l3a-abzo301jd0s9"

.field private static final TAG:Ljava/lang/String; = "Privacy_NetUtil"

.field private static final UNKNOWN_STR:Ljava/lang/String; = "unknown"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "ro.miui.ui.version.name"

    .line 3
    const-string v1, "unknown"

    .line 5
    invoke-static {v0, v1}, Lcom/miui/privacypolicy/NetUtils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/miui/privacypolicy/NetUtils;->MIUI_VERSION_NAME:Ljava/lang/String;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static addBodyIfExists(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_27

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 15
    const-string v0, "Content-Type"

    .line 17
    const-string v1, "application/json; charset=UTF-8"

    .line 19
    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/io/DataOutputStream;

    .line 24
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 31
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 37
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 40
    :cond_27
    return-void
.end method

.method private static encodeParameters(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const-string v0, "UTF-8"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const/4 v2, 0x1

    .line 9
    :try_start_8
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_44

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/util/Map$Entry;

    .line 29
    if-nez v2, :cond_23

    .line 31
    const/16 v2, 0x26

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    :cond_23
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/String;

    .line 42
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const/16 v2, 0x3d

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/String;

    .line 60
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const/4 v2, 0x0

    .line 68
    goto :goto_10

    .line 69
    :cond_44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0
    :try_end_48
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_48} :catch_49

    .line 73
    return-object p0

    .line 74
    :catch_49
    move-exception p0

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string v3, "Encoding not supported: "

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    throw v0
.end method

.method private static getBytes(Ljava/lang/String;)[B
    .registers 2

    .line 1
    :try_start_0
    const-string v0, "UTF-8"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 6
    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    .line 7
    return-object p0

    .line 8
    :catch_7
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private static getMd5Digest(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    :try_start_0
    const-string v0, "MD5"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0}, Lcom/miui/privacypolicy/NetUtils;->getBytes(Ljava/lang/String;)[B

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 14
    new-instance p0, Ljava/math/BigInteger;

    .line 16
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 24
    const-string v0, "%1$032X"

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    const/4 v2, 0x0

    .line 29
    aput-object p0, v1, v2

    .line 31
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    move-result-object p0
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_22} :catch_23

    .line 35
    return-object p0

    .line 36
    :catch_23
    move-exception p0

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    .line 39
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    throw v0
.end method

.method private static getParamsSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 18
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_32

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/Map$Entry;

    .line 30
    new-instance v3, Lcom/miui/privacypolicy/NetUtils$NameValuePair;

    .line 32
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Ljava/lang/String;

    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/String;

    .line 44
    invoke-direct {v3, v4, v2}, Lcom/miui/privacypolicy/NetUtils$NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_11

    .line 51
    :cond_32
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 57
    move-result p0

    .line 58
    const/4 v2, 0x0

    .line 59
    :goto_3a
    if-ge v2, p0, :cond_58

    .line 61
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Lcom/miui/privacypolicy/NetUtils$NameValuePair;

    .line 67
    invoke-static {v3}, Lcom/miui/privacypolicy/NetUtils$NameValuePair;->access$100(Lcom/miui/privacypolicy/NetUtils$NameValuePair;)Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v4, "="

    .line 76
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {v3}, Lcom/miui/privacypolicy/NetUtils$NameValuePair;->access$000(Lcom/miui/privacypolicy/NetUtils$NameValuePair;)Ljava/lang/String;

    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 88
    goto :goto_3a

    .line 89
    :cond_58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0}, Lcom/miui/privacypolicy/NetUtils;->getBytes(Ljava/lang/String;)[B

    .line 99
    move-result-object p0

    .line 100
    new-instance p1, Ljava/lang/String;

    .line 102
    const/4 v0, 0x2

    .line 103
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Lcom/miui/privacypolicy/NetUtils;->getMd5Digest(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1
    const-class v0, Ljava/lang/String;

    .line 3
    :try_start_2
    const-string v1, "android.os.SystemProperties"

    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    move-result-object v1

    .line 9
    const-string v2, "get"

    .line 11
    const/4 v3, 0x2

    .line 12
    new-array v4, v3, [Ljava/lang/Class;

    .line 14
    const/4 v5, 0x0

    .line 15
    aput-object v0, v4, v5

    .line 17
    const/4 v6, 0x1

    .line 18
    aput-object v0, v4, v6

    .line 20
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    move-result-object v0

    .line 24
    new-array v2, v3, [Ljava/lang/Object;

    .line 26
    aput-object p0, v2, v5

    .line 28
    aput-object p1, v2, v6

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_24

    .line 36
    return-object p0

    .line 37
    :catch_24
    move-exception p0

    .line 38
    const-string v0, "Privacy_NetUtil"

    .line 40
    const-string v1, "getSystemProperty error, "

    .line 42
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    return-object p1
.end method

.method private static openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 7
    const/16 v0, 0x3a98

    .line 9
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 12
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 23
    return-object p0
.end method

.method public static request(Ljava/util/Map;Ljava/lang/String;Lcom/miui/privacypolicy/NetUtils$HttpMethod;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/miui/privacypolicy/NetUtils$HttpMethod;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const-string v0, "?"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_3
    sget-object v2, Lcom/miui/privacypolicy/NetUtils$HttpMethod;->GET:Lcom/miui/privacypolicy/NetUtils$HttpMethod;

    .line 6
    if-ne p2, v2, :cond_20

    .line 8
    if-eqz p0, :cond_20

    .line 10
    invoke-static {p0}, Lcom/miui/privacypolicy/NetUtils;->encodeParameters(Ljava/util/Map;)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_18

    .line 20
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    goto :goto_20

    .line 25
    :cond_18
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    :cond_20
    :goto_20
    new-instance v0, Ljava/net/URL;

    .line 35
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {v0}, Lcom/miui/privacypolicy/NetUtils;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1, p2, p0, p3}, Lcom/miui/privacypolicy/NetUtils;->setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/miui/privacypolicy/NetUtils$HttpMethod;Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 45
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 48
    move-result p0

    .line 49
    const/16 p2, 0xc8

    .line 51
    if-ne p0, p2, :cond_6c

    .line 53
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 56
    move-result-object p0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_38} :catch_76
    .catchall {:try_start_3 .. :try_end_38} :catchall_73

    .line 57
    :try_start_38
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 59
    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_66
    .catchall {:try_start_38 .. :try_end_3d} :catchall_60

    .line 62
    const/16 p2, 0x1000

    .line 64
    :try_start_3f
    new-array p2, p2, [B

    .line 66
    :goto_41
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    .line 69
    move-result p3

    .line 70
    const/4 v0, -0x1

    .line 71
    if-eq p3, v0, :cond_4d

    .line 73
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, p2, v0, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 77
    goto :goto_41

    .line 78
    :cond_4d
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 81
    move-result-object p2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_51} :catch_5c
    .catchall {:try_start_3f .. :try_end_51} :catchall_58

    .line 82
    invoke-static {p0}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 85
    invoke-static {p1}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 88
    return-object p2

    .line 89
    :catchall_58
    move-exception p2

    .line 90
    move-object v1, p0

    .line 91
    move-object p0, p2

    .line 92
    goto :goto_85

    .line 93
    :catch_5c
    move-exception p2

    .line 94
    move-object v1, p0

    .line 95
    move-object p0, p2

    .line 96
    goto :goto_78

    .line 97
    :catchall_60
    move-exception p1

    .line 98
    move-object v4, v1

    .line 99
    move-object v1, p0

    .line 100
    move-object p0, p1

    .line 101
    move-object p1, v4

    .line 102
    goto :goto_85

    .line 103
    :catch_66
    move-exception p1

    .line 104
    move-object v4, v1

    .line 105
    move-object v1, p0

    .line 106
    move-object p0, p1

    .line 107
    move-object p1, v4

    .line 108
    goto :goto_78

    .line 109
    :cond_6c
    invoke-static {v1}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 112
    invoke-static {v1}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 115
    goto :goto_81

    .line 116
    :catchall_73
    move-exception p0

    .line 117
    move-object p1, v1

    .line 118
    goto :goto_85

    .line 119
    :catch_76
    move-exception p0

    .line 120
    move-object p1, v1

    .line 121
    :goto_78
    :try_start_78
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_84

    .line 124
    invoke-static {v1}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 127
    invoke-static {p1}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 130
    :goto_81
    const-string p0, ""

    .line 132
    return-object p0

    .line 133
    :catchall_84
    move-exception p0

    .line 134
    :goto_85
    invoke-static {v1}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 137
    invoke-static {p1}, Lcom/miui/privacypolicy/FileUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 140
    throw p0
.end method

.method private static setConnectionParametersForRequest(Ljava/net/HttpURLConnection;Lcom/miui/privacypolicy/NetUtils$HttpMethod;Ljava/util/Map;Lorg/json/JSONObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/miui/privacypolicy/NetUtils$HttpMethod;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "2dcd9s0c-ad3f-2fas-0l3a-abzo301jd0s9"

    .line 3
    invoke-static {p2, v0}, Lcom/miui/privacypolicy/NetUtils;->getParamsSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "sign"

    .line 9
    invoke-virtual {p0, v1, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v0, "timestamp"

    .line 14
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p2

    .line 18
    check-cast p2, Ljava/lang/String;

    .line 20
    invoke-virtual {p0, v0, p2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string p2, "source"

    .line 25
    const-string v0, "sdk"

    .line 27
    invoke-virtual {p0, p2, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object p2, Lcom/miui/privacypolicy/NetUtils$1;->$SwitchMap$com$miui$privacypolicy$NetUtils$HttpMethod:[I

    .line 32
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 35
    move-result p1

    .line 36
    aget p1, p2, p1

    .line 38
    const/4 p2, 0x1

    .line 39
    if-eq p1, p2, :cond_4e

    .line 41
    const/4 p2, 0x2

    .line 42
    if-eq p1, p2, :cond_48

    .line 44
    const/4 p2, 0x3

    .line 45
    if-eq p1, p2, :cond_3f

    .line 47
    const/4 p2, 0x4

    .line 48
    if-ne p1, p2, :cond_37

    .line 50
    const-string p1, "PUT"

    .line 52
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 55
    goto :goto_53

    .line 56
    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 58
    const-string p1, "Unknown method type."

    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0

    .line 64
    :cond_3f
    const-string p1, "POST"

    .line 66
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 69
    invoke-static {p0, p3}, Lcom/miui/privacypolicy/NetUtils;->addBodyIfExists(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;)V

    .line 72
    goto :goto_53

    .line 73
    :cond_48
    const-string p1, "DELETE"

    .line 75
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 78
    goto :goto_53

    .line 79
    :cond_4e
    const-string p1, "GET"

    .line 81
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 84
    :goto_53
    return-void
.end method
