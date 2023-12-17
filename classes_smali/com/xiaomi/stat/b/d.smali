.class public Lcom/xiaomi/stat/b/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/lang/String; = " https://data.mistat.xiaomi.com/idservice/deviceid_get"

.field private static final c:Ljava/lang/String; = "DeviceIdManager"

.field private static final d:Ljava/lang/String; = "ia"

.field private static final e:Ljava/lang/String; = "ib"

.field private static final f:Ljava/lang/String; = "md"

.field private static final g:Ljava/lang/String; = "mm"

.field private static final h:Ljava/lang/String; = "bm"

.field private static final i:Ljava/lang/String; = "aa"

.field private static final j:Ljava/lang/String; = "ai"

.field private static final k:Ljava/lang/String; = "oa"

.field private static final l:I = 0x0

.field private static final m:I = 0x1

.field private static final n:I = 0x2

.field private static final o:I = 0x3

.field private static final p:I = 0x4

.field private static final q:I = 0x5

.field private static final r:I = 0x6

.field private static final s:I = 0x7

.field private static final t:I = 0x1

.field private static final u:Ljava/lang/String; = "pref_key_device_id"

.field private static final v:Ljava/lang/String; = "pref_key_restore_ts"

.field private static w:Lcom/xiaomi/stat/b/d;


# instance fields
.field private x:Ljava/lang/String;

.field private y:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/xiaomi/stat/b/d;->a:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/xiaomi/stat/b/d;->y:Landroid/content/Context;

    .line 10
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "pref_key_device_id"

    .line 16
    const-string v2, ""

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/xiaomi/stat/b/d;->x:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static a()Lcom/xiaomi/stat/b/d;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/b/d;->w:Lcom/xiaomi/stat/b/d;

    if-nez v0, :cond_17

    .line 2
    sget-object v0, Lcom/xiaomi/stat/b/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/xiaomi/stat/b/d;->w:Lcom/xiaomi/stat/b/d;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcom/xiaomi/stat/b/d;

    invoke-direct {v1}, Lcom/xiaomi/stat/b/d;-><init>()V

    sput-object v1, Lcom/xiaomi/stat/b/d;->w:Lcom/xiaomi/stat/b/d;

    .line 5
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 6
    :cond_17
    :goto_17
    sget-object v0, Lcom/xiaomi/stat/b/d;->w:Lcom/xiaomi/stat/b/d;

    return-object v0
.end method

.method private e()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "DeviceIdManager"

    .line 7
    if-eqz v0, :cond_39

    .line 9
    invoke-static {}, Lcom/xiaomi/stat/b;->b()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_f

    .line 15
    goto :goto_39

    .line 16
    :cond_f
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_33

    .line 22
    const/4 v0, 0x3

    .line 23
    const/4 v1, 0x1

    .line 24
    :goto_17
    if-gt v1, v0, :cond_38

    .line 26
    invoke-direct {p0}, Lcom/xiaomi/stat/b/d;->f()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_38

    .line 36
    if-ne v1, v0, :cond_26

    .line 38
    goto :goto_38

    .line 39
    :cond_26
    const-wide/16 v2, 0x2710

    .line 41
    :try_start_28
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 44
    goto :goto_30

    .line 45
    :catch_2c
    move-exception v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    :goto_30
    add-int/lit8 v1, v1, 0x1

    .line 51
    goto :goto_17

    .line 52
    :cond_33
    const-string v0, "network is not connected!"

    .line 54
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_38
    :goto_38
    return-void

    .line 58
    :cond_39
    :goto_39
    const-string v0, "request abort: statistic or network is not enabled"

    .line 60
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private f()Ljava/lang/String;
    .registers 8

    .line 1
    const-string v0, "DeviceIdManager"

    .line 3
    :try_start_2
    invoke-static {}, Lcom/xiaomi/stat/d/k;->b()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_c

    .line 9
    const-string v1, "http://test-idservice.data.mistat.xiaomi.com/deviceid_get"

    .line 11
    sput-object v1, Lcom/xiaomi/stat/b/d;->b:Ljava/lang/String;

    .line 13
    :cond_c
    sget-object v1, Lcom/xiaomi/stat/b/d;->b:Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Lcom/xiaomi/stat/b/d;->h()Ljava/util/HashMap;

    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-static {v1, v2, v3}, Lcom/xiaomi/stat/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_64

    .line 33
    new-instance v2, Lorg/json/JSONObject;

    .line 35
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v1, "timestamp"

    .line 40
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 43
    move-result-wide v4

    .line 44
    const-string v1, "code"

    .line 46
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 49
    move-result v1

    .line 50
    const-string v6, "device_id"

    .line 52
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    if-ne v1, v3, :cond_64

    .line 58
    iput-object v2, p0, Lcom/xiaomi/stat/b/d;->x:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    .line 63
    move-result-object v1

    .line 64
    iget-object v3, p0, Lcom/xiaomi/stat/b/d;->x:Ljava/lang/String;

    .line 66
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_51

    .line 72
    const-string v3, "pref_key_device_id"

    .line 74
    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v2, "pref_key_restore_ts"

    .line 79
    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;J)V

    .line 82
    :cond_51
    invoke-static {v4, v5}, Lcom/xiaomi/stat/d/r;->a(J)V

    .line 85
    iget-object v0, p0, Lcom/xiaomi/stat/b/d;->x:Ljava/lang/String;
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_56} :catch_5e
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_56} :catch_57

    .line 87
    return-object v0

    .line 88
    :catch_57
    move-exception v1

    .line 89
    const-string v2, "[getDeviceIdLocal JSONException]:"

    .line 91
    invoke-static {v0, v2, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    goto :goto_64

    .line 95
    :catch_5e
    move-exception v1

    .line 96
    const-string v2, "[getDeviceIdLocal IOException]:"

    .line 98
    invoke-static {v0, v2, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    :cond_64
    :goto_64
    iget-object v0, p0, Lcom/xiaomi/stat/b/d;->x:Ljava/lang/String;

    .line 103
    return-object v0
.end method

.method private g()[Ljava/lang/String;
    .registers 4

    .line 1
    const/16 v0, 0x8

    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->y:Landroid/content/Context;

    .line 7
    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 14
    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->y:Landroid/content/Context;

    .line 16
    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    aput-object v1, v0, v2

    .line 23
    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->y:Landroid/content/Context;

    .line 25
    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->h(Landroid/content/Context;)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x2

    .line 30
    aput-object v1, v0, v2

    .line 32
    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->y:Landroid/content/Context;

    .line 34
    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->k(Landroid/content/Context;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x3

    .line 39
    aput-object v1, v0, v2

    .line 41
    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->y:Landroid/content/Context;

    .line 43
    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->n(Landroid/content/Context;)Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    const/4 v2, 0x4

    .line 48
    aput-object v1, v0, v2

    .line 50
    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->y:Landroid/content/Context;

    .line 52
    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->q(Landroid/content/Context;)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x5

    .line 57
    aput-object v1, v0, v2

    .line 59
    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->y:Landroid/content/Context;

    .line 61
    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->p(Landroid/content/Context;)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    const/4 v2, 0x6

    .line 66
    aput-object v1, v0, v2

    .line 68
    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->y:Landroid/content/Context;

    .line 70
    invoke-static {v1}, Lcom/xiaomi/stat/b/f;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    const/4 v2, 0x7

    .line 75
    aput-object v1, v0, v2

    .line 77
    return-object v0
.end method

.method private h()Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "ai"

    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-direct {p0}, Lcom/xiaomi/stat/b/d;->g()[Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    new-instance v3, Lorg/json/JSONObject;

    .line 14
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    :try_start_12
    const-string v6, "ia"

    .line 21
    aget-object v7, v2, v5

    .line 23
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string v6, "ib"

    .line 28
    aget-object v7, v2, v4

    .line 30
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v6, "md"

    .line 35
    const/4 v7, 0x2

    .line 36
    aget-object v7, v2, v7

    .line 38
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v6, "mm"

    .line 43
    const/4 v7, 0x3

    .line 44
    aget-object v7, v2, v7

    .line 46
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v6, "bm"

    .line 51
    const/4 v7, 0x4

    .line 52
    aget-object v7, v2, v7

    .line 54
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v6, "aa"

    .line 59
    const/4 v7, 0x5

    .line 60
    aget-object v7, v2, v7

    .line 62
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const/4 v6, 0x6

    .line 66
    aget-object v6, v2, v6

    .line 68
    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v6, "oa"

    .line 73
    const/4 v7, 0x7

    .line 74
    aget-object v2, v2, v7

    .line 76
    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_4e} :catch_4f

    .line 79
    goto :goto_53

    .line 80
    :catch_4f
    move-exception v2

    .line 81
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    :goto_53
    const-string v2, "[pay-load]:"

    .line 86
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v2

    .line 101
    const-string v6, "DeviceIdManager"

    .line 103
    invoke-static {v6, v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-array v2, v5, [B

    .line 108
    :try_start_6b
    invoke-static {}, Lcom/xiaomi/stat/b/i;->a()Lcom/xiaomi/stat/b/i;

    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 115
    move-result-object v3

    .line 116
    const-string v6, "utf-8"

    .line 118
    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v5, v3}, Lcom/xiaomi/stat/b/i;->a([B)[B

    .line 125
    move-result-object v2
    :try_end_7d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6b .. :try_end_7d} :catch_7e

    .line 126
    goto :goto_82

    .line 127
    :catch_7e
    move-exception v3

    .line 128
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    :goto_82
    const/4 v3, 0x0

    .line 132
    if-eqz v2, :cond_91

    .line 134
    invoke-static {v2, v4}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 141
    move-result-object v2

    .line 142
    invoke-static {v2}, Lcom/xiaomi/stat/d/d;->a([B)Ljava/lang/String;

    .line 145
    move-result-object v3

    .line 146
    :cond_91
    const-string v2, "sv"

    .line 148
    const-string v4, "3.0.16"

    .line 150
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    if-nez v3, :cond_9c

    .line 155
    const-string v3, ""

    .line 157
    :cond_9c
    const-string v2, "p"

    .line 159
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {}, Lcom/xiaomi/stat/ak;->b()Ljava/lang/String;

    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v0, "gzip"

    .line 171
    const-string v2, "0"

    .line 173
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-static {}, Lcom/xiaomi/stat/b/i;->a()Lcom/xiaomi/stat/b/i;

    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/xiaomi/stat/b/i;->c()Ljava/lang/String;

    .line 183
    move-result-object v0

    .line 184
    const-string v2, "fc"

    .line 186
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {}, Lcom/xiaomi/stat/b/i;->a()Lcom/xiaomi/stat/b/i;

    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/xiaomi/stat/b/i;->b()Ljava/lang/String;

    .line 196
    move-result-object v0

    .line 197
    const-string v2, "sid"

    .line 199
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-object v1
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_7

    .line 7
    invoke-static {}, Lcom/xiaomi/stat/d/e;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    .line 8
    :cond_7
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/stat/d/e;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_1a

    :cond_16
    invoke-static {}, Lcom/xiaomi/stat/d/e;->d()Ljava/lang/String;

    move-result-object p1

    :goto_1a
    return-object p1
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .registers 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_11

    .line 8
    invoke-virtual {p0}, Lcom/xiaomi/stat/b/d;->d()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_17

    .line 14
    invoke-direct {p0}, Lcom/xiaomi/stat/b/d;->e()V

    .line 17
    goto :goto_17

    .line 18
    :cond_11
    invoke-static {}, Lcom/xiaomi/stat/d/e;->d()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/xiaomi/stat/b/d;->x:Ljava/lang/String;

    .line 24
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/xiaomi/stat/b/d;->x:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 26
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :catchall_1b
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/b/d;->x:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    invoke-direct {p0}, Lcom/xiaomi/stat/b/d;->f()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/xiaomi/stat/b/d;->x:Ljava/lang/String;

    .line 16
    return-object v0
.end method

.method public d()Z
    .registers 4

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pref_key_device_id"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_23

    .line 18
    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->x:Ljava/lang/String;

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_23

    .line 26
    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->x:Ljava/lang/String;

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_23

    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_24

    .line 36
    :cond_23
    const/4 v0, 0x0

    .line 37
    :goto_24
    return v0
.end method
