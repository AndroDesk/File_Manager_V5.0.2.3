.class public Lcom/xiaomi/onetrack/b/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "l"

.field private static final b:Ljava/lang/String; = "CommonConfigUpdater"

.field private static final c:Ljava/lang/String; = "t"

.field private static final d:Ljava/lang/String; = "levels"

.field private static final e:Ljava/lang/String; = "Android"

.field private static f:Ljava/util/concurrent/ConcurrentHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:J = 0xa4cb800L


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/xiaomi/onetrack/b/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 1

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/b/f;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/b/f;-><init>()V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 5

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 3
    :cond_7
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "code"

    .line 4
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_6c

    const-string p0, "hash"

    .line 5
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "data"

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3b

    const-string v1, "regionUrl"

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 8
    invoke-static {}, Lcom/xiaomi/onetrack/util/x;->a()Lcom/xiaomi/onetrack/util/x;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/onetrack/util/x;->a(Lorg/json/JSONObject;)V

    .line 9
    :cond_31
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->d(Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/aa;->c(Ljava/lang/String;)V

    .line 11
    :cond_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const v2, 0x5265c00

    invoke-virtual {p0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    .line 12
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->j(J)V
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_54} :catch_55

    goto :goto_6c

    :catch_55
    move-exception p0

    const-string v0, "saveCommonCloudData: "

    .line 13
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CommonConfigUpdater"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public static b()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/b/e;->e()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-static {}, Lcom/xiaomi/onetrack/b/e;->f()V

    .line 10
    goto :goto_11

    .line 11
    :cond_a
    const-string v0, "CommonConfigUpdater"

    .line 13
    const-string v1, "CommonConfigUpdater Does not meet prerequisites for request"

    .line 15
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :goto_11
    return-void
.end method

.method public static c()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/xiaomi/onetrack/b/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 9
    sget-object v0, Lcom/xiaomi/onetrack/b/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    return-object v0

    .line 12
    :cond_b
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->l()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_62

    .line 22
    new-instance v1, Lorg/json/JSONObject;

    .line 24
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    const-string v0, "levels"

    .line 29
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    :goto_21
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 37
    move-result v2

    .line 38
    if-ge v1, v2, :cond_62

    .line 40
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 43
    move-result-object v2

    .line 44
    const-string v3, "l"

    .line 46
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 49
    move-result v3

    .line 50
    const-string v4, "t"

    .line 52
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 55
    move-result v2

    .line 56
    if-lez v3, :cond_48

    .line 58
    if-lez v2, :cond_48

    .line 60
    sget-object v4, Lcom/xiaomi/onetrack/b/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v3

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_4b

    .line 73
    :cond_48
    add-int/lit8 v1, v1, 0x1

    .line 75
    goto :goto_21

    .line 76
    :catch_4b
    move-exception v0

    .line 77
    const-string v1, "getLevelIntervalConfig: "

    .line 79
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    const-string v1, "CommonConfigUpdater"

    .line 96
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_62
    sget-object v0, Lcom/xiaomi/onetrack/b/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_6f

    .line 107
    invoke-static {}, Lcom/xiaomi/onetrack/b/e;->g()Ljava/util/HashMap;

    .line 110
    move-result-object v0

    .line 111
    goto :goto_71

    .line 112
    :cond_6f
    sget-object v0, Lcom/xiaomi/onetrack/b/e;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 114
    :goto_71
    return-object v0
.end method

.method public static synthetic d()V
    .registers 0

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/b/e;->f()V

    .line 4
    return-void
.end method

.method private static e()Z
    .registers 7

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_f

    .line 8
    const-string v0, "CommonConfigUpdater"

    .line 10
    const-string v2, "net is not connected!"

    .line 12
    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return v1

    .line 16
    :cond_f
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->l()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v0, :cond_1b

    .line 27
    return v2

    .line 28
    :cond_1b
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->j()J

    .line 31
    move-result-wide v3

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    move-result-wide v5

    .line 36
    cmp-long v0, v3, v5

    .line 38
    if-ltz v0, :cond_35

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    move-result-wide v5

    .line 44
    sub-long/2addr v3, v5

    .line 45
    const-wide/32 v5, 0xa4cb800

    .line 48
    cmp-long v0, v3, v5

    .line 50
    if-lez v0, :cond_34

    .line 52
    goto :goto_35

    .line 53
    :cond_34
    return v1

    .line 54
    :cond_35
    :goto_35
    return v2
.end method

.method private static f()V
    .registers 5

    .line 1
    const-string v0, "CommonConfigUpdater"

    .line 3
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    new-instance v1, Ljava/util/HashMap;

    .line 12
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    :try_start_e
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->b()Landroid/content/Context;

    .line 18
    move-result-object v2

    .line 19
    const-string v3, "oa"

    .line 21
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4, v2}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v2, "ov"

    .line 34
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->d()Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v2, "ob"

    .line 43
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->c()Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v2, "ii"

    .line 52
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3c

    .line 58
    const-string v3, "1"

    .line 60
    goto :goto_3e

    .line 61
    :cond_3c
    const-string v3, "0"

    .line 63
    :goto_3e
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v2, "sv"

    .line 68
    const-string v3, "2.0.2"

    .line 70
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v2, "appVer"

    .line 75
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->c()Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v2, "av"

    .line 84
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->e()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v2, "ml"

    .line 93
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c()Ljava/lang/String;

    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v2, "re"

    .line 102
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->i()Ljava/lang/String;

    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v2, "platform"

    .line 111
    const-string v3, "Android"

    .line 113
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {}, Lcom/xiaomi/onetrack/util/x;->a()Lcom/xiaomi/onetrack/util/x;

    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lcom/xiaomi/onetrack/util/x;->d()Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    const/4 v3, 0x1

    .line 125
    invoke-static {v2, v1, v3}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    .line 128
    move-result-object v1

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    const-string v4, "url:"

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v2, " response:"

    .line 144
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object v2

    .line 154
    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {v1}, Lcom/xiaomi/onetrack/b/e;->a(Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_9f} :catch_a0

    .line 160
    goto :goto_b5

    .line 161
    :catch_a0
    move-exception v1

    .line 162
    const-string v2, "requestCloudData: "

    .line 164
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v1

    .line 179
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_b5
    return-void
.end method

.method private static g()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    const/16 v2, 0x3e8

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v1

    .line 25
    const/16 v2, 0x3a98

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v1

    .line 39
    const v2, 0xdbba0

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-object v0
.end method
