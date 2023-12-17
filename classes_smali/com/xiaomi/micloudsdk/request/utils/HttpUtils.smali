.class public Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field public static final HTTP_REQUEST_TIMEOUT_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "HttpUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_67

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "?"

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_12

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_12
    const/4 p0, 0x0

    .line 20
    :goto_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    move-result v1

    .line 24
    if-ge p0, v1, :cond_48

    .line 26
    if-eqz p0, :cond_20

    .line 28
    const-string v1, "&"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :cond_20
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 39
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lorg/apache/http/NameValuePair;

    .line 49
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, "="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, "UTF-8"

    .line 63
    invoke-static {v2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    add-int/lit8 p0, p0, 0x1

    .line 72
    goto :goto_13

    .line 73
    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    sget-boolean p1, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->DBG:Z

    .line 79
    if-eqz p1, :cond_66

    .line 81
    const-string p1, "result url length is: "

    .line 83
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 90
    move-result v0

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    const-string v0, "HttpUtils"

    .line 100
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_66
    return-object p0

    .line 104
    :cond_67
    new-instance p0, Ljava/lang/NullPointerException;

    .line 106
    const-string p1, "origin is not allowed null"

    .line 108
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 111
    throw p0
.end method

.method public static getCookies(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)Lorg/apache/http/Header;
    .registers 3

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, v0, p1}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->getCookies(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)Lorg/apache/http/Header;

    move-result-object p0

    return-object p0
.end method

.method public static getCookies(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)Lorg/apache/http/Header;
    .registers 3

    const-string p0, "serviceToken="

    .line 1
    invoke-static {p0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2
    iget-object p2, p2, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->authToken:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_19

    const-string p2, "; cUserId="

    .line 4
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_19
    new-instance p1, Lorg/apache/http/message/BasicHeader;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Cookie"

    invoke-direct {p1, p2, p0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public static getHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 4

    .line 1
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/CloudHttpClient;->newInstance()Lcom/xiaomi/micloudsdk/request/CloudHttpClient;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x7530

    .line 11
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 14
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 17
    const-wide/16 v2, 0x7530

    .line 19
    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 22
    return-object v0
.end method

.method public static getSignature(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    .line 3
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 6
    if-eqz p2, :cond_23

    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p2

    .line 12
    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_23

    .line 18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 24
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    goto :goto_b

    .line 36
    :cond_23
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0, p1, v0, p3}, Lcom/xiaomi/micloudsdk/utils/CloudCoder;->generateSignature(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public static isHttpStatusCodeOKButCloudResponseCodeError(ILjava/lang/String;)Z
    .registers 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_8

    .line 4
    :try_start_3
    const-string p1, ""

    .line 6
    goto :goto_8

    .line 7
    :catch_6
    move-exception p1

    .line 8
    goto :goto_14

    .line 9
    :cond_8
    :goto_8
    new-instance v1, Lorg/json/JSONObject;

    .line 11
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    const-string p1, "code"

    .line 16
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 19
    move-result v0
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_13} :catch_6

    .line 20
    goto :goto_1b

    .line 21
    :goto_14
    const-string v1, "HttpUtils"

    .line 23
    const-string v2, "isHttpStatusCodeOKButCloudResponseCodeError: "

    .line 25
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    :goto_1b
    const/16 p1, 0xc8

    .line 30
    if-ne p0, p1, :cond_23

    .line 32
    if-eqz v0, :cond_23

    .line 34
    const/4 p0, 0x1

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    const/4 p0, 0x0

    .line 37
    :goto_24
    return p0
.end method
