.class public Lcom/miui/privacypolicy/PrivacyRevokeManager;
.super Ljava/lang/Object;
.source "PrivacyRevokeManager.java"


# static fields
.field private static final REQUEST_URL:Ljava/lang/String; = "https://data.sec.miui.com/privacy/revoke/v1"

.field private static final TAG:Ljava/lang/String; = "Privacy_RevokeManager"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static handlePrivacyRevokeTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 1
    const-string v0, "Privacy_RevokeManager"

    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_11

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    move-result-object p3

    .line 18
    :cond_11
    const-string v2, "pkg"

    .line 20
    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string p3, "policyName"

    .line 25
    invoke-virtual {v1, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string p3, "idContent"

    .line 30
    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string p2, "idStatus"

    .line 35
    const-string p3, "1"

    .line 37
    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object p2, Lcom/miui/privacypolicy/NetUtils;->MIUI_VERSION_NAME:Ljava/lang/String;

    .line 42
    const-string p3, "miuiVersion"

    .line 44
    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_38

    .line 53
    invoke-static {p0}, Lcom/miui/privacypolicy/PackageUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    .line 56
    move-result-object p4

    .line 57
    :cond_38
    const-string p2, "apkVersion"

    .line 59
    invoke-virtual {v1, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string p2, "privacy_version"

    .line 64
    invoke-static {p0, p2, p1}, Lcom/miui/privacypolicy/FileUtils;->readData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p3

    .line 68
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    move-result p4

    .line 72
    if-eqz p4, :cond_4b

    .line 74
    const-string p3, ""

    .line 76
    :cond_4b
    const-string p4, "policyVersion"

    .line 78
    invoke-virtual {v1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 84
    move-result-object p3

    .line 85
    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 88
    move-result-object p3

    .line 89
    const-string p4, "language"

    .line 91
    invoke-virtual {v1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 97
    move-result-object p3

    .line 98
    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 101
    move-result-object p3

    .line 102
    const-string p4, "region"

    .line 104
    invoke-virtual {v1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 110
    move-result-wide p3

    .line 111
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 114
    move-result-object p3

    .line 115
    const-string p4, "timestamp"

    .line 117
    invoke-virtual {v1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance p3, Lorg/json/JSONObject;

    .line 122
    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 125
    :try_start_7c
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 128
    move-result-object p4

    .line 129
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 132
    move-result-object p4

    .line 133
    :goto_84
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_a6

    .line 139
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    move-result-object v2

    .line 143
    check-cast v2, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 148
    move-result-object v3

    .line 149
    check-cast v3, Ljava/lang/String;

    .line 151
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 154
    move-result-object v2

    .line 155
    check-cast v2, Ljava/lang/String;

    .line 157
    invoke-virtual {p3, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_9f} :catch_a0

    .line 160
    goto :goto_84

    .line 161
    :catch_a0
    move-exception p4

    .line 162
    const-string v2, "build jsonObject error, "

    .line 164
    invoke-static {v0, v2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    :cond_a6
    sget-object p4, Lcom/miui/privacypolicy/NetUtils$HttpMethod;->POST:Lcom/miui/privacypolicy/NetUtils$HttpMethod;

    .line 169
    const-string v2, "https://data.sec.miui.com/privacy/revoke/v1"

    .line 171
    invoke-static {v1, v2, p4, p3}, Lcom/miui/privacypolicy/NetUtils;->request(Ljava/util/Map;Ljava/lang/String;Lcom/miui/privacypolicy/NetUtils$HttpMethod;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 174
    move-result-object p3

    .line 175
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    move-result p4

    .line 179
    if-eqz p4, :cond_b6

    .line 181
    const/4 p0, -0x2

    .line 182
    return p0

    .line 183
    :cond_b6
    :try_start_b6
    new-instance p4, Lorg/json/JSONObject;

    .line 185
    invoke-direct {p4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    const-string p3, "code"

    .line 190
    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 193
    move-result p3

    .line 194
    const-string v1, "message"

    .line 196
    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    move-result-object p4

    .line 200
    const/16 v1, 0xc8

    .line 202
    if-ne p3, v1, :cond_f0

    .line 204
    const-string p3, "success"

    .line 206
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    move-result p3

    .line 210
    if-eqz p3, :cond_f0

    .line 212
    invoke-static {p0, p2, p1}, Lcom/miui/privacypolicy/FileUtils;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 215
    const-string p2, "privacy_update"

    .line 217
    invoke-static {p0, p2, p1}, Lcom/miui/privacypolicy/FileUtils;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 220
    const-string p2, "privacy_temp_update_version"

    .line 222
    invoke-static {p0, p2, p1}, Lcom/miui/privacypolicy/FileUtils;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 225
    const-string p2, "privacy_agree_error"

    .line 227
    invoke-static {p0, p2, p1}, Lcom/miui/privacypolicy/FileUtils;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 230
    invoke-static {p0}, Lcom/miui/privacypolicy/SharePreferenceUtils;->clear(Landroid/content/Context;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_e8} :catch_ea

    .line 233
    const/4 p0, 0x1

    .line 234
    return p0

    .line 235
    :catch_ea
    move-exception p0

    .line 236
    const-string p1, "handlePrivacyRevokeTask error, "

    .line 238
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    :cond_f0
    const/4 p0, -0x3

    .line 242
    return p0
.end method
