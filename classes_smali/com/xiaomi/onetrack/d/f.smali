.class public Lcom/xiaomi/onetrack/d/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/d/f$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/json/JSONObject;

.field private static final b:Ljava/lang/String; = "SecretKeyManager"

.field private static final c:Ljava/lang/String; = "secretKey"

.field private static final d:Ljava/lang/String; = "sid"

.field private static final e:Ljava/lang/String; = "key"


# instance fields
.field private f:Landroid/content/Context;

.field private g:Lorg/json/JSONObject;

.field private h:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    sput-object v0, Lcom/xiaomi/onetrack/d/f;->a:Lorg/json/JSONObject;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/xiaomi/onetrack/d/f;->g:Lorg/json/JSONObject;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/xiaomi/onetrack/d/f;->h:[Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/onetrack/d/f;->f:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/onetrack/d/g;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/d/f;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/onetrack/d/f;
    .registers 1

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/d/f$a;->a()Lcom/xiaomi/onetrack/d/f;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private d()V
    .registers 4

    .line 1
    sget-boolean v0, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 3
    if-eqz v0, :cond_27

    .line 5
    iget-object v0, p0, Lcom/xiaomi/onetrack/d/f;->h:[Ljava/lang/String;

    .line 7
    const/4 v1, 0x0

    .line 8
    aget-object v0, v0, v1

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v0

    .line 14
    const-string v1, "SecretKeyManager"

    .line 16
    if-nez v0, :cond_22

    .line 18
    iget-object v0, p0, Lcom/xiaomi/onetrack/d/f;->h:[Ljava/lang/String;

    .line 20
    const/4 v2, 0x1

    .line 21
    aget-object v0, v0, v2

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_22

    .line 29
    const-string v0, "key  and sid is valid! "

    .line 31
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    goto :goto_27

    .line 35
    :cond_22
    const-string v0, "key or sid is invalid!"

    .line 37
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_27
    :goto_27
    return-void
.end method

.method private e()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/d/f;->g:Lorg/json/JSONObject;

    .line 3
    if-nez v0, :cond_c

    .line 5
    invoke-direct {p0}, Lcom/xiaomi/onetrack/d/f;->f()Lorg/json/JSONObject;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_c

    .line 11
    iput-object v0, p0, Lcom/xiaomi/onetrack/d/f;->g:Lorg/json/JSONObject;

    .line 13
    :cond_c
    if-nez v0, :cond_12

    .line 15
    invoke-virtual {p0}, Lcom/xiaomi/onetrack/d/f;->c()Lorg/json/JSONObject;

    .line 18
    move-result-object v0

    .line 19
    :cond_12
    return-object v0
.end method

.method private f()Lorg/json/JSONObject;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/xiaomi/onetrack/util/aa;->g()Ljava/lang/String;

    .line 5
    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_c

    .line 12
    return-object v0

    .line 13
    :cond_c
    iget-object v2, p0, Lcom/xiaomi/onetrack/d/f;->f:Landroid/content/Context;

    .line 15
    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/d/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lorg/json/JSONObject;

    .line 21
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    .line 24
    return-object v2

    .line 25
    :catch_18
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    return-object v0
.end method


# virtual methods
.method public declared-synchronized b()[Ljava/lang/String;
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/onetrack/d/f;->e()Lorg/json/JSONObject;

    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/xiaomi/onetrack/d/f;->h:[Ljava/lang/String;

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_11

    .line 11
    const-string v3, "key"

    .line 13
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 17
    goto :goto_13

    .line 18
    :cond_11
    const-string v3, ""

    .line 20
    :goto_13
    aput-object v3, v1, v2

    .line 22
    iget-object v1, p0, Lcom/xiaomi/onetrack/d/f;->h:[Ljava/lang/String;

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v0, :cond_21

    .line 27
    const-string v3, "sid"

    .line 29
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    const-string v0, ""

    .line 36
    :goto_23
    aput-object v0, v1, v2

    .line 38
    invoke-direct {p0}, Lcom/xiaomi/onetrack/d/f;->d()V

    .line 41
    iget-object v0, p0, Lcom/xiaomi/onetrack/d/f;->h:[Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 43
    monitor-exit p0

    .line 44
    return-object v0

    .line 45
    :catchall_2c
    move-exception v0

    .line 46
    monitor-exit p0

    .line 47
    throw v0
.end method

.method public c()Lorg/json/JSONObject;
    .registers 8

    .line 1
    const-string v0, "sid"

    .line 3
    const-string v1, "key"

    .line 5
    const-string v2, "SecretKeyManager"

    .line 7
    :try_start_6
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;)Z

    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_f

    .line 13
    sget-object v0, Lcom/xiaomi/onetrack/d/f;->a:Lorg/json/JSONObject;

    .line 15
    return-object v0

    .line 16
    :cond_f
    invoke-static {}, Lcom/xiaomi/onetrack/d/a;->a()[B

    .line 19
    move-result-object v3

    .line 20
    invoke-static {v3}, Lcom/xiaomi/onetrack/d/e;->a([B)[B

    .line 23
    move-result-object v4

    .line 24
    invoke-static {v4}, Lcom/xiaomi/onetrack/d/c;->a([B)Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    new-instance v5, Ljava/util/HashMap;

    .line 30
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 33
    const-string v6, "secretKey"

    .line 35
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {}, Lcom/xiaomi/onetrack/util/x;->a()Lcom/xiaomi/onetrack/util/x;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Lcom/xiaomi/onetrack/util/x;->e()Ljava/lang/String;

    .line 45
    move-result-object v4

    .line 46
    const/4 v6, 0x1

    .line 47
    invoke-static {v4, v5, v6}, Lcom/xiaomi/onetrack/g/b;->b(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v5

    .line 55
    if-nez v5, :cond_99

    .line 57
    new-instance v5, Lorg/json/JSONObject;

    .line 59
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    const-string v4, "code"

    .line 64
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 67
    move-result v4

    .line 68
    const-string v6, "data"

    .line 70
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 73
    move-result-object v5

    .line 74
    if-nez v4, :cond_99

    .line 76
    if-eqz v5, :cond_99

    .line 78
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v5

    .line 86
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    move-result v6

    .line 90
    if-nez v6, :cond_99

    .line 92
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    move-result v6

    .line 96
    if-nez v6, :cond_99

    .line 98
    invoke-static {v4}, Lcom/xiaomi/onetrack/d/c;->a(Ljava/lang/String;)[B

    .line 101
    move-result-object v4

    .line 102
    invoke-static {v4, v3}, Lcom/xiaomi/onetrack/d/a;->b([B[B)[B

    .line 105
    move-result-object v3

    .line 106
    invoke-static {v3}, Lcom/xiaomi/onetrack/d/c;->a([B)Ljava/lang/String;

    .line 109
    move-result-object v3

    .line 110
    new-instance v4, Lorg/json/JSONObject;

    .line 112
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 115
    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    iput-object v4, p0, Lcom/xiaomi/onetrack/d/f;->g:Lorg/json/JSONObject;

    .line 123
    iget-object v0, p0, Lcom/xiaomi/onetrack/d/f;->f:Landroid/content/Context;

    .line 125
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 128
    move-result-object v1

    .line 129
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/d/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->a(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 139
    move-result-wide v0

    .line 140
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/aa;->i(J)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_8e} :catch_8f

    .line 143
    goto :goto_99

    .line 144
    :catch_8f
    move-exception v0

    .line 145
    const-string v1, "requestSecretData: "

    .line 147
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    move-result-object v1

    .line 151
    invoke-static {v0, v1, v2}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 154
    :cond_99
    :goto_99
    iget-object v0, p0, Lcom/xiaomi/onetrack/d/f;->g:Lorg/json/JSONObject;

    .line 156
    return-object v0
.end method
