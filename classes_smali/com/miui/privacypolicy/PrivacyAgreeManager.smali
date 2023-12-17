.class public Lcom/miui/privacypolicy/PrivacyAgreeManager;
.super Ljava/lang/Object;
.source "PrivacyAgreeManager.java"


# static fields
.field private static final REQUEST_URL:Ljava/lang/String; = "https://data.sec.miui.com/privacy/agree/v1"

.field private static final TAG:Ljava/lang/String; = "Privacy_AgreeManager"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static handlePrivacyAgreeTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    .line 1
    const-string v0, "Privacy_AgreeManager"

    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_11

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 17
    move-result-object p4

    .line 18
    :cond_11
    const-string v2, "pkg"

    .line 20
    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string p4, "policyName"

    .line 25
    invoke-virtual {v1, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string p4, "idContent"

    .line 30
    invoke-virtual {v1, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object p2, Lcom/miui/privacypolicy/NetUtils;->MIUI_VERSION_NAME:Ljava/lang/String;

    .line 35
    const-string p4, "miuiVersion"

    .line 37
    invoke-virtual {v1, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_31

    .line 46
    invoke-static {p0}, Lcom/miui/privacypolicy/PackageUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    .line 49
    move-result-object p5

    .line 50
    :cond_31
    const-string p2, "apkVersion"

    .line 52
    invoke-virtual {v1, p2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string p2, "privacy_temp_update_version"

    .line 57
    invoke-static {p0, p2, p1}, Lcom/miui/privacypolicy/FileUtils;->readData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object p4

    .line 61
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    move-result p5

    .line 65
    if-eqz p5, :cond_44

    .line 67
    const-string p4, ""

    .line 69
    :cond_44
    const-string p5, "policyVersion"

    .line 71
    invoke-virtual {v1, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 77
    move-result-object p4

    .line 78
    invoke-virtual {p4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 81
    move-result-object p4

    .line 82
    const-string p5, "language"

    .line 84
    invoke-virtual {v1, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 90
    move-result-object p4

    .line 91
    invoke-virtual {p4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 94
    move-result-object p4

    .line 95
    const-string p5, "region"

    .line 97
    invoke-virtual {v1, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string p4, "timestamp"

    .line 102
    invoke-virtual {v1, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance p3, Lorg/json/JSONObject;

    .line 107
    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 110
    :try_start_6d
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 113
    move-result-object p4

    .line 114
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 117
    move-result-object p4

    .line 118
    :goto_75
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    move-result p5

    .line 122
    if-eqz p5, :cond_97

    .line 124
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    move-result-object p5

    .line 128
    check-cast p5, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Ljava/lang/String;

    .line 136
    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 139
    move-result-object p5

    .line 140
    check-cast p5, Ljava/lang/String;

    .line 142
    invoke-virtual {p3, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_90} :catch_91

    .line 145
    goto :goto_75

    .line 146
    :catch_91
    move-exception p4

    .line 147
    const-string p5, "build jsonObject error, "

    .line 149
    invoke-static {v0, p5, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    :cond_97
    sget-object p4, Lcom/miui/privacypolicy/NetUtils$HttpMethod;->POST:Lcom/miui/privacypolicy/NetUtils$HttpMethod;

    .line 154
    const-string p5, "https://data.sec.miui.com/privacy/agree/v1"

    .line 156
    invoke-static {v1, p5, p4, p3}, Lcom/miui/privacypolicy/NetUtils;->request(Ljava/util/Map;Ljava/lang/String;Lcom/miui/privacypolicy/NetUtils$HttpMethod;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 159
    move-result-object p4

    .line 160
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 163
    move-result p5

    .line 164
    const-string v1, "privacy_agree_error"

    .line 166
    if-eqz p5, :cond_b0

    .line 168
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 171
    move-result-object p2

    .line 172
    invoke-static {p2, p0, v1, p1}, Lcom/miui/privacypolicy/FileUtils;->saveData(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 p0, -0x2

    .line 176
    return p0

    .line 177
    :cond_b0
    :try_start_b0
    new-instance p5, Lorg/json/JSONObject;

    .line 179
    invoke-direct {p5, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 182
    const-string p4, "code"

    .line 184
    invoke-virtual {p5, p4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 187
    move-result p4

    .line 188
    const-string v2, "message"

    .line 190
    invoke-virtual {p5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    move-result-object v2

    .line 194
    const/16 v3, 0xc8

    .line 196
    if-ne p4, v3, :cond_fc

    .line 198
    const-string p4, "success"

    .line 200
    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    move-result p4

    .line 204
    if-eqz p4, :cond_fc

    .line 206
    const-string p4, "data"

    .line 208
    invoke-virtual {p5, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    move-result-object p4

    .line 212
    new-instance p5, Lorg/json/JSONObject;

    .line 214
    invoke-direct {p5, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 217
    const-string p4, "latestPolicyVersion"

    .line 219
    invoke-virtual {p5, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    move-result-object p4

    .line 223
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 226
    move-result p5

    .line 227
    if-nez p5, :cond_fc

    .line 229
    const-string p5, "privacy_version"

    .line 231
    invoke-static {p4, p0, p5, p1}, Lcom/miui/privacypolicy/FileUtils;->saveData(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {p0, v1, p1}, Lcom/miui/privacypolicy/FileUtils;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    invoke-static {p0, p2, p1}, Lcom/miui/privacypolicy/FileUtils;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 240
    const-string p2, "privacy_update"

    .line 242
    invoke-static {p0, p2, p1}, Lcom/miui/privacypolicy/FileUtils;->deleteFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_f4} :catch_f6

    .line 245
    const/4 p0, 0x1

    .line 246
    return p0

    .line 247
    :catch_f6
    move-exception p2

    .line 248
    const-string p4, "handlePrivacyAgreeTask error, "

    .line 250
    invoke-static {v0, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    :cond_fc
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 256
    move-result-object p2

    .line 257
    invoke-static {p2, p0, v1, p1}, Lcom/miui/privacypolicy/FileUtils;->saveData(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 p0, -0x3

    .line 261
    return p0
.end method
