.class public Lcom/xiaomi/stat/b/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "SecretKeyManager"

.field private static final b:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCA1ynlvPE46RxIPx6qrb8f20DU\n\rkAJgwHtD3zCEkgOjcvFY2mLl0UGnK1F0Vsh4LvImSCa8o8qYYfBguROgIXRdJGZ+\n\rk9stSV7vWmcsxphMfHEE9R4q+QWqgPBSzwyWmwmAQ7PZmHifOrEYl9t/l0YtmjnW\n\r8Zs3aL7Ap9CGse2kWwIDAQAB\r"

.field private static final c:Ljava/lang/String; = "sid"

.field private static final d:Ljava/lang/String; = "sk"

.field private static final e:Ljava/lang/String; = "rt"

.field private static final f:Ljava/lang/String; = "rc"

.field private static final g:Ljava/lang/String; = "request_history"

.field private static final h:Ljava/lang/String; = "last_aes_content"

.field private static final i:Ljava/lang/String; = "last_success_time"

.field private static final j:Ljava/lang/String; = "4ef8b4ac42dbc3f95320b73ae0edbd43"

.field private static final k:Ljava/lang/String; = "050f03d86eeafeb29cf38986462d957c"

.field private static final l:I = 0x1

.field private static final m:I = 0x2

.field private static final n:Ljava/lang/String; = "1"

.field private static final o:Ljava/lang/String; = "0"

.field private static final p:I = 0x7

.field private static final q:I = 0xf

.field private static volatile r:Lcom/xiaomi/stat/b/i;


# instance fields
.field private s:Landroid/content/Context;

.field private t:[B

.field private u:[B

.field private v:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/xiaomi/stat/b/i;->s:Landroid/content/Context;

    .line 10
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->d()V

    .line 13
    return-void
.end method

.method public static a()Lcom/xiaomi/stat/b/i;
    .registers 2

    .line 1
    sget-object v0, Lcom/xiaomi/stat/b/i;->r:Lcom/xiaomi/stat/b/i;

    if-nez v0, :cond_17

    .line 2
    const-class v0, Lcom/xiaomi/stat/b/i;

    monitor-enter v0

    .line 3
    :try_start_7
    sget-object v1, Lcom/xiaomi/stat/b/i;->r:Lcom/xiaomi/stat/b/i;

    if-nez v1, :cond_12

    .line 4
    new-instance v1, Lcom/xiaomi/stat/b/i;

    invoke-direct {v1}, Lcom/xiaomi/stat/b/i;-><init>()V

    sput-object v1, Lcom/xiaomi/stat/b/i;->r:Lcom/xiaomi/stat/b/i;

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
    sget-object v0, Lcom/xiaomi/stat/b/i;->r:Lcom/xiaomi/stat/b/i;

    return-object v0
.end method

.method private b(Z)Z
    .registers 8

    .line 7
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->k()V

    .line 9
    :cond_9
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->g()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SecretKeyManager"

    if-eqz v0, :cond_32

    const-string v3, "sid"

    .line 10
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sk"

    .line 11
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    if-nez p1, :cond_32

    const-string p1, "key and sid already requested successfully in recent 7 days!"

    .line 13
    invoke-static {v2, p1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 14
    :cond_32
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->h()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "rt"

    .line 15
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "rc"

    .line 16
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 17
    invoke-static {v3, v4}, Lcom/xiaomi/stat/d/r;->b(J)Z

    move-result v3

    if-eqz v3, :cond_54

    const/16 v3, 0xf

    if-lt v0, v3, :cond_54

    if-nez p1, :cond_54

    const-string p1, "request count > max count today, skip..."

    .line 18
    invoke-static {v2, p1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 19
    :cond_54
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->f()Z

    move-result p1

    return p1
.end method

.method private d()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/d/a;->a()[B

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/xiaomi/stat/b/i;->u:[B

    .line 7
    if-eqz v0, :cond_b

    .line 9
    array-length v0, v0

    .line 10
    if-gtz v0, :cond_13

    .line 12
    :cond_b
    const-string v0, "050f03d86eeafeb29cf38986462d957c"

    .line 14
    invoke-static {v0}, Lcom/xiaomi/stat/d/a;->a(Ljava/lang/String;)[B

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/xiaomi/stat/b/i;->u:[B

    .line 20
    :cond_13
    iget-object v0, p0, Lcom/xiaomi/stat/b/i;->u:[B

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const-string v2, "_"

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    .line 36
    move-result-wide v2

    .line 37
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    :try_start_2c
    const-string v2, "utf-8"

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    .line 54
    move-result-object v0
    :try_end_36
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2c .. :try_end_36} :catch_37

    .line 55
    goto :goto_3b

    .line 56
    :catch_37
    move-exception v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    :goto_3b
    invoke-static {v0}, Lcom/xiaomi/stat/d/a;->a(Ljava/lang/String;)[B

    .line 63
    move-result-object v0

    .line 64
    const-string v1, "4ef8b4ac42dbc3f95320b73ae0edbd43"

    .line 66
    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/a;->a([BLjava/lang/String;)[B

    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/xiaomi/stat/b/i;->t:[B

    .line 72
    return-void
.end method

.method private e()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->g()Lorg/json/JSONObject;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_14

    .line 8
    const-string v1, "sk"

    .line 10
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "sid"

    .line 16
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    move-object v0, v1

    .line 22
    :goto_15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_21

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_28

    .line 34
    :cond_21
    iget-object v0, p0, Lcom/xiaomi/stat/b/i;->u:[B

    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    :cond_28
    return-object v1
.end method

.method private f()Z
    .registers 12

    .line 1
    const-string v0, "sid"

    .line 3
    const-string v1, "SecretKeyManager"

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    :try_start_6
    invoke-static {}, Lcom/xiaomi/stat/d/a;->a()[B

    .line 10
    move-result-object v4

    .line 11
    const-string v5, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCA1ynlvPE46RxIPx6qrb8f20DU\n\rkAJgwHtD3zCEkgOjcvFY2mLl0UGnK1F0Vsh4LvImSCa8o8qYYfBguROgIXRdJGZ+\n\rk9stSV7vWmcsxphMfHEE9R4q+QWqgPBSzwyWmwmAQ7PZmHifOrEYl9t/l0YtmjnW\n\r8Zs3aL7Ap9CGse2kWwIDAQAB\r"

    .line 13
    invoke-static {v5}, Lcom/xiaomi/stat/d/d;->a(Ljava/lang/String;)[B

    .line 16
    move-result-object v5

    .line 17
    invoke-static {v5, v4}, Lcom/xiaomi/stat/d/o;->a([B[B)[B

    .line 20
    move-result-object v5

    .line 21
    invoke-static {v5}, Lcom/xiaomi/stat/d/d;->a([B)Ljava/lang/String;

    .line 24
    move-result-object v5

    .line 25
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->i()V

    .line 28
    new-instance v6, Ljava/util/HashMap;

    .line 30
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 33
    const-string v7, "skey_rsa"

    .line 35
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {}, Lcom/xiaomi/stat/b/g;->a()Lcom/xiaomi/stat/b/g;

    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5}, Lcom/xiaomi/stat/b/g;->d()Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    invoke-static {v5, v6, v2}, Lcom/xiaomi/stat/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    .line 49
    move-result-object v5

    .line 50
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v6

    .line 54
    if-nez v6, :cond_c6

    .line 56
    new-instance v6, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    const-string v7, "result:"

    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v6

    .line 73
    invoke-static {v1, v6}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v6, Lorg/json/JSONObject;

    .line 78
    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    const-string v5, "msg"

    .line 83
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v5

    .line 87
    const-string v7, "code"

    .line 89
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 92
    move-result v7

    .line 93
    const-string v8, "curTime"

    .line 95
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 98
    move-result-wide v8

    .line 99
    const-string v10, "result"

    .line 101
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 104
    move-result-object v6
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_68} :catch_c8

    .line 105
    if-ne v7, v3, :cond_af

    .line 107
    if-eqz v6, :cond_af

    .line 109
    :try_start_6c
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object v3

    .line 113
    const-string v5, "key"

    .line 115
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v5

    .line 119
    invoke-static {v5, v4}, Lcom/xiaomi/stat/d/a;->a(Ljava/lang/String;[B)Ljava/lang/String;

    .line 122
    move-result-object v4

    .line 123
    new-instance v5, Lorg/json/JSONObject;

    .line 125
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 128
    const-string v6, "sk"

    .line 130
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    iput-object v0, p0, Lcom/xiaomi/stat/b/i;->v:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/xiaomi/stat/b/i;->s:Landroid/content/Context;

    .line 144
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 147
    move-result-object v3

    .line 148
    invoke-static {v0, v3}, Lcom/xiaomi/stat/d/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    move-result-object v0

    .line 152
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    .line 155
    move-result-object v3

    .line 156
    const-string v4, "last_aes_content"

    .line 158
    invoke-virtual {v3, v4, v0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    .line 164
    move-result-object v0

    .line 165
    const-string v3, "last_success_time"

    .line 167
    invoke-virtual {v0, v3, v8, v9}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;J)V

    .line 170
    invoke-static {v8, v9}, Lcom/xiaomi/stat/d/r;->a(J)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_ac} :catch_ad

    .line 173
    goto :goto_cf

    .line 174
    :catch_ad
    move-exception v0

    .line 175
    goto :goto_ca

    .line 176
    :cond_af
    const/4 v0, 0x2

    .line 177
    if-ne v7, v0, :cond_c6

    .line 179
    :try_start_b2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 181
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    const-string v2, "update secret-key failed: "

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v0

    .line 196
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_c6} :catch_c8

    .line 199
    :cond_c6
    move v2, v3

    .line 200
    goto :goto_cf

    .line 201
    :catch_c8
    move-exception v0

    .line 202
    move v2, v3

    .line 203
    :goto_ca
    const-string v3, "updateSecretKey e"

    .line 205
    invoke-static {v1, v3, v0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    :goto_cf
    return v2
.end method

.method private g()Lorg/json/JSONObject;
    .registers 4

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "last_aes_content"

    .line 7
    const-string v2, ""

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    :try_start_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_33

    .line 19
    iget-object v1, p0, Lcom/xiaomi/stat/b/i;->v:Ljava/lang/String;

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1d

    .line 27
    iget-object v0, p0, Lcom/xiaomi/stat/b/i;->v:Ljava/lang/String;

    .line 29
    goto :goto_25

    .line 30
    :cond_1d
    iget-object v1, p0, Lcom/xiaomi/stat/b/i;->s:Landroid/content/Context;

    .line 32
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/xiaomi/stat/b/i;->v:Ljava/lang/String;

    .line 38
    :goto_25
    new-instance v1, Lorg/json/JSONObject;

    .line 40
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_2b

    .line 43
    return-object v1

    .line 44
    :catch_2b
    move-exception v0

    .line 45
    const-string v1, "SecretKeyManager"

    .line 47
    const-string v2, "decodeFromAndroidKeyStore e"

    .line 49
    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    :cond_33
    const/4 v0, 0x0

    .line 53
    return-object v0
.end method

.method private h()Lorg/json/JSONObject;
    .registers 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "request_history"

    .line 7
    const-string v2, ""

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_20

    .line 19
    new-instance v1, Lorg/json/JSONObject;

    .line 21
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 24
    return-object v1

    .line 25
    :catch_18
    move-exception v0

    .line 26
    const-string v1, "SecretKeyManager"

    .line 28
    const-string v2, "getRequestHistory e"

    .line 30
    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    :cond_20
    new-instance v0, Lorg/json/JSONObject;

    .line 35
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    return-object v0
.end method

.method private i()V
    .registers 7

    .line 1
    const-string v0, "rt"

    .line 3
    const-string v1, "rc"

    .line 5
    :try_start_4
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->h()Lorg/json/JSONObject;

    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 12
    move-result-wide v3

    .line 13
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 16
    move-result v5

    .line 17
    invoke-static {v3, v4}, Lcom/xiaomi/stat/d/r;->b(J)Z

    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eqz v3, :cond_1c

    .line 24
    add-int/2addr v5, v4

    .line 25
    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    goto :goto_1f

    .line 29
    :cond_1c
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    :goto_1f
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    .line 35
    move-result-wide v3

    .line 36
    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 39
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    .line 42
    move-result-object v0

    .line 43
    const-string v1, "request_history"

    .line 45
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_33} :catch_34

    .line 52
    goto :goto_3c

    .line 53
    :catch_34
    move-exception v0

    .line 54
    const-string v1, "SecretKeyManager"

    .line 56
    const-string v2, "updateSecretKey e"

    .line 58
    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    :goto_3c
    return-void
.end method

.method private j()Z
    .registers 5

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "last_success_time"

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;J)J

    .line 12
    move-result-wide v0

    .line 13
    cmp-long v2, v0, v2

    .line 15
    if-eqz v2, :cond_1b

    .line 17
    const-wide/32 v2, 0x240c8400

    .line 20
    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/stat/d/r;->a(JJ)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1b

    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_1c

    .line 28
    :cond_1b
    const/4 v0, 0x0

    .line 29
    :goto_1c
    return v0
.end method

.method private k()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/xiaomi/stat/b/i;->v:Ljava/lang/String;

    .line 8
    const-string v1, "last_aes_content"

    .line 10
    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;)V

    .line 13
    const-string v1, "last_success_time"

    .line 15
    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method private declared-synchronized l()Z
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->g()Lorg/json/JSONObject;

    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz v0, :cond_23

    .line 9
    const-string v2, "sk"

    .line 11
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    const-string v3, "sid"

    .line 17
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_23

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_25

    .line 31
    if-eqz v0, :cond_21

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    const/4 v0, 0x0

    .line 35
    move v1, v0

    .line 36
    :cond_23
    :goto_23
    monitor-exit p0

    .line 37
    return v1

    .line 38
    :catchall_25
    move-exception v0

    .line 39
    monitor-exit p0

    .line 40
    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Z)V
    .registers 6

    monitor-enter p0

    .line 10
    :try_start_1
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/xiaomi/stat/b;->b()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_37

    .line 11
    :cond_e
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x3

    const/4 v1, 0x1

    :goto_16
    if-gt v1, v0, :cond_35

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/b/i;->b(Z)Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_40

    if-eqz v2, :cond_35

    if-ne v1, v0, :cond_21

    goto :goto_35

    :cond_21
    const-wide/16 v2, 0x2710

    .line 13
    :try_start_23
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_27
    .catchall {:try_start_23 .. :try_end_26} :catchall_40

    goto :goto_2b

    :catch_27
    move-exception v2

    .line 14
    :try_start_28
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2e
    const-string p1, "SecretKeyManager"

    const-string v0, "network not connected!"

    .line 15
    invoke-static {p1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_40

    .line 16
    :cond_35
    :goto_35
    monitor-exit p0

    return-void

    :cond_37
    :goto_37
    :try_start_37
    const-string p1, "SecretKeyManager"

    const-string v0, "update abort: statistic or network is not enabled"

    .line 17
    invoke-static {p1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_40

    .line 18
    monitor-exit p0

    return-void

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a([B)[B
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_d

    :try_start_3
    const-string p1, "SecretKeyManager"

    const-string v0, "encrypt content is empty"

    .line 7
    invoke-static {p1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_17

    const/4 p1, 0x0

    .line 8
    monitor-exit p0

    return-object p1

    .line 9
    :cond_d
    :try_start_d
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/stat/d/a;->a([BLjava/lang/String;)[B

    move-result-object p1
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object p1

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->g()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const-string v1, "sid"

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sk"

    .line 3
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_15
    move-object v0, v1

    .line 4
    :goto_16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 5
    :cond_22
    iget-object v0, p0, Lcom/xiaomi/stat/b/i;->t:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 6
    :cond_29
    monitor-exit p0

    return-object v1

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->l()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 7
    const-string v0, "1"

    .line 9
    return-object v0

    .line 10
    :cond_9
    const-string v0, "0"

    .line 12
    return-object v0
.end method
