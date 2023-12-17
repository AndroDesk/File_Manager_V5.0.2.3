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

.field private static final l:I

.field private static final m:I

.field private static final n:Ljava/lang/String; = "1"

.field private static final o:Ljava/lang/String; = "0"

.field private static final p:I

.field private static final q:I

.field private static volatile r:Lcom/xiaomi/stat/b/i;


# instance fields
.field private s:Landroid/content/Context;

.field private t:[B

.field private u:[B

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/b/i;->l:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/b/i;->m:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/b/i;->p:I

    const v0, 0x92d99

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/b/i;->q:I

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/i;->s:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->d()V

    return-void
.end method

.method public static a()Lcom/xiaomi/stat/b/i;
    .registers 2

    sget-object v0, Lcom/xiaomi/stat/b/i;->r:Lcom/xiaomi/stat/b/i;

    if-nez v0, :cond_17

    const-class v0, Lcom/xiaomi/stat/b/i;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/stat/b/i;->r:Lcom/xiaomi/stat/b/i;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/stat/b/i;

    invoke-direct {v1}, Lcom/xiaomi/stat/b/i;-><init>()V

    sput-object v1, Lcom/xiaomi/stat/b/i;->r:Lcom/xiaomi/stat/b/i;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/xiaomi/stat/b/i;->r:Lcom/xiaomi/stat/b/i;

    return-object v0
.end method

.method private b(Z)Z
    .registers 8

    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->k()V

    :cond_9
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->g()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SecretKeyManager"

    if-eqz v0, :cond_32

    const-string v3, "sid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sk"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    if-nez p1, :cond_32

    const-string p1, "key and sid already requested successfully in recent 7 days!"

    invoke-static {v2, p1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_32
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->h()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "rt"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "rc"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v4}, Lcom/xiaomi/stat/d/r;->b(J)Z

    move-result v3

    if-eqz v3, :cond_54

    const/16 v3, 0xf

    if-lt v0, v3, :cond_54

    if-nez p1, :cond_54

    const-string p1, "request count > max count today, skip..."

    invoke-static {v2, p1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_54
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->f()Z

    move-result p1

    return p1
.end method

.method private d()V
    .registers 5

    invoke-static {}, Lcom/xiaomi/stat/d/a;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/i;->u:[B

    if-eqz v0, :cond_b

    array-length v0, v0

    if-gtz v0, :cond_13

    :cond_b
    const-string v0, "050f03d86eeafeb29cf38986462d957c"

    invoke-static {v0}, Lcom/xiaomi/stat/d/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/i;->u:[B

    :cond_13
    iget-object v0, p0, Lcom/xiaomi/stat/b/i;->u:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_2c
    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    move-result-object v0
    :try_end_36
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2c .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3b
    invoke-static {v0}, Lcom/xiaomi/stat/d/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "4ef8b4ac42dbc3f95320b73ae0edbd43"

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/a;->a([BLjava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/i;->t:[B

    return-void
.end method

.method private e()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->g()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const-string v1, "sk"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_14
    move-object v0, v1

    :goto_15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_21
    iget-object v0, p0, Lcom/xiaomi/stat/b/i;->u:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    move-result-object v1

    :cond_28
    return-object v1
.end method

.method private f()Z
    .registers 12

    const-string v0, "sid"

    const-string v1, "SecretKeyManager"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_6
    invoke-static {}, Lcom/xiaomi/stat/d/a;->a()[B

    move-result-object v4

    const-string v5, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCA1ynlvPE46RxIPx6qrb8f20DU\n\rkAJgwHtD3zCEkgOjcvFY2mLl0UGnK1F0Vsh4LvImSCa8o8qYYfBguROgIXRdJGZ+\n\rk9stSV7vWmcsxphMfHEE9R4q+QWqgPBSzwyWmwmAQ7PZmHifOrEYl9t/l0YtmjnW\n\r8Zs3aL7Ap9CGse2kWwIDAQAB\r"

    invoke-static {v5}, Lcom/xiaomi/stat/d/d;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v4}, Lcom/xiaomi/stat/d/o;->a([B[B)[B

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/stat/d/d;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->i()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "skey_rsa"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/stat/b/g;->a()Lcom/xiaomi/stat/b/g;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/stat/b/g;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6, v2}, Lcom/xiaomi/stat/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "msg"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "code"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "curTime"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v10, "result"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_68} :catch_c8

    if-ne v7, v3, :cond_af

    if-eqz v6, :cond_af

    :try_start_6c
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "key"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/xiaomi/stat/d/a;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "sk"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/i;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/stat/b/i;->s:Landroid/content/Context;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/stat/d/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v3

    const-string v4, "last_aes_content"

    invoke-virtual {v3, v4, v0}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v3, "last_success_time"

    invoke-virtual {v0, v3, v8, v9}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;J)V

    invoke-static {v8, v9}, Lcom/xiaomi/stat/d/r;->a(J)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_ac} :catch_ad

    goto :goto_cf

    :catch_ad
    move-exception v0

    goto :goto_ca

    :cond_af
    const/4 v0, 0x2

    if-ne v7, v0, :cond_c6

    :try_start_b2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update secret-key failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_c6} :catch_c8

    :cond_c6
    move v2, v3

    goto :goto_cf

    :catch_c8
    move-exception v0

    move v2, v3

    :goto_ca
    const-string v3, "updateSecretKey e"

    invoke-static {v1, v3, v0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_cf
    return v2
.end method

.method private g()Lorg/json/JSONObject;
    .registers 4

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "last_aes_content"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/xiaomi/stat/b/i;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v0, p0, Lcom/xiaomi/stat/b/i;->v:Ljava/lang/String;

    goto :goto_25

    :cond_1d
    iget-object v1, p0, Lcom/xiaomi/stat/b/i;->s:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/i;->v:Ljava/lang/String;

    :goto_25
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_2b

    return-object v1

    :catch_2b
    move-exception v0

    const-string v1, "SecretKeyManager"

    const-string v2, "decodeFromAndroidKeyStore e"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_33
    const/4 v0, 0x0

    return-object v0
.end method

.method private h()Lorg/json/JSONObject;
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "request_history"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return-object v1

    :catch_18
    move-exception v0

    const-string v1, "SecretKeyManager"

    const-string v2, "getRequestHistory e"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method private i()V
    .registers 7

    const-string v0, "rt"

    const-string v1, "rc"

    :try_start_4
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->h()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4}, Lcom/xiaomi/stat/d/r;->b(J)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1c

    add-int/2addr v5, v4

    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1f

    :cond_1c
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_1f
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "request_history"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_33} :catch_34

    goto :goto_3c

    :catch_34
    move-exception v0

    const-string v1, "SecretKeyManager"

    const-string v2, "updateSecretKey e"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3c
    return-void
.end method

.method private j()Z
    .registers 5

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "last_success_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1b

    const-wide/32 v2, 0x240c8400

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/stat/d/r;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method private k()V
    .registers 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/stat/b/i;->v:Ljava/lang/String;

    const-string v1, "last_aes_content"

    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;)V

    const-string v1, "last_success_time"

    invoke-virtual {v0, v1}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized l()Z
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->g()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    const-string v2, "sk"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_25

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    move v1, v0

    :cond_23
    :goto_23
    monitor-exit p0

    return v1

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Z)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {}, Lcom/xiaomi/stat/b;->b()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_37

    :cond_e
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x3

    const/4 v1, 0x1

    :goto_16
    if-gt v1, v0, :cond_35

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/b/i;->b(Z)Z

    move-result v2
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_40

    if-eqz v2, :cond_35

    if-ne v1, v0, :cond_21

    goto :goto_35

    :cond_21
    const-wide/16 v2, 0x2710

    :try_start_23
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_27
    .catchall {:try_start_23 .. :try_end_26} :catchall_40

    goto :goto_2b

    :catch_27
    move-exception v2

    :try_start_28
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2e
    const-string p1, "SecretKeyManager"

    const-string v0, "network not connected!"

    invoke-static {p1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_40

    :cond_35
    :goto_35
    monitor-exit p0

    return-void

    :cond_37
    :goto_37
    :try_start_37
    const-string p1, "SecretKeyManager"

    const-string v0, "update abort: statistic or network is not enabled"

    invoke-static {p1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_40

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

    invoke-static {p1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_17

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

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

    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->g()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const-string v1, "sid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sk"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_15
    move-object v0, v1

    :goto_16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_22
    iget-object v0, p0, Lcom/xiaomi/stat/b/i;->t:[B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

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

    invoke-direct {p0}, Lcom/xiaomi/stat/b/i;->l()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "1"

    return-object v0

    :cond_9
    const-string v0, "0"

    return-object v0
.end method
