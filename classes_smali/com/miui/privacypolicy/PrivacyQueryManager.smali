.class public Lcom/miui/privacypolicy/PrivacyQueryManager;
.super Ljava/lang/Object;
.source "PrivacyQueryManager.java"


# static fields
.field private static final REQUEST_URL:Ljava/lang/String; = "https://data.sec.miui.com/privacy/latestVersion"

.field private static final TAG:Ljava/lang/String; = "Privacy_QueryManager"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static handlePrivacyQueryTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    .line 1
    const-string v0, "Privacy_QueryManager"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v2, "_privacy_query_time"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const-wide/16 v3, 0x0

    .line 22
    invoke-static {p0, v1, v3, v4}, Lcom/miui/privacypolicy/SharePreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    .line 25
    move-result-wide v3

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    move-result-wide v5

    .line 30
    sub-long/2addr v5, v3

    .line 31
    const-wide/32 v3, 0x5265c00

    .line 34
    cmp-long v1, v5, v3

    .line 36
    if-gez v1, :cond_27

    .line 38
    const/4 p0, -0x5

    .line 39
    return p0

    .line 40
    :cond_27
    invoke-static {p1, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    move-result-wide v2

    .line 48
    invoke-static {p0, v1, v2, v3}, Lcom/miui/privacypolicy/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 51
    new-instance v1, Ljava/util/HashMap;

    .line 53
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 56
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_41

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 65
    move-result-object p2

    .line 66
    :cond_41
    const-string v2, "pkg"

    .line 68
    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string p2, "policyName"

    .line 73
    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    move-result-wide v2

    .line 80
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 83
    move-result-object p2

    .line 84
    const-string v2, "timestamp"

    .line 86
    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance p2, Lorg/json/JSONObject;

    .line 91
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 94
    :try_start_5d
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 97
    move-result-object v2

    .line 98
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 101
    move-result-object v2

    .line 102
    :goto_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_87

    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Ljava/lang/String;

    .line 120
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 123
    move-result-object v3

    .line 124
    check-cast v3, Ljava/lang/String;

    .line 126
    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_80} :catch_81

    .line 129
    goto :goto_65

    .line 130
    :catch_81
    move-exception v2

    .line 131
    const-string v3, "build jsonObject error, "

    .line 133
    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    :cond_87
    sget-object v2, Lcom/miui/privacypolicy/NetUtils$HttpMethod;->POST:Lcom/miui/privacypolicy/NetUtils$HttpMethod;

    .line 138
    const-string v3, "https://data.sec.miui.com/privacy/latestVersion"

    .line 140
    invoke-static {v1, v3, v2, p2}, Lcom/miui/privacypolicy/NetUtils;->request(Ljava/util/Map;Ljava/lang/String;Lcom/miui/privacypolicy/NetUtils$HttpMethod;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 143
    move-result-object p2

    .line 144
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_97

    .line 150
    const/4 p0, -0x2

    .line 151
    return p0

    .line 152
    :cond_97
    :try_start_97
    new-instance v1, Lorg/json/JSONObject;

    .line 154
    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    const-string p2, "code"

    .line 159
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 162
    move-result p2

    .line 163
    const-string v2, "message"

    .line 165
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    move-result-object v2

    .line 169
    const/16 v3, 0xc8

    .line 171
    if-ne p2, v3, :cond_cd

    .line 173
    const-string p2, "success"

    .line 175
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    move-result p2

    .line 179
    if-eqz p2, :cond_cd

    .line 181
    const-string p2, "data"

    .line 183
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    move-result-object p2

    .line 187
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 190
    move-result v1

    .line 191
    if-nez v1, :cond_cd

    .line 193
    const-string v1, "privacy_version"

    .line 195
    invoke-static {p2, p0, v1, p1}, Lcom/miui/privacypolicy/FileUtils;->saveData(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_c5} :catch_c7

    .line 198
    const/4 p0, 0x1

    .line 199
    return p0

    .line 200
    :catch_c7
    move-exception p0

    .line 201
    const-string p1, "handlePrivacyAgreeTask error, "

    .line 203
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    :cond_cd
    const/4 p0, -0x3

    .line 207
    return p0
.end method
