.class public Lcom/xiaomi/stat/c/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/stat/c/i$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "3.0"

.field private static final b:Ljava/lang/String; = "UploaderEngine"

.field private static final c:Ljava/lang/String; = "code"

.field private static final d:Ljava/lang/String; = "UTF-8"

.field private static final e:Ljava/lang/String; = "mistat"

.field private static final f:Ljava/lang/String; = "uploader"

.field private static final g:Ljava/lang/String; = "3.0.16"

.field private static final h:Ljava/lang/String; = "Android"

.field private static final i:I = 0xc8

.field private static final j:I = 0x1

.field private static final k:I = -0x1

.field private static final l:I = 0x3

.field private static volatile m:Lcom/xiaomi/stat/c/i;


# instance fields
.field private final n:[B

.field private o:Ljava/nio/channels/FileLock;

.field private p:Ljava/nio/channels/FileChannel;

.field private q:Lcom/xiaomi/stat/c/g;

.field private r:Lcom/xiaomi/stat/c/i$a;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [B

    .line 7
    iput-object v0, p0, Lcom/xiaomi/stat/c/i;->n:[B

    .line 9
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->e()V

    .line 12
    return-void
.end method

.method private a(I)I
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const/4 p1, -0x1

    return p1

    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_9

    const/4 v0, 0x0

    :cond_9
    return v0
.end method

.method public static a()Lcom/xiaomi/stat/c/i;
    .registers 2

    .line 2
    sget-object v0, Lcom/xiaomi/stat/c/i;->m:Lcom/xiaomi/stat/c/i;

    if-nez v0, :cond_17

    .line 3
    const-class v0, Lcom/xiaomi/stat/c/i;

    monitor-enter v0

    .line 4
    :try_start_7
    sget-object v1, Lcom/xiaomi/stat/c/i;->m:Lcom/xiaomi/stat/c/i;

    if-nez v1, :cond_12

    .line 5
    new-instance v1, Lcom/xiaomi/stat/c/i;

    invoke-direct {v1}, Lcom/xiaomi/stat/c/i;-><init>()V

    sput-object v1, Lcom/xiaomi/stat/c/i;->m:Lcom/xiaomi/stat/c/i;

    .line 6
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 7
    :cond_17
    :goto_17
    sget-object v0, Lcom/xiaomi/stat/c/i;->m:Lcom/xiaomi/stat/c/i;

    return-object v0
.end method

.method private a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "id"

    .line 51
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    invoke-direct {p0, p2, v0}, Lcom/xiaomi/stat/c/i;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string p2, "aii"

    .line 53
    invoke-static {}, Lcom/xiaomi/stat/d/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "rc"

    .line 54
    invoke-static {}, Lcom/xiaomi/stat/d/m;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "av"

    .line 55
    invoke-static {}, Lcom/xiaomi/stat/d/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ac"

    .line 56
    invoke-static {}, Lcom/xiaomi/stat/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "os"

    const-string v1, "Android"

    .line 57
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "rd"

    .line 58
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/d/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "pp"

    .line 59
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    if-eqz v1, :cond_50

    invoke-virtual {v1}, Lcom/xiaomi/stat/c/g;->a()J

    move-result-wide v1

    goto :goto_52

    :cond_50
    const-wide/16 v1, 0x0

    :goto_52
    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "st"

    .line 60
    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "tz"

    .line 61
    invoke-static {}, Lcom/xiaomi/stat/d/m;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "cc"

    .line 62
    invoke-static {}, Lcom/xiaomi/stat/ak;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/c/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    invoke-static {}, Lcom/xiaomi/stat/b;->o()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8a

    .line 64
    array-length v1, p2

    if-lez v1, :cond_8a

    const-string v1, "cs"

    .line 65
    invoke-direct {p0, p2}, Lcom/xiaomi/stat/c/i;->a([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8a
    const-string p2, "ob"

    .line 66
    invoke-static {}, Lcom/xiaomi/stat/d/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "n"

    .line 67
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ud"

    .line 68
    invoke-static {}, Lcom/xiaomi/stat/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "es"

    .line 69
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ae
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_ae} :catch_af

    goto :goto_b3

    :catch_af
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    :goto_b3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a([Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 7

    .line 79
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 80
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_22

    .line 81
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 82
    :try_start_e
    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/xiaomi/stat/c/a;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 83
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v2

    .line 84
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_22
    return-object v0
.end method

.method private a(Landroid/os/Message;)V
    .registers 4

    .line 8
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->n:[B

    monitor-enter v0

    .line 9
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->r:Lcom/xiaomi/stat/c/i$a;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    if-nez v1, :cond_e

    .line 10
    :cond_b
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->e()V

    .line 11
    :cond_e
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->r:Lcom/xiaomi/stat/c/i$a;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public static synthetic a(Lcom/xiaomi/stat/c/i;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->g()V

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    .line 72
    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 73
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "ia"

    .line 74
    invoke-static {p1}, Lcom/xiaomi/stat/d/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mcm"

    .line 75
    invoke-static {p1}, Lcom/xiaomi/stat/d/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "bm"

    .line 76
    invoke-static {p1}, Lcom/xiaomi/stat/d/e;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "aa"

    .line 77
    invoke-static {p1}, Lcom/xiaomi/stat/d/e;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ai"

    .line 78
    invoke-static {p1}, Lcom/xiaomi/stat/d/e;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3d

    :catch_3d
    :cond_3d
    return-void
.end method

.method private a([Lcom/xiaomi/stat/a/b;Ljava/lang/String;)V
    .registers 13

    .line 24
    array-length v0, p1

    const-string v1, "UploaderEngine"

    if-nez v0, :cond_b

    const-string p1, "privacy policy or network state not matched"

    .line 25
    invoke-static {v1, p1}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 26
    :cond_b
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/stat/a/c;->a([Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;

    move-result-object v0

    .line 27
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v3, 0x1

    if-eqz v0, :cond_1e

    .line 28
    iget-boolean v4, v0, Lcom/xiaomi/stat/a/k;->c:Z

    goto :goto_1f

    :cond_1e
    move v4, v3

    .line 29
    :goto_1f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;)V

    const/4 v5, 0x0

    move v6, v5

    :goto_33
    if-eqz v0, :cond_c8

    .line 30
    iget-object v6, v0, Lcom/xiaomi/stat/a/k;->b:Ljava/util/ArrayList;

    .line 31
    iget-object v0, v0, Lcom/xiaomi/stat/a/k;->a:Lorg/json/JSONArray;

    .line 32
    :try_start_39
    invoke-direct {p0, v0, p2}, Lcom/xiaomi/stat/c/i;->a(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, " payload:"

    .line 33
    invoke-static {v1, v7, v0}, Lcom/xiaomi/stat/d/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {v0}, Lcom/xiaomi/stat/c/i;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->a([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->b([B)Ljava/lang/String;

    move-result-object v0

    const-string v7, " encodePayload "

    .line 35
    invoke-static {v1, v7, v0}, Lcom/xiaomi/stat/d/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/xiaomi/stat/b/g;->a()Lcom/xiaomi/stat/b/g;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaomi/stat/b/g;->c()Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-static {}, Lcom/xiaomi/stat/d/k;->b()Z

    move-result v8

    if-eqz v8, :cond_63

    const-string v7, "http://test.data.mistat.xiaomi.srv/mistats/v3"

    .line 38
    :cond_63
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v7, v0, v3}, Lcom/xiaomi/stat/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    const-string v7, " sendDataToServer response: "

    .line 39
    invoke-static {v1, v7, v0}, Lcom/xiaomi/stat/d/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_77

    goto :goto_7c

    .line 41
    :cond_77
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->b(Ljava/lang/String;)Z

    move-result v0
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_7b} :catch_7c

    goto :goto_7d

    :catch_7c
    :goto_7c
    move v0, v5

    :goto_7d
    if-eqz v0, :cond_87

    .line 42
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/xiaomi/stat/a/c;->a(Ljava/util/ArrayList;)V

    goto :goto_8a

    .line 43
    :cond_87
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 44
    :goto_8a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " deleteData= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " retryCount.get()= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_c7

    if-nez v0, :cond_b6

    .line 45
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_b6

    goto :goto_c7

    .line 46
    :cond_b6
    invoke-static {}, Lcom/xiaomi/stat/a/c;->a()Lcom/xiaomi/stat/a/c;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/xiaomi/stat/a/c;->a([Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;

    move-result-object v6

    if-eqz v6, :cond_c2

    .line 47
    iget-boolean v4, v6, Lcom/xiaomi/stat/a/k;->c:Z

    :cond_c2
    move-object v9, v6

    move v6, v0

    move-object v0, v9

    goto/16 :goto_33

    :cond_c7
    :goto_c7
    move v6, v0

    .line 48
    :cond_c8
    iget-object p1, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    if-eqz p1, :cond_cf

    .line 49
    invoke-virtual {p1, v6}, Lcom/xiaomi/stat/c/g;->b(Z)V

    :cond_cf
    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 7

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    .line 13
    :try_start_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_2c
    .catchall {:try_start_3 .. :try_end_d} :catchall_29

    .line 14
    :try_start_d
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_26
    .catchall {:try_start_d .. :try_end_12} :catchall_23

    .line 15
    :try_start_12
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/OutputStream;->write([B)V

    .line 16
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 17
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_20} :catch_21
    .catchall {:try_start_12 .. :try_end_20} :catchall_50

    goto :goto_49

    :catch_21
    move-exception p0

    goto :goto_2f

    :catchall_23
    move-exception p0

    move-object v3, v1

    goto :goto_51

    :catch_26
    move-exception p0

    move-object v3, v1

    goto :goto_2f

    :catchall_29
    move-exception p0

    move-object v3, v1

    goto :goto_52

    :catch_2c
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    :goto_2f
    :try_start_2f
    const-string v0, "UploaderEngine"

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " zipData failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_2f .. :try_end_49} :catchall_50

    .line 19
    :goto_49
    invoke-static {v2}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/OutputStream;)V

    .line 20
    invoke-static {v3}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/OutputStream;)V

    return-object v1

    :catchall_50
    move-exception p0

    :goto_51
    move-object v1, v2

    .line 21
    :goto_52
    invoke-static {v1}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/OutputStream;)V

    .line 22
    invoke-static {v3}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/OutputStream;)V

    throw p0
.end method

.method private a([B)[B
    .registers 3

    .line 23
    invoke-static {}, Lcom/xiaomi/stat/b/i;->a()Lcom/xiaomi/stat/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/stat/b/i;->a([B)[B

    move-result-object p1

    return-object p1
.end method

.method private b([B)Ljava/lang/String;
    .registers 2

    .line 3
    invoke-static {p1}, Lcom/xiaomi/stat/d/d;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Z)V
    .registers 4

    .line 4
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/c/i;->c(Z)[Lcom/xiaomi/stat/a/b;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Lcom/xiaomi/stat/b/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaomi/stat/b/d;->a(Z)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/xiaomi/stat/c/i;->a([Lcom/xiaomi/stat/a/b;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    .line 7
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 8
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0xc8

    const/4 v2, 0x1

    if-ne p1, v1, :cond_13

    :cond_11
    :goto_11
    move v0, v2

    goto :goto_5a

    :cond_13
    const/16 v1, 0x3ea

    if-eq p1, v1, :cond_43

    const/16 v1, 0x3ec

    if-eq p1, v1, :cond_43

    const/16 v1, 0x3ed

    if-eq p1, v1, :cond_43

    const/16 v1, 0x3ee

    if-eq p1, v1, :cond_43

    const/16 v1, 0x3ef

    if-eq p1, v1, :cond_43

    const/16 v1, 0x3f3

    if-ne p1, v1, :cond_2c

    goto :goto_43

    :cond_2c
    const/16 v1, 0x7d2

    if-eq p1, v1, :cond_34

    const/16 v1, 0x3f4

    if-ne p1, v1, :cond_11

    .line 9
    :cond_34
    invoke-static {}, Lcom/xiaomi/stat/b/i;->a()Lcom/xiaomi/stat/b/i;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaomi/stat/b/i;->a(Z)V

    .line 10
    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Lcom/xiaomi/stat/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/stat/b/d;->b()Ljava/lang/String;

    goto :goto_11

    .line 11
    :cond_43
    :goto_43
    invoke-static {}, Lcom/xiaomi/stat/b/i;->a()Lcom/xiaomi/stat/b/i;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaomi/stat/b/i;->a(Z)V

    .line 12
    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Lcom/xiaomi/stat/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/stat/b/d;->b()Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_51} :catch_52

    goto :goto_5a

    :catch_52
    move-exception p1

    const-string v1, "UploaderEngine"

    const-string v2, "parseUploadingResult exception "

    .line 13
    invoke-static {v1, v2, p1}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5a
    return v0
.end method

.method private c(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    invoke-static {}, Lcom/xiaomi/stat/ak;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ai"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sv"

    const-string v2, "3.0.16"

    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pv"

    const-string v2, "3.0"

    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {}, Lcom/xiaomi/stat/d/m;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "p"

    .line 28
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {}, Lcom/xiaomi/stat/b/i;->a()Lcom/xiaomi/stat/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/stat/b/i;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "fc"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Lcom/xiaomi/stat/b/i;->a()Lcom/xiaomi/stat/b/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/stat/b/i;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sid"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private c(Z)[Lcom/xiaomi/stat/a/b;
    .registers 9

    .line 10
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->h()Ljava/util/ArrayList;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_31

    .line 13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 14
    new-instance v5, Lcom/xiaomi/stat/c/f;

    invoke-direct {v5, v4, p1}, Lcom/xiaomi/stat/c/f;-><init>(Ljava/lang/String;Z)V

    .line 15
    invoke-virtual {v5}, Lcom/xiaomi/stat/c/f;->a()I

    move-result v5

    .line 16
    invoke-direct {p0, v5}, Lcom/xiaomi/stat/c/i;->a(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2e

    .line 17
    new-instance v6, Lcom/xiaomi/stat/a/b;

    invoke-direct {v6, v4, v5, p1}, Lcom/xiaomi/stat/a/b;-><init>(Ljava/lang/String;IZ)V

    .line 18
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 19
    :cond_31
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/c/i;->d(Z)Lcom/xiaomi/stat/a/b;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 20
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_3a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 22
    new-array p1, p1, [Lcom/xiaomi/stat/a/b;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/xiaomi/stat/a/b;

    return-object p1
.end method

.method private d(Z)Lcom/xiaomi/stat/a/b;
    .registers 5

    .line 1
    new-instance v0, Lcom/xiaomi/stat/c/f;

    invoke-direct {v0, p1}, Lcom/xiaomi/stat/c/f;-><init>(Z)V

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/stat/c/f;->a()I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " createMainAppFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UploaderEngine"

    invoke-static {v2, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->a(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2d

    .line 5
    new-instance v2, Lcom/xiaomi/stat/a/b;

    invoke-direct {v2, v1, v0, p1}, Lcom/xiaomi/stat/a/b;-><init>(Ljava/lang/String;IZ)V

    move-object v1, v2

    :cond_2d
    return-object v1
.end method

.method private e()V
    .registers 4

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    const-string v1, "mi_analytics_uploader_worker"

    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    new-instance v1, Lcom/xiaomi/stat/c/i$a;

    .line 13
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v1, p0, v2}, Lcom/xiaomi/stat/c/i$a;-><init>(Lcom/xiaomi/stat/c/i;Landroid/os/Looper;)V

    .line 20
    iput-object v1, p0, Lcom/xiaomi/stat/c/i;->r:Lcom/xiaomi/stat/c/i$a;

    .line 22
    new-instance v1, Lcom/xiaomi/stat/c/g;

    .line 24
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 27
    move-result-object v0

    .line 28
    invoke-direct {v1, v0}, Lcom/xiaomi/stat/c/g;-><init>(Landroid/os/Looper;)V

    .line 31
    iput-object v1, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    .line 33
    return-void
.end method

.method private f()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-virtual {v0}, Lcom/xiaomi/stat/c/g;->c()V

    .line 8
    :cond_7
    return-void
.end method

.method private g()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->i()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_16

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->b(Z)V

    .line 19
    invoke-direct {p0, v1}, Lcom/xiaomi/stat/c/i;->b(Z)V

    .line 22
    goto :goto_25

    .line 23
    :cond_16
    invoke-direct {p0, v1}, Lcom/xiaomi/stat/c/i;->c(Z)[Lcom/xiaomi/stat/a/b;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {}, Lcom/xiaomi/stat/b/d;->a()Lcom/xiaomi/stat/b/d;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/xiaomi/stat/b/d;->c()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/stat/c/i;->a([Lcom/xiaomi/stat/a/b;Ljava/lang/String;)V

    .line 38
    :goto_25
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->j()V

    .line 41
    return-void
.end method

.method private h()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/b;->o()[Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_9

    .line 8
    array-length v2, v0

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    move v2, v1

    .line 11
    :goto_a
    new-instance v3, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    :goto_f
    if-ge v1, v2, :cond_21

    .line 18
    aget-object v4, v0, v1

    .line 20
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_1e

    .line 26
    aget-object v4, v0, v1

    .line 28
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_f

    .line 34
    :cond_21
    return-object v3
.end method

.method private i()Z
    .registers 7

    .line 1
    const-string v0, " acquire lock for uploader failed with "

    .line 3
    const-string v1, "UploaderEngine"

    .line 5
    new-instance v2, Ljava/io/File;

    .line 7
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 14
    move-result-object v3

    .line 15
    const-string v4, "mistat"

    .line 17
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1c

    .line 26
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 29
    :cond_1c
    new-instance v3, Ljava/io/File;

    .line 31
    const-string v4, "uploader"

    .line 33
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    const/4 v2, 0x0

    .line 37
    :try_start_24
    new-instance v4, Ljava/io/FileOutputStream;

    .line 39
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_29} :catch_88

    .line 42
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 45
    move-result-object v3

    .line 46
    iput-object v3, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    .line 48
    const/4 v4, 0x0

    .line 49
    :try_start_30
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    .line 52
    move-result-object v3

    .line 53
    iput-object v3, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    .line 55
    if-eqz v3, :cond_4a

    .line 57
    const-string v3, " acquire lock for uploader"

    .line 59
    invoke-static {v1, v3}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3d} :catch_5d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_5b

    .line 62
    const/4 v0, 0x1

    .line 63
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    .line 65
    if-nez v1, :cond_49

    .line 67
    :try_start_42
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    .line 69
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 72
    iput-object v4, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_49} :catch_49

    .line 74
    :catch_49
    :cond_49
    return v0

    .line 75
    :cond_4a
    :try_start_4a
    const-string v3, " acquire lock for uploader failed"

    .line 77
    invoke-static {v1, v3}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4f} :catch_5d
    .catchall {:try_start_4a .. :try_end_4f} :catchall_5b

    .line 80
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    .line 82
    if-nez v0, :cond_5a

    .line 84
    :try_start_53
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    .line 86
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 89
    iput-object v4, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5a} :catch_5a

    .line 91
    :catch_5a
    :cond_5a
    return v2

    .line 92
    :catchall_5b
    move-exception v0

    .line 93
    goto :goto_7c

    .line 94
    :catch_5d
    move-exception v3

    .line 95
    :try_start_5e
    new-instance v5, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_5e .. :try_end_70} :catchall_5b

    .line 113
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    .line 115
    if-nez v0, :cond_7b

    .line 117
    :try_start_74
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    .line 119
    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 122
    iput-object v4, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7b} :catch_7b

    .line 124
    :catch_7b
    :cond_7b
    return v2

    .line 125
    :goto_7c
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    .line 127
    if-nez v1, :cond_87

    .line 129
    :try_start_80
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    .line 131
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 134
    iput-object v4, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_87} :catch_87

    .line 136
    :catch_87
    :cond_87
    throw v0

    .line 137
    :catch_88
    move-exception v3

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return v2
.end method

.method private j()V
    .registers 5

    .line 1
    const-string v0, "UploaderEngine"

    .line 3
    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_c

    .line 8
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 11
    iput-object v2, p0, Lcom/xiaomi/stat/c/i;->o:Ljava/nio/channels/FileLock;

    .line 13
    :cond_c
    iget-object v1, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    .line 15
    if-eqz v1, :cond_15

    .line 17
    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 20
    iput-object v2, p0, Lcom/xiaomi/stat/c/i;->p:Ljava/nio/channels/FileChannel;

    .line 22
    :cond_15
    const-string v1, " releaseLock lock for uploader"

    .line 24
    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1a} :catch_1b

    .line 27
    goto :goto_30

    .line 28
    :catch_1b
    move-exception v1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v3, " releaseLock lock for uploader failed with "

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_30
    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    if-eqz v0, :cond_7

    .line 86
    invoke-virtual {v0, p1}, Lcom/xiaomi/stat/c/g;->a(Z)V

    :cond_7
    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    invoke-virtual {v0}, Lcom/xiaomi/stat/c/g;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/xiaomi/stat/c/i;->c()V

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/stat/c/i;->f()V

    return-void

    .line 3
    :cond_a
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    const-string v1, "UploaderEngine"

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/xiaomi/stat/b;->b()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_30

    .line 4
    :cond_19
    invoke-static {}, Lcom/xiaomi/stat/b;->B()Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, " postToServer can not upload data because of configuration!"

    .line 5
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_25
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/c/i;->a(Landroid/os/Message;)V

    return-void

    :cond_30
    :goto_30
    const-string v0, " postToServer statistic disable or network disable access! "

    .line 9
    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized d()V
    .registers 2

    monitor-enter p0

    .line 6
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/stat/c/i;->q:Lcom/xiaomi/stat/c/g;

    if-eqz v0, :cond_8

    .line 7
    invoke-virtual {v0}, Lcom/xiaomi/stat/c/g;->d()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 8
    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
