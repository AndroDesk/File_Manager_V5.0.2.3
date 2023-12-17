.class public final Lv1/d;
.super Ljava/lang/Object;
.source "KssDownloadFile.java"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$URL;->URL_GALLERY_BASE:Ljava/lang/String;

    .line 8
    const-string v2, "/mic/v1/gallery"

    .line 10
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lv1/d;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)Lv1/b;
    .registers 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lv1/d;->a:Ljava/lang/String;

    .line 8
    const-string v2, "/user/proxies"

    .line 10
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    new-array v2, v1, [Ljava/lang/Object;

    .line 17
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 28
    iget-object v4, p1, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 30
    const/4 v5, 0x2

    .line 31
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 34
    move-result-object v5

    .line 35
    invoke-static {v0, v4, v5}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->encodeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v4

    .line 39
    const-string v5, "type"

    .line 41
    invoke-direct {v3, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const/4 v3, 0x0

    .line 48
    move v4, v1

    .line 49
    move-object v5, v3

    .line 50
    :goto_31
    const/4 v6, 0x3

    .line 51
    const-string v7, "data"

    .line 53
    if-ge v4, v6, :cond_ba

    .line 55
    if-lez v4, :cond_4c

    .line 57
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    .line 59
    iget-object v6, p1, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 61
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 64
    move-result-object v8

    .line 65
    invoke-static {v0, v6, v8}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->encodeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v6

    .line 69
    const-string v8, "retry"

    .line 71
    invoke-direct {v5, v8, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_4c
    sget-object v5, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;->GET:Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;

    .line 79
    iget-object v6, p1, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 81
    invoke-static {v5, v0, v2, v6}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->getSignature(Lcom/xiaomi/micloudsdk/request/utils/HttpUtils$HttpMethod;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v5

    .line 85
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    .line 87
    const-string v8, "signature"

    .line 89
    invoke-direct {v6, v8, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-static {v0, v2}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->appendUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 98
    move-result-object v5

    .line 99
    invoke-static {}, Lcom/xiaomi/micloudsdk/request/utils/Request;->getRequestEnv()Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;

    .line 102
    move-result-object v6

    .line 103
    invoke-interface {v6}, Lcom/xiaomi/micloudsdk/request/utils/Request$RequestEnv;->queryEncryptedAccountName()Ljava/lang/String;

    .line 106
    move-result-object v6

    .line 107
    invoke-static {p0, v6, p1}, Lcom/xiaomi/micloudsdk/request/utils/HttpUtils;->getCookies(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)Lorg/apache/http/Header;

    .line 110
    move-result-object v6

    .line 111
    iget-object v8, p1, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    .line 113
    invoke-static {v5, v6, v8}, Lcom/xiaomi/micloudsdk/request/utils/CloudRequestHelper;->httpGetRequestWithDecodeData(Ljava/lang/String;Lorg/apache/http/Header;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    move-result-object v5

    .line 117
    new-instance v6, Lorg/json/JSONObject;

    .line 119
    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    const-string v5, "code"

    .line 124
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 127
    move-result v8

    .line 128
    if-nez v8, :cond_82

    .line 130
    goto :goto_8a

    .line 131
    :cond_82
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 134
    move-result v5

    .line 135
    if-nez v5, :cond_8a

    .line 137
    const/4 v5, 0x1

    .line 138
    goto :goto_8b

    .line 139
    :cond_8a
    :goto_8a
    move v5, v1

    .line 140
    :goto_8b
    if-eqz v5, :cond_8f

    .line 142
    move-object v5, v6

    .line 143
    goto :goto_ba

    .line 144
    :cond_8f
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 147
    move-result v5

    .line 148
    const-wide/16 v8, 0x0

    .line 150
    if-eqz v5, :cond_a8

    .line 152
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 155
    move-result-object v5

    .line 156
    const-string v7, "retryAfter"

    .line 158
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 161
    move-result v10

    .line 162
    if-eqz v10, :cond_a8

    .line 164
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 167
    move-result-wide v10

    .line 168
    goto :goto_a9

    .line 169
    :cond_a8
    move-wide v10, v8

    .line 170
    :goto_a9
    cmp-long v5, v10, v8

    .line 172
    if-lez v5, :cond_b5

    .line 174
    :try_start_ad
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b0
    .catch Ljava/lang/InterruptedException; {:try_start_ad .. :try_end_b0} :catch_b1

    .line 177
    goto :goto_b5

    .line 178
    :catch_b1
    move-exception v5

    .line 179
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    :cond_b5
    :goto_b5
    add-int/lit8 v4, v4, 0x1

    .line 184
    move-object v5, v6

    .line 185
    goto/16 :goto_31

    .line 187
    :cond_ba
    :goto_ba
    new-instance p0, Lorg/json/JSONObject;

    .line 189
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 192
    const-string p1, "stat"

    .line 194
    const-string v0, "OK"

    .line 196
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 203
    move-result-object p1

    .line 204
    const-string v0, "list"

    .line 206
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 209
    move-result-object p1

    .line 210
    const-string v0, "proxies"

    .line 212
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    move-result-object p0

    .line 216
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 219
    move-result-object p0

    .line 220
    invoke-static {p0}, La/b;->T(Ljava/lang/String;)[Ljava/lang/String;

    .line 223
    move-result-object p0

    .line 224
    array-length p1, p0

    .line 225
    if-nez p1, :cond_e3

    .line 227
    return-object v3

    .line 228
    :cond_e3
    new-instance p1, Lv1/b;

    .line 230
    invoke-direct {p1}, Lv1/b;-><init>()V

    .line 233
    invoke-virtual {p1, p0}, Lv1/b;->b([Ljava/lang/String;)V

    .line 236
    return-object p1
.end method

.method public static b(Landroid/content/Context;)Lcn/kuaipan/kss/KssDef$NetState;
    .registers 2

    .line 1
    const-string v0, "connectivity"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 9
    if-eqz p0, :cond_33

    .line 11
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_33

    .line 17
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1b

    .line 27
    goto :goto_33

    .line 28
    :cond_1b
    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 36
    move-result-object p0

    .line 37
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 39
    if-eq p0, v0, :cond_30

    .line 41
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    .line 43
    if-ne p0, v0, :cond_2d

    .line 45
    goto :goto_30

    .line 46
    :cond_2d
    sget-object p0, Lcn/kuaipan/kss/KssDef$NetState;->MOBILE:Lcn/kuaipan/kss/KssDef$NetState;

    .line 48
    return-object p0

    .line 49
    :cond_30
    :goto_30
    sget-object p0, Lcn/kuaipan/kss/KssDef$NetState;->Wifi:Lcn/kuaipan/kss/KssDef$NetState;

    .line 51
    return-object p0

    .line 52
    :cond_33
    :goto_33
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method
