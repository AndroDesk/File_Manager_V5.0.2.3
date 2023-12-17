.class public Lcom/miui/privacypolicy/PrivacyUpdateManager;
.super Ljava/lang/Object;
.source "PrivacyUpdateManager.java"


# static fields
.field private static final REQUEST_URL:Ljava/lang/String; = "https://data.sec.miui.com/privacy/get/v1"

.field private static final TAG:Ljava/lang/String; = "Privacy_UpdateManager"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method private static compareVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_16

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_e

    .line 14
    goto :goto_16

    .line 15
    :cond_e
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 18
    move-result p0

    .line 19
    if-gez p0, :cond_15

    .line 21
    goto :goto_16

    .line 22
    :cond_15
    const/4 v1, 0x0

    .line 23
    :cond_16
    :goto_16
    return v1
.end method

.method public static handlePrivacyUpdateTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "_privacy_update_time"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-wide/16 v3, 0x0

    .line 24
    invoke-static {v0, v1, v3, v4}, Lcom/miui/privacypolicy/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    .line 27
    move-result-wide v0

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    move-result-wide v3

    .line 32
    sub-long/2addr v3, v0

    .line 33
    const-wide/32 v0, 0x5265c00

    .line 36
    cmp-long v0, v3, v0

    .line 38
    const-string v1, "version"

    .line 40
    const-string v3, "privacy_update"

    .line 42
    const-string v4, "privacy_version"

    .line 44
    const-string v5, "Privacy_UpdateManager"

    .line 46
    if-gez v0, :cond_59

    .line 48
    invoke-static {p0, v4, p1}, Lcom/miui/privacypolicy/FileUtils;->readData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    invoke-static {p0, v3, p1}, Lcom/miui/privacypolicy/FileUtils;->readData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_53

    .line 62
    :try_start_3d
    new-instance p1, Lorg/json/JSONObject;

    .line 64
    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-static {p2, p1}, Lcom/miui/privacypolicy/PrivacyUpdateManager;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    move-result p1
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4a} :catch_4d

    .line 75
    if-eqz p1, :cond_53

    .line 77
    return-object p0

    .line 78
    :catch_4d
    move-exception p0

    .line 79
    const-string p1, "handlePrivacyUpdateTask parse temp version error, "

    .line 81
    invoke-static {v5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :cond_53
    const/4 p0, -0x5

    .line 85
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :cond_59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 93
    move-result-object v0

    .line 94
    invoke-static {p1, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    move-result-wide v6

    .line 102
    invoke-static {v0, v2, v6, v7}, Lcom/miui/privacypolicy/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 105
    new-instance v0, Ljava/util/HashMap;

    .line 107
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_77

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 119
    move-result-object p2

    .line 120
    :cond_77
    const-string v2, "pkg"

    .line 122
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string p2, "policyName"

    .line 127
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    move-result-wide v6

    .line 134
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 137
    move-result-object p2

    .line 138
    const-string v2, "timestamp"

    .line 140
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance p2, Lorg/json/JSONObject;

    .line 145
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 148
    :try_start_93
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 151
    move-result-object v2

    .line 152
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object v2

    .line 156
    :goto_9b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_bd

    .line 162
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v6

    .line 166
    check-cast v6, Ljava/util/Map$Entry;

    .line 168
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 171
    move-result-object v7

    .line 172
    check-cast v7, Ljava/lang/String;

    .line 174
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 177
    move-result-object v6

    .line 178
    check-cast v6, Ljava/lang/String;

    .line 180
    invoke-virtual {p2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_b6} :catch_b7

    .line 183
    goto :goto_9b

    .line 184
    :catch_b7
    move-exception v2

    .line 185
    const-string v6, "build jsonObject error, "

    .line 187
    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    :cond_bd
    sget-object v2, Lcom/miui/privacypolicy/NetUtils$HttpMethod;->POST:Lcom/miui/privacypolicy/NetUtils$HttpMethod;

    .line 192
    const-string v6, "https://data.sec.miui.com/privacy/get/v1"

    .line 194
    invoke-static {v0, v6, v2, p2}, Lcom/miui/privacypolicy/NetUtils;->request(Ljava/util/Map;Ljava/lang/String;Lcom/miui/privacypolicy/NetUtils$HttpMethod;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 197
    move-result-object p2

    .line 198
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_d1

    .line 204
    const/4 p0, -0x2

    .line 205
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 208
    move-result-object p0

    .line 209
    return-object p0

    .line 210
    :cond_d1
    :try_start_d1
    new-instance v0, Lorg/json/JSONObject;

    .line 212
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 215
    const-string p2, "code"

    .line 217
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 220
    move-result p2

    .line 221
    const-string v2, "message"

    .line 223
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    move-result-object v2

    .line 227
    const/16 v6, 0xc8

    .line 229
    if-ne p2, v6, :cond_116

    .line 231
    const-string p2, "success"

    .line 233
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    move-result p2

    .line 237
    if-eqz p2, :cond_116

    .line 239
    const-string p2, "data"

    .line 241
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    move-result-object p2

    .line 245
    new-instance v0, Lorg/json/JSONObject;

    .line 247
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    move-result-object v0

    .line 254
    invoke-static {p0, v4, p1}, Lcom/miui/privacypolicy/FileUtils;->readData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    move-result-object v1

    .line 258
    invoke-static {v1, v0}, Lcom/miui/privacypolicy/PrivacyUpdateManager;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_116

    .line 264
    invoke-static {p2, p0, v3, p1}, Lcom/miui/privacypolicy/FileUtils;->saveData(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "privacy_temp_update_version"

    .line 269
    invoke-static {v0, p0, v1, p1}, Lcom/miui/privacypolicy/FileUtils;->saveData(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_10f} :catch_110

    .line 272
    return-object p2

    .line 273
    :catch_110
    move-exception p0

    .line 274
    const-string p1, "handlePrivacyRevokeTask error, "

    .line 276
    invoke-static {v5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    :cond_116
    const/4 p0, -0x3

    .line 280
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 283
    move-result-object p0

    .line 284
    return-object p0
.end method
